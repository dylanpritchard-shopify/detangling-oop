# typed: false
# frozen_string_literal: true

# representation of the Shop active record object that is our initial Model representation
# https://github.com/Shopify/fbs/blob/main/app/models/shop.rb

require_relative './application_record'
require_relative './shop_settings'
require_relative './shop_logic/feature_flags'
require_relative './shop_logic/onboarding'
require_relative './shop_logic/shipper_name_resolver'

# == Schema Information
#
# Table name: shops
#
#  id                               :bigint           not null, primary key
#  shopify_domain                   :string(255)      not null
#  shopify_shop_id                  :bigint
#  shop_name                        :string(255)

class Shop < ApplicationRecord
  def feature_flags
    @feature_flags ||= ShopLogic::FeatureFlags.new(self)
  end

  def shipper_name
    @shipper_name_resolver ||= ShopLogic::ShipperNameResolver.new(self)
    @shipper_name_resolver.call
  end

  def onboarding
    @onboarding ||= ShopLogic::Onboarding.new(self)
  end

  has_one :shop_settings
end
