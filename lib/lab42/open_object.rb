require 'forwarder'

module Lab42
  class OpenObject
    extend Forwarder
    forward_all :[], :keys, :length, :size, :values, to: :@data

    def [] key
      data.fetch(key)
    end

    private

    attr_reader :data

    def initialize **params
      @data = params
      params.each do |k, v|
        class << self; self end.module_eval do
          define_method(k){v}
        end
      end
      freeze
    end



  end
end
