class Proxy
	attr_reader :subject

	def intialize(subject)
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
	def initialize(name)
		@name = name
	end

	def to_s
		@name
	end
end
