# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
	attr_accessor :email_string

	def self.new(emails)
		@email_string = emails
		self
	end

	def self.parse
		email_array = []
		email_array = @email_string.split(/[,\s]/)
		email_array.delete("")
		email_array.uniq
	end

end