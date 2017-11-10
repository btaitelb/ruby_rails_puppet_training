class CreateFacts < ActiveRecord::Migration[5.1]
  def change
    create_table :facts do |t|
      t.string :name
      t.string :value
      t.references :machine, foreign_key: true

      t.timestamps
    end
  end
end
