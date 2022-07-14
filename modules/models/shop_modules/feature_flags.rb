# typed: false
# frozen_string_literal: true

# Isolating feature flag domain logic
# https://github.com/Shopify/fbs/blob/main/app/models/shop.rb#L336

module ShopModules
  module FeatureFlags
    def base_layer_enabled?
      # act on some data point of shop
      true
    end

    def preauthorized_returns_enabled?
      # act on some data point of shop
      true
    end

    def billing_automate_inbound_receiving_charges_enabled?
      # act on some data point of shop
      true
    end

    def multi_shipment_enabled?
      # act on some data point of shop
      true
    end
  end
end
