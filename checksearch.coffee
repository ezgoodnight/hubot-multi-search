# Description: An update to the simple shell commands script Sapan Ganguly created.
# While the script worked well for me in shell it caused problems with the Slack Adapter.
# With the help of Evan Soloman, this version plays nice with Slack.
#
# Dependencies:
# checksearch.sh bash script (included in repository)
#
# Configuration
# Change the script if you have to execute a different command.
# The command variable can be changed to basic shell commands or you can execute
# scripts, as in the example here.
#
# Commands:
# hubot check for - Returns a loop of up to 100 files if they exist
#
# Authors:
# Eric Z Goodnight, with LOTS of help from Evan Soloman & Sapan Ganguly
#

{exec} = require 'child_process'
module.exports = (robot) ->
  robot.respond /check[\s]?for (.*)$/i, (msg) ->
    Argument = msg.match[1]
    command = "./checksearch.sh '#{Argument}'"

    msg.send "Looking for #{Argument}."

    exec command, (error, stdout, stderr) ->

      if stdout
# stdout returns all errors and messages provided that there is stdout.
        msg.send stdout

      else
#        msg.send "Cannot find it!"
