-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2018 at 01:56 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webphim`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `hovaten` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `hovaten`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `binhluan`
--

CREATE TABLE `binhluan` (
  `id` int(11) NOT NULL,
  `taikhoan` int(11) NOT NULL,
  `phim` int(11) NOT NULL,
  `binhluan` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `binhluan`
--

INSERT INTO `binhluan` (`id`, `taikhoan`, `phim`, `binhluan`) VALUES
(1, 8, 1, 'Phim hay'),
(2, 15, 1, 'Phim chất lượng'),
(4, 10, 1, 'Phim tuyệt vời'),
(5, 10, 1, 'Thắng');

-- --------------------------------------------------------

--
-- Table structure for table `gopy`
--

CREATE TABLE `gopy` (
  `id` int(11) NOT NULL,
  `hoten` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` text NOT NULL,
  `noidung` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gopy`
--

INSERT INTO `gopy` (`id`, `hoten`, `email`, `noidung`) VALUES
(197, 'Phạm Viết Dũng', 'dungpham97gl@gmail.com', 'PHIM hay lắm , cảm ơn web'),
(199, 'Nga', 'ngapham@gmail.com', 'Cần cập nhật thêm phim');

-- --------------------------------------------------------

--
-- Table structure for table `phim`
--

CREATE TABLE `phim` (
  `id` int(11) NOT NULL,
  `tenphim` text NOT NULL,
  `anhminhhoa` text NOT NULL,
  `dienvien` text NOT NULL,
  `thongtinphim` text NOT NULL,
  `theloai` text NOT NULL,
  `daodien` text NOT NULL,
  `thoiluongphim` text NOT NULL,
  `namsanxuat` date NOT NULL,
  `noisanxuat` text NOT NULL,
  `tags` text NOT NULL,
  `soluotxem` int(11) NOT NULL,
  `trailer` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phim`
--

