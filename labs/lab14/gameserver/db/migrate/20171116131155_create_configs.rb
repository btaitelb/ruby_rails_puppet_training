class CreateConfigs < ActiveRecord::Migration[5.1]
  def change
    create_table :configs do |t|
      t.string :server_url
      t.integer :server_port
      t.integer :game_type

      t.timestamps
    end
  end
end
