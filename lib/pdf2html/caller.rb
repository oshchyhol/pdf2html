require 'cocaine'
require 'pdf2html/option_provider'

module Pdf2Html
  class Caller
    attr_reader :line, :cmd_options
    attr_writer :cmd

    def initialize(input_file, options = {}, output_file = "")
      args = { pdf: input_file, html: output_file }
      @cmd_options = OptionProvider.new(args, options)
      @line = ::Cocaine::CommandLine.new(cmd, @cmd_options.to_s)
    end

    def run
      @line.run(@cmd_options.to_h)
    end

    def cmd
      @cmd ||= which('pdf2htmlex') || which('pdf2htmlEX')
    end

    private

    def which(cmd)
      exts = ENV['PATHEXT'] ? ENV['PATHEXT'].split(';') : ['']

      ENV['PATH'].split(File::PATH_SEPARATOR).each do |path|
        exts.each do |ext|
          exe = File.join(path, "#{cmd}#{ext}")
          return exe if File.executable? exe
        end
      end

      return nil
    end
  end
end
