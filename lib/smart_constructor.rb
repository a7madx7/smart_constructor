require "smart_constructor/version"
require 'new_init'

class BasicObject
	def init(*args, &block)
		args.each do |single|
			single.each do |name, val|
				name = "@#{name}"
				instance_variable_set("#{name}", val)
			end
		end

		if block_given? then instance_eval(&block) end
	end
end
