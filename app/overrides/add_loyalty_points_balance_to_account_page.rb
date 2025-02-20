Deface::Override.new(virtual_path: 'spree/users/show',
  name: 'add_loyalty_points_balance_to_account_page',
  insert_after: ".account-page-user-info-item-store-credits",
  text: "
    <dl id='loyalty-points-info'>
      <dt><%= Spree.t(:loyalty_points_balance) %></dt>
      <dd><%= @user.loyalty_points_balance %> (<%= link_to Spree.t(:details), spree.loyalty_points_path %>)</dd>
    </dl>
  ")