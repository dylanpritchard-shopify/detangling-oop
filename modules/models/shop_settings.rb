# typed: false
# frozen_string_literal: true

# representation of the Shop Settings active record object that is an association of Shop
# https://github.com/Shopify/fbs/blob/1fdddc2e6f412405f0e8c5e8f83e6c746608ca9a/components/organization/app/models/organization/shop_settings.rb#L49

require_relative './application_record'

# == Schema Information
#
# Table name: shop_settings
#
#  id                                     :bigint           not null, primary key
#  shop_id                                :bigint           not null
#  custom_shipper_name                    :string(255)

class ShopSettings < ApplicationRecord
  belongs_to :shop

  def custom_shipper_name
    "USPS"
  end
end
