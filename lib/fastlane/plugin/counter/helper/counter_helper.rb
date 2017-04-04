module Fastlane
  module Helper
    class CounterHelper
      # class methods that you define here become available in your action
      # as `Helper::CounterHelper.your_method`
      #
      def self.show_message
        UI.message("Hello from the counter plugin helper!")
      end
    end
  end
end
