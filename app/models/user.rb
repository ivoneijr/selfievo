class User < ActiveRecord::Base

  belongs_to :party,  autosave: true

  validates :email, presence: true

  delegate :name, :phone, :webpage, :sex, :birthday, to: :party 
  
end
