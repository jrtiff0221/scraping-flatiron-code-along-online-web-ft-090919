require 'nokogiri'
require 'open-uri'
require 'pry'

require_relative './course.rb'

class Scraper

  def get_courses
    self.get_page.css(".post")
  end 
end




