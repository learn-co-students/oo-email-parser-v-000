# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'


class EmailParser
  attr_accessor :emails
  
  
  def initialize(emails)
    @emails = emails
  end 
  
  def parse 
    separated_emails = @emails.split(/[,\s]+/)
    separated_emails.uniq
    # artist_name = data[0]
    # song_name = data[1].gsub(".mp3", "")
    # song = self.new
    # song.name = song_name
    # song.artist_name = artist_name
    # song
  end
  
end
