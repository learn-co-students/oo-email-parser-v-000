# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')

class EmailParser
	attr_accessor :emails

	@@emails = []

	def initialize(emails)
		split = emails.split(/,\s|\s/)
		@emails = split
		@@emails.clear
		@emails.each { |email| @@emails << email if !@@emails.include?(email) }
	end

	def parse
		@@emails
	end

end