# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')

class EmailParser
	def initialize(string)
		@string = string
	end

	def parse
		email_list = @string.gsub(", "," ").split(" ")
		email_list.uniq
	end

end
