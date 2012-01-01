class Tip < ActiveRecord::Base
	attr_accessible :user_id, :title, :text, :image, :categorie_id
	mount_uploader :image, AvatarUploader
	belongs_to :user
	belongs_to :category
	validates_presence_of   :title
    validates_uniqueness_of :title
    validates_presence_of   :text
    scope :latest_five, where("id > 0")
end
