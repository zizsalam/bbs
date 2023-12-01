class AddAttachmentImageToInterventions < ActiveRecord::Migration[7.1]
  def change
    add_column :interventions, :image, :string
  end

  def up
    change_table :interventions do |t|
      t.attachment :image
    end
  end

  def down
    remove_attachment :interventions, :image
  end
end
