describe Fastlane::Actions::CounterAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The counter plugin is working!")
      Fastlane::Actions::CounterAction.run(nil)
    end
  end
end
