# Pdf2html

Ruby interface to [pdf2htmlex](https://github.com/coolwanglu/pdf2htmlEX). Will utilize posix_spawn if available.

## Installation

You need to have [pdf2htmlex](https://github.com/coolwanglu/pdf2htmlEX) installed on your system in order for this to work.
On OS X this is easy using Homebrew:

    brew install pdf2htmlex

Install the gem:

    gem install pdf2html

## Usage

    Pdf2Html.convert({
      pdf:      "/home/dev/meow.pdf",
      dest_dir: "/home/dev/precious_html",
      zoom:     1.5
    })

### All params to date:

      data_dir:             "--data-dir",
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
      debug:                "--debug"

## Work harder


