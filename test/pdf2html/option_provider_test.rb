require_relative '../../test/helper'

describe Pdf2Html::OptionProvider do
  before do
    @options = { zoom: 1.5, dest_dir: "/dir", pdf: "some.pdf", nonsense: "nonsense" }
    @option_provider = Pdf2Html::OptionProvider.new(@options)
  end

  it "must include only valid options" do
    @option_provider.keys.wont_include :nonsense
  end

  it "must stringify options values" do
    @option_provider.to_h[:zoom].class.must_equal String
  end

  it "must output options string for cocaine" do
    @option_provider.to_s.class.must_equal String
  end
end
