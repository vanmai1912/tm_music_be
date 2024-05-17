# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_admin = [{
  email: 'maiadmin@music.com',
  password: '123123',
  role: 'admin'
},{
  email: 'toiadmin@music.com',
  password: '123123',
  role: 'admin'
}]

user_client = [{
  email: 'maidv01@music.com',
  password: '123123',
  role: 'user'
},{
  email: 'maidv02@music.com',
  password: '123123',
  role: 'user'
},{
  email: 'toilq01@music.com',
  password: '123123',
  role: 'user'
},{
  email: 'toilq02@music.com',
  password: '123123',
  role: 'user'
}]

user_admin.each do |user|
  User.create(user)
end

user_client.each do |user|
  User.create(user)
end

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
Genre.destroy_all
musicGenres.each do |g|
  Genre.create(g)
end

Song.destroy_all
Album.destroy_all
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

popAlbums.each do |a|
  p = Genre.find_by(title: 'Nhạc Trẻ')
  p.albums.create(a)
end

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

sontung = Artist.where(name: 'Sơn Tùng M-TP').first
album_sontung = sontung.albums.create(title: 'Những Bài Hát Hay Nhất Của Sơn Tùng M-TP', description: 'Sơn Tùng M-TP và bộ sưu tập siêu Hit', image: "https://photo-resize-zmp3.zmdcdn.me/w320_r1x1_jpeg/cover/e/7/7/e/e77e66089e244c0c61188189be25f8ba.jpg")
sontung_songs = [
    {
        "title": "Lạc Trôi",
        "lyric": """Một mình nơi đây lạc vào chốn nào
        Bàn chân phiêu du cùng ngàn ánh sao
        Dường như là định mệnh đổi thay
        Mà lòng này vẫn vương vấn sâu đây
        Một mình nơi đây chờ một chốn nào
        Để em ngồi lại cùng tình khúc đau
        Để nỗi sầu càng thêm quặn thắt
        Để mùa xuân cứ mãi lạc trôi
        Một mình nơi đây... lạc trôi giữa trời...""",
        "views": 100000000,
        "image": "https://photo-resize-zmp3.zmdcdn.me/w165_r1x1_jpeg/covers/9/8/98e3677733fe52439823d1b1992d9ae0_1483242323.jpg",
        "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715911790/music_kl/son%20tung/756ba39ea07eb46c326b54c999668a94_yxqmam.mp3",
    },
    {
        "title": "Chạy Ngay Đi",
        "lyric": """Chạy ngay đi trước khi
        Mọi điều dần tồi tệ hơn
        Trước khi lòng hận thù vây kín
        Nơi đây không còn gì cho nhau
        Chạy ngay đi trước khi
        Lòng hận thù vây kín trong tâm trí em
        Khi em đã không còn là em...""",
        "views": 95000000,
        "image": "https://photo-resize-zmp3.zmdcdn.me/w94_r1x1_jpeg/cover/a/6/8/b/a68b0bd411adc076ba6c3fb00203a1ee.jpg",
        "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715911857/music_kl/son%20tung/2a92caeb62976d2492509c102ced2711_uvwodf.mp3",
    },
    {
        "title": "Nơi Này Có Anh",
        "lyric": """Anh sẽ mãi là người yêu em
        Cùng em đi qua bao đoạn đường
        Dẫu thế giới này đổi thay
        Nhưng tim anh vẫn luôn ở đây
        Ngày qua ngày dài rộng
        Dù có bao nhiêu điều khiến em vui
        Anh vẫn luôn ở bên em
        Và nói yêu em từng ngày...""",
        "views": 90000000,
        "image": "https://photo-resize-zmp3.zmdcdn.me/w94_r1x1_jpeg/covers/3/a/3a9e48bc4df7bbde3acea30cc267f609_1487066528.jpg",
        "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715911905/music_kl/son%20tung/d17d79105dfcbf67208389c9e8fc9c42_xg6gfj.mp3",
    },
    {
        "title": "Hãy Trao Cho Anh",
        "lyric": """Hãy trao cho anh
        Hãy trao cho anh
        Hãy trao cho anh những yêu thương nồng cháy
        Và hãy trao cho anh
        Hãy trao cho anh
        Hãy trao cho anh những phút giây thần tiên...""",
        "views": 85000000,
        "image": "https://photo-resize-zmp3.zmdcdn.me/w165_r1x1_jpeg/cover/4/1/8/2/41822760163a4da22ddad1e5285e6149.jpg",
        "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715911951/music_kl/son%20tung/593b54ec5c26d2a70585377cf9374578_kumls2.mp3",
    },
    {
        "title": "Cơn Mưa Ngang Qua",
        "lyric": """Và cơn mưa ngang qua
        Làm nhòa đi bao nhiêu kỉ niệm
        Đã từng có nhau
        Yêu thương nhau
        Nhưng giờ đây chỉ còn là giấc mơ
        Cơn mưa ngang qua...""",
        "views": 80000000,
        "image": "https://photo-resize-zmp3.zmdcdn.me/w94_r1x1_jpeg/covers/5/b/5baa8ca8d0dd072524767a4aff6d400c_1349715671.jpg",
        "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715917024/music_kl/son%20tung/2f6fc8622021b60dcaeb1c011b32be75_qlp5rg.mp3",
    },
    {
        "title": "Âm Thầm Bên Em",
        "lyric": """Một ngày nào đó
        Một ngày nào đó em sẽ hiểu
        Rằng những yêu thương anh dành cho em
        Chẳng bao giờ vơi đi
        Dù có cách xa ngàn đời
        Anh vẫn âm thầm bên em...""",
        "views": 75000000,
        "image": "https://photo-resize-zmp3.zmdcdn.me/w165_r1x1_jpeg/cover/a/3/1/c/a31cdf3a266dfa3fcbc586613c70ed52.jpg",
        "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715917080/music_kl/son%20tung/523fb2bef2f3b3c8497c6efe228c737c_wn3z0a.mp3",
    },
    {
        "title": "Em Của Ngày Hôm Qua",
        "lyric": """Đừng vội vàng em ơi
        Xin hãy là em của ngày hôm qua
        Đừng để tình yêu ta phai nhòa
        Chỉ vì những nỗi đau
        Dù cho biết bao đớn đau
        Xin em đừng buông tay anh...""",
        "views": 70000000,
        "image": "https://photo-resize-zmp3.zmdcdn.me/w165_r1x1_jpeg/covers/b/1/b1c839bd85e6081614cf770278b8f782_1387164001.jpg",
        "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715917145/music_kl/son%20tung/2703e88a97437d7bc2ddc8ddb7e4de12_swnu4b.mp3",
    },
    {
        "title": "Chúng Ta Của Hiện Tại",
        "lyric": """Người ơi người ở đừng về
        Bỏ mặc anh bơ vơ giữa dòng đời
        Tìm hoài không thấy lối thoát
        Chỉ thấy bóng dáng em
        Như làn mây trôi xa...""",
        "views": 65000000,
        "image": "https://photo-resize-zmp3.zmdcdn.me/w94_r1x1_jpeg/cover/f/0/c/6/f0c6b74652e9ed643f3183c7617aaa30.jpg",
        "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715917191/music_kl/son%20tung/9d5e0023aeae573dc1000abec75de7d1_wd70cz.mp3",
    },
    {
        "title": "Buông Đôi Tay Nhau Ra",
        "lyric": """Buông đôi tay nhau ra
        Buông đôi tay nhau ra
        Để lòng này nhẹ nhàng hơn
        Để tình yêu trôi qua
        Như cơn mưa ngừng rơi...""",
        "views": 60000000,
        "image": "https://photo-resize-zmp3.zmdcdn.me/w165_r1x1_jpeg/cover/e/d/d/a/edda9844722bd0484b317662754e7417.jpg",
        "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715917239/music_kl/son%20tung/8c8a6c647f1a5575de199da7727c7a10_ak4zfn.mp3",
    },
    {
        "title": "Chắc Ai Đó Sẽ Về",
        "lyric": """Chắc ai đó sẽ về
        Chắc ai đó sẽ về
        Một ngày không xa
        Khi anh chẳng còn đợi chờ...""",
        "views": 55000000,
        "image": "https://photo-resize-zmp3.zmdcdn.me/w165_r1x1_jpeg/covers/8/f/8ffcb87289215a21d169d7a8ec86162e_1414118901.jpg",
        "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715917297/music_kl/son%20tung/f179de5dd723a556efdf18a13247a512_t2tjfa.mp3",
    },
    {
        "title": "Một Năm Mới Bình An",
        "lyric": """Một năm mới bình an
        Cùng nhau nắm tay vui đùa
        Chúc nhau những điều may mắn
        Đến bên nhau yêu thương...
        Một năm mới bình an...""",
        "views": 50000000,
        "image": "https://photo-resize-zmp3.zmdcdn.me/w165_r1x1_jpeg/cover/2/7/7/e/277ef3a66a67413690578905dbb85451.jpg",
        "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715917337/music_kl/son%20tung/419d792482e1678c9f1b7a1e50c292f3_mxg0bl.mp3",
    },
    {
        "title": "Muộn Rồi Mà Sao Còn",
        "lyric": """Muộn rồi mà sao còn
        Nhìn lên trần nhà rồi quay ra
        Lại còn nằm mơ bóng dáng ai kìa
        Đêm nay lại nhớ nhớ đến phát điên
        Ngày còn đâu biết tên
        Muộn rồi mà sao còn...""",
        "views": 45000000,
        "image": "https://photo-resize-zmp3.zmdcdn.me/w165_r1x1_jpeg/cover/e/f/6/c/ef6c9d4b97048c9911ea6069e968dadb.jpg",
        "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715917386/music_kl/son%20tung/ed296514b07543c8f29162802af28948_utaiec.mp3",
    }
]
sontung_songs.each do |s|
  g = Genre.where(title: 'Nhạc Trẻ').first
  song = sontung.songs.create(s)
  song.update(genre_id: g.id)
  song.album_songs.create(album_id: album_sontung.reload.id)
