# Use this socket server to look at raw data and headers
# to help in debugging

import socket

# Set the buffer size to receive data
# It is recommended that this be a power of 4
SIZE_BUFFER = 4096

class tcpServerParentSocketClass():
    def __init__(self, host, port):
        self.host = host
        self.port = port

    def start(self):
        # Get a socket object
        tcpParentSock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        # Bind socket to local host and port
        try:
            tcpParentSock.bind((self.host, self.port))
        except socket.error as msg:
            print ('Bind failed. Error Code : ' + str(msg[0]) + ' Message ' + msg[1])

        # Start listening on socket
        # The parameter value being passed determines the backlog
        # which is the number of connections that are allowed to be held
        # in queue without being refused
        tcpParentSock.listen(1)

        # Wait to accept a connection
        # This call will block till a client connects
        # Once a client connects we will get a new socket object 'newChildSock' which
        # will be used to send an receive data
        # Ideally the new socket should execute in a different thread so that we can
        # serve multiple clients, but in this code we only execute a single thread
        newChildSock, addr = tcpParentSock.accept()
        print('Connected with ' + addr[0] + ':' + str(addr[1]))
        # Send some data to the client using the new Socket
        dataTX = bytes('Welcome ! You have connected to ' + self.host + ' on port ' + str(self.port) + '\r\n','utf-8')
        newChildSock.sendall(dataTX)
        dataTX = bytes('Please press any key in your console, after that server will exit\r\n', 'utf-8')
        newChildSock.sendall(dataTX)
        # The following call will block till 1 byte of data comes in
        dataRX = newChildSock.recv(SIZE_BUFFER)
        dataRXStr = dataRX.decode("utf-8")
        print('Data received from client: ' + dataRXStr)
        print('Closing the child connection now: ' + dataRXStr)
        newChildSock.close()
        print('Closing the parent connection now: ' + dataRXStr)
        tcpParentSock.close() 


# Class to instantiate the threading class and run the thread
class demoSocketServerClass:
    def startSocketServer(self):
        print("----------- startSocketServer")
        # Specify the hostname and port for the server to run
        # Host name of blank "" means the server will run on all available
        # IP addresses of the current machine. We can also give a specific ip address
        # to run only in that port
        socketServer = tcpServerParentSocketClass("", 5000)
        print("Started Socket Server, ready to listen ...")
        socketServer.start()
        print("Closed Socket Server")

# main() function which contain the high level routines
def main():
    dsc = demoSocketServerClass()
    dsc.startSocketServer()

# Call the main() function
main()