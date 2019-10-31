#!/bin/sh

PATH_AND_FILE=$1
COMMAND=$2

echo "Running $COMMAND on $1"

osascript <<EOF

tell application "iTerm"
  activate

  # Check to see if we have an open window. If not, open one.
  if (count windows) is 0 then # no window is open.
    create window with default profile
    delay 0.5
  end if

  set currentWindow to current window # get a reference to current window

  # We have an open window.
  tell current session of currentWindow
    if (is processing) or (name is not "bash") then # the current session is busy
      tell tabs[0] of currentWindow
        select
      end tell
      delay 0.1
    end if
  end tell

  tell current session of currentWindow
    # run the script
    set script_string to "$COMMAND" & " " & quoted form of "$PATH_AND_FILE"
    write text script_string
  end tell

end tell

tell application "Sublime Text"
  activate
end tell
EOF
