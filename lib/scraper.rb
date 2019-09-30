require 'nokogiri'
require 'open-uri'
require 'pry'

require_relative './course.rb'

def make_courses
  self.get_courses.each do |post|
    course = Course.new
    course.title = post.css("h2").text
    course.schedule = post.css(".date").text
    course.description = post.css("p").text
  end
end
Run the test suite again and all of your tests should be passing!

Now, just for fun. Place the following line at the bottom of lib/scraper.rb

Scraper.new.print_courses
Ta-da! We did it. Check out all of those awesome courses printed out to your terminal. If you're still having trouble getting your tests to pass, check out the final code below:

Final Code: The Scraper Class
require 'nokogiri'
require 'open-uri'
 
require_relative './course.rb'
 
class Scraper
 
  def get_page
    Nokogiri::HTML(open("http://learn-co-curriculum.github.io/site-for-scraping/courses"))
  end
 
  def get_courses
    self.get_page.css(".post")
  end
 
  def make_courses
    self.get_courses.each do |post|
      course = Course.new
      course.title = post.css("h2").text
      course.schedule = post.css(".date").text
      course.description = post.css("p").text
    end
  end
 
  def print_courses
    self.make_courses
    Course.all.each do |course|
      if course.title && course.title != ""
        puts "Title: #{course.title}"
        puts "  Schedule: #{course.schedule}"
        puts "  Description: #{course.description}"
      end
    end
  end
 
end
 
Scraper.new.print_courses