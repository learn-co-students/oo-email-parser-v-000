class EmailAddressParser
  attr_accessor :emails

  NEW_LIST = []

  def initialize(emails)
    @emails = emails
  end

  def parse(emails = @emails)
    final_list = []
    first_list = emails.scan(/[^,"\s]/)
    second_list = first_list.join()
    third_list = second_list.gsub(/m/, 'm,')
    fourth_list = third_list.split(",")
    fourth_list.each do |item|
      if final_list.include?(item) == false
        final_list << item
      end
    end
    final_list
  end
end
