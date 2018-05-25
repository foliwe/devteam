class AddPlanIdToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :plan_id, :integer, default: "free"
  end
end
