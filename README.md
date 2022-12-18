# Podcast Cover Image Downloader

This is a script that downloads all episode cover images from a podcast RSS feed and saves them to a directory. The script automatically renames the image files based on the episode number and title.

This was supposed to be a script 100% created by ChatGPT (including this README), but then I found a bug in the code and when I asked ChatGPT to fix it, I got an error saying I had done too many requests in 1 hour.

Then I scrapped the code and did it myself, with a little help from google+stackoverflow, like the olden ones used to do.

The original ChatGPT conversation can be found at [chat.txt](chat.txt).

mosaic.rb will eventually generate a mosaic file with all covers, but it's currently unfinished. The current version was also done by ChatGPT.

## Requirements

- Ruby 2.5 or later
- ``gem install xml-simple``

## Usage

``ruby download_podcast_covers.rb https://www.example.com/rss``


This will download all episode cover images from the RSS feed, rename the files based on the episode number and title, and save them to the `podcast_covers` directory. The episode numbers will be formatted with three leading zeros in the file names.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.


