# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser 
	require 'pry'
	attr_accessor :email
	@@all = ""
	@@arr = []
	def self.all
		@@all
	end

	def save
		self.class.all << self
	end
	#binding.pry
	def initialize(emails)
		@email = emails
		@@all = self.email		
	end

	def parse # parse emails into array of emails and returns unique emails
		#binding.pry
		@@arr = self.class.all.gsub(", ", " ").split(" ").uniq
		
	end

end
