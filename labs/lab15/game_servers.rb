require 'hiera'

hiera = Hiera.new(config: '/etc/puppet/hiera.yaml')
puts hiera.lookup('game_servers', [], nil)
