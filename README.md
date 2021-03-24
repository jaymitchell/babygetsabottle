# Overview

Like most people, I try to check [Baby Wants A Bottle](https://babywantsabottle.com/) daily. However, there are days when I forget to check back. This repository is here to help me.

# Details

The file babygetsabottle.rb stores the latest comic from Baby Wants A Bottle in latest_known.txt.

There is a GitHub workflow file (check_back.yml) that runs babygetsabottle.rb on a cron schedule. If there is a new latest comic it commits it back to this repo.

GitHub emails me when a new file is pushed to this repo, which lets me know that a new comic is available.

https://news.ycombinator.com/item?id=24732943 and https://simonwillison.net/2020/Oct/9/git-scraping/ provide more details about this technique.

GitHub requires that there be changes every 60 days in order to support workflows, so sometimes I'll make _minor_ changes, like this, to the project to meet that requirement.
