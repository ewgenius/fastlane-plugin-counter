module Fastlane
  module Actions
    class IncrementAction < Action
      def self.run(params)
        UI.message("Increment counter")
        res = Helper::CounterHelper.increment_conuter(params[:id])
        UI.message("Incremented counter##{res['id']} to #{res['result']}")
      end

      def self.description
        "increment counter with id"
      end

      def self.authors
        ["Evgeniy Khramkov"]
      end

      def self.return_value
        # If your method provides a return value, you can describe here what it does
      end

      def self.details
        # Optional:
        "incrementing"
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(key: :id,
                                  env_name: "COUNTER_ID",
                               description: "Counter id to increment",
                                  optional: false,
                                      type: Numeric)
        ]
      end

      def self.is_supported?(platform)
        # Adjust this if your plugin only works for a particular platform (iOS vs. Android, for example)
        # See: https://github.com/fastlane/fastlane/blob/master/fastlane/docs/Platforms.md
        #
        # [:ios, :mac, :android].include?(platform)
        true
      end
    end
  end
end
