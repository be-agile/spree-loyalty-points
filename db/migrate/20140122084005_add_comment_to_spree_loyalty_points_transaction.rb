class AddCommentToSpreeLoyaltyPointsTransaction < ActiveRecord::Migration[7.1]
  def change
    add_column :spree_loyalty_points_transactions, :comment, :string
  end
end
