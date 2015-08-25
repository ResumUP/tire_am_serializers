require "tire/version"
require "tire/active_model/serializer_support"

Tire::Results::Collection.send(:include, ActiveModel::Serialization)
Tire::Results::Item.send(:include, ActiveModel::Serialization)
Tire::Results::Item.send(:include, Tire::ActiveModel::SerializerSupport)
