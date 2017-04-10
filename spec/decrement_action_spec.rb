describe Fastlane::Actions::DecrementAction do
  describe '#run' do
    it 'decrements counter' do
      # expect(Fastlane::UI).to receive(:message).with("Decrement counter")

      Fastlane::Actions::DecrementAction.run(
        id: 2
      )
    end
  end
end
