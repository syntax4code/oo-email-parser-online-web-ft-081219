# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :name, :csv_emails

  def initialize(csv_emails)
#   # you don't need name in here, it is redundant/
#   @name = name
    @csv_emails = csv_emails
  end

# This will not work because "emails2" below will not be properly parsed
# def parse
#   csv_emails.split(/\s*,\s*/)
# end

class EmailParser

  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    email_array = []
    email_array = @emails.split(/[,\s]/)
    email_array = email_array.reject { |e| e == ""}
    email_array.uniq
  end

end

emails = "avi@test.com, arel@test.com"
parser = EmailParser.new(emails)

puts parser.parse
