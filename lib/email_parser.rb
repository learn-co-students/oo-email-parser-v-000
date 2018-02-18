# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
      attr_accessor :list

      @@emails = ""

      def initialize (string)
            @@emails = string
      end

      def parse
            email_final = @@emails.split(/[\s,]+/)

            email_final.uniq
      end

end

#emails="avi@test.com, arel@test.com test@avi.com, test@arel.com"
