require "proxy.rb"

describe BoxProxy do
	before(:each) do
		@proxy = BoxProxy.new { Box.new("testing") }
    @box = @proxy.subject
	end

	it "should respond to to_s" do
		@proxy.should respond_to(:to_s)
	end

	it "sould respond to method missing" do
		@proxy.should respond_to(:method_missing)
	end

  it "should call boxes to_s" do
    @box.should_receive(:to_s)
    @proxy.to_s
  end

  it "should call boxes yo" do
    @box.should_receive(:yo)
    @proxy.yo
  end
end

describe Box do
  before(:each) do
    @box = Box.new("test_box")
  end

  it "should initialize with a name" do
    @box.name.should == "test_box"
  end

  it "should return name from to_s" do
    @box.to_s.should == @box.name
  end

  it "should return i'm in a box from yo" do
    @box.yo.should == "I'm in a box!"
  end
end
