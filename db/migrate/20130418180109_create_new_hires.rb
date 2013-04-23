class CreateNewHires < ActiveRecord::Migration
  def change
    create_table :new_hires do |t|
      t.string :name
      t.string :email
      t.string :start_date
      t.string :office_location
      t.string :type_of_computer
      t.string :department

      t.timestamps
    end
  end
end
