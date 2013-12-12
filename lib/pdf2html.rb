require 'pdf2html/version'
require 'pdf2html/caller'

module Pdf2Html
  def self.convert(input_file, options = {}, output_file = "")
    Caller.new(input_file, options, output_file).run
  end
end
