module Spree
  module Admin
    module ReturnAuthorizationsControllerDecorator
      def self.prepended(base)
        base.before_action :set_loyalty_points_transactions, only: [:new, :edit, :create, :update]
      end

      private

      def set_loyalty_points_transactions
        @loyalty_points_transactions = @return_authorization.order.loyalty_points_transactions.
          page(params[:page]).
          per(params[:per_page] || Spree::Backend::Config[:admin_orders_per_page])
      end
    end
  end
end

Spree::Admin::ReturnAuthorizationsController.prepend(Spree::Admin::ReturnAuthorizationsControllerDecorator)