class EmailParser

	attr_accessor :emails

	def initialize(emails)
		@emails = emails
	end

	def parse
		formatted_email_array = @emails.split(/,\s|\s/)
		formatted_email_array.uniq!
		formatted_email_array
	end

end
