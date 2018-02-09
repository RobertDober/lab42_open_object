module Lab42
  class TStruct 
    class << self
      def new(**fields)
        Class.new do

          class << self; self end.module_eval do
            define_method :check_types do |act_fields|
          end


          private

          def initialize **act_fields
            self.class.check_types act_fields
          end


        end
      end
    end
  end
end
