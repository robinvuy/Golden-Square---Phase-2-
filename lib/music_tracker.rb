class MusicTracker
  def initialize
  @song = []
  end

  def add(song)
    @song << song
  end

  def list
    return @song
  end


end
  