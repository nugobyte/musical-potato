#!/bin/bash
# ↑ That's the interpreter path
<<_
USE
 1st argument is the current dir(s) name.
 2nd argument is the new name the user would like to change their dir(s) to.
 3rd argument is the # amount of dirs that have the name of the 1st arg.
EX
 chmod +x ./chdirname.sh (adds executable perms)
 ./chdirname.sh <arg1> <arg2> <arg3>
 chmod -x ./chdirname.sh (strips perms)
WHY
 I made this to explain to a friend.
 Because shell scripting is cool.
 Automates tasks that would usually take longer.
DOCS
 https://bash.cyberciti.biz/guide/Main_Page
 https://www.ieee.org/publications/index.html
CAVEATS
 This does not work without spaces (i.e., Dir1) -> I'll fix that someday idk
 The proper way is:
 "<Dir-name> <some-abitrary-value>"
-

#Prompt
echo "Do you want to change dir(s) name(s) $1 to $2: "; read i;

#Input is evaluated here, and the arguments are used here as well.
if [[ $i -eq y ]] || [[ $i -eq Y ]];
 then
  for i in $(seq $3)
  do
   mv "$1 $i" "$2 $i"
  done
else
  echo "Invalid choice/Answered with No."
fi

#List all no matter the outcome.
ls -la
