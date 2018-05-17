# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :email

   def initialize(emails)
     @email = emails
   end

   def parse
    # @email.gsub(regex pattern, replacement).split(" ").uniq → new_str
      @email.gsub(/[\s,]/ ," ").split(" ").uniq
    end

end

    # Returns a copy of str with the all occurrences of pattern
    # substituted for the second argument. The pattern is typically
    # Regexp; if given as a String, any regular expression metacharacters
    # it contains will be interpreted literally, e.g. '\\d' will match a
    # backlash followed by ‘d’, instead of a digit.

  # alternate:

  #  def parse
  #   parsed_emails = @email.split(/[, ]/).uniq
  #   parsed_emails.reject! {|e| e.empty?}
  #   parsed_emails
  # end
