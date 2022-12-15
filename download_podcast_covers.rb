#!/usr/bin/env ruby
require 'open-uri'

# Check if the user provided an RSS feed URL as input
if ARGV.empty?
    puts "Please provide the URL of the RSS feed as input."
    exit 1
  end
  
  # Set the directory where the images will be downloaded
  download_dir = "podcast_covers"
  
  # Make the download directory if it doesn't exist
  Dir.mkdir(download_dir) unless Dir.exist?(download_dir)
  
  # Download the RSS feed
  rss_feed = URI.open(ARGV[0]).read
  
  # Parse the XML to extract the episode information
  episodes = rss_feed.scan(/<item>\s*<title>([^<]*)/)
  
  # Download and rename the images
  episodes.reverse.each_with_index do |episode, index|
    # Extract the episode number and title
    episode_num = sprintf("%03d", index + 1)
    episode_title = episode[0].sub(/^\d+: /, "")
  
    # Download the image
    image_url = rss_feed[/<itunes:image href="([^"]*)/, 1]
    puts "#{download_dir}/#{episode_num} - #{episode_title}.jpg"
    URI.open("#{download_dir}/#{episode_num} - #{episode_title}.jpg", "wb") do |file|
      file << URI.open(image_url).read
    end
  end
  