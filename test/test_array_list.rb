# Write test for an ArrayList class
#
# - length
# - removeAt
# - remove
# - add
# - addAt
# - index
# - getAt
# - setAt
# - contains
# - removeAll
# - toArray

require 'test/unit'
require 'array_list'

class ArrayListTest < Test::Unit::TestCase
  
  def setup
    @list = ArrayList.new(["Amy","Bob","Jim","Mike","Tom"])
  end
  
  def test_source_default_set_through_constructor
    assert_equal([], ArrayList.new().source)
    assert_equal([], ArrayList.new(2).source)
    assert_equal([], ArrayList.new(nil).source)
    assert_equal(["Ted", "Bob"], ArrayList.new(["Ted", "Bob"]).source)
  end
  
  def test_length_with_default_and_constructor_value
    assert_equal(0, ArrayList.new().length)
    assert_equal(5, @list.length)
  end
  
  def test_index_method
    assert_equal("Amy", @list.index(0))
    assert_equal("Mike", @list.index(3))
    assert_equal(nil, @list.index(10))
    assert_equal("Bob", @list.index(-4))
    assert_equal(nil, @list.index(-7))
  end
  
end