class BoxProxy
	attr_reader :subject

	def initialize(subject)
		@subject = subject
	end

	def method_missing(name, *args)
		@subject.send(name, *args)
	end

	def to_s
		#s = subject
		@subject.to_s
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
end
