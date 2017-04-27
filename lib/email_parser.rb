require 'pry'
# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').



class EmailParser

	attr_accessor :emails


	def initialize(emails)
		@emails = emails
	end

	def splitter
    	if @emails.include?(',')
      		@emails = @emails.split(', ')
     			if @emails.index {|email| email.include?(' ')}
        			@emails = @emails.collect! {|email| email.split(" ")}.flatten
      			end
    	else
      		@emails = @emails.split(" ")
    	end
    	@emails
	# binding.pry
	end

	def remove_duplicates
		@emails = @emails.uniq

	end

	def parse

		splitter
		remove_duplicates
	end


end
