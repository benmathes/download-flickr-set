require 'rubygems'
require 'flickr'

flickr = Flickr.new('429af4e6a17ec7ff7c231a1dc5b4adf3')
big_island = flickr.photoset('72157632937111598')
big_island.getPhotos.each do |photo|
  File.open(photo.filename, 'w') do |file|
    file.puts photo.file('Large')
  end
end