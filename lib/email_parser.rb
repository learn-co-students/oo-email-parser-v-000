class EmailParser
  attr_reader :emails

  def initialize(emails)
      @emails = emails
    end

    def parse
        emails.split.collect do |email|
          email.split(',')
        end.flatten.uniq
      end

end
