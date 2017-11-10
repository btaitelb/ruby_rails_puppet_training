class CreateMachines < ActiveRecord::Migration[5.1]
  def change
    create_table :machines do |t|
      t.string :name
      t.references :datacenter, foreign_key: true

      t.timestamps
    end
  end
end
