class ImageSerializer < ActiveModel::Serializer
  attributes :id, :data, :format, :size
  has_one :user
end
