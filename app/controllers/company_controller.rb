class CompanyController < ApplicationController
  require "google/apis/sheets_v4"
  require "googleauth"
  require "googleauth/stores/file_token_store"
  require "fileutils"
  require 'open-uri'
  require 'selenium-webdriver'
  require 'uri'
  require 'net/http'
  require 'openssl'
  require 'csv'
  require 'json'

  OOB_URI = "urn:ietf:wg:oauth:2.0:oob".freeze
  APPLICATION_NAME = "Backend App".freeze
  CREDENTIALS_PATH = Rails.root.to_s + "/credentials.json".freeze
  # The file token.yaml stores the user's access and refresh tokens, and is
  # created automatically when the authorization flow completes for the first
  # time.
  TOKEN_PATH = Rails.root.to_s + "/token.yaml".freeze
  SCOPE = Google::Apis::SheetsV4::AUTH_SPREADSHEETS
  SPREADSHEET_ID = "***REMOVED***"

  def show
    company = Company.find_by(id: params[:id])
    render json: {companies: [company, company.children]}
  end

  def scrape

    options = Selenium::WebDriver::Firefox::Options.new
    # options.add_argument("--no-sandbox")
    options.add_argument("--user-agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36")
    options.add_argument("--headless")
    Selenium::WebDriver::Firefox::Service.driver_path = "/home/ciara/Desktop/drivers/geckodriver"

    @driver = Selenium::WebDriver.for :firefox, options: options
    company = Company.create(name: params[:company])
    companies = get_subs(company)
    # companies = ["PSS World Medical", "McKesson Canada", "CoverMyMeds", "McKesson Medical-Surgical Inc.", "RelayHealth", "Uniprix", "Rexall", "Per-Se Technologies", "Medical Specialties Distributors, LLC", "CGSF Funding Corporation", "Norsk Medisinaldepot", "McKesson UK Finance I Limited", "LloydsPharmacy", "Laboratory Supply Company, Inc.", "MED3000, Inc.", "McKesson Corporation", "Onmark, Inc.", "IMcKesson", "Cypress Medical Products LLC", "Nadro S.A. de C.V.", "McKesson International Holdings Ltd", "Nexcura", "McKesson Specialty Health", "Physician Sales & Service, Inc.", "PST Services, Inc.", "Mckesson High Volume Solutions Inc.", "Macro Helix LLC", "Mckesson Global Procurement & Sourcing Limited", "Mckesson Provider Technologies, LLC", "US Oncology Research, LLC", "National Rehab Equipment, Inc.", "Unity Oncology, LLC", "McKesson Medical Imaging Company", "McKesson Pharmacy Optimization LLC", "Mckesson Pharmacy Systems LLC", "McKesson Plasma and Biologics LLC", "Northstar Healthcare Limited", "Crocker Plaza Company", "RMCC Cancer Center, LLC", "McKesson Specialty Distribution LLC", "McKesson Specialty Care Distribution LLC", "Sivem Pharmaceuticals ULC", "AccessMED, LLC", "McKesson Nederland B.V.", "McKesson Specialty Arizona Inc.", "ProPharm Limited", "AOR Management Company of Pennsylvania, LLC", "Cascade Medical Supply Inc", "ThriftyMed, Inc", "PSS Service Inc", "PSS Holding Inc", "Proclaim, IncPhysician Sales & Service PartnershipThriftyMed, IncPSS Global Holdings", "Cascade Medical Supply IncGulf South Medical Supply, IncPSS Service IncPSS HK1 Ltd", "PSS Holding IncPSS China Sourcing LtdPSS Global Sourcing LtdPSS Global Sourcing Hong Kong Ltd", "Ancillary Management Solutions IncPSS China Sourcing Shanghai Representative OfficePSS Global Sourcing CBTHighpoint Healthcare Distribution, Inc.", "R&J MedicalWorldMed Shared Services, IncActivus Healthcare Solutions Inc", "Rexall", "Uniprix", "Well.ca", "Medicine Shoppe Canada Inc.", "Pharmacie Affiliee A Proxim"]

    puts companies.to_s

    save_companies(companies)
    @driver.quit
    run_phantom

    render plain: "Hello"
  end

  private

  def get_subs(company)
    @driver.navigate.to 'http://www.google.com/search?q=' + company[:name].to_s + '+subsidiaries'
    p @driver.title
    cards_xpath = "/html/body/div[7]/div[3]/div[5]/div/div[2]/div/div/g-scrolling-carousel/div[1]/div/a"
    empty_card_xpath = "/html/body/div[7]/div[3]/div[5]/div/div/div/div/div/div/div[2]/div/g-scrolling-carousel/div[1]/div/div"
    companies = []
    companies = @driver.execute_script("x = document.evaluate('#{cards_xpath}', document, null, XPathResult.ORDERED_NODE_ITERATOR_TYPE, null); res = []; while(y = x.iterateNext()) {res.push(y.textContent)}; return res")
    companies = @driver.execute_script("x = document.evaluate('#{empty_card_xpath}', document, null, XPathResult.ORDERED_NODE_ITERATOR_TYPE, null); res = []; while(y = x.iterateNext()) {res.push(y.textContent)}; return res") if companies.empty?
    unless companies.empty?
      companies.each do |child_company_name|
        child_company = Company.create(name: child_company_name, parent_company: company)
        companies += get_subs(child_company)
      end
    end
    companies
  end

  private

  def authorize
    client_id = Google::Auth::ClientId.from_file CREDENTIALS_PATH
    token_store = Google::Auth::Stores::FileTokenStore.new file: TOKEN_PATH
    authorizer = Google::Auth::UserAuthorizer.new client_id, SCOPE, token_store
    user_id = "default"
    credentials = authorizer.get_credentials user_id
    if credentials.nil?
      url = authorizer.get_authorization_url base_url: OOB_URI
      puts "Open the following URL in the browser and enter the " \
         "resulting code after authorization:\n" + url
      code = "4/xwFa0KlOrDMzgBI1uimLAKeYiWBc-sSi9Z53MHx7E_xxMIR2pPZ8kvw"
      credentials = authorizer.get_and_store_credentials_from_code(
          user_id: user_id, code: code, base_url: OOB_URI
      )
    end
    credentials
  end

  def save_companies(companies)
    clear_sheet
    service = Google::Apis::SheetsV4::SheetsService.new
    service.client_options.application_name = APPLICATION_NAME
    service.authorization = authorize

    values = [companies]
    range = "company_names!A1:A" + (companies.size + 1).to_s
    value_range_object = Google::Apis::SheetsV4::ValueRange.new(range: range, values: values, major_dimension: "COLUMNS")
    result = service.update_spreadsheet_value(SPREADSHEET_ID, range, value_range_object, value_input_option: "USER_ENTERED")
  end

  def clear_sheet
    service = Google::Apis::SheetsV4::SheetsService.new
    service.client_options.application_name = APPLICATION_NAME
    service.authorization = authorize

    range = "company_names!A:Z"
    result = service.clear_values(SPREADSHEET_ID, range)
  end

  def run_phantom

    url = URI("https://phantombuster.com/api/v1/agent/822014552494086/launch")

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Post.new(url)
    request["accept"] = 'application/json'
    request["x-phantombuster-key-1"] = '***REMOVED***'

    response = http.request(request)
    check_status
    download_and_write_data
  end

  def download_and_write_data
    CSV.new(open("https://cache1.phantombooster.com/e7a8wh4lW3g/fwfxrV9SjlT4QVTfaVSvYw/company-names.csv"),headers: :first_row).each do |line|
      name = line[0]
      description = line[3]
      url = line[4]

      company = Company.where("lower(name) = ?", name.downcase).first
      company.update(description: description)
      Domain.create(url: url, company: company)
    end
  end

  def check_status
    url = URI("https://phantombuster.com/api/v1/agent/822014552494086/output")
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Get.new(url)
    request["accept"] = 'application/json'
    request["x-phantombuster-key-1"] = '***REMOVED***'

    is_running = true
    while is_running
      response = http.request(request)
      json_result = JSON.parse response.read_body
      is_running = json_result["data"]["agentStatus"] != "not running"
      sleep(2)
    end

  end
end
