class EmailParser

	attr_accessor :emails

	def initialize(string)
		@emails = string
	end

	def parse
		addresses = @emails.split(/\s|,\s/)
		addresses.uniq!
    addresses
	end


end
