# typed: false
# frozen_string_literal: true

# ActiveRecord stub

class ApplicationRecord
  class << self
    def has_one(name_symbol)
      if name_symbol == :shop_settings
        define_method(name_symbol) { ShopSettings.new }
      end
    end
    def belongs_to(*args); end
  end
end
