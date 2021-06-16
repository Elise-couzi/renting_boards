# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Board.destroy_all
Booking.destroy_all
puts "nettoyage en cours"

lapetitecouzi = User.create!(username: 'lapetitecouzi', firstname: 'Elise', lastname: 'Couzi', email: 'elise@email.com', password: 'azerty')
vivi = User.create!(username: 'vivi', firstname: 'Victor', lastname: 'Vano', email: 'victor@email.com', password: 'azerty')
flav = User.create!(username: 'flav', firstname: 'Flavie', lastname: 'Leroy', email: 'flavie@email.com', password: 'azerty')
vaness = User.create!(username: 'vaness', firstname: 'Vanessa', lastname: 'Tsang', email: 'vanessa@email.com', password: 'azerty')
puts "#{User.count} utilisateurs ajoutés"

boards1 = Board.create!(name: 'OXELO Longboard Dancing 100 Forest', description: 'Idéale pour les débutant(es) en dancing longboard.', price: 110, user: lapetitecouzi, images: 'https://contents.mediadecathlon.com/p1949112/k$f8e4f399b38db7227250a21a666c2273/sq/longboard-dancing-100-forest.jpg?format=auto&f=960x960', address: '34 Bis Rue des Bouchers, 59800 Lille')
boards2 = Board.create!(name: 'YOW Aritz Aranburu 30.5″', description: 'Les sensations du surf sur un skate.', price: 305, user: vivi, images: 'https://yowsurf.com/wp-content/uploads/2018/11/yow-aranburu-30-5-surfskate-1.jpg', address: '155 Boulevard Montebello, 59000 Lille')
boards3 = Board.create!(name: 'HONU Mini malibu 8', description: 'Finition boisée et vernie. Parfait pour débuter le surf dans de petites conditions.', price: 570, user: flav, images: 'https://www.honusurfshop.com/206-thickbox_default/80bamboo.jpg', address: '166 Boulevard National, 13003 Marseille')
boards4 = Board.create!(name: 'CATCH SURF Heritage Retro Fish', description: 'Un deck personnalisé Catch Surf-texturé et un Single-Fin ULTRA Performance pour un mélange parfait de style old-school et de performances modernes.', price: 350, user: lapetitecouzi, images: 'https://static.akewatu.fr/image/cache/upscale_2/processed-ab793e3beb8eef3ba2e1111a98b0cb64e83b6946.jpeg', address: '26 Chemin des Meules, 13015 Marseille')
boards5 = Board.create!(name: 'GLOBE Big Blazer 32', description: 'The Big Blazer in colour Bamboo/Dotted is a GLOBE medium length diamond-tail cruiser with built-in bottle opener and soft conical wheels.', price: 150, user: flav, images: 'https://cdn.shopify.com/s/files/1/2923/8590/products/10525195_bamdot_1024x1024@2x.jpg?v=1607081040', address: '134 Quai de Bacalan, 33300 Bordeaux')
boards6 = Board.create!(name: 'BURTON Hideway', description: 'Un snowboard avec une direction optimale.', price: 400, user: vaness, images: 'https://www.freshfarm.it/media/catalog/product/cache/0115aad68028647b7075efde7ea0f22e/3/5/35414_3869_0_0.jpg', address: '3 Place du Bas des Lices, 35000 Rennes')
puts "#{Board.count} planches ajoutées"

bookings1 = Booking.create!(start_at: Date.new(2021, 8, 02), end_at: Date.new(2022, 8, 02), state: 'acceptée', user: vivi, board: boards3)
bookings2 = Booking.create!(start_at: Date.new(2021, 8, 02), end_at: Date.new(2021, 9, 02), state: 'refusée', user: flav, board: boards6)
bookings3 = Booking.create!(start_at: Date.new(2021, 8, 02), end_at: Date.new(2021, 10, 02), state: 'en attente', user: vaness, board: boards2)
bookings3 = Booking.create!(start_at: Date.new(2021, 8, 02), end_at: Date.new(2021, 8, 20), state: 'en attente', user: lapetitecouzi, board: boards2)
puts "#{Booking.count} réservations ajoutées"



