class MusicTracker
  def initialize
  @song = []
  end

  def add(song)
    @song << song
  end

  def list
    fail "No songs added!" if @song.empty?
    return @song
  end


end
  