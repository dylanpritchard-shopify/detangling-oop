require_relative 'models/shop'

shop = Shop.new

puts "Feature Flag: Multi-shipment enabled? #{shop.multi_shipment_enabled?}"
puts " test pass? #{shop.multi_shipment_enabled? == true}"
puts
puts "Onboarding: Onboarding workflow url #{shop.onboarding_workflow_url}"
puts " test pass? #{shop.onboarding_workflow_url == "workflows/workflow_instances/Object"}"
puts
puts "Custom Shipper Name #{shop.shipper_name}"
puts " test pass? #{shop.shipper_name == "USPS"}"
puts
