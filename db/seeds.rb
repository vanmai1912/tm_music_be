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
# Artist.destroy_all
# singers.each do |s|
#   Artist.singer.create(s)
# end

sontung = Artist.where(name: 'Sơn Tùng M-TP').first
album_sontung = sontung.albums.create(title: 'Những Bài Hát Hay Nhất Của Sơn Tùng M-TP', description: 'Sơn Tùng M-TP và bộ sưu tập siêu Hit')
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
        "audio": "https://vnso-pt-15-tf-a128-z3.zmdcdn.me/756ba39ea07eb46c326b54c999668a94?authen=exp=1715877345~acl=/756ba39ea07eb46c326b54c999668a94/*~hmac=5f08b5ec01f44ddefd6d1ee9da20b2f3",
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
        "audio": "https://vnso-zn-24-tf-a128-z3.zmdcdn.me/2a92caeb62976d2492509c102ced2711?authen=exp=1715876893~acl=/2a92caeb62976d2492509c102ced2711/*~hmac=6678fc58b6606026b0316d58248f0ebd",
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
        "audio": "https://vnso-pt-14-tf-a128-z3.zmdcdn.me/d17d79105dfcbf67208389c9e8fc9c42?authen=exp=1715876995~acl=/d17d79105dfcbf67208389c9e8fc9c42/*~hmac=56ea1fb166768e7c158ddfe89d970ac2",
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
        "audio": "https://vnso-pt-15-tf-a128-z3.zmdcdn.me/593b54ec5c26d2a70585377cf9374578?authen=exp=1715877605~acl=/593b54ec5c26d2a70585377cf9374578/*~hmac=337b24e6d91696afbdf5fdcc6d9d86b4",
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
        "audio": "https://vnso-pt-14-tf-a128-z3.zmdcdn.me/2f6fc8622021b60dcaeb1c011b32be75?authen=exp=1715877442~acl=/2f6fc8622021b60dcaeb1c011b32be75/*~hmac=37b52e082ff3d15b35ccd2e8bb50bc40",
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
        "audio": "https://vnso-zn-24-tf-a128-z3.zmdcdn.me/523fb2bef2f3b3c8497c6efe228c737c?authen=exp=1715877975~acl=/523fb2bef2f3b3c8497c6efe228c737c/*~hmac=921e85a20f9ab8d315770a2865ff71ae",
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
        "audio": "https://vnso-zn-24-tf-a128-z3.zmdcdn.me/2703e88a97437d7bc2ddc8ddb7e4de12?authen=exp=1715877608~acl=/2703e88a97437d7bc2ddc8ddb7e4de12/*~hmac=eacb7a285f8b4ab211631ef5d598918d",
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
        "audio": "https://a128-z3.zmdcdn.me/9d5e0023aeae573dc1000abec75de7d1?authen=exp=1715877888~acl=/9d5e0023aeae573dc1000abec75de7d1/*~hmac=4fd2acc0795e6352f09932f4d461ef76",
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
        "audio": "https://vnso-zn-24-tf-a128-z3.zmdcdn.me/8c8a6c647f1a5575de199da7727c7a10?authen=exp=1715878150~acl=/8c8a6c647f1a5575de199da7727c7a10/*~hmac=dcbb821c006563b482bb9159ab1efde4",
    },
    {
        "title": "Chắc Ai Đó Sẽ Về",
        "lyric": """Chắc ai đó sẽ về
        Chắc ai đó sẽ về
        Một ngày không xa
        Khi anh chẳng còn đợi chờ...""",
        "views": 55000000,
        "image": "https://photo-resize-zmp3.zmdcdn.me/w165_r1x1_jpeg/covers/8/f/8ffcb87289215a21d169d7a8ec86162e_1414118901.jpg",
        "audio": "https://vnso-zn-24-tf-a128-z3.zmdcdn.me/f179de5dd723a556efdf18a13247a512?authen=exp=1715878127~acl=/f179de5dd723a556efdf18a13247a512/*~hmac=96f040c3edea9fd2011f12aef8f8dade",
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
        "audio": "https://vnso-zn-15-tf-a128-z3.zmdcdn.me/419d792482e1678c9f1b7a1e50c292f3?authen=exp=1715878903~acl=/419d792482e1678c9f1b7a1e50c292f3/*~hmac=a676a62f68623f3f36286c6788a20965",
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
        "audio": "https://vnso-zn-24-tf-a128-z3.zmdcdn.me/ed296514b07543c8f29162802af28948?authen=exp=1715878965~acl=/ed296514b07543c8f29162802af28948/*~hmac=b8ea4fdc1ffe1cf4a1cacfe060ba47ed",
    }
]
# sontung_songs.each do |s|
#   song = sontung.songs.create(s)
#   song.album_songs.create(album_id: album_sontung.reload.id)
# end

