class AddSpecialtyToDoctor < ActiveRecord::Migration[5.2]
  def change
    add_column :pets, :specialty, :string
  end
end
