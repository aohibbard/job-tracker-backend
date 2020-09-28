class ChangeJobsDateDatatype < ActiveRecord::Migration[6.0]
  def change
    change_column :jobs, :due, :string
  end
end
