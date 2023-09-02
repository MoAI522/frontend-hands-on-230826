class CreateMonsterSpecies < ActiveRecord::Migration[7.0]
  def change
    create_table :monster_species do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
