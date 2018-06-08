# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.destroy_all

category_list = [
  ["Des variétés de café", "https://res.cloudinary.com/dcljc9muz/image/upload/c_fill,h_150,w_150/v1522885728/café2_mbn1tg.png"],
  ["Des variétés de thés", "https://res.cloudinary.com/dcljc9muz/image/upload/c_fill,h_150,w_150/v1523829838/DSC_0015_hifvs0.png"],
  ["Des variétés de poivres", "https://res.cloudinary.com/dcljc9muz/image/upload/c_scale,h_150,q_auto:good/v1523828163/DSC_0007_fcfzai.png"],
  ["Des variétés d'épices","https://res.cloudinary.com/dcljc9muz/image/upload/c_fill,h_150,w_150/v1523828163/DSC_0008_pthpke.png"],
  ["De la Vanille", "https://res.cloudinary.com/dcljc9muz/image/upload/c_scale,h_150,q_auto:good/v1523829958/van_p0rf1e.png"],
  ["Des variétés de lentilles","https://res.cloudinary.com/dcljc9muz/image/upload/c_scale,h_150,q_auto:good/v1523829956/lent_sb6xl7.png"],
  ["Des variétés de riz", "https://res.cloudinary.com/dcljc9muz/image/upload/c_fill,h_150,w_150/v1523828163/DSC_0012_hsznsq.png" ],
  ["Des tablettes de chocolats au vrai cacao", "https://res.cloudinary.com/dcljc9muz/image/upload/c_scale,h_150,q_auto:good/v1525121430/cacao_l2ckpx.png"]
]

category_list.each do |category|
  Category.create( name: category[0], pictoname: category[1] )
end

