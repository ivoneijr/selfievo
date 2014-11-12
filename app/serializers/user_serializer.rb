class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :password, :facebook, :twitter
  has_one :party
end
