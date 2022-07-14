# typed: false
# frozen_string_literal: true

# business logic command to override shipper name, if shop_settings has one
# https://github.com/Shopify/fbs/blob/main/app/models/shop.rb#L224

module ShopModules
  module ShipperName
    def shipper_name
      shop_settings.custom_shipper_name || shop_name
    end
  end
end
