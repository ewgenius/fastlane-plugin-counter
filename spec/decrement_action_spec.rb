describe Fastlane::Actions::DecrementAction do
  describe '#run' do
    it 'decrements counter' do
      expect(Fastlane::UI).to receive(:message).with("Decrement counter")

      Fastlane::Actions::DecrementAction.run(nil)
    end
  end
end