end

hoangthuylinh_songs = [
    {
      "title": "Để Mị Nói Cho Mà Nghe",
      "lyric": """Để Mị nói cho mà nghe
      Tâm hồn này chẳng để lặng lẽ
      Thương cha thương mẹ thương thì thương vậy thôi
      Thương mình chẳng thời ai khóc mướn mà lo
      Còn chuyện người ta cứ để người ta tính
      Đời mình đâu có dài mà héo hon vì ai
      Ở đời nhiều khi ngây ngô nhưng ừ thì là mơ""",
      "views": 75000000,
      "image": "https://photo-resize-zmp3.zmdcdn.me/w165_r1x1_jpeg/cover/2/5/3/7/2537435f53acd84f833ac5f82575899d.jpg",
      "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715921803/music_kl/son%20tung/be642984985c390011bf2b02d6c0f5cb_u2yj7a.mp3",
    },
    {
        "title": "Bánh Trôi Nước",
        "lyric": """Thân em vừa trắng lại vừa tròn
        Bảy nổi ba chìm với nước non
        Rắn nát mặc dầu tay kẻ nặn
        Mà em vẫn giữ tấm lòng son""",
        "views": 80000000,
        "image": "https://photo-resize-zmp3.zmdcdn.me/w165_r1x1_jpeg/cover/b/d/d/9/bdd946b0c2f68abb4d6c2ff9b7d400ac.jpg",
        "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715921855/music_kl/son%20tung/8092378f8087a00e487c6937d5005bb5_seiiae.mp3",
    },
    {
        "title": "Kẻ Cắp Gặp Bà Già (Remix)",
        "lyric": """Hồi còn nhỏ xíu cứ nghĩ yêu là trò chơi
        Lúc lớn mới biết yêu là học đòi
        Hồi còn nhỏ xíu cứ nghĩ yêu là chuyện vớ vẩn
        Lớn rồi mới thấy chỉ vớ vẩn khi yêu người không ra gì""",
        "views": 48000000,
        "image": "https://photo-resize-zmp3.zmdcdn.me/w165_r1x1_jpeg/cover/0/2/2/3/02233cfbdea8c3cf01583b4d88123f41.jpg",
        "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715921918/music_kl/son%20tung/3157308852649852305_jpsxnr.mp3",
    },
    {
        "title": "See Tình",
        "lyric": """Oh! Mình yêu thì mình cứ yêu thôi
        Vì tình yêu là món quà
        Đến lúc ta phải nhận ra
        Tình yêu là những giấc mơ dài""",
        "views": 42000000,
        "image": "https://photo-resize-zmp3.zmdcdn.me/w94_r1x1_jpeg/cover/b/4/2/a/b42a33a26f823fed3fbf7f5fcfc7e8fd.jpg",
        "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715921959/music_kl/son%20tung/9e7d02969a2c3781b120732d6787830e_vpb3eq.mp3",
    },
    {
      "title": "Em Đây Chẳng Phải Thúy Kiều",
      "lyric": """Em đây chẳng phải Thúy Kiều
      Thúy Vân lại càng không phải
      Nhưng vẫn hồn nhiên yêu đời
      Như bao cô gái tuyệt vời""",
      "views": 60000000,
      "image": "https://photo-resize-zmp3.zmdcdn.me/w94_r1x1_jpeg/cover/0/2/2/3/02233cfbdea8c3cf01583b4d88123f41.jpg",
      "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715922017/music_kl/son%20tung/9214380421917830314_3_c2caxk.mp3",
    }
]
hoangthuylinh = Artist.where(name: 'Hoàng Thùy Linh').first
album_hoangthuylinh = hoangthuylinh.albums.create(title: 'Những Bài Hát Hay Nhất Của Hoàng Thùy Linh', description: "'See Tình' và series Hit tạo nên thương hiệu", image: "https://photo-resize-zmp3.zmdcdn.me/w320_r1x1_jpeg/cover/e/2/c/e/e2cef78e01149e8c1bbb07113de37963.jpg")
hoangthuylinh_songs.each do |s|
  g = Genre.where(title: 'Nhạc Trẻ').first
  song = hoangthuylinh.songs.create(s)
  song.update(genre_id: g.id)
  song.album_songs.create(album_id: album_hoangthuylinh.reload.id)
end

denvau_songs = [
    {
        "title": "Lối Nhỏ",
        "lyric": """Anh đi tìm em ở khắp mọi nơi
        Anh tìm niềm vui nơi ánh sáng chói lòa
        Rồi anh chợt nhận ra rằng
        Niềm vui của anh là khi thấy em cười
        Như một cơn gió thoảng qua
        Nhẹ nhàng nhưng làm anh xao xuyến""",
        "views": 80000000,
        "image": "https://photo-resize-zmp3.zmdcdn.me/w165_r1x1_jpeg/cover/2/d/0/b/2d0bf08b1ddaa07bae28208796316571.jpg",
        "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715923471/music_kl/son%20tung/7555328701165411356_zmobcw.mp3",
    },
    {
        "title": "Bài Này Chill Phết",
        "lyric": """Và em ơi bài này chill phết
        Em thích nghe thì lên xe anh đưa đón về
        Thả hồn bay giữa trời mây
        Ngắm hoàng hôn nhẹ nhàng trôi qua""",
        "views": 75000000,
        "image": "https://photo-resize-zmp3.zmdcdn.me/w94_r1x1_jpeg/avatars/e/2/f/8/e2f85cc2be0c8b7f28526dea89e6987b.jpg",
        "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715923758/music_kl/son%20tung/8419f6281271973a40e78a78e673eec0_yrtzde.mp3",
    },
    {
        "title": "Anh Đếch Cần Gì Nhiều Ngoài Em",
        "lyric": """Anh đếch cần gì nhiều ngoài em
        Chỉ cần thấy em cười là đủ
        Mọi phiền muộn tan biến trong phút chốc
        Chỉ cần em bên cạnh là anh thấy hạnh phúc""",
        "views": 68000000,
        "image": "https://photo-resize-zmp3.zmdcdn.me/w320_r1x1_jpeg/cover/e/9/3/9/e939d0144b95dfc5f13cb0ea4427fc69.jpg",
        "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715923593/music_kl/son%20tung/6881725539374191715_pxbkpt.mp3",
    },
    {
        "title": "Đi Theo Bóng Mặt Trời",
        "lyric": """Anh đi theo bóng mặt trời
        Bỏ lại sau lưng những muộn phiền
        Anh tìm đến những giấc mơ
        Để thấy cuộc đời thêm ý nghĩa""",
        "views": 67000000,
        "image": "https://photo-resize-zmp3.zmdcdn.me/w165_r1x1_jpeg/cover/3/2/a/3/32a35f4d26ee56366397c09953f6c269.jpg",
        "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715923667/music_kl/son%20tung/1444089018733256086_icrj39.mp3",
    },
    {
        "title": "Ta Cứ Đi Cùng Nhau",
        "lyric": """Ta cứ đi cùng nhau
        Qua bao nhiêu chặng đường dài
        Dẫu biết rằng phía trước còn nhiều gian khó
        Nhưng chỉ cần có nhau, mọi thứ sẽ ổn thôi""",
        "views": 69000000,
        "image": "https://photo-resize-zmp3.zmdcdn.me/w165_r1x1_jpeg/cover/3/2/a/3/32a35f4d26ee56366397c09953f6c269.jpg",
        "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715923704/music_kl/son%20tung/195612218813491902_1_z3tl3x.mp3",
    }
]

denvau = Artist.where(name: 'Đen Vâu').first
album_denvau = denvau.albums.create(title: 'Những Bài Hát Hay Nhất Của Đen', description: "Cùng thưởng thức những bài hát hay nhất của Đen", image: "https://photo-resize-zmp3.zmdcdn.me/w320_r1x1_jpeg/cover/e/9/3/9/e939d0144b95dfc5f13cb0ea4427fc69.jpg")
denvau_songs.each do |s|
  g = Genre.where(title: 'Nhạc Trẻ').first
  song = denvau.songs.create(s)
  song.update(genre_id: g.id)
  song.album_songs.create(album_id: album_denvau.reload.id)
end

