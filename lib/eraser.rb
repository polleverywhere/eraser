require "eraser/version"
require "eraser/line_terminators"
require "eraser/space_separators"

module Eraser
  def self.erase(value)
    v = Eraser::SpaceSeparators.erase(value)
    v = Eraser::LineTerminators.erase(v)
    v
  end
end
