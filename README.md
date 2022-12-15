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

## Human here

Everything above this heading was written by ChatGPT. Here's the story behind this idea:

One morning I was thinking that my podcast at some point in 2023 will publish its 100th episode and it would be nice to have a mosaic of all cover images to post on social media. I could go to my Google Drive folder and grab all .jpgs manually, then throw them to Photoshop, etc. But that's not fun. So I decided to get ChatGPT to do it for me. Given a RSS feed, grab all episode cover images and save them to a folder.

You can check the conversation transcript on chat.txt.