toctien_songs = [
    {
        "title": "Ngày Mai (Vũ Điệu Cồng Chiêng)",
        "lyric": """Ngày mai, ánh sáng chiếu rọi khắp muôn nơi
        Ngày mai, khát khao bùng cháy trong tim
        Từng nhịp cồng chiêng hòa vang
        Cùng niềm vui mới trong lòng""",
        "views": 90000000,
        "image": "https://photo-resize-zmp3.zmdcdn.me/w94_r1x1_jpeg/cover/3/2/a/3/32a35f4d26ee56366397c09953f6c269.jpg",
        "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715710130/music_kl/song/5150063729145721649_jgj7l1.mp3",
    },
    {
        "title": "Big Girls Don't Cry",
        "lyric": """Big girls don't cry
        We keep our heads up to the sky
        We keep on moving forward
        No matter what they say""",
        "views": 80000000,
        "image": "https://photo-resize-zmp3.zmdcdn.me/w94_r1x1_jpeg/cover/f/d/2/9/fd29d76c211a7750c27c1533f4f90677.jpg",
        "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715923848/music_kl/son%20tung/d8d7660f4921a26a363fbd8048a91367_pf9hjc.mp3",
    },
    {
        "title": "Có Ai Thương Em Như Anh",
        "lyric": """Có ai thương em như anh
        Để anh luôn ở bên em
        Cùng em chia sẻ mỗi buồn vui
        Để anh được thấy nụ cười em mỗi ngày""",
        "views": 85000000,
        "image": "https://photo-resize-zmp3.zmdcdn.me/w94_r1x1_jpeg/cover/3/2/a/3/32a35f4d26ee56366397c09953f6c269.jpg",
        "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715923901/music_kl/son%20tung/f5aa1922da8e90f5339e59d4b54fa2bc_lhpy9i.mp3",
    },
    {
        "title": "Em Không Là Duy Nhất",
        "lyric": """Em không là duy nhất
        Trong tim anh bao la thế giới
        Nhưng em biết chắc một điều
        Em là người yêu anh nhất""",
        "views": 70000000,
        "image": "https://photo-resize-zmp3.zmdcdn.me/w94_r1x1_jpeg/covers/1/6/1648b6e7471b456f8aa2f9f19c93e5be_1488428433.jpg",
        "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715923950/music_kl/son%20tung/d9fa4fe5cc88b362d7ba2d71234404e8_s6o12v.mp3",
    },
    {
        "title": "Hôm Nay Tôi Cô Đơn Quá",
        "lyric": """Hôm nay tôi cô đơn quá
        Bao nỗi nhớ như sóng xô vào lòng
        Thời gian trôi qua thật nhanh
        Để lại đây những niềm đau không nguôi""",
        "views": 65000000,
        "image": "https://photo-resize-zmp3.zmdcdn.me/w165_r1x1_jpeg/covers/7/d/7df58098752de92365ac1080bc79a495_1503939281.jpg",
        "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715924084/music_kl/son%20tung/bdce670335e596de27fe12a9ab05380d_a0b71k.mp3",
    },
    {
        "title": "Walk Away",
        "lyric": """Walk away from the pain
        Walk away from the sorrow
        Walk away from the things
        That keep you down""",
        "views": 60000000,
        "image": "https://photo-resize-zmp3.zmdcdn.me/w165_r1x1_jpeg/covers/f/d/fdde6122efe6abd2eb6a0db7e3e0ddea_1493952467.jpg",
        "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715924120/music_kl/son%20tung/911c9158b1b2964f50c2cdff67d2b6b2_edwlqv.mp3",
    },
    {
        "title": "I'm In Love",
        "lyric": """I'm in love with you
        Every moment feels so right
        You make my heart beat fast
        When you're near""",
        "views": 55000000,
        "image": "https://photo-resize-zmp3.zmdcdn.me/w165_r1x1_jpeg/covers/7/e/7efa1b239a5907a2ea291b1cb4a3e52d_1465528310.jpg",
        "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715924160/music_kl/son%20tung/289cc4deaf5dc54850f0305ce86de336_hfkcd4.mp3",
    },
    {
        "title": "Một Cọng Tóc Mai",
        "lyric": """Một cọng tóc mai, nhẹ nhàng lướt qua
        Màu thời gian trôi, chẳng thể quay lại
        Nhưng tình yêu anh trao em mãi mãi
        Như cọng tóc mai, không phai nhòa""",
        "views": 45000000,
        "image": "https://photo-resize-zmp3.zmdcdn.me/w165_r1x1_jpeg/cover/c/0/7/c/c07c3ae64b05904e2e3c1cf274cced69.jpg",
        "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715924267/music_kl/son%20tung/bddd80f90c01ddac93cb7bc92bc55f7d_rxdwrt.mp3",
    }
]
toctien = Artist.where(name: 'Tóc Tiên').first
album_toctien = toctien.albums.create(title: 'Những Bài Hát Hay Nhất Của Tóc Tiên', description: "Ở đây có 906090, #CATENA và nhiều Hit khác của Tóc Tiên", image: "https://photo-resize-zmp3.zmdcdn.me/w600_r1x1_jpeg/cover/b/1/5/f/b15f7223405952cea169faa6fd3b8acc.jpg")
toctien_songs.each do |s|
  song = toctien.songs.create(s)
  g = Genre.where(title: 'Nhạc Trẻ').first
  song.update(genre_id: g.id)
  song.album_songs.create(album_id: album_toctien.reload.id)
end
min_songs = [
    {
        "title": "Em Mới Là Người Yêu Anh",
        "lyric": """Em mới là người yêu anh
        Anh nhìn em đi, em mới là người yêu anh
        Anh nhìn em đi, em mới là người yêu anh
        Anh nhìn em đi, em mới là người yêu anh""",
        "views": 90000000,
        "image": "https://photo-resize-zmp3.zmdcdn.me/w165_r1x1_jpeg/cover/c/6/1/0/c6105cd1d620d84451fc43d201e2dbe8.jpg",
        "audio": "https://vnso-zn-23-tf-mp3-s1-zmp3.zmdcdn.me/dcfe12624c22a57cfc33/4992240161696586666?authen=exp=1715883060~acl=/dcfe12624c22a57cfc33/*~hmac=b7b3e2a56713d3ced725e5091189d79c&fs=MTmUsICxNTmUsICxMDI2MDkwN3x3ZWJWNnwwfDQyLjExOS4xNDkdUngMTM",
    },
    {
        "title": "Ghen",
        "lyric": """Anh đi một vòng quanh phố phường
        Cùng với người yêu mới
        Em không còn muốn biết chuyện đó nữa
        Anh muốn làm gì thì làm""",
        "views": 80000000,
        "image": "https://photo-resize-zmp3.zmdcdn.me/w165_r1x1_jpeg/covers/d/0/d05f9b3c87cf7ccda468174b28757489_1495770525.jpg",
        "audio": "https://vnso-zn-24-tf-a128-z3.zmdcdn.me/810449635fc68d44ba19225d0ce84217?authen=exp=1715883536~acl=/810449635fc68d44ba19225d0ce84217/*~hmac=d999c1479da822e37b5f2603e874ae69",
    },
    {
        "title": "Vì Yêu Cứ Đâm Đầu",
        "lyric": """Điều gì làm em muốn tìm lại
        Điều gì làm em chạy đến bên anh
        Điều gì làm anh khác với bao người
        Vì yêu cứ đâm đầu""",
        "views": 85000000,
        "image": "https://photo-resize-zmp3.zmdcdn.me/w165_r1x1_jpeg/cover/0/3/a/c/03ac82cbf720ea5d24129dc5a2bb5bbe.jpg",
        "audio": "https://vnso-zn-24-tf-a128-z3.zmdcdn.me/f23d71b23eab22ea6f780badfff7a05c?authen=exp=1715883191~acl=/f23d71b23eab22ea6f780badfff7a05c/*~hmac=58ba4fd1998c7920e7fa7572768eb43d",
    },
    {
        "title": "Nếu Ngày Ấy",
        "lyric": """Nếu ngày ấy, ta không gặp nhau
        Ta chẳng biết sẽ đi về đâu
        Nếu ngày ấy, ta không cùng nhau
        Ta có lẽ chẳng đau lòng vì nhau""",
        "views": 70000000,
        "image": "https://photo-resize-zmp3.zmdcdn.me/w165_r1x1_jpeg/cover/2/e/6/2/2e623cb7cfeb88441fbcacfa2121290c.jpg",
        "audio": "https://vnso-pt-14-tf-a128-z3.zmdcdn.me/3b60c37717c27bdf64801cea00892b92?authen=exp=1715883608~acl=/3b60c37717c27bdf64801cea00892b92/*~hmac=48d7e28b22db04e43374979de2b8af66",
    },
    {
        "title": "Y.Ê.U",
        "lyric": """Baby, I just wanna love you
        Baby, I just wanna hold you
        Baby, I just wanna kiss you
        Baby, I just wanna Y.Ê.U""",
        "views": 65000000,
        "image": "https://photo-resize-zmp3.zmdcdn.me/w165_r1x1_jpeg/covers/8/3/834cdaf8e7552c17ed918a75cbba7ea8_1426588739.jpg",
        "audio": "https://vnso-zn-24-tf-a128-z3.zmdcdn.me/8125434d47c19e86fe04a2527ea75c65?authen=exp=1715883337~acl=/8125434d47c19e86fe04a2527ea75c65/*~hmac=383651ed050fabf5c92aa184c540ca45",
    },
    {
        "title": "Có Em Chờ",
        "lyric": """Đã bao giờ anh nghĩ đến em
        Trong những giấc mơ êm đềm
        Trái tim anh bỗng lạnh lùng
        Khi không có em bên cạnh""",
        "views": 60000000,
        "image": "https://photo-resize-zmp3.zmdcdn.me/w165_r1x1_jpeg/covers/f/3/f3ccdd27d2000e3f9255a7e3e2c48800_1493277779.jpg",
        "audio": "https://vnso-pt-14-tf-a128-z3.zmdcdn.me/9b2027e736d862600454e292113dd4e2?authen=exp=1715883188~acl=/9b2027e736d862600454e292113dd4e2/*~hmac=e79563270039e63f70805843686c58b6",
    },
    {
        "title": "Bùa Yêu",
        "lyric": """Em là bùa yêu
        Làm tan biến nỗi buồn anh mang theo
        Em là bùa yêu
        Làm cho anh quên hết đi những phiền muộn""",
        "views": 55000000,
        "image": "https://photo-resize-zmp3.zmdcdn.me/w165_r1x1_jpeg/cover/3/c/d/5/3cd5abfdd0224a98757fef8707344077.jpg",
        "audio": "https://vnso-zn-15-tf-a128-z3.zmdcdn.me/68eff7de415c3e6c8e8336c8b0525b07?authen=exp=1715883718~acl=/68eff7de415c3e6c8e8336c8b0525b07/*~hmac=90796c9ab0bbb292c1a559d1c1d430f6",
    },
]

