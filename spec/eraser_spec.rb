require "spec_helper"

describe Eraser do
  it "has a version number" do
    expect(Eraser::VERSION).not_to be nil
  end

  it "erases both space separators and line terminators" do
    value = "\u2001\u2000\u2028\r\n"
    erased = JohnKruger.erase value
    expect(erased).to eq("  \n\n")
  end

  context "space separators" do
    it "replaces them with spaces" do
      spaces = ["\u0009", "\u000B", "\u000C", "\u0020", "\u00A0",
        "\uFEFF", "\u1680", "\u180E", "\u2000", "\u2001", "\u2002",
        "\u2003", "\u2004", "\u2005", "\u2006", "\u2007", "\u2008",
        "\u2009", "\u200A", "\u202F", "\u205F", "\u3000", "\u0009"]

      erased = JohnKruger::SpaceSeparators.erase spaces.join("")
      expect(erased).to eq(" " * erased.length)
    end
  end

  context "line terminators" do
    it "replaces \\r\\n with a normal line feed" do
      expect(Eraser::LineTerminators.erase("\r\n")).to eq("\n")
    end

    it "replaces unicode line terminators" do
      terminators = "\u2028\u2029"
      erased = Eraser::LineTerminators.erase terminators
      expect(erased).to eq("\n\n")
    end
  end
end
