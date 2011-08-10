# Unit test template taken from: http://spiralofhope.wordpress.com/2009/08/23/ruby-basic-testunit-example/

# http://www.ruby-doc.org/stdlib/libdoc/test/unit/rdoc/files/test/unit/ui/console/testrunner_rb.html (not a useful website)
# TestRunner is used to ensure that code can be run after the tests are run, without resorting to wrapping this entire script within another script.
require 'test/unit/ui/console/testrunner'

# http://www.ruby-doc.org/stdlib/libdoc/test/unit/rdoc/
require 'test/unit'

class TC_EXAMPLE < Test::Unit::TestCase
  # Execute this before every test case.
  def setup
    # Do nothing.
  end
  # Execute this after every test case.
  def teardown
    # Do nothing.
  end

  # Tests
  # Stuff with "test" at the start of their name will be run automatically.
  # Other things without "test" can be manually launched with the setup method.
  # Note that we need to have one test case.  With zero test cases, ruby bombs out.  I don't understand why.  It's stupid.
  def test_empty
    # Empty.
  end

  def test_file_exists_pass
    # I can summon this to manually abort the test if I wanted to.
    # abort_test!
    # This tests for itself, which ought to pass.
    assert(test(?e,__FILE__),"** ERROR:  The file is missing")
  end # test_file_exists
  
  #def test_file_exists_fail
  #  assert(test(?e,"filename.ext"),"** ERROR:  The file is missing")
  #end # test_file_exists

  # Tests (and only tests) can use "abort_test!" to stop their own execution.  Other tests continue as normal.
  # This stuff has to go down here.  (I'm not sure why)
  def abort_test!
    throw 'abort_test!'
  end
  
  def self.abortable m
    m, m2 = "#{ m }", "__#{ m }__"
    alias_method m2, m
    define_method(m){|*a| catch('abort_test!'){ send(m2,*a) } }
  end
  
  instance_methods.each{|m| abortable m if m =~ %r/^test/}

end # TC_EXAMPLE < Test::Unit::TestCase

# Somehow, all the tests are run _after_ these types of code are run!
# A global variable (an array)
# at_exit { code }
# END { code } -- either if I use the end block before, or after require 'test/unit'

puts "== beginning the tests"
Test::Unit::UI::Console::TestRunner.run(TC_EXAMPLE)
puts "== finished the tests"
