class AddEmployeeToUser < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :employee, null: false, foreign_key: true
  end
end
