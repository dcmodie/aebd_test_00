class Profile < ActiveRecord::Base
  attr_accessible :image, :summary, :user_id
  belongs_to :user
end
