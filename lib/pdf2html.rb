require 'pdf2html/version'
require 'pdf2html/caller'

module Pdf2Html
  def self.convert(options = {})
    Caller.new(options).run
  end
end
