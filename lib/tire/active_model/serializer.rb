module Tire
  module ActiveModel
    module Serializer

      def serializer_to_json options = {}
        active_model_serializer.new(self).to_json options
      end

      def serializer_as_json options={}
        active_model_serializer.new(self).as_json options
      end
      
    end
  end
end