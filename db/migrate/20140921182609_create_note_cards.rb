class CreateNoteCards < ActiveRecord::Migration
  def change
    create_table :note_cards do |t|
      t.string :title
      t.references :user, index: true

      t.timestamps
    end
  end
end