min = Artist.where(name: 'Min').first
album_min = min.albums.create(title: 'Những Bài Hát Hay Nhất Của Min', description: "Say 'Cà Phê' như say âm nhạc của MIN", image: "https://photo-resize-zmp3.zmdcdn.me/w600_r1x1_jpeg/cover/7/9/f/7/79f73acbfc1d0c86599eafd713dab948.jpg")
min_songs.each do |s|
  song = min.songs.create(s)
  g = Genre.where(title: 'Nhạc Trẻ').first
  song.update(genre_id: g.id)
  song.album_songs.create(album_id: album_min.reload.id)
end


noophuocthinhh_songs = [
    {
        "title": "I'm Still Loving You",
        "lyric": """Baby, I'm still loving you
        Even though you're far away
        My love for you will never fade
        You're always in my heart""",
        "views": 90000000,
        "image": "https://photo-resize-zmp3.zmdcdn.me/w94_r1x1_jpeg/cover/4/b/a/b/4babed2b761a5c8bc4194fff5041ae02.jpg",
        "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715924309/music_kl/son%20tung/6329299839677484541_evkmdk.mp3",
    },
    {
        "title": "Gạt Đi Nước Mắt",
        "lyric": """Gạt đi nước mắt
        Đừng để nỗi buồn ở lại trong tim
        Hãy cùng nhau vượt qua mọi khó khăn
        Bên nhau mãi mãi""",
        "views": 80000000,
        "image": "https://photo-resize-zmp3.zmdcdn.me/w94_r1x1_jpeg/covers/f/f/ffe87169f25c5bc08d1333bda3d3acb5_1410318537.jpg",
        "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715924355/music_kl/son%20tung/2ff89b6d6130a5009328a3ac63139004_t7ok6f.mp3",
    },
    {
        "title": "Yêu Một Người Sao Buồn Đến Thế",
        "lyric": """Yêu một người sao buồn đến thế
        Khi người ấy không hiểu cho lòng mình
        Nhưng dù thế nào, lòng anh vẫn yêu
        Dù người ấy có thay đổi""",
        "views": 85000000,
        "image": "https://photo-resize-zmp3.zmdcdn.me/w165_r1x1_jpeg/cover/e/0/c/3/e0c341956a038d66b77275b20168b112.jpg",
        "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715924418/music_kl/son%20tung/da480813244602bf90aefb20335b9a3c_zvgfs4.mp3",
    },
    {
        "title": "Chạm Khẽ Tim Anh Một Chút Thôi",
        "lyric": """Chạm khẽ tim anh một chút thôi
        Để anh biết em ở bên cạnh
        Những giây phút này, chỉ cần em ở đây
        Là đủ để anh cảm thấy hạnh phúc""",
        "views": 65000000,
        "image": "https://photo-resize-zmp3.zmdcdn.me/w165_r1x1_jpeg/covers/6/e/6e7b90d96728c9ce1b4c2a104d622784_1507799020.jpg",
        "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715924456/music_kl/son%20tung/8d41537cf3c8aa3e46a55b72af051c81_zcyokg.mp3",
    },
    {
        "title": "Hơn Cả Yêu",
        "lyric": """Anh muốn nói với em
        Rằng anh yêu em hơn cả những gì anh nghĩ
        Hơn cả những gì anh muốn
        Và hơn cả những gì anh làm""",
        "views": 55000000,
        "image": "https://photo-resize-zmp3.zmdcdn.me/w165_r1x1_jpeg/cover/a/9/e/d/a9ed142c215560ab45f6b2b433907f90.jpg",
        "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715924502/music_kl/son%20tung/7e5e7add1b34dce07b5f45f6996f28f1_vzakot.mp3",
    },
    {
        "title": "Cậu Làm Gì Đấy",
        "lyric": """Cậu làm gì đấy, để lòng anh đau như vậy
        Cậu làm gì đấy, để anh phải khóc như vậy
        Cậu làm gì đấy, để trái tim anh tan vỡ""",
        "views": 50000000,
        "image": "https://photo-resize-zmp3.zmdcdn.me/w94_r1x1_jpeg/avatars/3/6/b/7/36b7280d00f7a7378d91a6556762c6ca.jpg",
        "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715924541/music_kl/son%20tung/93ba4f39231838245a18276eb005624f_paayhg.mp3",
    },
  ]

phuocthing = Artist.where(name: 'Noo Phước Thịnh').first
album_phuocthing = phuocthing.albums.create(title: 'Những Bài Hát Hay Nhất Của Noo Phước Thịnh', description: "Noo Phước Thịnh và bộ sưu tập Hit gây thương nhớ", image: "https://photo-resize-zmp3.zmdcdn.me/w600_r1x1_jpeg/cover/a/9/0/e/a90ec09aa0a101049eba0a61487f2abe.jpg")
noophuocthinhh_songs.each do |s|
  song = phuocthing.songs.create(s)
  g = Genre.where(title: 'Nhạc Trẻ').first
  song.update(genre_id: g.id)
  song.album_songs.create(album_id: album_phuocthing.reload.id)
end

