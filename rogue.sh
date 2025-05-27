#!/bin/bash
read -p "Would you Like to Install Everything(y/N) : " ch 
if [ "$ch" == "y" ]; then
  bash tools/setup.sh
elif [ "$ch" == "N" ]; then
echo ""
fi
echo -e "\n================ Rogue Framework =================\n"
echo 'DISCLAIMER:

This tool is developed strictly for educational and authorized testing purposes only.

By using this program, you agree that:
- You have permission to scan and interact with any target specified.
- You are not using this tool for unauthorized access or malicious activity.
- The developer (Taha185) is not responsible for any misuse, damage, or legal consequences caused by this software.

Use responsibly. Hack the planet — but with consent.
'
echo "======================================"
echo "Made by Taha185"
echo "=============================="
echo -e "\nAvailable Commands:\n"
echo -e "  portscan     - Simple port scanner"
echo -e "  bannergrab   - Banner grabber"
echo -e "  ping         - Ping tool"
echo -e "  help         - Show this menu"

echo -e "\n==================================================\n"

echo ""
echo "======================================"


while true; do
  read -p "rogue>> " cmd

  if [ "$cmd" == "portscan" ]; then
    python2 tools/portscanner.py

  elif [ "$cmd" == "bannergrab" ]; then
    python3 tools/bannergrab.py

  elif [ "$cmd" == "ping" ]; then
    bash tools/ping.sh

  elif [ "$cmd" == "help" ]; then
    echo "Available Commands:"
    echo "  portscan     - Simple port scanner"
    echo "  bannergrab   - Basic banner grabber"
    echo "  ping         - Ping tool"
    echo "  help         - Show this help menu"

  else
    echo "Unknown command: $cmd"
  fi
done

