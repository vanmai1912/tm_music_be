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
# Room.all.destroy_all
# rooms_data.each do |room_info|
#   Room.create(room_info)
# end

musicGenres = [
  {
    title: "Nhạc Trẻ",
    description: "Nhạc trẻ là thể loại âm nhạc phổ biến nhất ở Việt Nam, thường kết hợp giữa các yếu tố của pop, dance và ballad. Nó thường thể hiện những câu chuyện về tình yêu, cuộc sống hàng ngày và tâm trạng của giới trẻ.",
    image: "https://photo-resize-zmp3.zmdcdn.me/w240_r1x1_jpeg/cover/6/0/2/7/602715b10214ef6af7e9fadbb87a21c4.jpg"
  },
  {
    title: "Nhạc Bolero",
    description: "Nhạc Bolero là một thể loại âm nhạc phổ biến ở Việt Nam, thường được biểu diễn bằng giọng hát trữ tình kết hợp với các nhạc cụ như guitar, đàn piano. Nhạc Bolero thường thể hiện những ca khúc lãng mạn với giai điệu nhẹ nhàng và sâu lắng, thường diễn tả về tình yêu, cuộc sống và cảm xúc.",
    image: "https://photo-resize-zmp3.zmdcdn.me/w165_r1x1_jpeg/covers/1/6/1648b6e7471b456f8aa2f9f19c93e5be_1488425531.jpg"
  },
  {
    title: "EDM",
    description: "EDM là viết tắt của Electronic Dance Music, là thể loại âm nhạc điện tử được tạo ra bằng cách sử dụng công nghệ và phần mềm âm nhạc điện tử. EDM thường có nhịp điệu mạnh mẽ và sử dụng nhiều hiệu ứng âm thanh đặc biệt.",
    image: "https://photo-resize-zmp3.zmdcdn.me/w240_r1x1_jpeg/cover/8/6/5/b/865bd6467221f9899b9cceb450a49173.jpg"
  },
  {
    title: "Nhạc Rap Việt",
    description: "Nhạc rap Việt đang trở thành một phong trào mạnh mẽ, thể hiện những câu chuyện về cuộc sống đô thị, xã hội và những vấn đề xã hội. Nó thường được sử dụng như một phương tiện để bày tỏ quan điểm và suy nghĩ của giới trẻ.",
    image: "https://photo-resize-zmp3.zmdcdn.me/w240_r1x1_jpeg/cover/7/f/b/6/7fb65013fe546d50974508700db99b22.jpg"
  }
]
# Genre.destroy_all
# musicGenres.each do |g|
#   Genre.create(g)
# end

# Song.destroy_all
# Album.destroy_all
popAlbums = [
  {
    title: "Đỉnh Cao Trending",
    description: "Chiếm trọn vị trí cao nhất Trending Việt Nam khi vừa ra mắt",
    image: "https://res.cloudinary.com/dx9vr7on4/image/upload/v1715623806/music_kl/album/36e09d93a3dd87e682c388b9191e0cd8_s4jih1.jpg"
  },
  {
    title: "Trào Lưu Nhạc Hot",
    description: "Không nơi nào bắt trend nhanh bằng nơi đây",
    image: "https://res.cloudinary.com/dx9vr7on4/image/upload/v1715624043/music_kl/album/8713f0732f5c8e5b83ef5e6c11a316b4_tmahvl.jpg"
  }, 
  {
    title: "Today's V-Pop Hits",
    description: "'Tội cho em' và 30 bản Hit V-Pop nổi bật nhất hiện nay",
    image: "https://res.cloudinary.com/dx9vr7on4/image/upload/v1715624043/music_kl/album/9e1081676a349011f9a7bd21b02d4594_n7deum.jpg"
  },
  {
    title: "Hot Hits Vietnam",
    description: "Hits nổi nhất tại Việt Nam từ Đông sang Tây có đủ ở đây",
    image: "https://res.cloudinary.com/dx9vr7on4/image/upload/v1715624044/music_kl/album/c949ae3bb82c6258854207def145d343_y1tllj.jpg"
  }
]

# popAlbums.each do |a|
#   p = Genre.find_by(title: 'Nhạc Trẻ')
#   p.albums.create(a)
# end