truongvu_songs = [
  {
      "title": "Mưa Đêm Tỉnh Nhỏ",
      "lyric": "Đêm nay mưa rơi không dứt, nhớ em lòng đau nát tan. Đường phố vắng ánh đèn, chỉ mình anh lặng thầm bước đi trong cơn mưa, ký ức xưa ùa về, từng kỷ niệm vui buồn còn mãi trong tim. Anh mong em hiểu rằng tình anh vẫn luôn đong đầy...",
      "views": 2300000,
      "image": "https://photo-resize-zmp3.zmdcdn.me/w94_r1x1_jpeg/covers/f/3/f3ccdd27d2000e3f9255a7e3e2c48800_1314504102.jpg",
      "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715924580/music_kl/son%20tung/31a9ce7ad8d7e76c20f9c90b0bda9139_aihopz.mp3"
  },
  {
      "title": "Đoạn Tái Bút",
      "lyric": "Từng dòng thư tay em gửi, anh vẫn còn giữ mãi. Nhưng giờ đây ta xa nhau, chỉ còn lại ký ức trong tim. Những lời yêu thương chưa kịp nói, nay đã trở thành quá khứ. Anh nhớ những ngày bên nhau, hạnh phúc dường như mới hôm qua...",
      "views": 3100000,
      "image": "https://photo-resize-zmp3.zmdcdn.me/w165_r1x1_jpeg/cover/6/6/d/7/66d75a098e8b5c8e5ace19eff1acff76.jpg",
      "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715924620/music_kl/son%20tung/6601ac0a9ea5fd61f4cebdf382ed76a4_c3odmg.mp3"
  },
  {
      "title": "Người Ngoài Phố",
      "lyric": "Chiều nay em ra phố, một mình bước lang thang. Kỷ niệm xưa vọng về, trong lòng đầy nhớ thương. Đôi tay lạnh buốt, chỉ mình em cô đơn giữa phố đông người. Nhớ những ngày ta bên nhau, giờ đây chỉ là hoài niệm...",
      "views": 4500000,
      "image": "https://photo-resize-zmp3.zmdcdn.me/w165_r1x1_jpeg/covers/3/f/3ff457385ca5e2e6b2e99400534c9807_1370768899.jpg",
      "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715924672/music_kl/son%20tung/3bf79760b5f043cfd22aa1ad94d617f9_fke5aq.mp3"
  },
  {
      "title": "Hai Vì Sao Lạc",
      "lyric": "Tình yêu chúng ta như hai vì sao lạc, mãi mãi không thể nào đến với nhau. Trái tim anh đau đớn khi phải xa em, nhưng định mệnh đã an bài. Em hãy sống hạnh phúc, và anh sẽ mãi nhớ về em như vì sao sáng trong tim...",
      "views": 3800000,
      "image": "https://photo-resize-zmp3.zmdcdn.me/w165_r1x1_jpeg/cover/4/b/1/9/4b19e07f34caa7f30de37430c6d4c19d.jpg",
      "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715924710/music_kl/son%20tung/189e9946c341e364627030249b0157ca_uw74u8.mp3"
  },
  {
      "title": "Lại Nhớ Người Yêu",
      "lyric": "Bao đêm anh vẫn mơ về em, người yêu dấu ơi. Tình yêu như sóng biển, mãi không ngừng vỗ về trong lòng anh. Những kỷ niệm ngọt ngào, những nụ hôn đắm say. Dù xa cách nhưng lòng anh vẫn mãi nhớ về em...",
      "views": 5200000,
      "image": "https://photo-resize-zmp3.zmdcdn.me/w165_r1x1_jpeg/avatars/7/d/7d108db512f6a6a929cd0d0ad3b593e8_1511431730.jpg",
      "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715924765/music_kl/son%20tung/6880942701780100652_owfoyh.mp3"
  },
  {
      "title": "Thiệp Hồng Anh Viết Tên Em",
      "lyric": "Ngày xưa ấy khi anh viết tên em trên thiệp hồng. Nguyện ước trọn đời sẽ mãi bên nhau. Nhưng giờ đây em đã xa rồi, thiệp hồng còn đây nhưng lòng anh đã tan nát. Nhớ em từng ngày, từng phút giây...",
      "views": 4000000,
      "image": "https://photo-resize-zmp3.zmdcdn.me/w165_r1x1_jpeg/cover/0/2/8/8/0288dae6b2fb72ec073cfd26ac23be4f.jpg",
      "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715924806/music_kl/son%20tung/3135a21b7760e28b765dae5824c1ab22_fmsf7q.mp3"
  },
  {
      "title": "Mưa Nửa Đêm",
      "lyric": "Đêm nay mưa buồn rơi hắt hiu, lòng anh nhớ em nhiều. Từng giọt mưa như nước mắt, thấm đẫm những ký ức buồn. Đêm dài lắm cô đơn, anh mong một ngày em sẽ quay về bên anh, để tình ta lại xanh ngát...",
      "views": 2700000,
      "image": "https://photo-resize-zmp3.zmdcdn.me/w165_r1x1_jpeg/covers/0/c/0c1485a24cf001c56223be2879ae5f26_1290654489.jpg",
      "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715924836/music_kl/son%20tung/099b79295ba1902e552b8498f0e8776f_uycoez.mp3"
  },
  {
      "title": "Yêu Một Mình",
      "lyric": "Tình yêu đơn phương anh dành cho em, mãi mãi không thể nói ra. Một mình anh ôm ấp những nỗi niềm, những giấc mơ về em. Dù biết em không hiểu, nhưng anh vẫn luôn mong chờ một ngày em sẽ nhận ra tình yêu này...",
      "views": 3400000,
      "image": "https://photo-resize-zmp3.zmdcdn.me/w165_r1x1_png/covers/9/e/9e549ed896a1a21c42a7f0ff09a05961_1407310471.png",
      "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715924869/music_kl/son%20tung/8fac8d2e92f05d659dafee007e90eeee_ewsdi0.mp3"
  },
  {
      "title": "Lá Thư Đô Thị",
      "lyric": "Lá thư em gửi từ đô thị xa hoa, làm anh nhớ quê nhà. Những ngày xưa yên bình, những kỷ niệm êm đềm bên nhau. Giờ đây chỉ còn lại nỗi nhớ, và anh vẫn chờ em trở về với tình yêu chân thành...",
      "views": 3900000,
      "image": "https://photo-resize-zmp3.zmdcdn.me/w94_r1x1_jpeg/covers/e/a/ea7b7c82bd972090b482c9578a024747_1394681663.jpg",
      "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715924898/music_kl/son%20tung/af9396a58683f1abe6b5719ceb3437bf_r2hed9.mp3"
  },
  {
      "title": "Giàu Nghèo",
      "lyric": "Đời người có khi giàu sang, có khi lại nghèo khó. Tình yêu chân thật không bao giờ đổi thay. Anh và em sẽ cùng nhau vượt qua mọi khó khăn, dù cho cuộc sống có thế nào. Hãy tin rằng tình yêu sẽ giúp chúng ta mãi bên nhau...",
      "views": 4100000,
      "image": "https://photo-resize-zmp3.zmdcdn.me/w165_r1x1_jpeg/cover/5/9/7/7/597718765fa8da46c33973f4d5ac6604.jpg",
      "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715924924/music_kl/son%20tung/5d9e57230a728c57071cc0531892e422_vb83wm.mp3"
  }
]
truongvu = Artist.where(name: 'Trường Vũ').first
album_truongvu = truongvu.albums.create(title: 'Những Bài Hát Hay Nhất Của Trường Vũ', description: "Tuyển tập các ca khúc hay nhất của Trường Vũ", image: "https://photo-resize-zmp3.zmdcdn.me/w600_r1x1_jpeg/cover/6/1/2/d/612d672822e69d3a4ecdc608b74acb1c.jpg")
truongvu_songs.each do |s|
  song = truongvu.songs.create(s)
  song.album_songs.create(album_id: album_truongvu.reload.id)
end

phinhung_songs = [
  {
      "title": "Bông Bí Vàng",
      "lyric": "Bông bí vàng trong vườn nhà mình, như tình ta đong đầy yêu thương. Em vẫn chờ bên bờ ao nhà, nhớ anh từng đêm, từng chiều mưa. Tình yêu đôi ta mãi đậm đà, như bông bí vàng rực rỡ dưới nắng.",
      "views": 85000000,
      "image": "https://photo-resize-zmp3.zmdcdn.me/w165_r1x1_jpeg/cover/3/2/a/3/32a35f4d26ee56366397c09953f6c269.jpg",
      "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715796663/music_kl/song/8791011493626143346_vmsy06.mp3"
  },
  {
      "title": "Lý Con Sáo Miền Nam",
      "lyric": "Lý con sáo miền Nam, bay đi tìm bạn. Đôi chim sáo vui đùa cùng nhau, trong nắng mai hồng. Nhớ về miền quê yên bình, nơi có tình yêu đôi ta.",
      "views": 75000000,
      "image": "https://photo-resize-zmp3.zmdcdn.me/w165_r1x1_jpeg/cover/7/f/e/d/7fed3c0b63e198bf84b7b28544ac7b13.jpg",
      "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715925030/music_kl/son%20tung/8014953b6c9725cadaf0a98eed44c728_sjebod.mp3"
  },
  {
      "title": "Như Lục Bình Trôi",
      "lyric": "Như lục bình trôi, em lạc mất anh rồi. Dòng sông mênh mông cuốn trôi đi bao kỷ niệm. Tình yêu đôi ta giờ đây chỉ còn là giấc mơ.",
      "views": 65000000,
      "image": "https://photo-resize-zmp3.zmdcdn.me/w94_r1x1_jpeg/cover/a/4/8/9/a489fc7420010b10eda6fa4d616fcfe3.jpg",
      "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715925059/music_kl/son%20tung/de3d3db2a9121da1f419db7aa06b2f07_gkspcu.mp3"
  },
  {
      "title": "Ninh Kiều Em Gái Cần Thơ",
      "lyric": "Ninh Kiều em gái Cần Thơ, nụ cười tỏa nắng. Em đứng bên bến Ninh Kiều, đợi anh về thăm. Nhớ những chiều mưa, ta cùng chung bước dưới mưa.",
      "views": 60000000,
      "image": "https://photo-resize-zmp3.zmdcdn.me/w94_r1x1_jpeg/covers/0/d/0d5b1c4c7f720f698946c7f6ab08f687_1425889433.jpg",
      "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715925095/music_kl/son%20tung/f0d137a5fc327c6a8862a7a2f524781f_rbcpys.mp3"
  },
  {
      "title": "Lý Miệt Vườn",
      "lyric": "Lý miệt vườn, tình quê thắm đượm. Bên nhau ta xây đắp bao mộng ước. Những chiều hoàng hôn, em chờ anh về. Tình yêu đôi ta như miệt vườn nở hoa.",
      "views": 70000000,
      "image": "https://photo-resize-zmp3.zmdcdn.me/w94_r1x1_jpeg/cover/7/c/4/d/7c4dd3413c0bb9c3c8d99d39077a5e8f.jpg",
      "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715925125/music_kl/son%20tung/8a7b689e17829727289cdd13395ed239_yeg6mj.mp3"
  },
  {
      "title": "Đừng Nói Yêu Tôi",
      "lyric": "Đừng nói yêu tôi nếu anh không thật lòng. Đừng để tôi thêm những đêm dài cô đơn. Tình yêu như mây trôi, mộng ước tan biến. Em chỉ cần một tình yêu chân thành.",
      "views": 80000000,
      "image": "https://photo-resize-zmp3.zmdcdn.me/w94_r1x1_jpeg/cover/3/8/9/4/38949c7b36e398d2b760331bf007f7fa.jpg",
      "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715925167/music_kl/son%20tung/9605e828651dba53ceeae03594cfffe8_qcg2gr.mp3"
  },
  {
      "title": "Cây Khế Sau Hè",
      "lyric": "Cây khế sau hè, nơi ta từng bên nhau. Những kỷ niệm buồn vui, vẫn còn trong tim. Anh ra đi, để lại em một mình. Cây khế giờ đây đã già, như tình ta năm nào.",
      "views": 90000000,
      "image": "https://photo-resize-zmp3.zmdcdn.me/w165_r1x1_jpeg/cover/b/d/a/c/bdaca16296b1470a319901883606db2e.jpg",
      "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715796963/music_kl/song/21550485555657315_lpol8v.mp3"
  },
  {
      "title": "Bạc Liêu Hoài Cổ",
      "lyric": "Bạc Liêu hoài cổ, em nhớ anh vô bờ. Những ngày xưa yêu dấu, giờ đã xa vời. Đêm đêm nghe tiếng đàn, nhớ về anh khôn nguôi.",
      "views": 72000000,
      "image": "https://photo-resize-zmp3.zmdcdn.me/w94_r1x1_jpeg/cover/3/2/a/3/32a35f4d26ee56366397c09953f6c269.jpg",
      "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715925204/music_kl/son%20tung/5584761192197239189_xuqkcr.mp3"
  },
  {
      "title": "Chiều Thương Đô Thị",
      "lyric": "Chiều thương đô thị, lòng nhớ quê hương. Nhớ những chiều mưa, ta cùng nhau dạo phố. Đô thị phồn hoa, lòng em vẫn nhớ về anh.",
      "views": 68000000,
      "image": "https://photo-resize-zmp3.zmdcdn.me/w165_r1x1_jpeg/cover/3/2/a/3/32a35f4d26ee56366397c09953f6c269.jpg",
      "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715925241/music_kl/son%20tung/4550484303562899027_ykfz82.mp3"
  }
]

