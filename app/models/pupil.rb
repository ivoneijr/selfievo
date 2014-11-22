class Pupil < ActiveRecord::Base

  belongs_to :user, autosave: true
  belongs_to :coach, autosave: true
  belongs_to :gym,  autosave: true

	delegate :name, :phone, :webpage, :sex, :birthday, :email, :password, :twitter, :facebook, to: :user 	
  
end
