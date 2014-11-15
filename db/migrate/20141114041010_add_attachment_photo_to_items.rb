class AddAttachmentPhotoToItems < ActiveRecord::Migration
  def change
    change_table :items do |t|
      t.attachment :photo
    end
  end

end
