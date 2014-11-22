class Coach < ActiveRecord::Base

  belongs_to :user
  has_many :pupils
  has_many :gyms

  delegate :name, :phone, :webpage, :sex, :birthday, :email, :password, :twitter, :facebook, to: :user 	

end
