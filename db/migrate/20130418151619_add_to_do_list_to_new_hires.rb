class AddToDoListToNewHires < ActiveRecord::Migration
  def change
    add_column :new_hires, :laptop, :integer, default: 0
    add_column :new_hires, :badge, :integer, default: 0
    add_column :new_hires, :vpn, :integer, default: 0
    add_column :new_hires, :seat, :integer, default: 0
    add_column :new_hires, :docs, :integer, default: 0
    add_column :new_hires, :irc, :integer, default: 0
    add_column :new_hires, :vm, :integer, default: 0
  end
end
