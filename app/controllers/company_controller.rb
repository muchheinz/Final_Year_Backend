class CompanyController < ApplicationController
  def show
    company = Company.find_by(id: params[:id])
    render json: company
  end

  def scrape
    require 'nokogiri'
    require 'open-uri'
    require 'selenium-webdriver'

    options = Selenium::WebDriver::Chrome::Options.new
    options.add_argument("--no-sandbox")
    options.add_argument("--headless")
    Selenium::WebDriver::Chrome::Service.driver_path="/home/ciara/drivers/chromedriver"

    driver = Selenium::WebDriver.for :chrome, options: options
    driver.navigate.to 'http://www.google.com/'
    p driver.title

    if driver.find_element(:id, "gsr")
      puts "Element found: " + element.to_s
    else
      puts "Element not found"
    end

    #for element in elements
    #  puts element.class
    #end

    driver.quit
    #web = Nokogiri::HTML(open('https://www.google.com/search?q=' + params[:company] + '+subsidiaries'))
    #
    #companies = []
    #byebug
    #web.xpath('/html/body/div/div[3]/div/div[2]/div/div/div/div/a').each do |a_tag|
    #  companies.append(a_tag.xpath('div/div/div[2]/div/div')[0].content)
    #end

    render plain: "Hello"
  end
end
