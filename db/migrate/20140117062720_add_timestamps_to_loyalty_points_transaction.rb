class AddTimestampsToLoyaltyPointsTransaction < ActiveRecord::Migration[7.1]
  def change
    change_table :spree_loyalty_points_transactions do |t|
      t.timestamps
    end
  end
end
