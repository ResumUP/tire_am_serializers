require "tire/version"
require "tire/active_model/serializer_support"

Tire::Results::Collection.send(:include, ActiveModel::ArraySerializerSupport)
Tire::Results::Item.send(:include, ActiveModel::SerializerSupport)
Tire::Results::Item.send(:include, Tire::ActiveModel::SerializerSupport)