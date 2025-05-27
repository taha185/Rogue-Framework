read -p "===Linux Or Termux (L/T)=== : " ch
if [ "$ch" == "L" ]; then
  sudo apt update && upgrade 
  sudo apt install python2   python3 -y
  pip install requests
  chmod +x ./rogue.sh
  clear
  echo "====installation complete : 'Run ./rogue.sh'===="
  sleep 3
  clear
elif [ "$ch" == "T" ]; then
  apt update && upgrade 
  pkg install python2 python3 -y
  pip install requests
  chmod +x rogue.sh
  clear
  echo "====installation complete : 'Run ./rogue.sh'==== "
  sleep 1 
  clear
  fi
