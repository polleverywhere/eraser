module Eraser
  module LineTerminators
    # \u000A  Line Feed (‘\n’)
    # \u000D  Carriage Return (‘\r’)
    # \u2028  Line separator
    # \u2029  Paragraph separator

    REGEX = /\r\n|[\n\r\u2028\u2029]/

    def self.erase(value, replace_with = "\n")
      value.gsub REGEX, replace_with
    end
  end
end