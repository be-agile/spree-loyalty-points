module Spree
  module PermittedAttributes
    mattr_accessor :store_attributes

    @@store_attributes += [
      :loyalty_points_awarding_unit,
      :loyalty_points_redeeming_balance,
      :loyalty_points_conversion_rate,
      :loyalty_points_award_period,
      :min_amount_required_to_get_loyalty_points
    ]
  end
end