INSERT INTO `phim` (`id`, `tenphim`, `anhminhhoa`, `dienvien`, `thongtinphim`, `theloai`, `daodien`, `thoiluongphim`, `namsanxuat`, `noisanxuat`, `tags`, `soluotxem`, `trailer`) VALUES
(1, 'Ngôi Nhà Có Chiếc Đồng Hồ Ma Thuật', 'Ngôi nhà có chiếc đồng hồ trên tường.jpg', 'Jack Black, Cate Blanchett, Owen Vaccaro, Renée Elise Goldsberry, Sunny Suljic, Kyle MacLachlan', 'Cậu bé 10 tuổi Lewis Barnavelt chuyển đến New Zebedee, Michigan sống với ông bác phù thủy Jonathantrong một căn nhà cổ xưa kỳ quái, nơi ẩn giấu một chiếc đồng hồ ma thuật đe dọa đến sự tồn vong của Trái Đất. Với sự giúp đỡ của ông bác Jonathan và pháp sư “hàng xóm” Zimmerman, Lewis nhát gan phải giành tất cả sự dũng cảm của mình để ngăn chặn các thế lực tà ác và phá hủy chiếc đồng hồ mang đến ngày tận thế cho toàn thế giới.\r\n<img src="/phimhay/images/Ngôi nhà với đồng hồ trên tường.jpg" width="100%" class="images" />\r\n<img src="/phimhay/images/Ngôi nhà có chiếc đồng hồ trên tường.jpg" width="100%"  height="70%" class="images" />', '4', 'Eli Roth ', '105 Phút', '2018-07-15', 'Mỹ', 'Chàng Trai Năm Ấy, Phim Tràng Chai Năm Ấy, Phim Chiếu Rạp', 428, 'https://www.youtube.com/embed/3Y_UPnh7Z0Q'),
(2, 'Quái Vật VENOM', 'Quái vật venom.jpg', 'Tom Hardy, Michelle Williams, Riz Ahmed, Scott Haze, Reid Scott', 'Quái Vật Venom là một kẻ thù nguy hiểm và nặng ký của Người nhện trong loạt series của Marvel. Chàng phóng viên Eddie Brock (do Tom Hardy thủ vai) bí mật theo dõi âm mưu xấu xa của một tổ chức và đã không may mắn khi nhiễm phải loại cộng sinh trùng ngoài hành tinh (Symbiote) và từ đó đã không còn làm chủ bản thân về thể chất lẫn tinh thần. Điều này đã dần biến anh thành quái vật đen tối và nguy hiểm nhất chống lại người Nhện - Venom.\r\n<img src="/phimhay/Ảnh trong phim/venom2.jpg" width="100%" class="images" />\r\n<img src="/phimhay/Ảnh trong phim/venom1.jpg" width="100%"  height="70%" class="images" />', '2', ':  Ruben Fleischer', '112 phút', '2018-10-05', 'Mỹ', 'dragon bladetian jiang xiong shikiếm rồngthiên tướng hùng sư, kiếm rồng', 38, 'https://www.youtube.com/embed/xLCn88bfW1o'),
(3, 'Hoàng Tử Hào Hoa', 'hoang tu hao hoa 3.jpg', ' 	Demi Lovato, Wilmer Valderrama, Sia, Ashley Tisdale, John Cleese, Dee Bradley Baker', 'LCharming - Hoàng Tử Hào Hoa mang đến cho khán giả một câu chuyện mới, một góc nhìn cực kỳ thú vị, sáng tạo và chưa bao giờ được kể của ba cô gái xinh đẹp trong xứ sở thần tiên nổi tiếng: Bạch Tuyết, Lọ Lem và Công Chúa Ngủ Trong Rừng. Một ngày nọ cả ba khám phá ra rằng những vị hôn phu mà các cô đính hôn thật ra đều là cùng một người đó là Hoàng Tử Charming. Bên cạnh đó còn có hàng triệu cô gái trong vương quốc thầm thương trộm nhớ muốn trở thành vợ của Hoàng Tử.\r\nSự cố này xảy ra do hoàng tử bị một lời nguyền có bản tính đào hoa từ khi lọt lòng, nếu không phá được lời nguyền tất cả đàn ông trong vương quốc bị cướp vợ và người yêu sẽ nổi loạn và đó cung sẽ là ngày tàn của vương quốc. Trước tình hình đó, đức vua King Charming đã đưa cho Hoàng Tử một tối hậu thư: tìm được tình yêu đích thực của mình trước ngày sinh nhật thứ 21 của minh để phá giải lời nguyền hoặc mất hết thân phận cũng như không được trờ thành người kế vị.\r\n<img src="/phimhay/Ảnh trong phim/hoang1.jpg" width="100%" class="images" />\r\n<img src="/phimhay/Ảnh trong phim/hoang2.jpg" width="100%"  height="70%" class="images" />\r\n', '5', 'Ross Venokur', '90 Phút', '2018-04-26', 'Mỹ', 'Lọ Lem, Lọ Lem Full Hd, Lọ Lem Vietsub, Lọ Lem Mỹ Cinderella, Phim Chiếu Rạp Tháng 3', 40, 'https://www.youtube.com/embed/TY1t3MY7z1o'),
(48, 'Đại Sư Huynh', 'Đại sư hynh.jpg', 'Chung Tử Đơn, Jai Day, Trần Kiều Ân, Billy Lau, Kang Yu, Brahim Achabbakhe', 'Một giáo viên trung học mỗi ngày đều đặn tới trường gõ đầu trẻ cho đến một hôm…cậu học sinh do anh chủ nhiệm dính vào rắc rối với một băng đảng xã hội đen và bị bắt cóc. Đó cũng là lúc bí mật của“anh” thầy trước giờ luôn hiền lành, hết mực yêu thương học sinh và có tâm với nghề bị bộc lộ. Có vẻ như quá khứ máu lửa không buông tha “anh” thầy mà buộc anh phải trở lại con người xưa nhưng có khác là lần này không phải chiến đấu cho bản thân anh, mà cho những đứa trẻ mà anh luôn xem chúng như những đứa em trai.', '1', 'Kan Ka Wai', '101 Phút', '2018-01-01', 'Trung Quốc', '', 14, 'https://www.youtube.com/embed/_G4ryawLHjA'),
(6, 'Khách Sạn Tội Phạm', 'khachsantoipham4.jpg', 'Jodie Foster, Sterling K. Brown, Sofia Boutella, Jeff Goldblum ,Brian Tyree Henry, Jenny Slate', 'Hotel Artemis là một bộ phim hành động tội phạm, lấy bối cảnh gỉa tưởng Los Angeles trong tương lai gần, kể về những sự kiện kinh hoàng và đẫm máu xảy ra tại bệnh viện dành riêng cho tội phạm dưới vỏ bọc của khách sạn cũ kĩ có tên Artemis.\r\n<img src="/phimhay/Ảnh trong phim/pham1.jpg" width="100%" class="images" />\r\n<img src="/phimhay/Ảnh trong phim/pham2.jpg" width="100%"  height="70%" class="images" />', '2', 'Drew Pearce', '94 Phút', '2018-05-12', 'Mỹ', '', 140, 'https://www.youtube.com/embed/VGULRUB8x-U'),
(8, 'Gia Đình Siêu Nhân 2', 'Gia Đình Siêu Nhân 2.jpg', 'Craig T. Nelson, Holly Hunter,Sarah Vowell, Huck Milner, Catherine Keener, Eli Fucile', 'Gia Đình Siêu Nhân 2 đánh dấu những chuyến phiêu lưu anh hùng đầy hấp dẫn với sự đổi vai đầy táo bạo. Lần này, mẹ dẻo Helen (Elastigirl) sẽ đi thực chiến giải cứu thế giới trong khi bố khỏe Bob (Mr. Incredible) lùi về hậu phương trông nom những đứa con siêu nhân láu lỉnh gồm: con gái Violet ( siêu năng lực tàng hình và tạo ra từ trường làm chắn bảo vệ), con trai Dash (chạy siêu nhanh) và cậu út Jack-Jack với sức mạnh chưa được khám phá. Một ác nhân bí ẩn xuất hiện với một âm mưu đáng sợ khiến cho gia đình siêu nhân phải “tái xuất giang hồ”.\r\n<img src="/phimhay/Ảnh trong phim/siêu1.jpg" width="100%" class="images" />\r\n Liệu gia đình siêu nhân sẽ vượt qua khó khăn này như thế nào?\r\n<img src="/phimhay/Ảnh trong phim/siêu2.jpg" width="100%"  height="70%" class="images" />', '5', 'Brad Bird', '118 Phút', '2018-10-08', 'Hàn Quốc', 'tình yêu trong sáng, falling for innocence, falling in love with soon jung', 118, 'https://www.youtube.com/embed/GOPNVf7J4PU'),
(9, 'Ngày Không Còn Mẹ', 'Ngày không còn mẹ.jpg', 'Ko Du-Shim, Kim Sung-Kyu, Yoo-Sun, Park Chul-Min, Kim Hee-Jung, Shin Se-Kyung', 'In-gyu là một đứa trẻ lên 7 “mắc kẹt” trong hình hài một người đàn ông xấp xỉ 30. Mẹ của anh ấy – Ae-soon, dành trọn 30 năm cuộc đời để chăm sóc cho con trai mình, việc đó đã khiến cho Ae-soon trở thành một bà mẹ già luôn cằn nhằn và cực kì khó tính.Một ngày kia, bà Ae-soon nhận ra rằng thời gian bên cạnh đứa con trai khù khờ của mình đang dần kết thúc. Ý nghĩ phải rời bỏ In-gyu khiến cho bà chất chồng những lo lắng. Để chuẩn bị cho một tương lai hoàn toàn mới cho con trai mình, bà Ae-soon bắt đầu lên danh sách các việc cần làm – những điều vô cùng bình thường song lại hoàn toàn lạ lẫm và khó khăn đối với một người chậm phát triển như In-gyu. Hành trình trưởng thành muộn của In-gyu cùng sự hướng dẫn tận tâm của người mẹ già sẽ mang tới không ít tiếng cười và cả những giọt nước mắt dành cho khán giả trong những ngày cuối năm 2017.', '3', 'Cho Young-Jun', '114 Phút', '2017-01-01', 'Hàn Quốc', ' got to believe, hãy tin em thêm lần nữa', 21, 'https://www.youtube.com/watch?v=yN_TgbKs58w'),
(49, 'Bố Tớ Là Chân To ', 'Bố Tớ Là Chân To.jpg', 'Cinda Adams, Joey Camen, Pappy Faulkner, Christopher L. Parson, Bob Barlen, Cal Brunker', ' Câu chuyện bắt đầu khi cậu bé Adam quyết tâm tìm kiếm người cha mất tích đã lâu của mình, để rồi phát hiện ra ông ấy là một Bigfoot - người rừng Chân To trong huyền thoai. Ông đã ẩn náu trong rừng trong nhiều năm để bảo vệ chính mình và gia đình khỏi sự săn lùng của Tập đoàn Tóc Tai. – những kẻ tham lam đang âm mưu bắt Bigfoot về để làm thí nghiệm.Cuộc hội ngộ của hai cha con đã giải đáp rất nhiều bí ẩn, nhất là khi Adam khám phá ra cậu cũng được thừa hưởng những năng lực siêu nhiên từ cha mình. Nhưng ngày vui chẳng được bao lâu, Adam không ngờ Tập đoàn Tóc Tai đã lần theo dấu vết của mình để tìm ra cha cậu. Liệu hai cha con sẽ làm gì để thoát khỏi vòng vây của bọn chúng?\r\n', '5', 'Ben Stassen, Jeremy Degruson', '92 Phút', '2018-01-01', 'Mỹ', '', 14, ''),
(10, 'Công Viên Khủng Long 2', 'Công Viên Khủng Long.jpg', 'Chris Pratt, Bryce Dallas Howard, Rafe Spall, Justice Smith, Daniella Pineda, James Cromwell', ' 4 năm sau thảm họa Công Viên kỷ Jura bị phá hủy bởi những con khủng long. Một vài con khủng long vẫn còn sống sót trong rừng trong khi Isla Nublar bị con người bỏ hoang. Owen (Chris Pratt) và Claire (Bryce Dallas Howard) đã tiến hành chiến dịch giải cứu những con khủng long còn sống sót khỏi sự tuyệt chủng khi ngọn núi lửa tại khu vực này bắt đầu hoạt động trở lại. Họ vô tình khám phá ra một âm mưu có thể khiến toàn bộ hành tinh đối mặt với một hiểm họa to lớn chưa từng thấy kể từ thời tiền sử.', '12', 'J.a. Bayona', '128 Phút', '2018-01-01', 'Hàn Quốc', 'dont be swayed, xin đừng xa anh', 18, 'https://www.youtube.com/watch?v=7xwY4TpTV1M'),
(29, 'Tây Du Ký 3 : Nữ Nhi Quốc', 'Nữ Nhi Quốc.jpg', 'Triệu Lệ Dĩnh, Phùng Thiệu Phong, Quách Phú Thành, Gigi Leung, Lâm Chí Linh, Lưu Đào', 'Bốn thầy trò Tam Tạng (Phùng Thiệu Phong), Tôn Ngộ Không (Quách Phú Thành), Trư Bát Giới (Tiểu Thẩm Dương) và Sa Tăng (La Trọng Khiêm) du ngoạn cảnh sắc đồng thời vượt ải mỹ nhân tại Nữ Nhi Quốc của Nữ Vương (Triệu Lệ Dĩnh). Với kinh phí sản xuất lên tới hơn 1,500 tỷ VNĐ, phim hứa hẹn sẽ đem tới cho khán giả một bữa tiệc giải trí đầu xuân mãn nhãn và đầy ý nghĩa.', '4', 'Trịnh Bảo Thụy', '114 phút', '2018-01-01', 'Trung Quốc', 'tony jaa, vo thuat', 26, 'https://www.youtube.com/watch?v=-dRwM2SECIg'),
(51, 'Người Nhện Xa Nhà ', 'Người nhện xa nhà.jpg', 'Zendaya, Tom Holland, Marisa Tomei, Jake Gyllenhaal, Michael Keaton, Jacob Batalon', ' Nhóc nhện Tom Holland vừa hé lộ tên phần tiếp theo của loạt phim Người Nhện sẽ là "Spider-Man: Far From Home", tạm hiểu là "Người Nhện: Xa Nhà". Trước đó thì giám đốc Marvel Studios Kevin Feige đã tiết lộ rằng một trong những điểm đến của người nhện chính là thủ đô Luân Đôn của đảo quốc sương mù.', '4', 'Jon Watts', '120 Phút', '2016-01-01', 'Mỹ', '', 14, ''),
(43, 'Biệt Đội Siêu Anh Hùng', 'Biệt Đội Siêu Anh Hùng.jpg', 'Robert Downey Jr., Chris Hemsworth, Mark Ruffalo, Chris Evans, Scarlett Johansson, Don Cheadle', ' Sau chuyến hành trình độc nhất vô nhị không ngừng mở rộng và phát triển vụ trũ điện ảnh Marvel, bộ phim Avengers: Cuộc Chiến Vô Cực sẽ mang đến màn ảnh trận chiến cuối cùng khốc liệt nhất mọi thời đại. Biệt đội Avengers và các đồng minh siêu anh hùng của họ phải chấp nhận hy sinh tất cả để có thể chống lại kẻ thù hùng mạnh Thanos trước tham vọng hủy diệt toàn bộ vũ trụ của hắn.', '4', 'Anthony Russo, Joe Russo', '150 Phút', '2018-05-01', 'Mỹ - Châu Âu', 'băng cướp tốc độ, Fast, Fast & Furious, Furious, Jason Statham, Paul Walker, Quá nhanh quá nguy hiểm, Tốc độ và sự liều lĩnh, Vin Diesel', 38, ' https://www.youtube.com/watch?v=O4XbKp6kN2k'),
(50, 'Dị Nhân LEGION 2', 'Dị Nhân 2.jpg', 'Dan Stevens, Rachel Keller, Amber Midthunder, Aubrey Plaza, Bill Irwin, Jeremie Harris', 'Legion tên thật là David Haller, con trai của giáo sư X - Charles Xavier. David bị đa nhân cách nặng và cứ mỗi nhân cách lại có một sức mạnh khác nhau. Bom tấn truyền hình của Marvel này có sự tham gia của tài tử Dan Stevens và nằm dưới sự chỉ đạo của Noah Hawley - người đã đoạt giải Emmy với siêu phẩm Fargo.', '4', 'Noah Hawley ', '132 Phút', '2018-01-01', 'Mỹ', '', 14, ''),
(42, 'Tam Sinh Tam Thế : Thập Lý Đào Hoa', 'Tam Sinh tam thế.jpg', 'Lưu Diệc Phi, Dương Dương', 'Tam Sinh Tam Thế: Thập Lý Đào Hoa kể về chuyện tình cảm động giữa Thượng thần Bạch Thiển (Lưu Diệc Phi) và Thái tử Cửu Trùng Thiên Dạ Hoa (Dương Dương). Là con gái duy nhất của Bạch Đế Hồ Quân, Bạch Thiển từ nhỏ đã cải nam trang bái sư học nghệ, trải qua vô vàn kiếp nạn mới có thể trở thành Thượng thần. Trong suốt ba kiếp người đầy rẫy sóng gió, khó khăn ấy luôn tồn tại hình bóng của Dạ Hoa, người sẵn sàng trở thành đôi mắt, là tất cả của Bạch Thiển. Thế nhưng giữa muôn trùng gian kế, trắc trở, liệu vị hôn phu kém mình chín vạn tuổi của Bạch Thiển có thể cùng nàng giữ vẹn nguyên lời thề nguyện bên nhau ba đời ba kiếp.\r\n<img src="/phimhay/Ảnh trong phim/hoang1.jpg" width="100%" class="images" />\r\n<img src="/phimhay/Ảnh trong phim/hoang2.jpg" width="100%"  height="70%" class="images" />', '3', '  Trịnh Tiểu Đinh, Anthony Lamolinara', '106 Phút', '2017-08-20', 'Trung Quốc', 'đại gia chân đất 2015, hài đại gia chân đất 2015', 46, 'https://www.youtube.com/embed/ySEQ_gEsC1A'),
(46, 'Khách Sạn Huyền Bí ', 'Khách Sạn Huyền Bí.jpg', 'Adam Sandler, Andy Samberg, Selena Gomez, Kevin James, Fran Drescher, Steve Buscemi', 'Đã quá ngán với cường độ làm việc chăm chỉ 365 ngày không nghỉ, bá tước Dracula quyết định “đình công”. Để khai sáng cho người cha trăm tuổi chưa bao giờ bước ra khỏi “lũy tre làng”, vợ chồng nhà Jonathan – Mavis lập ra kế hoạch xả hơi táo bạo: Thuê đứt một em du thuyền hạng sang để đưa tất cả bộ xậu quái vật già trẻ lớn bé làm một chuyến ra khơi nhớ đời. Đồ ăn sang chảnh, bãi biển tuyệt đẹp, giải trí đỉnh cao và cả tam giác quỷ Bermuda?', '5', 'Genndy Tartakovsky', '97 Phút', '2018-07-13', 'Mỹ ', '', 14, 'https://www.youtube.com/watch?v=FVszaHw2H9I'),
(52, 'Ấu trùng tinh nghịch', 'poster.medium.jpg', 'Red, Yellow', 'Larva Season 4 tiếp tục loạt phim hoạt hình nổi tiếng của Hàn Quốc xoay quanh cuộc sống của hai ấu trùng đỏ (Red) , vàng (Yellow) và bạn bè của chúng trên Hoang đảo.', '5', 'Adam', '7 phút', '2018-01-01', 'Hàn Quốc', '', 25, 'https://www.youtube.com/embed/uKh4or952SM'),
(53, 'Đế chế', 'dynasty-titlecard.jpg', 'James Mackay, Elizabeth Gillies', 'Phim Đế Chế (Dynasty) có sự tham gia của các diễn viên Elizabeth Gillies, Nathalie Kelley, James Mackay, Sam adegoke,… Phim Đế chế kể về các thành viên trong 2 gia đình quyền lực nhất nước Mỹ, vì tiền tài địa vị họ bất chấp mọi giá tranh nhau giành giật. Họ không hề biết cái giá phải trả là quá đắt cho cuộc đời…', '4', 'Sallie Patrick', '45 phút', '2016-01-01', 'Mỹ', '', 20, 'https://www.youtube.com/watch?v=gRxArKC908g'),
(54, 'Hồ Chí Minh - Chân dung một con người', '08-ho-chi-13717-489.jpg', 'Tiến Hợi', 'Ở Paris có bức tường “Những người làm nên thế kỷ 20″ (Ils ont fait le XX Siecle) có nụ cười Bác Hồ ở đây, giữa những trí tuệ, những tâm hồn lớn ở thời đại chúng ta. Trong một thế giới vẫn còn nhiều bạo ngược và lẫn lộn, đã có một cuộc đời Hồ Chí Minh, một con người Hồ Chí Minh.\r\n\r\nNgười ta có thể gọi Bác bằng nhiều cách khác nhau: 1 vị lãnh tụ, 1 người cộng sản chân chính, 1 tâm hồn và trí tuệ lớn lao, 1 con người của những quyết định lịch sử; nhưng trên hết thảy, Hồ Chí Minh là 1 người con yêu nước vĩ đại đã cống hiến cả cuộc đời mình cho sự nghiệp đấu tranh giải phóng dân tộc.\r\n\r\n', '13', 'NSND Bùi Đình Hạc', '90 phút', '1996-01-01', 'Việt Nam', '', 4, 'https://www.youtube.com/embed/Gv22vNYEVbs');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `phim` int(11) NOT NULL,
  `anh` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `phim`, `anh`) VALUES
