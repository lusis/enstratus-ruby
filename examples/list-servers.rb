$:.unshift(File.expand_path(File.join(File.dirname(__FILE__), "..", "lib")))
require 'enstratus'
require 'pp'

Enstratus.configure("#{File.expand_path(File.join(File.dirname(__FILE__), ".."))}/config.yaml")
# uncomment and set to true for raw repsonses
# or set debug: true in config.yaml

#Enstratus.configuration.debug = false

all_servers = Enstratus::Infrastructure::Server.all

# Pick the first server from all servers
single_server = Enstratus::Infrastructure::Server[all_servers.first.server_id]

pp all_servers
pp single_server
