class CreateMonsters < ActiveRecord::Migration[7.0]
  def change
    create_table :monsters do |t|
      t.string :name, null: false
      t.integer :level, null: false
      t.references :monster_species, null: false, foreign_key: true
      t.references :owner, null: false, foreign_key: { to_table: :trainers }

      t.timestamps
    end
  end
end
