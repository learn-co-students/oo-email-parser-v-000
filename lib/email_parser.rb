# Build a class EmailAddressParser that accepts a string of unformatted 
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
		data = @emails.split(/,|\s/).uniq.delete_if {|e| e==""}
	end
end