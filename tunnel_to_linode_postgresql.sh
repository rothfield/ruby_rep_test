# First make sure that an SSH server is running properly on the same machine as the PostgreSQL server and that you can log in using ssh as some user. Then you can establish a secure tunnel with a command like this from the client machine:

ssh -L 3333:ragapedia.com:5432 postgres@ragapedia.com
# The first number in the -L argument, 3333, is the port number of your end of the tunnel; it can be chosen freely. The second number, 5432, is the remote end of the tunnel: the port number your server is using. The name or IP address between the port numbers is the host with the database server you are going to connect to. In order to connect to the database server using this tunnel, you connect to port 3333 on the local machine:

#psql -h localhost -p 3333 postgres
