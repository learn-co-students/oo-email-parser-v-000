# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
	attr_accessor :emails

	def initialize(emails)
		@emails = emails
    @@emails_all = []
	end

	def parse
    @emails_arr = @emails.split(/[\s,]+/) # Split a string by commas and/or spaces
		@emails_uniq = @emails_arr.uniq {|email| email} # extract unique emails
		@@emails_all.push(*@emails_uniq) # populates emails_all with all elements from emails_uniq
	end
end
