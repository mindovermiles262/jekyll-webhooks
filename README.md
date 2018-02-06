# Jekyll Autobuild
## Using a GitHub Webhook

### How it works

* Changes to the blog are made and pushed to GitHub
* Github sends a webhook to the Sinatra Server
* Sinatra checks if merge was made to `deploy` branch
* Sinatra triggers `jekyll build` to rebuild the blog after pulling the changes

### Settings

* By default, the sinatra server listens on port 1989. You can change this inside of `server.rb`
* You can visit `http://your-url.com:1989/testing` to see if the server is running. You should see a blank page.

### Set Up

* Edit the `update-blog.sh` to your Jekyll blog directory
* Add a github webhook to your repo
    * Your Repo > Settings > Webhooks Tab > Add webhook
    * Set URL to `http://your-server-ip:1989/update-blog`
    * Set `Content Type` to JSON
* Open port 1989 if necessary (`sudo ufw allow 1989`)
* Start server manually by running `ruby server.rb -p 1989 -o 0.0.0.0`
* Navigate to `http://your-ip:1989/testing` and check to see server is running

To automagically start on system reboot add `start-server.cron` to your crontab:
```
$ crontab -e

@reboot /home/you/webhooks/start-server.cron
```

