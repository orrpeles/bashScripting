#!/bin/bash
# iterate through an array of IPs and grep country and ip range

for i in $(grep -E -o '((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)' ip_range_regex.txt) 
do 
  echo "+++++++++++ "$i" ++++++++++++++++"
  whois "$i" | grep -i 'inetnum\|country\|netrange'
done| tee ./ip_range_regex_results.txt #display stdoutpu on screen and redirect to file
