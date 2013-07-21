class Podcast < ActiveRecord::Base
  attr_accessible :image, :soundcloud, :texto, :titulo
  mount_uploader :image, ImageUploader
end
