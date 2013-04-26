class AddManagerToNewHires < ActiveRecord::Migration
  def change
    add_column :new_hires, :manager, :string
  end
end
