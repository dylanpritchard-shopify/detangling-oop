# typed: false
# frozen_string_literal: true

# representation of the Shop active record object that is our initial Model representation
# https://github.com/Shopify/fbs/blob/main/app/models/shop.rb

require_relative './application_record'
require_relative './shop_settings'

# == Schema Information
#
# Table name: shops
#
#  id                               :bigint           not null, primary key
#  shopify_domain                   :string(255)      not null
#  shopify_shop_id                  :bigint
#  shop_name                        :string(255)

class Shop < ApplicationRecord
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

  def onboarding_workflow_instance
    return Object.new
  end

  def onboarding_workflow_url
    if onboarding_workflow_instance
      path = "workflows/workflow_instances/#{onboarding_workflow_instance.class}"
    end
  end

  def shipper_name
    shop_settings.custom_shipper_name || shop_name
  end

  has_one :shop_settings
end