phinhung = Artist.where(name: 'Phi Nhung').first
album_phinhung = phinhung.albums.create(title: 'Những Bài Hát Hay Nhất Của Phi Nhung', description: "Bậu ơi đừng buồn, vào nghe Phi Nhung hát", image: "https://photo-resize-zmp3.zmdcdn.me/w600_r1x1_jpeg/cover/e/e/b/1/eeb17bfbdaa9e6e6b15aa81e8a862679.jpg")
phinhung_songs.each do |s|
  song = phinhung.songs.create(s)
  song.album_songs.create(album_id: album_phinhung.reload.id)
end

erik_songs = [
  {
    "title": "Sau Tất Cả",
    "lyric": "Sau tất cả mình lại trở về với nhau. Tựa như chưa bắt đầu, tựa như ta vừa mới quen... Sau tất cả, tình yêu ấy không thể phai mờ. Những kỷ niệm ta đã có, luôn in sâu trong trái tim này. Dù có những lúc ta xa nhau, nhưng ta vẫn luôn nhớ về nhau. Sau tất cả, mình lại trở về bên nhau, như chưa từng có chia xa.",
    "views": 2000000,
    "image": "https://photo-resize-zmp3.zmdcdn.me/w94_r1x1_jpeg/covers/5/5/55a2e33a5d4d6a70f5144181c28eacb0_1452855672.jpg",
    "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715925353/music_kl/son%20tung/a37f931dc8bbcdc9e06bdfd8213c8465_vxhrud.mp3"
  },
  {
      "title": "Chạm Đáy Nỗi Đau",
      "lyric": "Hạnh phúc cứ thế trôi qua tay, tựa như giấc mơ không quay trở lại... Những ngày tháng bên nhau giờ chỉ còn là ký ức. Nỗi đau này, liệu có ai thấu hiểu? Chạm đáy nỗi đau, lòng càng thêm đau. Nhưng anh vẫn phải bước đi, dù lòng vẫn còn yêu em rất nhiều.",
      "views": 1500000,
      "image": "https://photo-resize-zmp3.zmdcdn.me/w240_r1x1_jpeg/cover/9/b/4/0/9b40a25f9a606520333fa79f1fdf5ea6.jpg",
      "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715925383/music_kl/son%20tung/3278f11e8bd6e624a5e05d01d5cbb0b4_pr1fq2.mp3"
  },
  {
      "title": "Lạc Nhau Có Phải Muôn Đời",
      "lyric": "Vì sao ta lạc mất nhau, giữa đời thường là thế đó... Chỉ còn lại những lời nói dối. Lạc nhau rồi, liệu có tìm lại được nhau? Giữa biển người, ta vẫn luôn tìm kiếm. Lạc nhau có phải muôn đời, hay chỉ là thử thách của tình yêu? Dù thế nào đi nữa, anh vẫn sẽ chờ em.",
      "views": 1300000,
      "image": "https://photo-resize-zmp3.zmdcdn.me/w240_r1x1_jpeg/covers/1/c/1c427f21e588bc59ec2be35b65f5c6a5_1484313604.jpg",
      "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715925410/music_kl/son%20tung/b3c944f006bf492a6daf043ff5656dd6_lpb9lc.mp3"
  },
  {
      "title": "Đừng Xin Lỗi Nữa (Cover)",
      "lyric": "Đừng xin lỗi nữa, mọi thứ cũng đã vỡ tan rồi... Lời xin lỗi giờ đây cũng chỉ là vô nghĩa. Đừng nói thêm gì nữa, để lòng này bớt đau. Tình yêu đã kết thúc, hãy để mọi thứ trở lại như ban đầu. Đừng xin lỗi nữa, chỉ khiến lòng thêm buồn. Chúng ta nên kết thúc ở đây thôi.",
      "views": 1200000,
      "image": "https://photo-resize-zmp3.zmdcdn.me/w240_r1x1_jpeg/cover/4/a/8/7/4a8740d9b5ae80b5a9cd091857f45cc3.jpg",
      "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715925436/music_kl/son%20tung/3e97762444caaf8bd82cb8842f1e4193_k1gydb.mp3"
  },
  {
      "title": "Em Không Sai Chúng Ta Sai",
      "lyric": "Em không sai, chúng ta sai, lời yêu ấy nay đã quá xa... Những ngày tháng bên nhau giờ chỉ là dĩ vãng. Anh không trách em, chỉ trách tình ta không đủ mạnh mẽ. Em không sai, chỉ là ta không thể đi cùng nhau đến cuối con đường. Những lời nói yêu thương giờ đã trở thành quá khứ.",
      "views": 1800000,
      "image": "https://photo-resize-zmp3.zmdcdn.me/w240_r1x1_jpeg/cover/7/4/0/d/740d5e0fd272d2421d441e9fd5c08fdd.jpg",
      "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715925469/music_kl/son%20tung/b2707a710cb37c6b1fcfb4899761deda_phbpwi.mp3"
  },
  {
      "title": "Ghen (ft. Min)",
      "lyric": "Em thấy ghét khi mà anh cứ mãi gần bên cô ấy... Những lời nói ngọt ngào chỉ khiến lòng thêm đau. Ghen tuông là vậy, tình yêu thật phức tạp. Em muốn anh chỉ là của riêng em. Ghen tuông làm lòng này thêm rối bời, nhưng em vẫn yêu anh nhiều lắm. Đừng để tình yêu này phải phai nhòa.",
      "views": 1700000,
      "image": "https://photo-resize-zmp3.zmdcdn.me/w240_r1x1_jpeg/covers/d/0/d05f9b3c87cf7ccda468174b28757489_1495770525.jpg",
      "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715925500/music_kl/son%20tung/810449635fc68d44ba19225d0ce84217_ajhth3.mp3"
  },
  {
      "title": "Yêu Và Yêu",
      "lyric": "Cứ yêu và yêu, dù có sai lầm ta vẫn không hề hối tiếc... Tình yêu là thế, không thể đoán trước được. Yêu hết mình, sống hết mình vì nhau. Những kỷ niệm đẹp sẽ mãi in sâu trong tim. Dù có sai lầm, ta vẫn không hề hối tiếc. Yêu và yêu, dù biết rằng tình yêu có thể làm ta đau.",
      "views": 1400000,
      "image": "https://photo-resize-zmp3.zmdcdn.me/w240_r1x1_jpeg/covers/2/7/27280fc4cf0b8569604bb9a96e52e423_1460390369.jpg",
      "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715925531/music_kl/son%20tung/80b1607abbeab927daf70a838f17dc49_av74qa.mp3"
  }
]

erik = Artist.where(name: 'Erik').first
album_erik = erik.albums.create(title: 'Những Bài Hát Hay Nhất Của Erik', description: " 'Chạy về khóc với anh', 'Em không sai chúng ta sai' và Hit của ERIK", image: "https://photo-resize-zmp3.zmdcdn.me/w600_r1x1_jpeg/cover/e/e/b/1/eeb17bfbdaa9e6e6b15aa81e8a862679.jpg")
erik_songs.each do |s|
  song = erik.songs.create(s)
  song.album_songs.create(album_id: album_erik.reload.id)
end

