class CreateExamples < ActiveRecord::Migration
  def change
    create_table :examples do |t|
      t.text :content
      t.references :note_card, index: true

      t.timestamps
    end
  end
end
