describe Fastlane::Actions::IncrementAction do
  describe '#run' do
    it 'decrements counter' do
      expect(Fastlane::UI).to receive(:message).with("Increment counter")

      Fastlane::Actions::IncrementAction.run(nil)
    end
  end
end
