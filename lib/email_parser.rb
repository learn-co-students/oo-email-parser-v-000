require 'pry'

# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')

class EmailParser
	attr_accessor :email_list

	def initialize(emails)
		@email_list = emails
	end

	def parse
		parsed_emails = @email_list.split(/,\s|\s|,/)
			parsed_emails.each_with_index do |email, i|
				if parsed_emails.count(email) > 1
						parsed_emails.shift(i)
				end	
			end
		#parsed_emails = emails.scan(/^\w+@\w+\.\w{3}/)
		parsed_emails
	end


end
