require 'cocaine'
require 'pdf2html/option_provider'

module Pdf2Html
  PDF2HTMLEX = 'pdf2htmlex'

  class Caller
    attr_reader :line, :cmd_options

    def initialize(options)
      @cmd_options = OptionProvider.new(options)
      @line = ::Cocaine::CommandLine.new(PDF2HTMLEX, @cmd_options.to_s)
    end

    def run
      @line.run(@cmd_options.to_h)
    end
  end
end
