class Person < ActiveRecord::Base
  attr_accessible :email, :name, :phone, :surname, :avatar
  mount_uploader :avatar, AvatarUploader
end
