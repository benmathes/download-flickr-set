require 'rubygems'
require 'flickr'

flickr = Flickr.new('YOUR APP KEY GOES HERE')
big_island = flickr.photoset('72157632937111598')
big_island.getPhotos.each do |photo|
  File.open(photo.filename, 'w') do |file|
    file.puts photo.file('Large')
  end
end
