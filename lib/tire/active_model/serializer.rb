module Tire
  module ActiveModel
    module Serializer

      def serializer_to_json(options = {})
        serialization :to_json, options
      end

      def serializer_as_json(options = {})
        serialization :as_json, options
      end

      private
        
      def serializer_defined?
        !active_model_serializer.nil?
      end

      def serialization(method, options)
        if serializer_defined?
          active_model_serializer.new(self).send(method, options)
        else
          send("tire_#{method}", options)
        end
      end

    end
  end
end