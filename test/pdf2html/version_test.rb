require_relative '../../test/helper'

describe Pdf2Html do
  it 'better be defined or I\'ll put out my gun' do
    Pdf2Html::VERSION.wont_be_nil
  end
end
