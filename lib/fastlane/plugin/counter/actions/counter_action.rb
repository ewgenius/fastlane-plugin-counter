module Fastlane
  module Actions
    class CounterAction < Action
      def self.run(params)
        UI.message("The counter plugin is working!")

        Helper::CounterHelper.increment_conuter(1)
        Helper::CounterHelper.decrement_conuter(10)
      end

      def self.description
        "increment and decrement counter"
      end

      def self.authors
        ["Evgeniy Khramkov"]
      end

      def self.return_value
        # If your method provides a return value, you can describe here what it does
      end

      def self.details
        # Optional:
        "playing around with fastlane plugins. provides increment and decrement actions for counters service"
      end

      def self.available_options
        [
          # FastlaneCore::ConfigItem.new(key: :your_option,
          #                         env_name: "COUNTER_YOUR_OPTION",
          #                      description: "A description of your option",
          #                         optional: false,
          #                             type: String)
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
