class Tip < ActiveRecord::Base
	attr_accessible :user_id, :title, :text, :image
	mount_uploader :image, AvatarUploader
	belongs_to              :user
	validates_presence_of   :title
    validates_uniqueness_of :title
    validates_presence_of   :text
end
