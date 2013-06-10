require "proxy.rb"

describe Proxy do
	before(:each) do
		@proxy = Proxy.new
	end

	it "should respond to to_s" do
		@proxy.should respond_to(:to_s)
	end

	it "sould respond to method missing" do
		@proxy.should respond_to(:method_missing)
	end
end
