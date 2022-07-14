# typed: false
# frozen_string_literal: true

# representation of the Shop active record object that is our initial Model representation
# https://github.com/Shopify/fbs/blob/main/app/models/shop.rb

require_relative './application_record'
require_relative './shop_settings'
require_relative './shop_modules/feature_flags'
require_relative './shop_modules/onboarding'
require_relative './shop_modules/shipper_name'

# == Schema Information
#
# Table name: shops
#
#  id                               :bigint           not null, primary key
#  shopify_domain                   :string(255)      not null
#  shopify_shop_id                  :bigint
#  shop_name                        :string(255)

class Shop < ApplicationRecord
  include ShopModules::FeatureFlags
  include ShopModules::Onboarding
  include ShopModules::ShipperName

  has_one :shop_settings
end
