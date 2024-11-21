class RemoveLoyaltyPointsAwardedFromSpreeOrder < ActiveRecord::Migration[7.1]
  def change
    remove_column :spree_orders, :loyalty_points_awarded, :boolean, default: false, null: false
  end
end
