# Write test for an ArrayCollection class
#
# - length
# - removeItemAt
# - removeItem
# - addItem
# - addItemAt
# - getItemIndex
# - getItemAt
# - setItemAt
# 
# Expand later with
# 
# - contains
# - removeAll
# - toArray

require 'test/unit'
require 'array_list.rb'

class TC_ArrayList < Test::Unit::TestCase
  
  def test_source_default_through_constructor
    assert_equal([], ArrayList.new(2).source)
    assert_equal([], ArrayList.new(nil).source)
    assert_equal([], ArrayList.new("test").source)
    assert_equal(["a", "b", "c"], ArrayList.new(["a", "b", "c"]).source)
  end
  
  # test that source can't be set outside class
  
  def test_length
    list = ArrayList.new(["Jim", "Joe", "Bob"])
    assert_equal(3, list.length)
  end
  
  def test_add_item
    list = ArrayList.new
    list.addItem "Tim"
    assert_equal list.getItemAt(0), "Tim"
    list.addItem "Mike"
    assert_equal list.getItemAt(1), "Mike"
  end
  
  def test_get_item_at
    list = ArrayList.new(["Jim", "Joe", "Bob"])
    assert_equal "Joe", list.getItemAt(1)
    assert_equal "Bob", list.getItemAt(2)
  end
  
  def test_get_item_index
    list = ArrayList.new(["Jim", "Joe", "Bob"])
    assert_equal(1, list.getItemIndex("Joe"))
    assert_equal(nil, list.getItemIndex("Tim"))
  end
  
  def test_remove_all_and_length
    list = ArrayList.new(["Jim", "Joe", "Bob"])
    assert_equal(true, list.removeAll)
    assert_equal(0, list.length)
  end
  
  def test_remove_item_at
    list = ArrayList.new(["Jim", "Joe", "Bob"])
    assert_equal("Bob", list.removeItemAt(2))
    assert_equal("Jim", list.removeItemAt(0))
    assert_equal(nil, list.removeItemAt(4))
  end
  
  def test_contains
    list = ArrayList.new(["Jim", "Joe", "Bob"])
    assert(true, list.contains("Jim"))
    assert_equal(false, list.contains("im"))
    assert_equal(false, list.contains(""))
  end
end