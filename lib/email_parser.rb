# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',') 
class EmailParser

	attr_accessor :email

	def initialize(email)
		@email = email
	end

	def parse
		no_comma_email = email.gsub(/,/, " ")
		parse = no_comma_email.split(" ")
		no_dups_parse = parse.uniq
	end

end