class RenameColumnsOfDoctor < ActiveRecord::Migration[5.2]
  def change
    rename_column :doctors, :specialty, :age
    rename_column :doctors, :school, :medical_history
  end
end
