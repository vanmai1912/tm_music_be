# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

rooms_data = [
  { name: "Nhạc Pop", description: "Một phòng để thảo luận và chia sẻ những ca khúc pop phổ biến." },
  { name: "Nhạc Rock", description: "Một phòng dành cho tất cả mọi thứ về nhạc rock - từ rock cổ điển đến các thể loại rock hiện đại." },
  { name: "Nhạc Hip-hop", description: "Một không gian cho những người đam mê hip-hop để thảo luận về rap, nhịp điệu và văn hóa xung quanh âm nhạc hip-hop." },
  { name: "Nhạc Điện tử", description: "Khám phá thế giới của âm nhạc điện tử, bao gồm EDM, techno, house và nhiều hơn nữa." },
  { name: "Nhạc Cổ điển", description: "Một phòng dành cho người yêu thích âm nhạc cổ điển, thảo luận về các nhà soạn nhạc, tác phẩm và biểu diễn." }
]

Room.all.destroy_all

rooms_data.each do |room_info|
  Room.create(room_info)
end