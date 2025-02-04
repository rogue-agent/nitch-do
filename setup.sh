#!/bin/sh

linkNerd="https://github.com/unxsh/nitch/releases/download/0.1.6/nitchNerd"
linkNoNerd="https://github.com/unxsh/nitch/releases/download/0.1.6/nitchNoNerd"

doas rm -fv /usr/local/bin/nitch

echo ""

read -p "Use nerd font symbols? (y/n): " symbolsYN
echo "Installation..."

case $symbolsYN in
  "y")
    wget $linkNerd
    chmod +x nitchNerd
    doas mv nitchNerd /usr/local/bin/nitch
  ;;

  "n")
    wget $linkNoNerd
    chmod +x nitchNoNerd
    doas mv nitchNoNerd /usr/local/bin/nitch
  ;;
esac

echo ""
