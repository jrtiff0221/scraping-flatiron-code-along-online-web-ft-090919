class Course
 
  attr_accessor :title, :schedule, :description
 
  @@all = []
 
  def initialize
    @@all << self
  end
 
  def self.all
    @@all
  end
 
  def self.reset_all
    @@all.clear
  end
end
  #def print_courses
   # self.make_courses
    #Course.all.each do |course|
     # if course.title && course.title != ""
      #  puts "Title: #{course.title}"
       # puts "  Schedule: #{course.schedule}"
        #puts "  Description: #{course.description}"
      #end
    #end
  #
  #end