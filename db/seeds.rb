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

# boleroAlbums.each do |a|
#   p = Genre.find_by(title: 'Nhạc Bolero')
#   p.albums.create(a)
# end

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

# edmAlbums.each do |a|
#   p = Genre.find_by(title: 'EDM')
#   p.albums.create(a)
# end

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

# rapAlbums.each do |a|
#   p = Genre.find_by(title: 'Nhạc Rap Việt')
#   p.albums.create(a)
# end

singers = [
  {
    name: "Sơn Tùng M-TP",
    description: "Một trong những ca sĩ nổi tiếng nhất Việt Nam hiện nay, nổi tiếng với phong cách âm nhạc độc đáo và các bản hit như 'Em Của Ngày Hôm Qua', 'Lạc Trôi'.",
    birthdate: "1994-07-05",
    image: "https://photo-resize-zmp3.zmdcdn.me/w240_r1x1_jpeg/avatars/f/b/f/1/fbf16d7352a3eea6be8cf5d4b217516d.jpg"
  },
  {
    name: "Hoàng Thùy Linh",
    description: "Ca sĩ và diễn viên nổi tiếng với phong cách biểu diễn mạnh mẽ và sáng tạo, nổi bật với các ca khúc như 'Để Mị Nói Cho Mà Nghe'.",
    birthdate: "1988-08-11",
    image: "https://photo-resize-zmp3.zmdcdn.me/w240_r1x1_jpeg/avatars/b/b/e/a/bbea30c997bf82ee4f90882734fdf17a.jpg"
  },
  {
    name: "Đen Vâu",
    description: "Rapper nổi tiếng với phong cách rap đời thường và các bài hát như 'Đưa Nhau Đi Trốn', 'Anh Đếch Cần Gì Nhiều Ngoài Em'.",
    birthdate: "1989-05-13",
    image: "https://photo-resize-zmp3.zmdcdn.me/w240_r1x1_jpeg/avatars/4/d/3/4/4d347aacb2be84d868dd6d25bb4aa503.jpg"
  },
  {
    name: "Tóc Tiên",
    description: "Ca sĩ và diễn viên nổi tiếng với phong cách thời trang và âm nhạc hiện đại, các bài hát nổi bật gồm 'Ngày Mai', 'Big Girls Don't Cry'.",
    birthdate: "1989-05-13",
    image: "https://photo-resize-zmp3.zmdcdn.me/w240_r1x1_jpeg/avatars/2/2/0/9/2209495c8a8ad13a01f13fb60a5769d1.jpg"
  },
  {
    name: "Min",
    description: "Ca sĩ nổi bật với các bài hit như 'Có Em Chờ', 'Ghen', mang phong cách âm nhạc trẻ trung và hiện đại.",
    birthdate: "1988-12-07",
    image: "https://photo-resize-zmp3.zmdcdn.me/w240_r1x1_jpeg/avatars/2/e/f/6/2ef6b4fc14d359656cde9d5e09842b57.jpg"
  },
  {
    name: "Noo Phước Thịnh",
    description: "Ca sĩ nổi tiếng với giọng hát trữ tình và các bản hit như 'Cause I Love You', 'Như Phút Ban Đầu'.",
    birthdate: "1988-12-18",
    image: "https://photo-resize-zmp3.zmdcdn.me/w240_r1x1_jpeg/avatars/0/7/e/c/07eca16c7f0a778b35d1a6f17f4f388f.jpg"
  },
  {
    name: "Erik",
    description: "Ca sĩ trẻ với nhiều bản hit nổi tiếng như 'Sau Tất Cả', 'Yêu Và Yêu', nổi bật với giọng hát cảm xúc.",
    birthdate: "1997-10-13",
    image: "https://photo-resize-zmp3.zmdcdn.me/w240_r1x1_jpeg/avatars/b/8/a/8/b8a88f0502aef21069d99e2737f17e91.jpg"
  },
  {
    name: "Hoàng Dũng",
    description: "Ca sĩ nổi tiếng với các ca khúc tình cảm và sâu lắng như 'Nàng Thơ', 'Yêu Em Rất Nhiều'.",
    birthdate: "1995-10-26",
    image: "https://photo-resize-zmp3.zmdcdn.me/w240_r1x1_jpeg/avatars/8/7/b/3/87b38ebfba352aceab25d24f196003b0.jpg"
  },
  {
    name: "Như Quỳnh",
    description: "Như Quỳnh là một trong những giọng ca Bolero nổi tiếng nhất của Việt Nam, được biết đến với giọng hát ngọt ngào và truyền cảm.",
    birthdate: "1970-09-09",
    image: "https://photo-resize-zmp3.zmdcdn.me/w240_r1x1_jpeg/avatars/8/7/9/0/8790502dd685c3edab628aa234f7d99e.jpg"
  },
  {
    name: "Lệ Quyên",
    description: "Lệ Quyên, được mệnh danh là 'Nữ hoàng phòng trà', nổi bật với các bản nhạc Bolero và trữ tình sâu lắng.",
    birthdate: "1981-04-02",
    image: "https://photo-resize-zmp3.zmdcdn.me/w240_r1x1_jpeg/avatars/b/2/a/f/b2afa0721e940d04c6097842503365ae.jpg"
  },
  {
    name: "Quang Lê",
    description: "Quang Lê là ca sĩ hải ngoại với chất giọng ấm áp và sâu lắng, đặc biệt thành công với các ca khúc Bolero.",
    birthdate: "1979-01-24",
    image: "https://photo-resize-zmp3.zmdcdn.me/w240_r1x1_jpeg/avatars/9/f/3/c/9f3cb9a7e75438f0cb6c8064f54a0668.jpg"
  },
  {
    name: "Đàm Vĩnh Hưng",
    description: "Đàm Vĩnh Hưng, một trong những ngôi sao sáng của làng nhạc Việt, nổi bật với phong cách biểu diễn độc đáo và các ca khúc Bolero nổi tiếng.",
    birthdate: "1971-10-02",
    image: "https://photo-resize-zmp3.zmdcdn.me/w240_r1x1_jpeg/avatars/5/8/6/3/58639c4c53479c222b5af0d94198a1bf.jpg"
  },
  {
    name: "Trường Vũ",
    description: "Trường Vũ là ca sĩ nổi tiếng trong cộng đồng người Việt ở hải ngoại, được yêu mến qua nhiều bản nhạc Bolero kinh điển.",
    birthdate: "1963-02-25",
    image: "https://photo-resize-zmp3.zmdcdn.me/w240_r1x1_jpeg/avatars/c/1/c16d0a708f8eb9796327d562cd2824d2_1511845098.jpg"
  },
  {
    name: "Phi Nhung",
    description: "Phi Nhung nổi tiếng với chất giọng ngọt ngào và các ca khúc Bolero sâu lắng, cô cũng hoạt động tích cực trong các chương trình từ thiện.",
    birthdate: "1970-04-10",
    image: "https://photo-resize-zmp3.zmdcdn.me/w240_r1x1_jpeg/avatars/2/8/e/f/28ef642056c5ea391f0912b1e05d040a.jpg"
  },
  {
    name: "Hương Lan",
    description: "Hương Lan là một trong những giọng ca trữ tình Bolero hàng đầu, nổi tiếng với giọng hát trong trẻo và khả năng biểu diễn xuất sắc.",
    birthdate: "1956-05-09",
    image: "https://photo-resize-zmp3.zmdcdn.me/w240_r1x1_jpeg/avatars/7/3/c/7/73c77483cd9f8a32cb62a61abf6b2554.jpg"
  },
  {
    name: "Cẩm Ly",
    description: "Cẩm Ly là ca sĩ đa tài với sự nghiệp trải dài qua nhiều thể loại nhạc, nhưng đặc biệt thành công với nhạc Bolero.",
    birthdate: "1970-03-30",
    image: "https://photo-resize-zmp3.zmdcdn.me/w240_r1x1_jpeg/avatars/a/5/3/e/a53e95551cdc52a921e3872b2c68cc30.jpg"
  },
  {
    name: "Triple D",
    description: "Triple D là một trong những DJ và nhà sản xuất EDM hàng đầu Việt Nam, nổi bật với các sản phẩm âm nhạc chất lượng và phong cách trình diễn ấn tượng.",
    birthdate: "1991-03-05",
    image: "https://photo-resize-zmp3.zmdcdn.me/w240_r1x1_jpeg/avatars/7/7/777a18a227d8eaca36a1c997bee007ba_1426561598.jpg"
  },
  {
    name: "Masew",
    description: "Masew là một DJ và nhà sản xuất âm nhạc nổi bật với các bản hit đình đám và phong cách âm nhạc độc đáo, thu hút được sự chú ý lớn từ giới trẻ.",
    birthdate: "1996-12-23",
    image: "https://photo-resize-zmp3.zmdcdn.me/w240_r1x1_jpeg/avatars/2/e/5/f/2e5ff23e09b1dacccbbd1c6f1ffb4a7b.jpg"

  },
  {
    name: "Karik",
    description: "Karik là một trong những rapper hàng đầu tại Việt Nam, được biết đến với những bản hit mạnh mẽ và phong cách rap cá tính.",
    birthdate: "1989-04-12",
    image: "https://photo-resize-zmp3.zmdcdn.me/w240_r1x1_jpeg/avatars/3/4/b/3/34b30502279efb1d71851b74d09b560e.jpg"

  },
  {
    name: "Binz",
    description: "Binz nổi bật với phong cách rap phóng khoáng và cuốn hút, anh là một trong những gương mặt tiêu biểu của làng rap Việt.",
    birthdate: "1988-05-24",
    image: "https://photo-resize-zmp3.zmdcdn.me/w240_r1x1_jpeg/avatars/0/4/a/e/04aed9e81df90a6191d6e223b6d6b59a.jpg"

  },
  {
    name: "Suboi",
    description: "Suboi là nữ rapper tiên phong tại Việt Nam, được biết đến với phong cách rap mạnh mẽ và cá tính.",
    birthdate: "1990-01-14",
    image: "https://photo-resize-zmp3.zmdcdn.me/w240_r1x1_jpeg/avatars/1/5/5/3/1553186bf93e8126bd434db04bb3ce47.jpg"

  },
  {
    name: "Tlinh",
    description: "Tlinh là rapper nữ trẻ tuổi nổi bật với phong cách rap hiện đại và lời ca sáng tạo, cô đã ghi dấu ấn qua chương trình Rap Việt.",
    birthdate: "2000-10-07",
    image: "https://photo-resize-zmp3.zmdcdn.me/w240_r1x1_jpeg/avatars/7/2/1/b/721b3b485a51a32234f65995f0fc5923.jpg"

  },
  {
    name: "RPT MCK",
    description: "RPT MCK là một rapper trẻ tài năng, nổi tiếng qua các bài hit và sự xuất hiện ấn tượng tại Rap Việt.",
    birthdate: "1999-09-02",
    image: "https://photo-resize-zmp3.zmdcdn.me/w240_r1x1_jpeg/cover/4/9/0/7/490702cd8724942cfb1290768163d530.jpg"

  },
  {
    name: "Wowy",
    description: "Wowy là một trong những rapper gạo cội của Việt Nam, với phong cách rap đặc trưng và nhiều bản hit nổi tiếng.",
    birthdate: "1988-09-27",
    image: "https://photo-resize-zmp3.zmdcdn.me/w240_r1x1_jpeg/avatars/d/1/6/0/d1600a36b49c9469ce56ac0c1b31fe60.jpg"

  },
  {
    name: "Dế Choắt",
    description: "Dế Choắt nổi lên từ chương trình Rap Việt với phong cách rap đầy sức sống và lời ca ý nghĩa.",
    birthdate: "1996-08-20",
    image: "https://photo-resize-zmp3.zmdcdn.me/w240_r1x1_jpeg/avatars/a/d/7/3/ad73b29bbe63d11709f743aaa9eee3de.jpg"

  }
];
Artist.destroy_all
singers.each do |s|
  Artist.singer.create(s)
end

