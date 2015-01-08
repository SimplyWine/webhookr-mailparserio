require "webhookr"
require "webhookr-mailparserio/version"
require "active_support/core_ext/module/attribute_accessors"
require "webhookr/ostruct_utils"

module Webhookr
  module Mailparserio
    class Adapter
      SERVICE_NAME = "mailparserio"
      EVENT_KEY = "event"

      include Webhookr::Services::Adapter::Base

      def self.process(raw_response)
        new.process(raw_response)
      end

      def process(raw_response)
        Array.wrap(parse(raw_response)).collect do |p|
          Webhookr::AdapterResponse.new(
            SERVICE_NAME,
            EVENT_KEY,
            OstructUtils.to_ostruct(p)
          )
        end
      end
      
      private

      def parse(raw_response)
        JSON.parse(raw_response)
      end

    end

  end
end
