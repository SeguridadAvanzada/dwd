#/bin/bash

# V 1.0 - 9.28.18 - Manwhore Industries, SA
# Simplest bash file to double check the nodes between yours and the site you are visiting
# TODO: Geolocation, and site reputation ranking etc.
# Important: This is being initially programmed in git bash and intended to be used with tracert
# You may run this program in Linux by changing it to traceroute
# Official tracert utility is a missing feature in Windows 10 onwards
# Download tracert for windows from https://docs.microsoft.com/en-us/sysinternals/downloads/whois

tracert $1 | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b"|xargs -I{} curl cli.fyi/{}
