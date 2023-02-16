#!/bin/bash

# Define the cron command
cron_command="your_cron_command"

# Define the cron schedule
cron_schedule="* * * * *"

# Add the cron job to the crontab
(crontab -l ; echo "$cron_schedule $cron_command") | crontab -