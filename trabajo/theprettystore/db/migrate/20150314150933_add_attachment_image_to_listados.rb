class AddAttachmentImageToListados < ActiveRecord::Migration
  def self.up
    change_table :listados do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :listados, :image
  end
end
