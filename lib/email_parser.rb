# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
	attr_accessor :emails
	@@all = []
	def initialize(emails)
		@emails = emails
	end
	def parse
		emails.split(/\s|\,\s/).uniq.each {|i|@@all<<i}
	end


end

# why wouldnt this work??

# def parse
# 		emails.split(/\s|\,\s/).each do |i|
# 			if !@@all.include?(i)
# 				@@all<<i
# 			end
# 		end
# 	end

