describe Fastlane::Actions::IncrementAction do
  describe '#run' do
    it 'increments counter' do
      # expect(Fastlane::UI).to receive(:message).with("Increment counter")

      Fastlane::Actions::IncrementAction.run(
        id: 1
      )
    end
  end
end
