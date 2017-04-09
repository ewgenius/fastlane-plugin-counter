require 'uri'
require 'net/http'


module Fastlane
  module Helper
    class CounterHelper
      @api_url = "https://fastlane-counter-service.herokuapp.com"

      # class methods that you define here become available in your action
      # as `Helper::CounterHelper.your_method`
      #
      def self.show_message
        UI.message("Hello from the counter plugin helper!")
      end

      def self.increment_conuter(id)
        url = URI.parse("#{@api_url}/counter/#{id}/increment")
        req = Net::HTTP.new(url.host, url.port)
        req.use_ssl = true
        res = req.post(url.path, {}.to_json, { "Content-Type" => "application/json" })
        puts res.body
      end

      def self.decrement_conuter(id)
        url = URI.parse("#{@api_url}/counter/#{id}/decrement")
        req = Net::HTTP.new(url.host, url.port)
        req.use_ssl = true
        res = req.post(url.path, {}.to_json, { "Content-Type" => "application/json" })
        puts res.body
      end
    end
  end
end
