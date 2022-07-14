require_relative 'models/shop'

shop = Shop.new
puts "Shop Tests"
puts "---------------------------------------------------------------"
puts "Feature Flag bound to Shop? #{shop.feature_flags.instance_of?(ShopLogic::FeatureFlags)}"
puts "Onboarding bound to Shop? #{shop.onboarding.instance_of?(ShopLogic::Onboarding)}"
# IRL we would want to override the ShipperNameResolver instance to return something independent of shop instance
puts "Custom Shipper Name #{shop.shipper_name == "USPS"}"
puts

feature_flags = ShopLogic::FeatureFlags.new(shop)
puts "Feature Flag Tests"
puts "---------------------------------------------------------------"
puts "base_layer_enabled? #{feature_flags.base_layer_enabled? == true}"
puts "preauthorized_returns_enabled? #{feature_flags.preauthorized_returns_enabled? == true}"
puts "billing_automate_inbound_receiving_charges_enabled? #{feature_flags.billing_automate_inbound_receiving_charges_enabled? == true}"
puts "multi_shipment_enabled? #{feature_flags.multi_shipment_enabled? == true}"
puts

onboarding = ShopLogic::Onboarding.new(shop)
puts "Onboarding Tests"
puts "---------------------------------------------------------------"
puts "onboarding_workflow_instance #{onboarding.onboarding_workflow_instance.instance_of?(Object)}"
puts "onboarding_workflow_url #{onboarding.onboarding_workflow_url == "workflows/workflow_instances/Object"}"
puts

shipper_name_resolver = ShopLogic::ShipperNameResolver.new(shop)
puts "ShipperNameResolver Tests"
puts "---------------------------------------------------------------"
puts "call with no override #{shipper_name_resolver.call == "USPS"}"
puts "call with override #{"N/A"}"
