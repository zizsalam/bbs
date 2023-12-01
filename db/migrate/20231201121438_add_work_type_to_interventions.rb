class AddWorkTypeToInterventions < ActiveRecord::Migration[7.1]
  def change
    add_column :interventions, :work_type, :integer
  end
end
