class EmailParser
  attr_reader :email

  def initialize(email)
    @email = email
  end

  def parse
    emails = email.split(/[,\s]/)
    emails.collect {|email| email.strip!}
    emails.reject! { |email| email.empty?}
    emails.uniq!
    emails
  end
end