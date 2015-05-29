require "tire/version"
require "tire/active_model/serializer_support"

if defined?(ActiveModel::Serializable)
  Tire::Results::Collection.send(:include, ActiveModel::Serializable)
else
  Tire::Results::Collection.send(:include, ActiveModel::ArraySerializerSupport)
end
Tire::Results::Item.send(:include, ActiveModel::SerializerSupport)
Tire::Results::Item.send(:include, Tire::ActiveModel::SerializerSupport)