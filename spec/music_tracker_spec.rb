require "music_tracker"

RSpec.describe MusicTracker do
  context "given no song added" do
    it "returns nothing" do
      playlist = MusicTracker.new
      expect(playlist.list).to eq []
    end
  end
end