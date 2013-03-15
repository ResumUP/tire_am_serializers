require 'test_helper'

require 'tire/am_serializers'

class SomeClass
  include ActiveModel::SerializerSupport
end

class SomeClassSerializer
end

class OtherClass
  include ActiveModel::SerializerSupport
end

class TireOtherClassSerializer
end

class OtherClassSerializer
end


class TireSerializerSupportTest < ActiveModel::TestCase

  test "active model serializer is nil if no serializer exists" do
    assert_equal nil, Tire::Results::Item.new({"_type" => "RandomClass"}).active_model_serializer
  end

  test "active model serializer returned for item if serializer exists" do
    class ::Rails; end
    assert_equal SomeClassSerializer, Tire::Results::Item.new({"_type" => "SomeClass"}).active_model_serializer
    Object.class_eval{remove_const :Rails}
  end

  test "active model serializer with tire prefix returned for item if serializer exists" do
    class ::Rails; end
    assert_equal TireOtherClassSerializer, Tire::Results::Item.new({"_type" => "OtherClass"}).active_model_serializer
    Object.class_eval{remove_const :Rails}
  end

  test "active model serializer is ArraySerializer for Collection" do
    assert_equal ActiveModel::ArraySerializer, Tire::Results::Collection.new({}).active_model_serializer
  end

end