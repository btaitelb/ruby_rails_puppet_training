require 'facter'
require 'hiera'

Facter.add(:gameserver) do
  setcode do
    hiera = Hiera.new(config: '/etc/puppet/hiera.yaml')
    servers = hiera.lookup('game_servers', [], nil)
    true
    # servers.any? do |url|
    #   host = url.gsub(/^https?\:/, '')
    #   host = host.gsub(/\:[d+].*/, '')
    #   Facter.fact('ips').include?(host)
    # end
  end
end
