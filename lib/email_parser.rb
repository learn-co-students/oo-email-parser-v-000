# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailParser
	attr_accessor :name

	def initialize(emails)
		@emails = emails
	end


	def parse
		# if @emails.include? ", "
		# 	data = @emails.split(", ") 
		# elsif @emails.include? " "	
		# 	data = @emails.split(" ")
		# end
		data = @emails.split(/,|\s/)
		data.uniq.delete_if {|e| e==""}
	end
end