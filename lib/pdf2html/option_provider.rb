module Pdf2Html
  PDF2HTMLEX_ARGS = [":pdf", ":html"]

  PDF2HTMLEX_OPTIONS = {
    zoom:                 "--zoom",
    data_dir:             "--data-dir",
    dest_dir:             "--dest-dir",
    first_page:           "--first-page",
    last_page:            "--last-page",
    fit_width:            "--fit-width",
    fit_height:           "--fit-height",
    use_cropbox:          "--use-cropbox",
    hdpi:                 "--hdpi",
    vdpi:                 "--vdpi",
    embed:                "--embed",
    split_pages:          "--split-pages",
    css_filename:         "--css-filename",
    page_filename:        "--page-filename",
    outline_filename:     "--outline-filename",
    process_nontext:      "--process-nontext",
    process_outline:      "--process-outline",
    printing:             "--printing",
    fallback:             "--fallback",
    embed_external_font:  "--embed-external-font",
    font_format:          "--font-format",
    decompose_ligature:   "--decompose-ligature",
    auto_hint:            "--auto-hint",
    external_hint_tool:   "--external-hint-tool",
    stretch_narrow_glyph: "--stretch-narrow-glyph",
    squeeze_wide_glyph:   "--squeeze-wide-glyph",
    override_fstype:      "--override-fstype",
    process_type:         "--process-type",
    heps:                 "--heps",
    veps:                 "--veps",
    space_threshold:      "--space-threshold",
    font_size_multiplier: "--font-size-multiplier",
    space_as_offset:      "--space-as-offset",
    tounicode:            "--tounicode",
    optimize_text:        "--optimize-text",
    bg_format:            "--bg-format",
    owner_password:       "--owner-password",
    user_password:        "--user-password",
    no_drm:               "--no-drm",
    clean_tmp:            "--clean-tmp",
    debug:                "--debug",
    proof:                "--proof"
  }

  class OptionProvider
    attr_reader :keys

    def initialize(args, options = {})
      @keys = PDF2HTMLEX_OPTIONS.keys & options.keys
      @options = normalize_options(options)
      @args = args
    end

    def to_s
      return "" if @keys.empty?

      (array_from_options(@options, PDF2HTMLEX_OPTIONS) + 
        PDF2HTMLEX_ARGS).join(" ")
    end

    def to_h
      @options.merge(@args)
    end

    private

    def normalize_options(options)
      return {} if options.nil? || @keys.nil?

      @keys.inject({}) do |hash, f| 
        hash[f] = options[f].to_s unless options[f].nil?
        hash
      end
    end

    def array_from_options(hash, opts = hash)
      hash.flat_map do |key, val|
        [opts[key].to_s, key.to_sym.inspect.to_s]
      end
    end
  end
end
