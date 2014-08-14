class Photogallery < ActiveRecord::Base

  has_attached_file :photo, :styles => { :large => "800x800",:medium => "500x500", :small => "250x250" }
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end
