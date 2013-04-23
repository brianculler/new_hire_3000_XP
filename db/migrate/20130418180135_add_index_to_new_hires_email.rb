class AddIndexToNewHiresEmail < ActiveRecord::Migration
  def change
    add_index :new_hires, :email, unique: true
  end
end
