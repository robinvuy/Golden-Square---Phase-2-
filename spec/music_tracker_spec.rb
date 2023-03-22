require "music_tracker"

RSpec.describe MusicTracker do
  context "Given no song added" do
    it "Returns empty brackets" do
      playlist = MusicTracker.new
      expect(playlist.list).to eq []
    end
    
    it "fails" do
      playlist = MusicTracker.new
      expect { playlist.list }.to raise_error "No songs added!"
    end
  end

  context "Given an added song" do
    it "Adds killing in the name of to list" do
      playlist = MusicTracker.new
      playlist.add("Killing in the name of")
      expect(playlist.list).to eq ["Killing in the name of"]
    end
  end

  context "Given two added songs" do
    it "Adds killing in the name of and in the air tonight to list" do
      playlist = MusicTracker.new
      playlist.add("Killing in the name of")
      playlist.add("In the air tonight")
      expect(playlist.list).to eq ["Killing in the name of", "In the air tonight"]
    end
  end



end