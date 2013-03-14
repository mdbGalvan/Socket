#encoding: UTF-8

require 'socket'

class Client

	attr_accessor :hostname, :port

	def initialize(hostname = 'localhost', port = '8000')
		@hostname = hostname
		@port = port
	end

	def openPort
		if !hostname || !port 
			puts "\tEl puerto o host no fue introducido." 
		else 
			sock = TCPSocket.new(hostname, port) # Se crea un objeto sock con la conexion al host hostname por el puerto port tipo TCP
			if !sock 
				puts "Puerto cerrado!" 
			else 
				puts "Puerto abierto!" 
			end 
		end
	end

	def connectionTCP
		sock = TCPSocket.open(hostname, port) # Se crea un objeto sock con la conexion al host hostname por el puerto port tipo TCP
		while line = sock.gets # Obtiene los datos del socket                   
		  puts line.chop # Imprime lo obtenido sin salto de línea                 
		end
		sock.close # Cierra la conexión
	end

	def connectionUDP
		# SOL_SOCKET: 	Opción del nivel de Socket, puede ser ésta o IPPROTO_TCP
		# SO_BROADCAST: Informa si la transmisión de mensajes de emisión está soportada
		# setsockopt: 	Establece opciones en el socket
		sock = UDPSocket.open # Se crea un objeto sock con la conexion al host hostname por el puerto port tipo UDP
		sock.setsockopt(Socket::SOL_SOCKET, Socket::SO_BROADCAST, true)
		sock.send("mensaje", 0, hostname, port) # Envía un mensaje vía BasicSocket, send(mesg, flags [, dest_sockaddr])
		sock.close # Cierra la conexión
	end
end
