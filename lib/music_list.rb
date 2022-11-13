class MusicList

  def initialize
    @tracks = []
  end

  def add(track)
    @tracks << track unless @tracks.include?(track)
  end

  def delete(track)
    fail "Not in the list." unless @tracks.include?(track)
    @tracks.delete(track)
  end

  def list
    return @tracks
  end

end