(12, 1, 'Đồng hồ ma thuật.jpg'),
(13, 2, 'quai-vat-venom.jpg'),
(14, 8, 'Gia Đình siêu nhân.jpg'),
(15, 48, 'Đại sư huynh.jpg'),
(16, 3, 'charming-hoang-tu-hao-hoa.jpg'),
(17, 6, 'Khách sạn tội phạm.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tapphim`
--

CREATE TABLE `tapphim` (
  `id` int(11) NOT NULL,
  `tentap` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phim` int(11) NOT NULL,
  `linkphim` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tapphim`
--

INSERT INTO `tapphim` (`id`, `tentap`, `phim`, `linkphim`) VALUES
(10, 'sghd', 52, 'files-phim/LARVA SEASON 4 TRAILER 2018- ẤU TRÙNG TINH NGHỊCH MÙA 4 MỚI NHẤT.mp4'),
(11, '1', 53, 'files-phim/deche.mp4'),
(12, 'Tập 1 VENOM', 2, 'files-phim/VENOM.mp4'),
(13, 'Phần 1', 54, 'files-phim/Hồ Chí Minh - Chân dung một con người (bản đẹp) phần 1.mp4'),
(14, 'TẬP 1', 11, 'files-phim/NGÔI NHÀ CÓ CHIẾC ĐỒNG HỒ MA THUẬT - Teaser Trailer - Dự kiến khởi chiếu- 28.09.2018.mp4'),
(18, 'Part 1 ', 1, 'files-phim/NGÔI NHÀ CÓ CHIẾC ĐỒNG HỒ MA THUẬT - Teaser Trailer - Dự kiến khởi chiếu- 28.09.2018.mp4'),
(19, 'Part 2', 1, 'files-phim/The House with a Clock in Its Walls - Official Trailer 2.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `theloai`
--

CREATE TABLE `theloai` (
  `id` int(11) NOT NULL,
  `theloai` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `theloai`
--

INSERT INTO `theloai` (`id`, `theloai`) VALUES
(1, 'Phim Tâm Lý '),
(2, 'Phim Hành Động'),
(3, 'Phim Tình Cảm'),
(4, 'Phim Viễn Tưởng '),
(5, 'Phim Hoạt Hình'),
(12, 'Phim Kinh Dị '),
(13, 'Phim Cách Mạng'),
(14, 'Phim CAND');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `hoten` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `taikhoan` text NOT NULL,
  `matkhau` text NOT NULL,
  `diachi` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` text NOT NULL,
  `sdt` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `hoten`, `taikhoan`, `matkhau`, `diachi`, `email`, `sdt`) VALUES
(8, 'Phạm Viết Dũng', 'phamvietdung', 'e10adc3949ba59abbe56e057f20f883e', '01234567890', 'dungpham97gl@gmail.com', 'TP Hà Nội'),
(10, 'Nguyễn Văn Thắng 21/12', 'nguyenvanthang', 'e10adc3949ba59abbe56e057f20f883e', '321654987', 'nguyenvanthang2197@gmail.com', 'Hải Dương'),
(15, 'Hà Thị Trầm', 'hathitram', 'e10adc3949ba59abbe56e057f20f883e', 'Đắc Nông', 'hathitram@gmail.com', '0258963147'),
(16, 'Hồ Mạnh Cường', 'homanhcuong', '25f9e794323b453885f5181f1b624d0b', 'Thuan Thanh', '200cinler@gmail.com', ''),
(17, 'Nguyen Van Chinh', 'nguyenvanchinh', '861f3422dfb3612ba7591ffff0490797', 'Thuan Thanh', 'nguyenvanchinh@gmail.com', '0123456852'),
(18, 'Phạm Viết Thuận', 'phamvietthuan', '27f1e6b0a2e3cdb860241fc30f2ca6fa', 'Thuan Thanh', 'thuanpham@gmail.com', '0123456852');

-- --------------------------------------------------------

--
-- Table structure for table `useraccess`
--

CREATE TABLE `useraccess` (
  `total_access` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `useraccess`
--

INSERT INTO `useraccess` (`total_access`) VALUES
(318);

-- --------------------------------------------------------

--
-- Table structure for table `useronline`
--

CREATE TABLE `useronline` (
  `tgtmp` int(15) NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL,
  `local` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `useronline`
--

INSERT INTO `useronline` (`tgtmp`, `ip`, `local`) VALUES
(1541638458, '::1', 'index.php');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gopy`
--
ALTER TABLE `gopy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phim`
--
ALTER TABLE `phim`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tapphim`
--
ALTER TABLE `tapphim`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `useronline`
--
ALTER TABLE `useronline`
  ADD PRIMARY KEY (`ip`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `gopy`
--
ALTER TABLE `gopy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;
--
-- AUTO_INCREMENT for table `phim`
--
ALTER TABLE `phim`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `tapphim`
--
ALTER TABLE `tapphim`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `theloai`
--
ALTER TABLE `theloai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
