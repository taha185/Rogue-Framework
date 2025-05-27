import socket
def bng():
  ip = input("Ip : ")
  port = int(input("Port : "))
  timeout = int(input("Set Timeout : "))
  sc = socket.socket()
  sc.settimeout(timeout)
  if port == 80:
     htpr = f"GET / HTTP/1.1\r\nHOST : {ip}"
     sc.sendall(htpr.encode())
  sc.connect((ip , port))
  banner = sc.recv(1024)
  sc.close()
  print(banner.decode().split())
bng()