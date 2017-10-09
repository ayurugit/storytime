class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.date :date
      t.string :grade      
      t.string :place
      t.string :book_title
      t.string :author
      t.timestamps null: false
    end
  end
end
