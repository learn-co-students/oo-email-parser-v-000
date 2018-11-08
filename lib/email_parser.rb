# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailParser 
  
  attr_accessor :email
  
  def email=(email_string)
    @email = email_string
  end
  
  def email 
    @email
  end
  
  
  def initialize(email_string)
    @email = email_string
  end
  
  
  def parse
    split_email = email.split
    split_email.map do |email|
    email.split(",")
  end.flatten.uniq
 
  end
  
end
  
 

  # def self.new_from_filename(filename)
    
  #   song = self.new(name)
  #   split_filename = filename.chomp(".mp3").split(" - ")
  #   song.name = split_filename[1]
  #   song.artist_name = split_filename[0]
  #   song
    
  # end 
  
  # def self.create_from_filename(filename)
  #   song = self.create
  #   split_filename = filename.chomp(".mp3").split(" - ")
  #   song.name = split_filename[1]
  #   song.artist_name = split_filename[0]
  #   song.save
  #   song
  # end
