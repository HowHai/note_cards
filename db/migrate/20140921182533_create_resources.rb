class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.text :content
      t.references :note_card, index: true

      t.timestamps
    end
  end
end
