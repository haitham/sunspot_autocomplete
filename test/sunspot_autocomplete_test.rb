require File.dirname(__FILE__) + '/test_helper'
require "sunspot"
require File.dirname(__FILE__) + "/../lib/sunspot_autocomplete"

class SunspotAutocompleteTest < ActiveSupport::TestCase

  test "autocomplete type" do
    type = Sunspot::Type::AutocompleteType.send :new
    assert_equal type.indexed_name("post_title"), "post_title_ac"
    assert_equal type.to_indexed(3), "3"
    assert_equal type.cast("value"), "value"
  end
  
  test "autosuggest type" do
    type = Sunspot::Type::AutosuggestType.send :new
    assert_equal type.indexed_name("post_title"), "post_title_as"
    assert_equal type.to_indexed(3), "3"
    assert_equal type.cast("value"), "value"
  end
  
end
