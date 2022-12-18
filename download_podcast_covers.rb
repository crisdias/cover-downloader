#!/usr/bin/env ruby

require 'open-uri'
require 'xmlsimple'

def make_filename(string)
  string.gsub(/[^[:alpha:]0-9\-\s\ ]/, '')
end





download_dir = "podcast_covers"

# Get the podcast URL from the command line argument
podcast_url = ARGV[0]

# Get the RSS feed XML
rss_xml = URI.open(podcast_url).read

# Parse the RSS feed XML
rss_data = XmlSimple.xml_in(rss_xml)

# Create a directory to save the podcast cover images
Dir.mkdir(download_dir) unless File.exists?(download_dir)

count = 0

# Iterate through the episodes
rss_data['channel'][0]['item'].reverse.each do |episode|
  count = count + 1
  # Get the episode cover image URL
  image_url = episode['image'][0]['href']
  
  # Download the image
  # image_file = URI.open(image_url)
  # Get the file extension from the URL
  file_extension = image_url.split('?').first.split('.').last
  
  episode_num = sprintf("%03d", count)
  episode_title = episode['title'][0].sub(/^\d+:\? /, "")
  filename = "#{episode_num} - #{make_filename(episode_title)}.#{file_extension}"

  puts filename

  open("#{download_dir}/" + filename, "wb") do |file|
    file << URI.open(image_url).read
  end

end



