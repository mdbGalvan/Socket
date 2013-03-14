#encoding: UTF-8

# Se define la tarea por defecto
task :default => :serverTCP

# CLIENTE

desc "Socket del tipo TCP para el cliente"
task :clientTCP do
  sh "ruby -Ilib bin/main.rb 1" 	# Opción 1 del main
end

desc "Socket del tipo TCP para el cliente, introduciendo puerto y host"
task :clientTCP2, :hostname, :port do |t, args|
  hostname = (args[:hostname] || 'localhost').to_s 	# Si no se introduce se toma por defecto: localhost
  port = (args[:port] || 8000).to_i					# Si no se introduce se toma por defecto: 8000
  sh "ruby -Ilib bin/main.rb 2 #{hostname} #{port}" 
end

desc "Socket del tipo UDP para el cliente"
task :clientUDP do
  sh "ruby -Ilib bin/main.rb 3" 
end

desc "Socket del tipo UDP para el cliente, introduciendo puerto y host"
task :clientUDP2, :hostname, :port do |t, args|
  hostname = (args[:hostname] || 'localhost').to_s
  port = (args[:port] || 8000).to_i
  sh "ruby -Ilib bin/main.rb 4 #{hostname} #{port}" 
end

desc "Indica si el puerto está abierto para el cliente"
task :openPort, :hostname, :port do |t, args|
  hostname = (args[:hostname] || 'localhost').to_s
  port = (args[:port] || 8000).to_i
  sh "ruby -Ilib bin/main.rb 5 #{hostname} #{port}" 
end

# SERVIDOR

desc "Socket del tipo TCP para el servidor"
task :serverTCP do
  sh "ruby -Ilib bin/main.rb 11" 
end

desc "Socket del tipo TCP para el servidor, introduciendo puerto"
task :serverTCP2, :port do |t, args|
  hostname = 'localhost'
  port = (args[:port] || 8000).to_i
  sh "ruby -Ilib bin/main.rb 12 #{hostname} #{port}" 
end

desc "Socket del tipo UDP para el servidor"
task :serverUDP do
  sh "ruby -Ilib bin/main.rb 13" 
end

desc "Socket del tipo UDP para el servidor, introduciendo puerto y host"
task :serverUDP2, :hostname, :port do |t, args|
  hostname = (args[:hostname] || 'localhost').to_s
  port = (args[:port] || 8000).to_i
  sh "ruby -Ilib bin/main.rb 14 #{hostname} #{port}" 
end