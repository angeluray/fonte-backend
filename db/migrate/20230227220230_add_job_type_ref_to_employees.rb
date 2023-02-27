class AddJobTypeRefToEmployees < ActiveRecord::Migration[7.0]
  def change
    add_reference :employees, :job_type, null: false, foreign_key: true
  end
end
