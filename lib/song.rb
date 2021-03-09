class Song
  attr_accessor :name, :artist_name

  @@all = []

def initialize(name, artist_name)
  @artist_name = artist_name
  @name = name
  @@all << self
end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

def self.create
  @name = name
  @@all << self

  #instantiates and saves the song, and it returns the new song that was created
end
def self.new_by_name(name)
self.all.new(name) #{|song|song.new}
  #instantiates a song with a name property
end
def self.create_by_name(name)
  #self.all.create{|song| song.name == name}
  #instantiates and saves a song with a name property
end
def self.find_by_name(name)
  self.all.find{|song| song.name == name}
  #can find a song present in @@all by name
    # returns falsey when a song name is not present in @@all
end
def self.find_or_create_by_name(name)
 #invokes .find_by_name and .create_by_name instead of repeating code
  #returns the existing Song object (doesn't create a new one)
    # when provided the title of an existing Song D
  #creates a new Song object with the provided title if one doesn't already exist
end
def self.alphabetical(name)
  self.all.sort{ |a, b| a <=> b }
  #returns all the song instances in alphabetical order by song name
end
def self.new_from_filename(name, artist_name)
  #initializes a song and artist_name based on the filename format
end
def self.create_by_filename(name, artist_name)
  #initializes and saves a song and artist_name based on the filename forma
end
def self.destroy_all
  #clears all the song instances from the @@all array
end


end
