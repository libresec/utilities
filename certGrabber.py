#certGrabber.py

import ssl, sys

try:
	host = sys.argv[1]
	port = int(sys.argv[2])
	cert = ssl.get_server_certificate((host, port))
	print cert
except:
	print "usage: python certGrabber.py <host> <port>"






