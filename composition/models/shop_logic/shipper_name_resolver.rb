# typed: false
# frozen_string_literal: true

# business logic command to override shipper name, if shop_settings has one
# https://github.com/Shopify/fbs/blob/main/app/models/shop.rb#L224

module ShopLogic
  class ShipperNameResolver
    def initialize(shop)
      @shop = shop
    end

    def call
      shop.shop_settings.custom_shipper_name || shop.shop_name
    end

    private

    attr_reader :shop
  end
end
