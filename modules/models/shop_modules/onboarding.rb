# typed: false
# frozen_string_literal: true

# Isolating onboarding domain logic
# https://github.com/Shopify/fbs/blob/main/app/models/shop.rb#L245

module ShopModules
  module Onboarding
    def onboarding_workflow_instance
      return Object.new
    end

    def onboarding_workflow_url
      if onboarding_workflow_instance
        path = "workflows/workflow_instances/#{onboarding_workflow_instance.class}"
      end
    end
  end
end
