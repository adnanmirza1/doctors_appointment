class RenameColumnsOfDoctor < ActiveRecord::Migration[5.2]
  def change
    rename_column :pets, :specialty, :age
    rename_column :pets, :school, :medical_history
  end
end
