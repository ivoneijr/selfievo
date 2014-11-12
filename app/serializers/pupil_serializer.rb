class PupilSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  has_one :coach
end
