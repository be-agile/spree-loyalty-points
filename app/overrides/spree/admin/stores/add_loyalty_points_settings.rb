Deface::Override.new(
  virtual_path: "spree/admin/stores/_form",
  name: "add_loyalty_points_settings",
  insert_bottom: "[data-hook='admin_store_form_fields']",
  partial: "spree/admin/stores/loyalty_points_settings"
)