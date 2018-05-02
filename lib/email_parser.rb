class EmailParser
attr_accessor :email

def initialize(emails)
  @emails = emails
end

def parse
  emails_without_duplicates =[]
  emails_array = @emails.split(/\,\s|\"\s\s|\"\,|\"|\s/)
  emails_array.each do |email|
    if !emails_without_duplicates.include?(email)
      emails_without_duplicates.push(email)
    end
  end
  emails_without_duplicates
end

end
