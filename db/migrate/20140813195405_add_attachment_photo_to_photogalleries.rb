class AddAttachmentPhotoToPhotogalleries < ActiveRecord::Migration
  def self.up
    change_table :photogalleries do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :photogalleries, :photo
  end
end
