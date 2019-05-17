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
		#if @emails.include?(', ')
		#	@emails.split(', ')
		#else
		#	@emails.split(' ')
		#end

		#binding.pry

		emails_array = @emails.split(/(,\s|\s)/)

		bad_values = ["", ",", ", ", " "]

		emails_array.each do |string|
			if bad_values.include?(string)
				emails_array.delete(string)
			end
		end
		emails_array.uniq		#binding.pry
	end

end