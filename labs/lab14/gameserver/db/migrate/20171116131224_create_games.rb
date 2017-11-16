class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.references :config, foreign_key: true
      t.string :title
      t.references :player1, foreign_key: true
      t.references :player2, foreign_key: true

      t.timestamps
    end
  end
end
