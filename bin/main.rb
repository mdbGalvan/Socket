#encoding: UTF-8

require 'Client'
require 'Server'

option = (ARGV[0] || 11).to_i

case option
	when 1 # Socket del tipo TCP para el cliente
		client = Client.new()
		client.connectionTCP
	when 2 # Socket del tipo TCP para el cliente, introduciendo puerto y host
		client = Client.new(ARGV[1], ARGV[2])
		client.connectionTCP
	when 3 # Socket del tipo UDP para el cliente
		client = Client.new()
		client.connectionUDP
	when 4 # Socket del tipo UDP para el cliente, introduciendo puerto y host
		client = Client.new(ARGV[1], ARGV[2])
		client.connectionUDP
	when 5 # Indica si el puerto está abierto para el cliente
		client = Client.new(ARGV[1], ARGV[2])
		client.openPort
	when 11 # Socket del tipo TCP para el servidor
		server = Server.new()
		server.connectionTCP
	when 12 # Socket del tipo TCP para el servidor, introduciendo puerto
		server = Server.new(ARGV[1], ARGV[2])
		server.connectionTCP
	when 13 # Socket del tipo UDP para el servidor
		server = Server.new()
		server.connectionUDP
	when 14 # Socket del tipo UDP para el servidor, introduciendo puerto y host
		server = Server.new(ARGV[1], ARGV[2])
		server.connectionUDP
end

