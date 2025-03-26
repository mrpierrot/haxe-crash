# Crash in compilation

This repo is use to reproduce the following bug : "Loop in class building prevent compiler termination (Unit)" that can be trigger in the very contextual case. 
I've tried to keep this project to a minimum.

You can search for “@BUG” to find all the places that allow you to stop triggering the bug.

Tested with Haxe 4.3.6

If you trying to resolve this bug, I suggest to test the bugfix with the first commit (620eb1d6fca2e079a31c50b7dd5e92bd92588cd2) (after testing with the last), it's a more complete situation. 
