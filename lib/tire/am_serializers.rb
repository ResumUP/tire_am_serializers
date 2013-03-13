require "tire/version"
require "tire/active_model/serializer"

Tire::Results::Item.send(:include, ActiveModel::SerializerSupport)
Tire::Results::Item.send(:include, Tire::ActiveModel::Serializer)

Tire::Results::Item.send(:alias_method, :tire_as_json, :as_json)

Tire::Results::Item.send :define_method, :to_json do |options|
  tire_as_json.to_json(options)
end

Tire::Results::Item.send(:alias_method, :tire_to_json, :to_json)

Tire::Results::Item.send(:alias_method, :to_json, :serializer_to_json)
Tire::Results::Item.send(:alias_method, :as_json, :serializer_as_json)
