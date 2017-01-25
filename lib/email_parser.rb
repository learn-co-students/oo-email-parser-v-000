# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
 attr_reader :emails

 def initialize(emails)
     @emails = emails
   end
	 
def parse
	new_email = []
	new_emails = emails.delete ","
	new_emails = new_emails.split
	new_emails.map do |email|
		new_email << email
	end
	new_email.uniq
end






end
