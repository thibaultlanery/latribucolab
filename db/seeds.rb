# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.destroy_all

category_list = [
  ["Nouvelles variétés de café", "https://res.cloudinary.com/dcljc9muz/image/upload/c_fill,h_150,w_150/v1522885728/café2_mbn1tg.webp"],
  ["Variétés de thés", "http://res.cloudinary.com/dcljc9muz/image/upload/c_fill,h_150,w_150/v1523829838/DSC_0015_hifvs0.webp"],
  ["Variétés de poivres", "https://res.cloudinary.com/dcljc9muz/image/upload/v1523828163/DSC_0007_fcfzai.webp"],
  ["Variétés d'épices","https://res.cloudinary.com/dcljc9muz/image/upload/c_fill,h_150,w_150/v1523828163/DSC_0008_pthpke.webp"],
  ["Vanille", "http://res.cloudinary.com/dcljc9muz/image/upload/v1523829958/van_p0rf1e.webp"],
  ["Variétés de lentilles","http://res.cloudinary.com/dcljc9muz/image/upload/v1523829956/lent_sb6xl7.webp"],
  ["Variétés de riz", "https://res.cloudinary.com/dcljc9muz/image/upload/c_fill,h_150,w_150/v1523828163/DSC_0012_hsznsq.webp" ],
  ["Tablettes de chocolats", "http://res.cloudinary.com/dcljc9muz/image/upload/c_fill,h_150,q_auto:best,w_150/v1523828589/cacao_oprarl.webp"]
]

category_list.each do |category|
  Category.create( name: category[0], pictoname: category[1] )
end
