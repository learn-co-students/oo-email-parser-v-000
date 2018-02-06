require 'pry'

class EmailParser
	attr_reader :emails

	def initialize(emails)
		@emails = emails
	end

	def parse
		emails = @emails.scan(/\b\w+[@]\w+[.]\w{3}\b/)
		# emails = @emails.split(/[^\w@.]/)
		# binding.pry
		emails.uniq
	end

end



# emails = "john@doe.com, person@somewhere.org"
emails = "john@doe.com person@somewhere.org"
parser = EmailParser.new(emails)
parser.parse