module AmountHelper

	class Amount

	  class << self

	    def load()
	      self.new()
	    end

	    def dump(obj)
	      unless obj.is_a?(self)
	        raise ::ActiveRecord::SerializationTypeMismatch, "Attribute was supposed to be a #{self}, but was a #{obj.class}. -- #{obj.inspect}"
	      end
	      obj.length
	    end

	  end
	  
	  def initialize()
	    
	  end

	end
end