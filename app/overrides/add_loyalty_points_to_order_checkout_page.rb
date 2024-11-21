Deface::Override.new(virtual_path: 'spree/shared/_order_details',
  name: 'add_loyalty_points_to_order_checkout_page',
  insert_after: "#checkout-summary",
  text: "
    <div class='mt-5'>
    <% if @order.loyalty_points_awarded? %>
      <span><%= @order.loyalty_points_for(@order.item_total) %></span> <b><%= Spree.t(:loyalty_points) %> have been credited to your account.</b>
    <% else %>
      <span><%= @order.loyalty_points_for(@order.item_total) %></span> <b><%= Spree.t(:loyalty_points) %> will be credited to your account  soon.</b>
    <% end %>
    </div>
  ")