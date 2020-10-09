# Overview

Like most people, I try to check [Baby Wants A Bottle](https://babywantsabottle.com/) daily. However, there are days when I forget to check back. This repository is here to help me.

# Details

The file babygetsabottle.rb stores the latest comic from Baby Wants A Bottle in latest_known.txt.

There is a GitHub workflow file (check_back.yml) that runs babygetsabottle.rb on a cron schedule. If there is a new latest comic it commits it back to this repo.

To get notified when new comics appear, setup a GitHub notification for changes to this repository.