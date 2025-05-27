import socket
def scan():
  host = raw_input("Enter Ip : ")
  limit = int(raw_input("Set port limit to  (<6553): "))
  for port in range(1 , limit):
    sc =socket.socket(socket.AF_INET ,  socket.SOCK_STREAM)
    sc.settimeout(0.5)
    rs = sc.connect_ex((host , port ))
    if rs == 0:
      print "Port" , port , " is open"
    sc.close()
scan()
