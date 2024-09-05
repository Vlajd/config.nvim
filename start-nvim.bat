@echo off
start wt -w new -f -d %~d1%~p1 -p Bash nvim %~1
