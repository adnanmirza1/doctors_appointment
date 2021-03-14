class AddSchoolToDoctor < ActiveRecord::Migration[5.2]
  def change
    add_column :pets, :school, :string
  end
end
