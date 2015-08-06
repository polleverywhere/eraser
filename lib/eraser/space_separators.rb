module Eraser
  module SpaceSeparators
    # \u0009  Tab
    # \u000B  Vertical Tab (‘\v’)
    # \u000C  Form Feed (‘\f’)
    # \u0020  Space (‘ ‘)
    # \u00A0  No-break space
    # \uFEFF  Byte Order Mark
    # \u1680  Ogham Space Mark
    # \u180E  Mongolian Vowel Separator
    # \u2000  En Quad
    # \u2001  Em Quad
    # \u2002  En Space
    # \u2003  Em Space
    # \u2004  Three-per-em space
    # \u2005  Four-per-em space
    # \u2006  Six-per-em space
    # \u2007  Figure space
    # \u2008  Punctuation space
    # \u2009  Thin space
    # \u200A  Hair space
    # \u202F  Narrow no-break space
    # \u205F  Medium mathematical space
    # \u3000  Ideographic space

    REGEX = /[\t\v\f\u0020\u00A0\uFEFF\u1680\u180E\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200A\u202F\u205F\u3000]/

    def self.erase(value, replace_with = " ")
      value.gsub REGEX, replace_with
    end
  end
end