class CompanyController < ApplicationController
  def show
    company = Company.find_by(id: params[:id])
    render json: company
  end

  def scrape
    require 'nokogiri'
    require 'open-uri'
    require 'headless'

    headless = Headless.new
    headless.start

    browser = Watir::Browser.start(main_page_url)
    if browser.link(text: "Click here").present?
      browser.link(text: "Click here").click
    end

    web = Nokogiri::HTML(open('https://www.google.com/search?q=' + params[:company] + '+subsidiaries'))

    companies = []
    byebug
    web.xpath('/html/body/div/div[3]/div/div[2]/div/div/div/div/a').each do |a_tag|
      companies.append(a_tag.xpath('div/div/div[2]/div/div')[0].content)
    end

    byebug

    render plain: "Hello"
  end
end
