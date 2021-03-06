module Nanoc
  module MutableDocumentViewMixin
    # Sets the value for the given attribute.
    #
    # @param [Symbol] key
    #
    # @see Hash#[]=
    def []=(key, value)
      unwrap.attributes[key] = value
    end

    # Updates the attributes based on the given hash.
    #
    # @param [Hash] hash
    #
    # @return [self]
    def update_attributes(hash)
      hash.each { |k, v| unwrap.attributes[k] = v }
      self
    end
  end
end
