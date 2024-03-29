require 'socket'
server = TCPServer.new('127.0.0.1', 8080)

puts "Server running at http://127.0.0.1:8080 🚀"
 
while session = server.accept
  request = session.gets
  # puts request
 
  session.print "HTTP/1.1 200\r\n"
  session.print "Content-Type: text/html\r\n"
  session.print "\r\n"
  session.print "Hello world!"
 
  session.close
end
