# frozen_string_literal: true

# Song class - takes 1 argument, title
class Song
  attr_reader :title

  def initialize(title:)
    @title = title
  end
end

# Album class - returns meta data about tracks
class Album
  TRACKS = [Song.new(title: 'Sorry'),
            Song.new(title: 'Sandcastles'),
            Song.new(title: 'Freedom'),
            Song.new(title: 'Formation')].map(&:freeze)

  def self.all
    TRACKS
  end

  def self.search(title)
    TRACKS.find { |album| album.title == title }
  end

  def self.count
    TRACKS.count
  end
end
