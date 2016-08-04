class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    emailarray = @emails.split(/[\s,]/)
    emailarray.each do |address|
      if "#{address}" == ""
        emailarray.delete("#{address}")
      end
    end
    emailarray.uniq
  end
end
