require 'pry'

def reload!
    load 'lib/email_parser.rb'
end

require_relative './email_parser.rb'

Pry.start
