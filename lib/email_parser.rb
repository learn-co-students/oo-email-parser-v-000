class EmailParser

attr_accessor :emails

def initialize(emails)
  @emails = emails
end


def parse
    word = emails.split(",")
    ans_word = word.map do |email|
      email.split(" ")
 end
  ans_word.flatten.uniq
  end
end