boleroAlbums = [
  {
    title: "Đỉnh Cao Bolero",
    description: "Tuyển tập những ca khúc Bolero đỉnh nhất.",
    image: "https://res.cloudinary.com/dx9vr7on4/image/upload/v1715624647/music_kl/album/b320850410826b5fc58098f9467a6f62_sv9pou.jpg"
  },
  {
    title: "Bolero Hay Nhất",
    description: "Thổn thức cũng những giai điệu Bolero hay nhất",
    image: "https://res.cloudinary.com/dx9vr7on4/image/upload/v1715624646/music_kl/album/1e61ec0b4493994f65d3d2e8a9cbd324_enniji.jpg"
  }, 
  {
    title: "Bolero Ngôi Sao Trẻ",
    description: "Lắng nghe những giọng ca trẻ của dòng nhạc Bolero trữ tình.",
    image: "https://res.cloudinary.com/dx9vr7on4/image/upload/v1715624646/music_kl/album/a94f63ad2c58650f116381c8f32fa71d_reqttp.jpg"
  },
  {
    title: "Liên Khúc Trữ Tình Bolero Hay Nhất",
    description: "Tuyển tập những liên khúc bolero trữ tình được yêu thích nhất",
    image: "https://res.cloudinary.com/dx9vr7on4/image/upload/v1715624647/music_kl/album/b84b191679adcd6bdb5c063cbfa3f7e2_hsrh47.jpg"
  }
]

boleroAlbums.each do |a|
  p = Genre.find_by(title: 'Nhạc Bolero')
  p.albums.create(a)
end

edmAlbums = [
  {
    title: "EDM Việt Gây Nghiện",
    description: "Đặc sản EDM của làng nhạc Việt",
    image: "https://res.cloudinary.com/dx9vr7on4/image/upload/v1715625006/music_kl/album/8ce9abbbdb04cd95262082d923a0f7dd_jxhzum.jpg"
  },
  {
    title: "Đỉnh Cao EDM",
    description: "Hit EDM cực khủng không thể thiếu tại các festival âm nhạc",
    image: "https://res.cloudinary.com/dx9vr7on4/image/upload/v1715625005/music_kl/album/cc3414979f6fe2b1cf02d913b98f7f1e_oedfxl.jpg"
  }, 
  {
    title: "K-EDM",
    description: "Đốt cháy năng lượng với những track EDM Hàn",
    image: "https://res.cloudinary.com/dx9vr7on4/image/upload/v1715625005/music_kl/album/98343dca21711bf749f25ee1895d656d_tg9j19.jpg"
  },
  {
    title: "Drift Phonk",
    description: "Thể loại Drift Phonk là một nhánh phụ của Phonk, tiếng ngân và âm thanh được làm méo.",
    image: "https://res.cloudinary.com/dx9vr7on4/image/upload/v1715625006/music_kl/album/artworks-BRGEmFlS2NNodw2A-moYudA-t500x500_ufkds0.jpg"
  }
]

edmAlbums.each do |a|
  p = Genre.find_by(title: 'EDM')
  p.albums.create(a)
end

rapAlbums = [
  {
    title: "Chill Cùng Rap Việt",
    description: "Thả mình trôi theo những dòng flow của Rap Việt",
    image: "https://res.cloudinary.com/dx9vr7on4/image/upload/v1715625339/music_kl/album/f81c57c938b243149f227d587396d0e6_wmgcrv.jpg"
  },
  {
    title: "Rap Việt Cực Chất",
    description: "Gọi cứu hỏa ngay vì rap này cực cháy",
    image: "https://res.cloudinary.com/dx9vr7on4/image/upload/v1715625340/music_kl/album/a856b206d0d0bf49b368aee335bd96c9_n6qcla.jpg"
  }, 
  {
    title: "Mang Lời Rap, Kể Chuyện Nhà",
    description: "Những bản Rap Việt nổi bật nhất viết về chủ đề gia đình",
    image: "https://res.cloudinary.com/dx9vr7on4/image/upload/v1715625339/music_kl/album/87786fe0784504769cc6ed7b89689ff5_aefidi.jpg"
  }
]

rapAlbums.each do |a|
  p = Genre.find_by(title: 'Nhạc Rap Việt')
  p.albums.create(a)
end
