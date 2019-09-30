require 'nokogiri'
require 'open-uri'
require 'pry'

require_relative './course.rb'

class Scraper

  def get_course
        Nokogiri::HTML(open("http://learn-co-curriculum.github.io/site-for-scraping/courses"))
    self.get_page.css(".post")
  end 
end




