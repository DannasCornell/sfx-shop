require "open-uri"

puts "destroying DB"

Order.destroy_all
Cart.destroy_all
SfxPack.destroy_all
SoundDesigner.destroy_all

designer = SoundDesigner.create(first_name: 'Olivier', last_name: 'Girardot', address: 'SonnenburegerStrasse 76, 10437 Berlin, Germany', location: 'Berlin', bio: 'nothing special right now')

monster_pack = SfxPack.create(sku: "OGPACK013", title:'Monster SFX Pack', description: 'This HUGE monster pack includes all sorts of monster sounds from a wide selection of different creatures.  Dragons, Giants, Lizard Monsters, Orcs, Skeletons, Werewolves, Goblins, Gnolls, Fire Monsters, Ghouls and so on.
You will hear those creatures growl, scream, talk, fight, bite, attack, spit fire, fly, walk, kill, die and more.', category: 'monster, fantasy', tags: 'scary, monster, fantasy, action, adventure', size_mb: 1400, duration: '88', number_of_tracks: 1108, price_cents: 2500, sound_designer_id: designer.id, link: "https://www.youtube.com/embed/ymMho53LEVg", list: "https://www.ogsoundfx.com/Documents/Monster_Pack_List_of_Sounds_Unity_2020.pdf", version: 2, product_link: "https://www.ogsoundfx.com/NeWsfXsHoPbAmSfx/di84kf965k/Monster_Pack_2020_2.zip")
guns_explosions = SfxPack.create(sku: "OGPACK002", title:'Guns and Explosions', description: 'the best sounds ever', category: 'weapons, war', tags: 'war, realistic, battle, guns, explosions', size_mb: 500, duration: '29', number_of_tracks: 418, price_cents: 1900, sound_designer_id: designer.id, link: "https://soundcloud.com/ogsoundfx/guns-explosions-preview-track-2", list: "https://www.ogsoundfx.com/Documents/Guns_&_Explosions_List_of_Sounds.pdf", version: 1, product_link: "https://www.ogsoundfx.com/NeWsfXsHoPbAmSfx/54sdkg5fd5/Guns_And_Explosions_SFX.zip")
outdoor_atmospheres = SfxPack.create(sku: "OGPACK014", title:'Outdoor Atmospheres', description: 'the best sounds ever', category: 'atmospheres', tags: 'nature, realistic, outdoor', size_mb: 5840, duration: '6 hours', number_of_tracks: 96, price_cents: 1900, sound_designer_id: designer.id, link:"https://youtu.be/75DSTMFMejg", list: "https://www.ogsoundfx.com/Documents/Outdoor_Atmospheres_List_of_Sounds.pdf", version: 1, product_link: "https://www.ogsoundfx.com/NeWsfXsHoPbAmSfx/jsd555fkkz/Outdoor_Atmospheres_SFX_Pack1.zip,https://www.ogsoundfx.com/NeWsfXsHoPbAmSfx/jsd555fkkz/Outdoor_Atmospheres_SFX_Pack2.zip,https://www.ogsoundfx.com/NeWsfXsHoPbAmSfx/jsd555fkkz/Outdoor_Atmospheres_SFX_Pack1.zip")
underground_atmospheres = SfxPack.create(sku: "OGPACK004", title:'Underground Atmospheres', description: 'the best sounds ever', category: 'Atmospheres', tags: 'fantasy, underground, nature, cavern, atmospheres', size_mb: 1400, duration: '90', number_of_tracks: 32, price_cents: 1500, sound_designer_id: designer.id, link: "https://youtu.be/YhQ_E7aznQ8", list: "https://www.ogsoundfx.com/Documents/Underground_Atmospheres_List_of_SFX.pdf", version: 1, product_link: "https://www.ogsoundfx.com/NeWsfXsHoPbAmSfx/jdf5fd6gji/Underground_Atmospheres_SFX_Pack1.zip,https://www.ogsoundfx.com/NeWsfXsHoPbAmSfx/jdf5fd6gji/Underground_Atmospheres_SFX_Pack2.zip")
natural_disasters = SfxPack.create(sku: "OGPACK009", title:'Natural Disasters', description: 'the best sounds ever', category: 'Natural Occurences', tags: 'nature, atmospheres, disaster, catastrophe, volcano, eruption, explosion, earthquake, landslide, avalanche', size_mb: 840, duration: '50', number_of_tracks: 53, price_cents: 1500, sound_designer_id: designer.id, link: "https://youtu.be/3-vACKDRc3A", list: "https://www.ogsoundfx.com/Documents/Natural_Disasters_List_of_SFX.pdf", version: 1, product_link: "https://www.ogsoundfx.com/NeWsfXsHoPbAmSfx/o86djk6y6y/Natural_Disasters_SFX.zip")
ghosts = SfxPack.create(sku: "OGPACK007", title:'Ghost & Haunted', description: 'the best sounds ever', category: 'fantasy, horror', tags: 'halloween, scary; ghost, haunted, horror supernatural, fantasy', size_mb: 838, duration: '50', number_of_tracks: 32, price_cents: 1000, sound_designer_id: designer.id, link: "https://soundcloud.com/ogsoundfx/ghost-and-hunted-places-sound-effect-pack-preview", list: "https://www.ogsoundfx.com/Documents/Ghosts_&_Haunted _List_of_Sounds.pdf", version: 1, product_link: "https://www.ogsoundfx.com/NeWsfXsHoPbAmSfx/qdg6i6h8sd/Ghosts_And_Haunted_SFX.zip")
free = SfxPack.create(sku: "OGFS002", title:'Free Pack', description: 'the best sounds ever', category: 'fantasy, action, nature', tags: 'fantasy, guns, explosions, natural, disasters, horror', size_mb: 308, duration: '18', number_of_tracks: 51, price_cents: 0, sound_designer_id: designer.id, link: "https://soundcloud.com/ogsoundfx/free-sound-effects-pack-preview", list: "", version: 2, product_link: "https://www.ogsoundfx.com/NeWsfXsHoPbAmSfx/Free_SFX_Pack.zip")
weather = SfxPack.create(sku: "OGPACK001", title:'Weather Effects', description: 'the best sounds ever', category: 'nature', tags: 'natural, disasters, winds, rain, thunder', size_mb: 680, duration: '41', number_of_tracks: 33, price_cents: 1500, sound_designer_id: designer.id, link: "https://youtu.be/MhZK2qTwe2s", list: "https://www.ogsoundfx.com/Documents/Weather_Effects_List_of_SFX.pdf", version: 1, product_link: "https://www.ogsoundfx.com/NeWsfXsHoPbAmSfx/7t77ghhskp/Weather_Effects_SFX.zip")

monster_pack.photos.attach(io: URI.open('https://res.cloudinary.com/dk9a86uhu/image/upload/v1604325686/sfx_shop/MonsterPack_Transp_small_crop_d1d14s.png'), filename: 'image', content_type: "image/jpg")
guns_explosions.photos.attach(io: URI.open('https://res.cloudinary.com/dk9a86uhu/image/upload/v1604325686/sfx_shop/Guns_Explosions_transp_small_crop_mrc3yy.png'), filename: 'image', content_type: "image/jpg")
outdoor_atmospheres.photos.attach(io: URI.open('https://res.cloudinary.com/dk9a86uhu/image/upload/v1604325686/sfx_shop/OutdoorAtmospheres_transp_small_crop_iubxlm.png'), filename: 'image', content_type: "image/jpg")
underground_atmospheres.photos.attach(io: URI.open('https://res.cloudinary.com/dk9a86uhu/image/upload/v1604325688/sfx_shop/UndergroundAtmopsheres_transp_small_crop_izhqkj.png'), filename: 'image', content_type: "image/jpg")
natural_disasters.photos.attach(io: URI.open('https://res.cloudinary.com/dk9a86uhu/image/upload/v1604325685/sfx_shop/NaturalDisasters_transp_small_crop_d5gfic.png'), filename: 'image', content_type: "image/jpg")
ghosts.photos.attach(io: URI.open('https://res.cloudinary.com/dk9a86uhu/image/upload/v1604502145/sfx_shop/Ghost_Haunted_transp_small_crop_kdzn3m.png'), filename: 'image', content_type: "image/jpg")
free.photos.attach(io: URI.open('https://res.cloudinary.com/dk9a86uhu/image/upload/v1604502138/sfx_shop/FreePack_transp_small_crop_tzg9yw.png'), filename: 'image', content_type: "image/jpg")
weather.photos.attach(io: URI.open('https://res.cloudinary.com/dk9a86uhu/image/upload/v1604502142/sfx_shop/WeatherEffects_transp_small_crop_snnltt.png'), filename: 'image', content_type: "image/jpg")

puts "created #{SoundDesigner.count} sound designers"
puts "created #{SfxPack.count} sound effect packs"

# re attributing pics

# monster = SfxPack.where(title: "Monster SFX Pack")[0]
# guns = SfxPack.where(title: "Guns and Explosions")[0]
# outdoor = SfxPack.where(title: "Outdoor Atmospheres")[0]
# underground = SfxPack.where(title: "Underground Atmospheres")[0]
# natural = SfxPack.where(title: "Natural Disasters")[0]

# monster.photos.destroy_all
# guns.photos.destroy_all
# outdoor.photos.destroy_all
# underground.photos.destroy_all
# natural.photos.destroy_all

# monster.photos.attach(io: URI.open('https://res.cloudinary.com/dk9a86uhu/image/upload/v1604325686/sfx_shop/MonsterPack_Transp_small_crop_d1d14s.png'), filename: 'image', content_type: "image/jpg")
# guns.photos.attach(io: URI.open('https://res.cloudinary.com/dk9a86uhu/image/upload/v1604325686/sfx_shop/Guns_Explosions_transp_small_crop_mrc3yy.png'), filename: 'image', content_type: "image/jpg")
# outdoor.photos.attach(io: URI.open('https://res.cloudinary.com/dk9a86uhu/image/upload/v1604325686/sfx_shop/OutdoorAtmospheres_transp_small_crop_iubxlm.png'), filename: 'image', content_type: "image/jpg")
# underground.photos.attach(io: URI.open('https://res.cloudinary.com/dk9a86uhu/image/upload/v1604325688/sfx_shop/UndergroundAtmopsheres_transp_small_crop_izhqkj.png'), filename: 'image', content_type: "image/jpg")
# natural.photos.attach(io: URI.open('https://res.cloudinary.com/dk9a86uhu/image/upload/v1604325685/sfx_shop/NaturalDisasters_transp_small_crop_d5gfic.png'), filename: 'image', content_type: "image/jpg")
