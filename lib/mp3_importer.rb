class MP3Importer
  
  attr_accessor :path 
  
  def initialize(path)
    @path = path
  end
  
  def files
    @files ||= Dir.entries(@path).select {|song| !File.directory?(song) && song.end_with?(".MP3")}
  end 
  
  def import 
    files.each {|song| Song.new_by__filename(song)}
  end 
end