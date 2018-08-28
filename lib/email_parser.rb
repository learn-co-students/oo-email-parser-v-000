
class EmailParser
  attr_accessor :csv_emails

  def initialize(csv_emails)
    @csv_emails = csv_emails
  end

# This will not work because "emails2" below will not be properly parsed
# def parse
#   csv_emails.split(/\s*,\s*/)
# end

  def parse
    csv_emails.split.collect do |address|
      address.split(",")
    end.flatten.uniq
  end
end
