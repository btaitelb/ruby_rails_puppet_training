class Config < ApplicationRecord
  enum game_type: { highcard: 10, five_card_draw: 20 }

  after_save :update_puppet_facts

  def update_puppet_facts
    game_servers = Config.all.map do |config|
      { "server" => "#{config.server_url}:#{config.server_port}",
        "game_type" => config.game_type }
    end
    yml = {"game_servers" => game_servers}.to_yaml

    File.open('/etc/puppet/code/hiera/common.yaml', 'w') do |f|
      f.puts yml
    end
  end
end
