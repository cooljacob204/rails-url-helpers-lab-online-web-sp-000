class AddActiveToStudents < ActiveRecord::Migration
  def change
    add_column :students, :active, :bool, default: false
  end
end