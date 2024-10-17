module Spree
  module StoreDecorator
    def self.prepended(base)
      existing_settings = base.typed_stores[:settings]&.fields || {}
      base.typed_store :settings, coder: ActiveRecord::TypedStore::IdentityCoder do |s|
        existing_settings.each do |name, field|
          s.send(field.type_sym, name, **field.instance_variables.each_with_object({}) { |var, hash|
            hash[var.to_s.delete("@").to_sym] = field.instance_variable_get(var) unless var == :@type
          })
        end
        unless existing_settings.key?(:loyalty_points_awarding_unit)
          s.decimal :loyalty_points_awarding_unit, default: 0.01, null: false
          s.decimal :loyalty_points_redeeming_balance, default: 0.0, null: false
          s.decimal :loyalty_points_conversion_rate, default: 1.0, null: false
          s.integer :loyalty_points_award_period, default: 12, null: false
          s.decimal :min_amount_required_to_get_loyalty_points, default: 0.0, null: false
        end
      end
    end
  end
end

Spree::Store.prepend Spree::StoreDecorator