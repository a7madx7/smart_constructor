require 'test_helper'
require 'must'

class SmartConstructorTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::SmartConstructor::VERSION
  end

  def test_it_does_something_useful
    assert true
  end

	class Custom; end
  def setup
  	@custom_multiple = Custom.new(name: 'Ahmad Hamdi', page: 'ruby.dose', age: 22, hobbies: [])
  	@custom_single = Custom.new(name: 'Ahmad Hamdi')
  end

  must 'create an instance variable from a single parameter' do
  	assert @custom_single.instance_variables.include?(:@name)
  end

  must 'create multiple instance variables out of a hash' do
		assert @custom_multiple.instance_variables.count > 3
		assert @custom_multiple.instance_variables.include?(:@hobbies)
		assert @custom_multiple.instance_variables.include?(:@age)
		assert @custom_multiple.instance_variables.include?(:@name)
		assert @custom_multiple.instance_variables.include?(:@page)
  end
  must 'be of correct values' do
		assert @custom_multiple.instance_variable_get(:@hobbies) == []
		assert @custom_multiple.instance_variable_get(:@age) == 22
		assert @custom_multiple.instance_variable_get(:@name) == 'Ahmad Hamdi'
		assert @custom_multiple.instance_variable_get(:@page) == 'ruby.dose'
  end
end