huonglan_songs = [
  {
      "title": "Đêm Giao Thừa Nghe Một Khúc Dân Ca",
      "lyric": "Đêm giao thừa lại về với quê hương. Em nghe lòng rộn ràng tiếng dân ca vang. Tiếng đàn lời ca ngọt ngào. Gửi trọn tình yêu thương người xa...",
      "views": 82000000,
      "image": "https://photo-resize-zmp3.zmdcdn.me/w165_r1x1_jpeg/covers/6/9/696f7ba050c6d8e3ae5622300ec76e5b_1515410057.jpg",
      "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715925564/music_kl/son%20tung/4bad4ba607ef7542dcfc9f6a28ce25a4_drfih6.mp3"
  },
  {
      "title": "Chín Dòng Sông Hò Hẹn",
      "lyric": "Chín dòng sông nơi ta hò hẹn. Bên anh tình mãi đong đầy. Câu hò ngày xưa em vẫn nhớ. Trọn đời em chỉ có anh thôi...",
      "views": 7600000,
      "image": "https://photo-resize-zmp3.zmdcdn.me/w165_r1x1_jpeg/covers/7/3/73688444a73a76169d03b689a7e785cf_1361618573.jpg",
      "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715925626/music_kl/son%20tung/0913ca27b5160e6a9611ca5b1cd864e9_aiv3cn.mp3"
  },
  {
      "title": "Bằng Lòng Đi Em",
      "lyric": "Bằng lòng đi em ơi. Dù đời nghèo khó vẫn yêu nhau hoài. Bằng lòng đi em ơi. Chẳng còn gì đẹp hơn tình yêu đôi lứa...",
      "views": 9100000,
      "image": "https://photo-resize-zmp3.zmdcdn.me/w94_r1x1_jpeg/cover/6/f/c/6/6fc667126187e7840778d6f8f7bb7b91.jpg",
      "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715925652/music_kl/son%20tung/7aacc2229f72ee6209007421f02ee521_ia9h96.mp3"
  },
  {
      "title": "Chuyện Tình Quán Bên Hồ",
      "lyric": "Chuyện tình quán bên hồ. Anh và em ngồi cùng nhau. Nghe lời ru nhẹ nhàng. Yêu thương mãi còn đây...",
      "views": 7400000,
      "image": "https://photo-resize-zmp3.zmdcdn.me/w94_r1x1_jpeg/covers/6/8/68d5535b971d558f594f10a5affd0a71_1288981261.jpg",
      "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715925679/music_kl/son%20tung/610ac49a6866c71e6ca1c780f0f1ad79_doorij.mp3"
  },
  {
      "title": "Chân Quê",
      "lyric": "Chân quê anh nhớ về. Ngôi làng xưa kỷ niệm buồn vui. Em và anh ngày ấy. Tay trong tay dưới mái nhà tranh...",
      "views": 8700000,
      "image": "https://photo-resize-zmp3.zmdcdn.me/w94_r1x1_jpeg/covers/0/5/05a44537b88dd0834b463f388c5b57e5_1289491632.jpg",
      "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715925706/music_kl/son%20tung/1201bf18b8d85fe52d01f411174c81bd_ww7qf0.mp3"
  },
  {
      "title": "Chuyện Tình Lan Và Điệp",
      "lyric": "Chuyện tình Lan và Điệp. Chúng ta không thể quên. Câu chuyện tình bi thương. Nhưng mãi mãi vẹn nguyên...",
      "views": 98000000,
      "image": "https://photo-resize-zmp3.zmdcdn.me/w94_r1x1_jpeg/covers/f/d/fd46be63f7de2545aeaabc5ab978f3e0_1445924664.jpg",
      "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715925757/music_kl/son%20tung/06acb51ab2a4ef2b2327b7feaad8a12a_gtvuhd.mp3"
  },
  {
      "title": "Không Bao Giờ Quên Anh",
      "lyric": "Không bao giờ quên anh. Dù mai đây cách xa muôn trùng. Tình anh như ánh sao sáng. Dẫn lối em về miền yêu thương...",
      "views": 93000000,
      "image": "https://photo-resize-zmp3.zmdcdn.me/w94_r1x1_jpeg/covers/8/f/8fe69ad1e72315779a52b11d0e1033be_1300067066.jpg",
      "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715925787/music_kl/son%20tung/e373f249f401aa98b22e53b328402dad_xyvp2x.mp3"
  },
  {
      "title": "Cho Em Được Về Với Quê Anh",
      "lyric": "Cho em được về với quê anh. Nơi miền quê thanh bình yêu dấu. Tay trong tay hạnh phúc vẹn tròn. Mình cùng nhau xây giấc mơ yên lành...",
      "views": 69000000,
      "image": "https://photo-resize-zmp3.zmdcdn.me/w165_r1x1_jpeg/covers/9/c/9cd7157e4b7e0a0056b19d1dd40e7716_1483500789.jpg",
      "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715925817/music_kl/son%20tung/b2c308d67f9b4dde5c50f955a1018161_hhs4kt.mp3"
  },
  {
      "title": "Trộm Nhìn Nhau",
      "lyric": "Trộm nhìn nhau lòng ngẩn ngơ. Yêu anh mà chẳng nói thành lời. Để mai xa cách nghìn trùng. Lòng vẫn nhớ mãi bóng hình xưa...",
      "views": 88000000,
      "image": "https://photo-resize-zmp3.zmdcdn.me/w94_r1x1_jpeg/avatars/d/c/4/6/dc46b91ae6e40a586283b03f31312baa.jpg",
      "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715925847/music_kl/son%20tung/0e8db19ce4854da7d440f41ffada4290_iw5v7s.mp3"
  },
  {
      "title": "Mẹ Tôi",
      "lyric": "Mẹ tôi tóc bạc như mây. Nuôi con khôn lớn thành người. Từng đêm mẹ thức chờ mong. Cho con giấc mơ yên bình...",
      "views": 97000000,
      "image": "https://photo-resize-zmp3.zmdcdn.me/w94_r1x1_jpeg/cover/c/3/5/3/c3537dcaeb2c551b523f92344023680c.jpg",
      "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715925864/music_kl/son%20tung/d2e5bf5cbcdd5f9c36c04c040e8c7988_tdta3e.mp3"
  }
]

huonglan = Artist.where(name: 'Hương Lan').first
album_huonglan = huonglan.albums.create(title: 'Những Bài Hát Hay Nhất Của huonglan', description: " Tuyển tập các bài hát hay nhất của Hương Lan.", image: "https://photo-resize-zmp3.zmdcdn.me/w600_r1x1_jpeg/cover/e/b/c/1/ebc13e270d3855c4cddea06d5401123e.jpg")
huonglan_songs.each do |s|
  song = huonglan.songs.create(s)
  song.album_songs.create(album_id: album_huonglan.reload.id)
end


hoangdung_songs = [
  {
    "title": "Nàng Thơ",
    "lyric": "Em không là nàng thơ, anh cũng không còn là nhạc sĩ mộng mơ. Tình yêu ấy giờ đây đã xa. Kỷ niệm ấy giờ chỉ còn là giấc mơ... Nàng thơ của anh, giờ chỉ còn là ký ức. Nhạc khúc ấy, giờ cũng không còn vang. Nhưng anh vẫn luôn nhớ về em, người con gái anh yêu.",
    "views": 3000000,
    "image": "https://photo-resize-zmp3.zmdcdn.me/w240_r1x1_jpeg/cover/e/6/7/e/e67ea0b93182adbf44c6a019591834df.jpg",
    "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715925909/music_kl/son%20tung/51c84e08f6f1d6e32200c087d939694d_ynoq2x.mp3"
  },
  {
      "title": "Đôi Lời Tình Ca",
      "lyric": "Anh viết đôi lời tình ca, gửi đến em nơi xa. Nhớ về những ngày tháng bên nhau... Đôi lời tình ca, gửi gắm tâm tư anh. Những ngày ta bên nhau, là những ngày đẹp nhất. Anh mong rằng, em sẽ luôn hạnh phúc. Và nhớ về anh, người từng yêu em rất nhiều.",
      "views": 2200000,
      "image": "https://photo-resize-zmp3.zmdcdn.me/w240_r1x1_jpeg/cover/5/9/3/c/593cee417d4a2c8ac470159ba7acb787.jpg",
      "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715925925/music_kl/son%20tung/2d758acdc66e9146caa1bd33d977d03e_kxoknr.mp3"
  },
  {
      "title": "Vì Một Câu Nói",
      "lyric": "Vì một câu nói, mà ta phải xa nhau. Lời nói ấy, khiến tim anh đau nhói... Vì một câu nói, mà tình ta tan vỡ. Giờ đây chỉ còn lại nỗi nhớ. Nhưng anh vẫn hy vọng, một ngày ta sẽ gặp lại nhau. Và tình yêu ấy, sẽ lại được thắp sáng.",
      "views": 1800000,
      "image": "https://photo-resize-zmp3.zmdcdn.me/w240_r1x1_jpeg/cover/2/4/3/f/243f17afdd3ccd957129824df72cf4ac.jpg",
      "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715925968/music_kl/son%20tung/5856687942822894746_gnx8hy.mp3"
  },
  {
      "title": "Thói Quen",
      "lyric": "Thói quen, anh vẫn thường làm mỗi khi nhớ em. Nhớ về những ngày tháng bên nhau... Thói quen ấy, giờ chỉ còn là kỷ niệm. Nhưng anh vẫn giữ trong tim. Thói quen này, anh không thể quên. Dù biết rằng, em đã xa mãi. Nhưng lòng này vẫn luôn nhớ về em.",
      "views": 1600000,
      "image": "https://photo-resize-zmp3.zmdcdn.me/w240_r1x1_jpeg/cover/8/d/3/f/8d3f50d900ed7a0674a261683fb091cf.jpg",
      "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715925990/music_kl/son%20tung/273c941b23d40d7020a02e3f7a5f8ab7_twhwzu.mp3"
  },
  {
      "title": "Tình Yêu Ngủ Quên",
      "lyric": "Tình yêu ngủ quên, trong tim anh. Những kỷ niệm xưa, giờ chỉ còn là giấc mơ... Tình yêu ấy, đã ngủ quên trong lòng. Nhưng anh vẫn nhớ về em, người con gái anh yêu. Giấc mơ ấy, giờ chỉ còn lại trong ký ức. Nhưng anh vẫn hy vọng, một ngày ta sẽ lại gặp nhau.",
      "views": 1900000,
      "image": "https://photo-resize-zmp3.zmdcdn.me/w240_r1x1_jpeg/cover/5/7/3/b/573b0f73e81b7e1bc007f7f40f281968.jpg",
      "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715926019/music_kl/son%20tung/7956e95688d36d529d4a13d511b816b3_ap1pli.mp3"
  },
  {
      "title": "Chờ Anh Nhé",
      "lyric": "Chờ anh nhé, em yêu. Dù biết rằng, thời gian sẽ trôi qua... Chờ anh nhé, em yêu. Anh sẽ trở về bên em. Những ngày xa nhau, chỉ là thử thách. Chờ anh nhé, em yêu. Anh sẽ mang theo tình yêu này, và trở về bên em. Dù thời gian có trôi qua, anh vẫn sẽ yêu em mãi mãi.",
      "views": 1700000,
      "image": "https://photo-resize-zmp3.zmdcdn.me/w240_r1x1_jpeg/covers/a/5/a5770da425db0bd4d1c397badb944075_1465443445.jpg",
      "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715926051/music_kl/son%20tung/2a7c63fa6e19c4e99049b00bda30b63c_it6xtt.mp3"
  },
  {
      "title": "Chẳng Nói Nên Lời",
      "lyric": "Chẳng nói nên lời, khi em rời xa. Trái tim anh đau nhói... Những ngày tháng bên nhau, giờ chỉ còn là kỷ niệm. Chẳng nói nên lời, khi em bước đi. Nỗi nhớ ấy, giờ chỉ còn trong tim. Nhưng anh vẫn hy vọng, một ngày ta sẽ gặp lại nhau. Và tình yêu ấy, sẽ lại được thắp sáng.",
      "views": 1700000,
      "image": "https://photo-resize-zmp3.zmdcdn.me/w240_r1x1_jpeg/cover/8/1/5/4/8154cd00aa5d144c1af9780a8fc9d088.jpg",
      "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715926082/music_kl/son%20tung/1184b2f43dd3a3c8c56d4667928461d6_n7ozv5.mp3"
  }
]
hoangdung = Artist.where(name: 'Hoàng Dũng').first
album_hoangdung = hoangdung.albums.create(title: 'Những Bài Hát Hay Nhất Của Hoàng Dũng', description: " 'Nàng Thơ' với Hoàng Dũng và bộ sưu tập Hit nổi bật", image: "https://photo-resize-zmp3.zmdcdn.me/w600_r1x1_jpeg/cover/4/9/c/0/49c02f4150747c23b3a2ce3dbfb30305.jpg")
hoangdung_songs.each do |s|
  song = hoangdung.songs.create(s)
  song.album_songs.create(album_id: album_hoangdung.reload.id)
