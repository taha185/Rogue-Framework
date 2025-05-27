read -p "===Linux Or Termux (L/T)=== : " ch
if [ "$ch" == "L" ]; then
  sudo apt update && upgrade 
  sudo apt install python2 lua54  python3 -y
  chmod +x ./rogue.sh
  echo "====installation complete : 'Run ./rogue.sh'===="
elif [ "$ch" == "T" ]; then
  apt update && upgrade 
  pkg install python2 lua54 -y
  chmod +x rogue.sh
  echo "installation complete : 'Run ./rogue.sh' "
  fi