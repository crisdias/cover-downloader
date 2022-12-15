# Podcast Cover Image Downloader

This is a script that downloads all episode cover images from a podcast RSS feed and saves them to a directory. The script automatically renames the image files based on the episode number and title.

## Requirements

- Ruby 2.5 or later

## Usage

To use the script, save it to a file (e.g., `download_podcast_covers.rb`) and make it executable using the `chmod` command:

``chmod +x download_podcast_covers.rb``


Then, run the script and provide the URL of the RSS feed as input:

``./download_podcast_covers.rb https://www.example.com/rss``


This will download all episode cover images from the RSS feed, rename the files based on the episode number and title, and save them to the `podcast_covers` directory. The episode numbers will be formatted with three leading zeros in the file names.

## Author

This script was created by [Assistant](https://openai.com/blog/openai-assistant/), a large language model trained by [OpenAI](https://openai.com/).

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
