#encoding: UTF-8

require 'socket'   

class Server    

	attr_accessor :hostname, :port

	def initialize(hostname = 'localhost', port = '8000')
		@hostname = hostname
		@port = port
	end

	def connectionTCP
		server = TCPServer.open(port) # Se crea un objeto sock con la conexion al puerto port tipo TCP                 
		loop { # Bucle infinito                                 
		  Thread.start(server.accept) do |client| # Se crea un hilo por cada conexión aceptada
		  	client.write "\nConexion abierta\n" # Se imprime en el cliente
		    print(client, " aceptado\n") # Se imprime en el servidor
		    client.write (Time.now.ctime) # Se imprime en el cliente la hora
		    sleep 1
		    client.write "\nCerrando la conexion\n"
		    print(client, " cerrado\n") # Se imprime en el servidor
		    client.close                        
		  end
		}
	end

	def connectionUDP
		client = UDPSocket.open # Se crea un objeto sock con la conexion al host hostname por el puerto port tipo UDP
		client.bind(hostname, port) # Se enlaza la conexión abierta a los parámetros introducidos ahora con bind
		while true do
			p client.recvfrom(1024) # El número de bytes posibles de recibir
		end
	end

end

