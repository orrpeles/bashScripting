#!/bin/bash
# iterate through an array of IPs and grep country and ip range

while read -r ip
do
 echo "========= "$ip"========="
 whois "$ip" | grep -i 'inetnum\|country\|netrange'
    case "${PIPESTATUS[*]}" in
    "0 0") ;; # all good
    "0 "*) echo grepped nothing ;;
    *)     echo whois failed ;;
    esac
done < ./ip_range.txt | tee ./ip_results.txt #display stdoutpu on screen and redirect to file
