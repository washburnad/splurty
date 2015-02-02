require 'test_helper'

class QuoteTest < ActiveSupport::TestCase
  test "unique tag" do 
  	quote = Quote.create(:author => "Aaron Washburn", :saying => "Just do it.")
  	expected = "AW#" + quote.id.to_s
  	actual = quote.unique_tag
  	assert_equal expected, actual
  end
end
