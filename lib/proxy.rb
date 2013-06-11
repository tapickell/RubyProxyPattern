class BoxProxy

	def initialize(&block)
		@block = block
	end

	def method_missing(name, *args)
    s = subject
		s.send(name, *args)
	end

	def to_s
		s = subject
		s.to_s
	end

  def subject
    @subject || (@subject = @block.call)
    @subject
  end
end

class Box
  attr_reader :name

	def initialize(name)
		@name = name
	end

	def to_s
		@name
	end

  def yo
    "I'm in a box!"
  end
end
