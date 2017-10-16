class AddMemberToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :member, :string
  end
end
