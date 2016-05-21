class EmailParser

  attr_accessor :email_string

  def initialize(email_string)
    @email_string = email_string
  end

  def parse
    final_email = []
    email_array_complete = self.email_string.scan(/[\w@.]+/)
    email_array_complete.each do |email|
      final_email << email unless final_email.include?(email)
    end
    final_email
  end

end