end
camly_songs = [
  {
    "title": "Thương Nhớ Người Dưng",
    "lyric": "Anh nhớ về em trong những chiều mưa, Thương nhớ ngập tràn, tình yêu như cơn mơ. Những kỷ niệm xưa vẫn mãi không phai, Dù bao năm qua anh vẫn luôn yêu em.",
    "views": 50000000,
    "image": "https://photo-resize-zmp3.zmdcdn.me/w165_r1x1_jpeg/covers/7/0/7014824a73ba9e48258e1fdd40c56fdc_1294977982.jpg",
    "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715926119/music_kl/son%20tung/f3663d10f986569b820802f83edd75a8_cnuwiy.mp3"
  },
  {
    "title": "Em Gái Quê",
    "lyric": "Em gái quê, bao năm tháng bên nhau. Tình yêu trong anh mãi mãi không phai. Em đã đi xa, để lại bao nhớ thương. Trong tim anh, em vẫn mãi là duy nhất.",
    "views": 30000000,
    "image": "https://photo-resize-zmp3.zmdcdn.me/w165_r1x1_jpeg/covers/8/f/8f77fc27525aa74d3b7f2d784bc789b8_1287308483.jpg",
    "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715926150/music_kl/son%20tung/c1aa929c2b5ece350135c09ddb246078_pxtzds.mp3"
  },
  {
    "title": "Chim Trắng Mồ Côi",
    "lyric": "Chim trắng bay giữa trời xanh, cô đơn và lẻ loi. Như tình yêu anh dành cho em, dù bao khó khăn vẫn mãi không đổi thay. Anh vẫn chờ, một ngày em trở về.",
    "views": 25000000,
    "image": "https://photo-resize-zmp3.zmdcdn.me/w165_r1x1_jpeg/avatars/f/3/f3ccdd27d2000e3f9255a7e3e2c48800_1299725871.jpg",
    "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715926196/music_kl/son%20tung/5f88f19f4034542e12ae54e10d284674_jmtlwh.mp3"
  },
  {
    "title": "Màu Xanh Trẻ Thơ",
    "lyric": "Màu xanh tuổi thơ, những kỷ niệm êm đềm. Trong vòng tay mẹ, em sống vui tươi. Bao năm tháng trôi, ký ức vẫn còn đây. Như lời mẹ ru, dẫn lối em từng ngày.",
    "views": 20000000,
    "image": "https://photo-resize-zmp3.zmdcdn.me/w320_r1x1_jpeg/covers/1/d/1dbd477f54c8b294cf4f5a2ff7ec87ed_1290346313.jpg",
    "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715926282/music_kl/son%20tung/48a9b3a1d6541bb6c8784dc874224726_cwhl3k.mp3"
  },
  {
    "title": "Nửa Trái Tim",
    "lyric": "Nửa trái tim anh trao về em, một tình yêu mãi mãi không thay đổi. Dù em đã đi xa, anh vẫn luôn chờ mong. Một ngày em trở về, để nối lại tình xưa.",
    "views": 15000000,
    "image": "https://photo-resize-zmp3.zmdcdn.me/w94_r1x1_jpeg/covers/f/d/fd6c09fcc2ffbe579df12db993d98e5d_1314855980.jpg",
    "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715926312/music_kl/son%20tung/85d8f633aff7067c870b5a30cd92d1ae_k5nxv4.mp3"
  },
  {
    "title": "Sao Chưa Thấy Hồi Âm",
    "lyric": "Sao chưa thấy hồi âm, những dòng thư yêu thương. Anh vẫn đợi chờ, từng ngày qua mong nhớ. Tình yêu em trao, bao giờ sẽ trở lại. Để anh thôi mong chờ, để lòng thôi buồn đau.",
    "views": 8000000,
    "image": "https://photo-resize-zmp3.zmdcdn.me/w165_r1x1_jpeg/covers/7/0/7014824a73ba9e48258e1fdd40c56fdc_1371784966.jpg",
    "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715926342/music_kl/son%20tung/3b11f6038d5aa4566f0837439cb3f8a9_kwrven.mp3"
  },
  {
    "title": "Thuyền Không Bến Đỗ",
    "lyric": "Thuyền không bến đỗ, lòng anh buồn man mác. Em đã đi xa, để lại bao nhớ thương. Tình yêu đôi ta, như thuyền trôi vô định. Anh vẫn chờ, một ngày em trở về.",
    "views": 12000000,
    "image": "https://photo-resize-zmp3.zmdcdn.me/w165_r1x1_jpeg/covers/7/0/7014824a73ba9e48258e1fdd40c56fdc_1371784966.jpg",
    "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715926373/music_kl/son%20tung/359ddf39eea9162762dcd351b7a3eaad_zyhqt2.mp3"
  },
  {
    "title": "Anh Ba Hưng",
    "lyric": "Anh Ba Hưng, người hùng trong trái tim. Tình yêu anh dành, cho đất nước bao la. Anh ra đi, để lại bao niềm tin. Một ngày mai tươi sáng, anh vẫn luôn chờ mong.",
    "views": 6000000,
    "image": "https://photo-resize-zmp3.zmdcdn.me/w165_r1x1_jpeg/covers/2/7/2760735506a5bc187a35f6c829fae70d_1303036752.jpg",
    "audio": "https://res.cloudinary.com/dx9vr7on4/video/upload/v1715926567/music_kl/son%20tung/804a3d1537181ba98d2b03dcb6546f55_mpyyxa.mp3"
  }
]
camly = Artist.where(name: 'Cẩm Ly').first
album_camly = camly.albums.create(title: 'Những Bài Hát Hay Nhất Của Cẩm Ly', description: "Tuyển tập các bài hát hay nhất của Cẩm Ly.", image: "https://photo-resize-zmp3.zmdcdn.me/w600_r1x1_jpeg/images/5/2/a/0/52a0de4236b66f00fe2d668b9c157ef0.jpg")
camly_songs.each do |s|
  song = camly.songs.create(s)
  song.album_songs.create(album_id: album_camly.reload.id)
end

ids1 = []
singers1 = Artist.where(name: ['Sơn Tùng M-TP', 'Hoàng Thùy Linh', 'Đen Vâu', 'Tóc Tiên', 'Min', 'Noo Phước Thịnh'])
a1 = Genre.first.albums.first 2
singers1.each do |s|
  ids1 << s.songs.pluck(:id)
end
ids1 = ids1.flatten

a1.each do |album|
  random_ids = ids1.sample(12)
  random_ids.each do |song_id|
    album.album_songs.create(song_id: song_id)

  end
end