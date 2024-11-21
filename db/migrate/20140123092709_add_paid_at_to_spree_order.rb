class AddPaidAtToSpreeOrder < ActiveRecord::Migration[7.1]
  def change
    add_column :spree_orders, :paid_at, :datetime
  end
end
