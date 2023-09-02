5.times.each do |i|
  Trainer.new(name: "trainer#{i}").save
end

monster_species = %w[スナギズモ ガマグチ ボクスミス ワシリバシ ドマーチュ ハルチュウ ポゼッセン]
monster_species.each do |name|
  MonsterSpecies.new(name:).save
end

# クソ汚い
c = 0
Trainer.all.each do |t|
  3.times.each do |i|
    Monster.new(name: "モン#{t.id}-#{i}", level: (i + 1), monster_species_id: (c + 1), owner_id: t.id).save
    c = (c + 1) % monster_species.length
  end
end
