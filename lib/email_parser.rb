# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser

  def initialize(string)
    @unformatted_string = string
    @parsed_email_list = []
  end

  def parse
    @parsed_email_list = @unformatted_string.scan(/[\w\W&&[^ ,@\.]]+@[\w\W&&[^ ,@\.]]+\.[\w\W&&[^ ,@\.]]+/)
    temp = 
    @parsed_email_list.each {|email| @parsed_email_list.keep_if {|delete| email.object_id == delete.object_id || email != delete}}
  end

end
