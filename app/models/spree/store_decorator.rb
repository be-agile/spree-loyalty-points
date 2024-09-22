module Spree
  module StoreDecorator
    def self.prepended(base)
      base.typed_store :settings, coder: ActiveRecord::TypedStore::IdentityCoder do |s|
        s.decimal :loyalty_points_awarding_unit, default: 0.01, null: false
        s.decimal :loyalty_points_redeeming_balance, default: 0.0, null: false
        s.decimal :loyalty_points_conversion_rate, default: 1.0, null: false
        s.integer :loyalty_points_award_period, default: 12, null: false
        s.decimal :min_amount_required_to_get_loyalty_points, default: 0.0, null: false
      end
    end
  end
end

Spree::Store.prepend Spree::StoreDecorator