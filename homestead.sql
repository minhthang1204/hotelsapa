-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 24, 2022 lúc 12:04 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `homestead`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abstract` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `background` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_number` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `articles`
--

INSERT INTO `articles` (`id`, `user_id`, `category_id`, `title`, `abstract`, `thumbnail`, `background`, `content`, `comment_number`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'Du lịch Tây Bắc nên đi đâu và trải nghiệm gì?', 'Tháng 11, những ngày gió đông bắt đầu chạm ngõ, có lẽ ngoài Hà Nội thì các điểm đến của du lịch Tây Bắc là điều đầu tiên khiến những “đôi chân xê dịch” nghĩ đến đầu tiên', 'https://res.cloudinary.com/dloeyqk30/image/upload/v1636977053/FnGO/article/thumbnail/taybac_jbffj6.jpg', 'https://res.cloudinary.com/dloeyqk30/image/upload/v1636977140/FnGO/article/background/dienbien_fm5twc.jpg', 'Say đắm sắc trắng mùa hoa cải Mộc Châu\r\n            Du lịch Sơn La vào đầu tháng 11 hằng năm, khi tiết trời bắt đầu se lạnh cũng là lúc cao nguyên Mộc Châu thay áo mới, khoác lên mình chiếc áo mộc mạc, khắp không gian rộng lớn được phủ bằng một màu trắng tinh khôi của hoa cải. Không giống như ở những nơi khác thường chỉ trồng trong một vùng đất nhỏ, ở Mộc Châu hoa cải được trồng kín cả một quả đồi, kéo dài từ thung lũng này đến chân núi nọ. Những địa điểm du lịch Mộc Châu như bản Ba Phách 1, 2, 3 và khu vực Ngũ Động Bản Ôn chính là nơi bạn có thể chiêm ngưỡng vẻ đẹp tuyệt vời của hoa này trọn vẹn nhất.\r\n\r\nDu lịch Tây Bắc những ngày đầu đông đến với Mộc Châu tháng 12 còn là dịp để bạn “refresh” lại bản thân dưới không gian xanh mát của những nương chè trong trong làn sương sớm. Dạo quanh những luống chè, mùi thơm phảng phất, dịu mát của những búp chè, những bông hoa mận sẽ làm tâm hồn bạn càng thêm bay bổng và lạc quan hơn giữa đất trời Tây Bắc.\r\nThị trấn Sapa ẩn hiện trong làn sương\r\nĐịa điểm du lịch Sapa - Lào Cai vào mùa nào cảnh sắc cũng có ý vị riêng, thế nhưng tháng 11 ở đây lại có một vẻ lãng mạn rất riêng khiến du khách say lòng. Sương Sapa mùa đông vừa trắng muốt lãng đãng dửng dưng pha chút đặc trưng của “hương” đông. Sương lẫn vào mây, bồng bềnh dập dờn theo cơn gió phảng phất ngang qua phố núi, tràn xuống khắp thị trấn. Giữa không gian sương mờ giăng giăng, vẻ đẹp của nhà thờ hiện lên như một thước phim kinh điển tại vùng đất thiên đường nào đó vậy.\r\nLên Yên Bái săn mây đỉnh Tà Xùa\r\nVới những mỹ cảnh thiên nhiên đủ làm say lòng người đến, níu bước người đi, Yên Bái đang trở thành một trong những điểm dừng chân hấp dẫn nhất hành trình Tây Bắc. Một trong những địa điểm du lịch hút khách nhất ở Yên Bái là Mù Cang Chải, đẹp như một bức tranh bích họa làm say mê lòng người. Đặc biệt vào những ngày nhiều mây, khung cảnh càng trở nên kỳ ảo hơn bao giờ hết bởi biển lúa, biển mây đan xen hòa quyện vào nhau. Tới Mù Cang Chải bạn cũng đừng quên check in những địa điểm ngắm ruộng bậc thang đẹp nhất tại xã La Pán Tẩn, Chế Cu Nha, Dế Xu Phình… Du lịch Yên Bái mùa này bạn đừng quên đến Tà Xùa để săn mây nhé. Khi lên tới đỉnh Tà Xùa, dù bạn đứng ở bất cứ vị trí nào thì cũng như đang ở chốn thiên đường. Tất cả không gian đều được bao phủ bởi biển mây bồng bềnh, trắng xóa.\r\nĐi Điện Biên ngắm hoa mai anh đào nở rộ.\r\n\r\nVới không khí trong lành, khung cảnh thiên nhiên kì vĩ cùng thảm thực vật phong phú, hồ Pá Khoang đang là điểm du lịch thu hút đông đảo du khách ở Điện Biên. Đặc biệt trên hòn đảo nhỏ ở giữa hồ Pá Khoang rộng hàng chục ha còn có một “Nhật Bản thu nhỏ” với hơn 400 cây hoa anh đào nở rực rỡ giữa núi rừng Tây Bắc từ tháng 12. Tại đây, bạn còn có cơ hội được khám phá, trải nghiệm các phong tục tập quán của dân tộc người Thái, Khơ Mú và hưởng thức những đặc sản mang đậm hương vị núi đặc trưng như cá xiên nướng, thịt hun khói, cơm lam, món xôi đồ đựng trong coóng hay những ché rượu thơm nồng.', 0, '2022-06-24 01:57:58', '2022-06-24 01:57:58'),
(2, 1, 3, '3 địa điểm du lịch Bến Tre vui chơi cả ngày không chán', 'Bến Tre nổi tiếng là “xứ dừa” trong huyền thoại, nay cũng là điểm du lịch được nhiều du khách chốn thị thành tìm về mỗi dịp cuối tuần.', 'https://res.cloudinary.com/dloeyqk30/image/upload/v1636978471/FnGO/article/thumbnail/bentre_ajmieq.jpg', 'https://res.cloudinary.com/dloeyqk30/image/upload/v1636978437/FnGO/article/background/conphung_a4f3qb.jpg', 'Địa điểm du lịch Bến Tre Lan Vương\r\n            Khu du lịch Lan Vương hiện đang là một địa điểm tham quan và vui chơi cực “hot” tại Bến Tre. Được mệnh danh là một “miền Tây thu nhỏ”, khu du lịch Bến Tre Lan Vương còn thu hút du khách không bởi bầu không khí trong lành.\r\n\r\n• Du lịch Bến Tre 1 ngày “phá đảo” Lan Vương bạn sẽ được tha hồ trải nghiệm các trò chơi hấp dẫn như: • Câu cá và giăng lưới bắt cá\r\n• Bơi thuyền\r\n• Tát mương bắt cá, lội ruộng bắt cua, bắt ốc\r\n• Hát Karaoke, nghe hòa tấu guitar\r\n• Tham quan vườn bưởi da xanh\r\n• Tham quan trại nuôi heo rừng lai, trang trại nuôi dê, thức ăn hoàn toàn từ rau củ quả\r\n• Thưởng thức các loại trái cây như: mận An Phước, xoài Đài Loan, mít tứ quý, chùm ruột, khế…\r\nĐịa điểm du lịch Bến Tre Cồn Phụng\r\nCồn Phụng cũng là một trong những địa điểm tham quan không thể bỏ lỡ của nhiều du khách khi đi du lịch Bến Tre. Đây được xem là nơi dầu tiên khai thác thân cây dừa, đưa danh diếng nghề mỹ nghệ dừa đến nhiều nơi, làm cho “xứ dừa Bến Tre” nổi tiếng hơn trên bản đồ du lịch Việt Nam. Do đó, khi du lịch Bến Tre đến với Cồn Phụng bạn nên đến các làng nghề để có cơ hội tìm hiểu con người, cuộc sống và văn hóa xứ dừa tại Bảo tàng Dừa, là một ngôi nhà được làm hoàn toàn từ thân cây dừa cùng hàng trăm sản phẩm thủ công mỹ nghệ tinh xảo, bắt mắt và mang đậm giá trị nghệ thuật.\r\n\r\nDu lịch Bến Tre, đến với Cồn Phụng bạn còn được chứng kiến toàn bộ quá trình để làm nên những viên kẹo dừa vô cùng thơm ngon và đậm vị miền Tây Nam Bộ này. Ngoài ra, còn có vô vàn hoạt động thú vị khác để bạn trải nghiệm như:\r\n\r\n• Tham quan khu di tích Đạo Dừa, những khu vườn sai trĩu quả và thưởng thức trái cây\r\n• Xem nuôi ong và thưởng trà mật ong\r\n• Trải nghiệm đi xe ngựa quanh đường làng, ngồi xuồng ba lá khám phá kênh rạch\r\n• Thử thách chụp ảnh cùng trăn gấm\r\n• Tham gia tát mương bắt cá cực kỳ vui nhộn\r\n• Nghe đờn ca tài tử\r\nKhu du lịch Bến Tre Làng Bè\r\nNếu bạn đã từng rủ nhau về Cồn Phụng, Lan Vương thì hãy thử đổi gió đến khu du lịch Làng Bè, một trong những địa điểm du lịch sinh thái thu hút khách nhất ở Bến Tre có thể đi và về trong ngày. Tại đây, khung cảnh sông nước hữu tình của miền Tây Nam Bộ gắn với nghề nuôi cá bè của người dân địa phương. Các hoạt động vui chơi, giải trí hấp dẫn. Nền ẩm thực phong phú đậm chất miền Tây chắc chắn sẽ kích thích và khiến bạn có một chuyến đi đầy trải nghiệm tuyệt vời.\r\n\r\nĐiều thú vị là các bạn sẽ được mặc những bộ đồ bà ba cùng nhau tham gia các trò chơi dân gian như đi cầu khỉ, đu tàu dừa, đạp xe thăng bằng qua cầu, tát mương bắt cá, đu dây qua sông…Bên cạnh đó, mọi người còn được trải nghiệm trò trái nổ bằng đất sét và cùng bạn bè của mình trổ tài nấu những món ăn miệt vườn.', 0, '2022-06-24 01:57:58', '2022-06-24 01:57:58'),
(3, 1, 3, 'Du Lịch Phú Quốc trọn gói tận hưởng kỳ nghỉ 5 sao', 'Phú Quốc luôn biết cách thu hút khách du lịch với bờ biển trong xanh yêu kiều cùng nét đẹp quyến rũ do thiên nhiên ban tặng và những trải nghiệm thú vị mà không nơi nào có được. ', 'https://res.cloudinary.com/dloeyqk30/image/upload/v1636982131/FnGO/article/thumbnail/Phu-Quoc_qtr8t0.jpg', 'https://res.cloudinary.com/dloeyqk30/image/upload/v1636982109/FnGO/article/background/camnhi-213505023512-Ks-Vinpearl-Resort-Spa-PQ_pppcfv.jpg', 'Phú Quốc được mệnh danh là “thiên đường nghỉ dưỡng” ở phía Nam khi sở hữu không ít các khách sạn 5 sao đẳng cấp, mang đến cho du khách những kỳ nghỉ trọn vẹn. Trong đó nổi tiếng nhất là 4 khách sạn trong hệ thống của Vinpearl Phú Quốc.\r\n \r\nKhách sạn VinOasis Phú Quốc chính là địa điểm nghỉ dưỡng được giới trẻ yêu thích trong số các khách sạn trong hện thống Vinpearl Phú Quốc. VinOasis Phú Quốc được thiết kế với mô hình “All In One”, lấy cảm hứng từ “Khu vườn giữa lòng đại dương” với lối kiến trúc đương đại kết hợp phong cách kiến trúc Á Đông. Điểm khiến du khách mê mẩn nhất ở khách sạn này là bể bơi hình ốc anh vũ. Đây cũng chính là góc sống ảo thần thánh mà hầu hết các bạn trẻ đến đây đều không muốn bỏ lỡ.\r\n\r\nKhách sạn Vinholidays Fiesta Phú Quốc\r\nVinholidays Fiesta Phú Quốc là một trong những sản phẩm mới được ra mắt thuộc hệ thống Vinpearl Phú Quốc. Khu nghỉ dưỡng ra đời nhằm đáp ứng nhu cầu của các khách hàng muốn có một kỳ nghỉ dưỡng với chi phí hợp lý nhưng vẫn đảm bảo đầy đủ tiện nghi và dịch vụ đẳng cấp.\r\n\r\nKhác với những khu resort trước, Vinholidays Fiesta Phú Quốc mang phong cách thiết kế tối giản, hiện đại với các tiện ích, dịch vụ thông minh thuộc top đầu Việt Nam. Đặc biệt, với vị trí đặt tại khu phức hợp giải trí mới Grand World Phú Quốc, Vinholidays Fiesta Phú Quốc còn được thừa hưởng toàn bộ tiện ích và dịch vụ 5 sao tại khu vực này, giúp chuyến đi Phú Quốc của bạn có được những trải nghiệm tuyệt vời hơn.\r\nKhách sạn Vinpearl Resort & Spa Phú Quốc\r\nNổi bật với những căn biệt thự mái ngói đỏ, Vinpearl Resort & Spa Phú Quốc mang đậm phong cách kiến trúc Á Đông tạo nên một nét riêng biệt không hề trộn lẫn với những khu resort khác trong quần thể khách sạn Vinpearl. Ngoài dễ dàng di chuyển tới siêu quần thể Phú Quốc United Center thì Vinpearl Resort & Spa Phú Quốc còn được lòng du khách bởi các trải nghiệm như: trị liệu tại một chòi spa trên mặt hồ theo phong cách Maldives hay thưởng thức bữa tối BBQ hải sản trong lúc ngắm hoàng hôn ngũ sắc và nghe nhạc sống tại nhà hàng Pepper...\r\nKhách sạn Vinpearl Resort & Golf Phú Quốc\r\nVinpearl Resort & Golf Phú Quốc được mệnh danh là “nơi ngắm hoàng hôn đẹp nhất Phú Quốc”. Khu nghỉ dưỡng này đẹp mê hoặc và sang trọng với thiết kế mang phong cách kiến trúc châu Âu tân cổ điển. Điểm nổi bật nhất và thu hút khách nhất của Vinpearl Resort & Golf Phú Quốc là sân golf 18 hố tọa lạc giữa khu vườn nhiệt đới với tầm nhìn khoáng đạt ra Biển Đông bao la tạo nên một cảnh quan đẹp như tranh vẽ.', 0, '2022-06-24 01:57:58', '2022-06-24 01:57:58'),
(4, 1, 3, 'Du lịch miền Tây mùa nước nổi săn các sản vật đồng quê', 'Khi cái gay gắt của nắng hạ không còn thiêu đốt cũng là lúc miền Tây bước vào mùa nước nổi mang theo những sản vật có một không hai. ', 'https://res.cloudinary.com/dloeyqk30/image/upload/v1636982496/FnGO/article/background/camnhi-215922125904-an-giang_zx3rtp.jpg', 'https://res.cloudinary.com/dloeyqk30/image/upload/v1636982511/FnGO/article/thumbnail/camnhi-215122125147-du-lich-mien-tay-mua-nuoc-noi_b8uo6p.jpg', 'S Mùa nước nổi miền Tây thực chất là mùa lũ, nhưng mùa lũ miền Tây hoàn toàn khác với miền Trung hay miền Bắc. Mùa lũ vùng Đồng Bằng sông Cửu Long không hung giữ và gây ra thiệt hại nhiều. Đổi lại, mùa lũ về là lúc nguồn nước thay chua rửa mặn cho các kênh rạch, bù đắp phù sa cho những cánh đồng, đặc biệt là đem lại một nguổn thủy sản sông nước vô tận cho người nông dân.\r\nMùa nước nổi miền Tây thường bắt đầu khoảng gần giữa tháng 9 đến giữa tháng 11 dương lịch hằng năm (tức từ tháng khoảng tháng 8 đến tháng 10 âm lịch). Du lịch miền Tây vào mùa này, bạn không chỉ được chiêm ngưỡng bức tranh nên thơ một năm chỉ có một lần này mà còn có cơ hội được thưởng thức những món đặc sản mùa nước nổi đặc trưng và trải nghiệm chèo xuồng len lỏi qua từng con rạch rất thú vị.\r\n\r\nNếu có dịp đi tour du lịch miền Tây mùa nước nổi, bạn nhất định phải một lần đến những địa điểm này và trải nghiệm các món đặc sản trứ danh mùa này nhé.\r\nNói đến cảnh đẹp mùa nước nổi thì không thể không nhắc đến An Giang, nhắc đến rừng Tràm Trà Sư xanh mướt – một trong các địa điểm du lịch miền Tây nổi hút khách nhất vùng này. Mùa này, bèo phát triển phủ kín mặt sông. Để khám phá rừng tràm, bạn sẽ được trải nghiệm ngồi trên chiếc tắc ráng len lỏi theo con rạch qua lung Sen vào rừng tràm, được lên xuồng ba lá chèo qua các con rạch ngắm khu rừng Giống và các loài chim le le, trích cồ, cò, bìm bịp, gà nước... Thỉnh thoảng, bạn sẽ ngắm nhìn những bông hoa điên điển vàng rực, loài hoa dân dã nhưng có thể chế biến ra nhiều món ăn vô cùng ngon.\r\n\r\nBên cạnh vẻ đẹp tự nhiên, rừng tràm Trà Sư còn có những công trình nhân tạo tuyệt đẹp. Đó là chiếc “cầu tre vạn bước” xuyên rừng tràm Trà Sư đạt kỷ lục Giuness và đài quan sát cao 23m ngắm toàn cảnh rừng tràm và từng đàn chim rợp trời về tổ dưới hoàng hôn...\r\nRời An Giang đến với rừng Tràm Chim Đồng Tháp chắc chắn bạn sẽ say đắm trước khung cảnh ngập nước, xanh tốt, điểm xuyến sắc hồng của hoa sen, hoa súng bừng nở. Chèo xuồng ba lá trải nghiệm cuộc sống vùng ngập nước, bạn sẽ được tự tay thực hiện những công việc sinh kế của cư dân vùng lũ như giăng lưới, đặt lợp, đặt trúm, hay thử tài với câu cá Tràm Chim Tam Nông … đặc biệt còn có thú vui đi săn chuột đồng, một món đặc sản của xứ này. Vào khoảng thời gian này cũng là mùa chim sinh sản, bạn sẽ có dịp tận mắt chứng kiến cuộc sống sinh sôi, nảy nở của những loài chim và cảnh hàng nghìn con chim đua nhau mớm mồi, thể hiện tình mẫu tử thiêng liêng và lưu giữ mãi hình ảnh đẹp về nơi đất lành chim đậu ở địa điểm du lịch miền Tây nổi tiếng này.', 0, '2022-06-24 01:57:58', '2022-06-24 01:57:58'),
(5, 1, 3, 'Hành trình du lịch Nhật Bản mùa lá đỏ quyến rũ', 'Cùng vẻ đẹp cổ kính của những di sản văn hóa lừng danh, du lịch Nhật Bản mùa thu còn khiến người lữ khách rung động bởi sự thay đổi diệu kỳ của thiên nhiên.', 'https://res.cloudinary.com/dloeyqk30/image/upload/v1636982762/FnGO/article/thumbnail/camnhi-213120093150-hanh-trinh-mua-thu-nuoc-nhat_svzu87.jpg', 'https://res.cloudinary.com/dloeyqk30/image/upload/v1636982772/FnGO/article/background/camnhi-213320093329-shutterstock_527893747-Hokkaido_em6hcw.jpg', 'Fukushima, nơi trái tim “chạm” đến vẻ đẹp tinh túy, nguyên sơ của tự nhiên\r\n           Fukushima ngày thu có những góc nhỏ duyên dáng ẩn sâu trong cánh rừng chuyển sắc vàng đỏ, hồ nước biếc xanh cùng ngàn hoa rực rỡ… sẽ khiến bạn xiêu lòng. Du lịch Nhật Bản mùa thu đến Fukushima, dừng chân tại công viên Kairakuen nổi tiếng, bạn sẽ thấy thiên nhiên khoe sắc sáng bừng khoảng trời với bạt ngàn hàng cây thay lá. Khắp lối mòn, cây được trồng xen lẫn với những bông cải vàng rực tạo nên một bức tranh diễm lệ. Nếu du ngoạn Hồ Ngũ Sắc Goshikinuma bạn càng say đắm hơn trước vẻ đẹp kỳ ảo của màu nước thay đổi liên tục, điểm tô cho cho mặt hồ là những chiếc là vàng, lá đỏ rơi rụng nhẹ trôi theo dòng nước.\r\nVườn Kenrokuen cổ kính trong ngày thu\r\n\r\nĐược ví như Kyoto thu nhỏ, Kanazawa mang nét quyến rũ bởi những ngôi đền cổ kính và khu vườn truyền thống, trong đó xuất sắc nhất phải kể đến Kenrokuen - một trong ba khu vườn vĩ đại nhất của du lịch Nhật Bản. Dạo bước ngắm lá đỏ, bạn sẽ cảm nhận khung cảnh ở phía đông gần cổng Kodatsuno đẹp như một bức tranh tuyệt mỹ. Hãy chọn cho mình chiếc ghế đá để ngắm cảnh nên thơ hay nhâm nhi tách trà, thưởng thức món bánh ngọt truyền thống của Nhật.\r\nĐẹp mơ màng thung lũng Korankei\r\nMùa thu ở Nagoya cũng đẹp không kém phần với thung lũng Korankei quyến rũ. Từ cuối tháng 10 đến hết tháng 11, tại địa điểm du lịch Nhật Bản này, bạn sẽ được tận hưởng không gian lãng mạn được tạo nên từ hơn 4.000 cây phong npha màu nâu đỏ làm thay đổi cả thung lũng, vẽ nên một bức tranh thiên nhiên tuyệt mỹ. Không khí tại Korankei cũng rất trong lành và dễ chịu. Những cây cầu Taigetsukyo sơn màu đỏ bắc qua sông, những chiếc ghế gỗ, những ngôi nhà nhỏ ven đường sẵn sàng làm nơi dừng chân thưởng ngoạn sắc thu và lưu lại những bức hình tuyệt đẹp...\r\nĐảo Hokkaido thay áo mới\r\n\r\nKhông chỉ gây sức hút nhờ cánh đồng hoa oải hương tím vào mùa hè hay tuyết phủ trắng xóa vào mùa Đông, Hokkaido còn là nơi có vẻ đẹp thơ mộng vào mùa lá đỏ ở Nhật Bản. Những ngọn núi hùng vĩ sẽ khoác lên mình sắc đỏ rực lửa cùng sắc vàng rực rỡ tạo nên bức tranh như truyện cổ tích. Người dân địa phương còn háo hức tham dự Lễ hội lá phong (Momiji Matsuri) tổ chức hàng năm vào thời điểm rừng cây thay lá.', 0, '2022-06-24 01:57:58', '2022-06-24 01:57:58'),
(6, 1, 3, 'Kinh nghiệm du lịch Đà Lạt mùa hoa Dã Quỳ khoe sắc', 'Khi những cơn mưa “lặng lẽ” rời đi, trả lại nắng vàng cho Đà Lạt cũng là lúc thành phố mù sương khoác lên mình chiếc áo rực rỡ của những màu hoa. ', 'https://res.cloudinary.com/dloeyqk30/image/upload/v1636983149/FnGO/article/thumbnail/camnhi-214218104254-kinh-nghiem-du-lich-da-lat-mua-hoa-da-quy_axsexe.jpg', 'https://res.cloudinary.com/dloeyqk30/image/upload/v1636983161/FnGO/article/background/camnhi-214418104453-san-may-da-lat_ea9qir.jpg', '\r\nKhoảng thời gian giữa thu, khi dã quỳ ở nhiều nơi đồng loạt nở rộ, thì có lẽ những bông hoa nở sớm và đẹp nhất chính là ở cao nguyên Đà Lạt. Đối với những tâm hồn lãng mạn, yêu hoa thì mùa này cũng được xem là mùa đẹp nhất của Đà Lạt. Dù chỉ là loài hoa dại sống giữa lớp đất đai khô cằn hay ẩn hiện trong làn sương mai, hoa dã quỳ vẫn tự tin vươn mình khoe sắc, thu hút bao ánh nhìn và níu giữ du khách đi đường đến nâng niu, thưởng ngoạn.\r\nVietravel Đà Lạt mách nhỏ những cung đường ngắm hoa dã quỳ đẹp\r\nThời gian này, khắp nơi ở Đà Lạt, từ những triền đồi phía xa, các con dốc ngoằn nghèo dẫn lên cao nguyên đến từng ngõ nhỏ của phố núi sẽ trở nên lung linh, thơ mộng và bình yên hơn trong sắc vàng rực rỡ. Tuy nhiên, theo kinh nghiệm du lịch Đà Lạt cùng Vietravel – Vietravel Đà Lạt thì để ngắm trọn vẻ đẹp của hoa dã quỳ bạn nên đến 1 trong 2 cùng đường là:\r\n\r\n+ Đà Lạt – Làng hoa Vạn Thành – Tà Nung – Thác Voi – Langbiang\r\n\r\n+ Đà Lạt – Cầu Đất – Đ’ran – Đơn Dương – Châu Sơn – Phi Nôm – Tu Tra\r\n\r\nMùa này, du lịch Đà Lạt ngoài được ngắm hoa dã quỳ bạn cũng có thể kết hợp “săn mây” rất dễ.\r\nNgất ngây mùa “săn mây” Đà Lạt\r\n\r\nDu lịch Đà Lạt những ngày lập đông, dù cái thời tiết có phần lạnh những ngày nắng hạ, nhưng cũng đừng vì thế mà cứ rút mình trong chăn bạn nhé, vì như thế bạn sẽ bỏ lỡ một điều vô cùng tuyệt vời mùa này là “săn mây” đấy. Bởi du lịch Đà Lạt tháng 11 cũng là thời điểm “săn mây” lý tưởng, mây giăng khắp ngõ ngách của thành phố với những căn nhà ẩn hiện lúc bình minh. Để có được những khoảnh khắc ấn tượng nhất, bạn hãy đi xa hơn một chút đến các vùng ngoại ô như Đồi Trại Mát, Hồ Suối Vàng, Đồi Thiên Phúc Đức, Hòn Bồ, Đỉnh Pinhatt, Đồi chè Cầu Đất, Đồi Du Sinh…\r\n\r\nMuốn săn mây đẹp bạn thì tầm khoảng 4h30 sáng, vì thế bạn có thể lựa chọn cắm trại đêm để vừa được chill cùng núi rừng bằng những tiệc BBQ cùng hội bạn, vừa khỏi phải lọ mọ thức dậy thật sớm để di chuyển. Vì chỉ tầm 7h hơn là mây đã tan bớt, thế nên càng dậy sớm sẽ ngắm được nhiều khoảnh khắc đẹp mà cứ ngỡ chỉ có trong tranh ảnh.\r\nChèo thuyền SUP ngắm lá phong và hoàng hôn ở Hồ Tuyền Lâm\r\nMùa này Hồ Tuyền Lâm rất đẹp. Du lịch Đà Lạt mon men vào giữa rừng sâu bạt ngàn của Hồ Tuyền Lâm bạn sẽ phát hiện ra nơi đây có rất nhiều những cây lá phong đỏ, vàng rợp trời mà bạn cứ ngỡ chỉ được thấy ở xứ người. Mặc dù hành trình không hề dễ dàng, do vừa phải chèo thuyền SUP/kayak, băng rừng, vượt dốc... nhưng khi được tận mắt nhìn thấy những cây lá phong đỏ rực giữa rừng núi thì bạn mới thấy bỏ bao nhiêu công sức quả thật cũng xứng đáng.\r\n\r\nSau khi thuyền dừng trên bán đảo nhớ chụp lại vài tấm hình sống ảo cùng cảnh sắc tuyệt đẹp này nha. Hồ Tuyền Lâm còn được xem là 1 trong 5 địa điểm ngắm hoàng hôn đẹp nhất ở Đà Lạt, vì thế đã đến đây rồi thì bạn đừng bỏ lỡ cơ hội hòa mình trọn vẹn vào không gian thiên nhiên dưới màu hoàng hôn quyến rũ.', 0, '2022-06-24 01:57:58', '2022-06-24 01:57:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `article_comments`
--

CREATE TABLE `article_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `article_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `article_comments`
--

INSERT INTO `article_comments` (`id`, `article_id`, `user_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Day la comment so 1', '2022-06-24 01:57:58', '2022-06-24 01:57:58'),
(2, 1, 2, 'Day la comment so 2', '2022-06-24 01:57:58', '2022-06-24 01:57:58'),
(3, 1, 2, 'Day la comment so 3', '2022-06-24 01:57:58', '2022-06-24 01:57:58'),
(4, 1, 2, 'Day la comment so 4', '2022-06-24 01:57:59', '2022-06-24 01:57:59'),
(5, 1, 2, 'Day la comment so 5', '2022-06-24 01:57:59', '2022-06-24 01:57:59'),
(6, 1, 2, 'Day la comment so 6', '2022-06-24 01:57:59', '2022-06-24 01:57:59'),
(7, 1, 2, 'Day la comment so 7', '2022-06-24 01:57:59', '2022-06-24 01:57:59'),
(8, 1, 2, 'Day la comment so 8', '2022-06-24 01:57:59', '2022-06-24 01:57:59'),
(9, 1, 2, 'Day la comment so 9', '2022-06-24 01:57:59', '2022-06-24 01:57:59'),
(10, 2, 2, 'Day la comment so 1', '2022-06-24 01:57:59', '2022-06-24 01:57:59'),
(11, 2, 2, 'Day la comment so 2', '2022-06-24 01:57:59', '2022-06-24 01:57:59'),
(12, 2, 2, 'Day la comment so 3', '2022-06-24 01:57:59', '2022-06-24 01:57:59'),
(13, 2, 2, 'Day la comment so 4', '2022-06-24 01:57:59', '2022-06-24 01:57:59'),
(14, 2, 2, 'Day la comment so 5', '2022-06-24 01:57:59', '2022-06-24 01:57:59'),
(15, 2, 2, 'Day la comment so 6', '2022-06-24 01:57:59', '2022-06-24 01:57:59'),
(16, 2, 2, 'Day la comment so 7', '2022-06-24 01:57:59', '2022-06-24 01:57:59'),
(17, 2, 2, 'Day la comment so 8', '2022-06-24 01:57:59', '2022-06-24 01:57:59'),
(18, 3, 2, 'Day la comment so 1', '2022-06-24 01:57:59', '2022-06-24 01:57:59'),
(19, 3, 2, 'Day la comment so 2', '2022-06-24 01:57:59', '2022-06-24 01:57:59'),
(20, 3, 2, 'Day la comment so 3', '2022-06-24 01:57:59', '2022-06-24 01:57:59'),
(21, 3, 2, 'Day la comment so 4', '2022-06-24 01:57:59', '2022-06-24 01:57:59'),
(22, 3, 2, 'Day la comment so 5', '2022-06-24 01:57:59', '2022-06-24 01:57:59'),
(23, 3, 2, 'Day la comment so 6', '2022-06-24 01:57:59', '2022-06-24 01:57:59'),
(24, 3, 2, 'Day la comment so 7', '2022-06-24 01:57:59', '2022-06-24 01:57:59'),
(25, 4, 2, 'Day la comment so 1', '2022-06-24 01:57:59', '2022-06-24 01:57:59'),
(26, 4, 2, 'Day la comment so 2', '2022-06-24 01:57:59', '2022-06-24 01:57:59'),
(27, 4, 2, 'Day la comment so 3', '2022-06-24 01:57:59', '2022-06-24 01:57:59'),
(28, 4, 2, 'Day la comment so 4', '2022-06-24 01:57:59', '2022-06-24 01:57:59'),
(29, 4, 2, 'Day la comment so 5', '2022-06-24 01:57:59', '2022-06-24 01:57:59'),
(30, 4, 2, 'Day la comment so 6', '2022-06-24 01:57:59', '2022-06-24 01:57:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`) VALUES
(1, 'Hotel', 'TGZoGN7Ns0Vf319mNfdt'),
(2, 'Tour', 'vbuhemyGIG3cBswJwCP4'),
(3, 'Article', 'zQDtHdY92RFvQwetm4FL'),
(4, 'RoomType', 'Pwlh93gpmKAQLLcBHFAB');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `city_provinces`
--

CREATE TABLE `city_provinces` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `city_provinces`
--

INSERT INTO `city_provinces` (`id`, `name`) VALUES
(1, 'Đà Nẵng'),
(2, 'Hà Nội'),
(3, 'Hồ Chí Minh'),
(4, 'Bà Rịa–Vũng Tàu'),
(5, 'Bến Tre'),
(6, 'Quảng Ninh'),
(7, 'Lâm Đồng'),
(8, 'Khánh Hoà'),
(9, 'Điện Biên'),
(10, 'Quảng Bình'),
(11, 'Quảng Ninh'),
(12, 'Kiên Giang'),
(13, 'Phú Yên'),
(14, 'Huế'),
(15, 'Quảng Nam');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `product_id`, `user_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Day la comment so 1', '2022-06-24 01:57:58', '2022-06-24 01:57:58'),
(2, 3, 2, 'Day la comment so 1', '2022-06-24 01:57:58', '2022-06-24 01:57:58'),
(3, 1, 2, 'Day la comment so 2', '2022-06-24 01:57:58', '2022-06-24 01:57:58'),
(4, 3, 2, 'Day la comment so 2', '2022-06-24 01:57:58', '2022-06-24 01:57:58'),
(5, 1, 2, 'Day la comment so 3', '2022-06-24 01:57:58', '2022-06-24 01:57:58'),
(6, 3, 2, 'Day la comment so 3', '2022-06-24 01:57:58', '2022-06-24 01:57:58'),
(7, 1, 2, 'Day la comment so 4', '2022-06-24 01:57:58', '2022-06-24 01:57:58'),
(8, 3, 2, 'Day la comment so 4', '2022-06-24 01:57:58', '2022-06-24 01:57:58'),
(9, 1, 2, 'Day la comment so 5', '2022-06-24 01:57:58', '2022-06-24 01:57:58'),
(10, 3, 2, 'Day la comment so 5', '2022-06-24 01:57:58', '2022-06-24 01:57:58'),
(11, 1, 2, 'Day la comment so 6', '2022-06-24 01:57:58', '2022-06-24 01:57:58'),
(12, 3, 2, 'Day la comment so 6', '2022-06-24 01:57:58', '2022-06-24 01:57:58'),
(13, 1, 2, 'Day la comment so 7', '2022-06-24 01:57:58', '2022-06-24 01:57:58'),
(14, 3, 2, 'Day la comment so 7', '2022-06-24 01:57:58', '2022-06-24 01:57:58'),
(15, 1, 2, 'Day la comment so 8', '2022-06-24 01:57:58', '2022-06-24 01:57:58'),
(16, 3, 2, 'Day la comment so 8', '2022-06-24 01:57:58', '2022-06-24 01:57:58'),
(17, 1, 2, 'Day la comment so 9', '2022-06-24 01:57:58', '2022-06-24 01:57:58'),
(18, 3, 2, 'Day la comment so 9', '2022-06-24 01:57:58', '2022-06-24 01:57:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hotels`
--

CREATE TABLE `hotels` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'hotel_',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchases_number` int(11) NOT NULL DEFAULT 0,
  `city_province_id` int(10) UNSIGNED NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hotels`
--

INSERT INTO `hotels` (`id`, `product_code`, `name`, `avatar`, `address`, `purchases_number`, `city_province_id`, `price`, `created_at`, `updated_at`) VALUES
(1, 'hotel_1', 'Khách sạn Mường Thanh', 'https://res.cloudinary.com/dloeyqk30/image/upload/v1636695729/FnGO/HotelImage/etqirvvm47dyeyxezxbz.jpg', '36 - 38 Lâm Hoành, Phước Mỹ, Sơn Trà, Đà Nẵng, Việt Nam, 550000', 1, 1, 1538179, '2022-06-24 01:57:58', '2022-06-24 01:57:58'),
(2, 'hotel_2', 'Khách Sạn Sheraton', 'https://res.cloudinary.com/dloeyqk30/image/upload/v1636704421/FnGO/HotelImage/jirjz04g4syjxbyttcpd.jpg', 'Quận Hoàn Kiếm, Hà Nội', 3, 2, 1538179, '2022-06-24 01:57:58', '2022-06-24 01:57:58'),
(3, 'hotel_3', 'Khách Sạn Dạ Hương', 'https://res.cloudinary.com/dloeyqk30/image/upload/v1636695250/FnGO/HotelImage/q5qzbwh1jetpkeud5o3e.jpg', '43 Lê Thánh Tôn, Phường Bến Nghé, Quận 1, TP Hồ Chí Minh', 2, 3, 1144785, '2022-06-24 01:57:58', '2022-06-24 01:57:58'),
(4, 'hotel_4', 'Palace Hotel', 'https://res.cloudinary.com/dloeyqk30/image/upload/v1636695624/FnGO/HotelImage/hssew7aazgjbxln5aiuf.jpg', '21 Nguyễn Du, TP Bà Rịa, Vũng Tàu', 4, 4, 1398509, '2022-06-24 01:57:58', '2022-06-24 01:57:58'),
(5, 'hotel_5', 'Khách Sạn Rex', 'https://res.cloudinary.com/dloeyqk30/image/upload/v1636684715/FnGO/HotelImage/oijopyphwbahhszgjsky.jpg', '23 Nguyễn Trãi, Quận 1, TP.Hồ Chí Minh', 4, 2, 1714541, '2022-06-24 01:57:58', '2022-06-24 01:57:58'),
(6, 'hotel_6', 'Khách Sạn Mường Thanh Luxury Phú Quốc', 'https://res.cloudinary.com/dloeyqk30/image/upload/v1635854168/FnGO/HotelImage/k1vismer6ozplsfm8qi1.jpg', 'Tổ 3 Ấp, Đường Bào, Huyện Phú Quốc, Kiên Giang', 4, 12, 1144811, '2022-06-24 01:57:58', '2022-06-24 01:57:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2021_08_20_124648_create_roles_table', 1),
(4, '2021_08_20_133550_create_receipts_table', 1),
(5, '2021_08_20_142519_create_receipt_details_table', 1),
(6, '2021_08_21_034610_users_role_id_foreign', 1),
(7, '2021_08_21_035539_receipts_user_id_foreign', 1),
(8, '2021_08_21_070321_create_categories_table', 1),
(9, '2021_08_22_030804_create_hotels_table', 1),
(10, '2021_08_31_125417_create_room_types_table', 1),
(11, '2021_09_06_095910_create_receipt_statuses_table', 1),
(12, '2021_09_23_193756_create_tours_table', 1),
(13, '2021_09_23_193806_create_sub_tours_table', 1),
(14, '2021_10_04_220708_create_city_provinces_table', 1),
(15, '2021_10_08_122908_create_products_table', 1),
(16, '2021_10_08_130403_receipt_detail_foreign', 1),
(17, '2021_10_14_212817_product_foreign', 1),
(18, '2021_10_15_190619_create_comments_table', 1),
(19, '2021_10_18_201532_create_articles_table', 1),
(20, '2021_10_19_153525_create_article_comments_table', 1),
(21, '2021_10_20_152140_create_payments_table', 1),
(22, '2021_10_20_152542_reciept_payment_foreign', 1),
(23, '2021_10_27_165102_city_province_foreign', 1),
(24, '2021_11_14_161854_create_transports_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `payments`
--

INSERT INTO `payments` (`id`, `type`, `description`) VALUES
(1, 'offline', ''),
(2, 'bank transfer', ''),
(3, 'paypal', ''),
(4, 'momo', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `product_code`, `name`, `category_id`, `avatar`) VALUES
(1, 'tour_1', 'ĐÀ LẠT – 4N3Đ – THÀNH PHỐ SƯƠNG MÙ', 2, 'https://res.cloudinary.com/dloeyqk30/image/upload/v1632636749/FnGO/TourImage/main/hinh-anh-ho-xuan-huong-da-lat-ve-dem-hinh1_utcmrz.jpg'),
(2, 'tour_2', 'TOUR NHA TRANG 3N3Đ - BÃI BIỂN ĐẸP NHẤT VIỆT NAM', 2, 'https://res.cloudinary.com/dloeyqk30/image/upload/v1636948122/FnGO/TourImage/main/nhatrang3_vnr3qr.jpg'),
(3, 'tour_3', 'DU LỊCH TÂY BẮC - 3N-2Đ ', 2, 'https://res.cloudinary.com/dloeyqk30/image/upload/v1636948123/FnGO/TourImage/main/taybac_kgqtk1.jpg'),
(4, 'tour_4', 'Quảng Ninh - Hạ Long - 3N2Đ', 2, 'https://res.cloudinary.com/dloeyqk30/image/upload/v1636949900/FnGO/TourImage/main/vhl_u0ej4h.jpg'),
(5, 'tour_5', 'PHÚ YÊN – 3N2Đ – NƠI ĐẤT PHÚ TRỜI YÊN', 2, 'https://res.cloudinary.com/dloeyqk30/image/upload/v1636950439/FnGO/TourImage/main/phuyen_rypn8z.jpg'),
(6, 'tour_6', 'Tour du khảo về nguồn Miền Tây - 3N2Đ', 2, 'https://res.cloudinary.com/dloeyqk30/image/upload/v1636951384/FnGO/TourImage/main/mientay_ts682c.jpg'),
(7, 'tour_7', 'Huế - Quảng Bình - 4N3Đ', 2, 'https://res.cloudinary.com/dloeyqk30/image/upload/v1636951914/FnGO/TourImage/main/hue_oqln03.jpg'),
(8, 'tour_8', 'TP.HCM - Hội An - 2N-2Đ', 2, 'https://res.cloudinary.com/dloeyqk30/image/upload/v1636952315/FnGO/TourImage/main/hoian_jwwwzs.jpg'),
(9, 'hotel_1', 'Khách Sạn Mường Thanh', 1, 'https://res.cloudinary.com/dloeyqk30/image/upload/v1636695729/FnGO/HotelImage/etqirvvm47dyeyxezxbz.jpg'),
(10, 'hotel_2', 'Khách Sạn Sheraton', 1, 'https://res.cloudinary.com/dloeyqk30/image/upload/v1636704421/FnGO/HotelImage/jirjz04g4syjxbyttcpd.jpg'),
(11, 'hotel_3', 'Khách Sạn Dạ Hương', 1, 'https://res.cloudinary.com/dloeyqk30/image/upload/v1636695250/FnGO/HotelImage/q5qzbwh1jetpkeud5o3e.jpg'),
(12, 'hotel_4', 'Palace Hotel', 1, 'https://res.cloudinary.com/dloeyqk30/image/upload/v1636695624/FnGO/HotelImage/hssew7aazgjbxln5aiuf.jpg'),
(13, 'hotel_5', 'Khách Sạn Rex', 1, 'https://res.cloudinary.com/dloeyqk30/image/upload/v1636684715/FnGO/HotelImage/oijopyphwbahhszgjsky.jpg'),
(14, 'hotel_6', 'Khách sạn Mường Thanh Luxury', 1, 'https://res.cloudinary.com/dloeyqk30/image/upload/v1635854168/FnGO/HotelImage/k1vismer6ozplsfm8qi1.jpg'),
(15, 'hotel_1_room_1', 'Room 1', 4, 'https://res.cloudinary.com/dloeyqk30/image/upload/v1633314438/FnGO/hotelImage/roomType/1_double_bed_tupdnd.jpg'),
(16, 'hotel_1_room_2', 'Room 2', 4, 'https://res.cloudinary.com/dloeyqk30/image/upload/v1633314438/FnGO/hotelImage/roomType/1_double_bed_tupdnd.jpg'),
(17, 'hotel_2_room_1', 'Room 1', 4, 'https://res.cloudinary.com/dloeyqk30/image/upload/v1633314428/FnGO/hotelImage/roomType/2_double_bed_zv5hjp.jpg'),
(18, 'hotel_2_room_2', 'Room 2', 4, 'https://res.cloudinary.com/dloeyqk30/image/upload/v1633314428/FnGO/hotelImage/roomType/2_double_bed_zv5hjp.jpg'),
(19, 'hotel_3_room_1', 'Room 1', 4, 'https://res.cloudinary.com/dloeyqk30/image/upload/v1633314428/FnGO/hotelImage/roomType/2_double_bed_zv5hjp.jpg'),
(20, 'hotel_3_room_2', 'Room 2', 4, 'https://res.cloudinary.com/dloeyqk30/image/upload/v1633314428/FnGO/hotelImage/roomType/2_double_bed_zv5hjp.jpg'),
(21, 'hotel_4_room_1', 'Room 1', 4, 'https://res.cloudinary.com/dloeyqk30/image/upload/v1633314428/FnGO/hotelImage/roomType/2_double_bed_zv5hjp.jpg'),
(22, 'hotel_4_room_2', 'Room 2', 4, 'https://res.cloudinary.com/dloeyqk30/image/upload/v1633314428/FnGO/hotelImage/roomType/2_double_bed_zv5hjp.jpg'),
(23, 'hotel_5_room_1', 'Room 1', 4, 'https://res.cloudinary.com/dloeyqk30/image/upload/v1636894593/FnGO/roomImage/phongks3_brioev.jpg'),
(24, 'hotel_5_room_2', 'Room 2', 4, 'https://res.cloudinary.com/dloeyqk30/image/upload/v1636894593/FnGO/roomImage/phongks3_brioev.jpg'),
(25, 'hotel_6_room_1', 'Room 1', 4, 'https://res.cloudinary.com/dloeyqk30/image/upload/v1636894593/FnGO/roomImage/phongks3_brioev.jpg'),
(26, 'hotel_6_room_2', 'Room 2', 4, 'https://res.cloudinary.com/dloeyqk30/image/upload/v1636894593/FnGO/roomImage/phongks3_brioev.jpg'),
(27, 'hotel_6_room_3', 'Room 3', 4, 'https://res.cloudinary.com/dloeyqk30/image/upload/v1636894902/FnGO/roomImage/phongks4_ksrkpa.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `receipts`
--

CREATE TABLE `receipts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `price_sum` int(10) UNSIGNED NOT NULL,
  `payment_id` int(10) UNSIGNED DEFAULT NULL,
  `status_id` int(10) UNSIGNED NOT NULL DEFAULT 3,
  `is_finish` tinyint(1) NOT NULL DEFAULT 0,
  `accept_by` int(10) UNSIGNED DEFAULT NULL,
  `cancel_by` int(10) UNSIGNED DEFAULT NULL,
  `finish_by` int(10) UNSIGNED DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `receipt_details`
--

CREATE TABLE `receipt_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `receipt_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `receipt_statuses`
--

CREATE TABLE `receipt_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `receipt_statuses`
--

INSERT INTO `receipt_statuses` (`id`, `name`) VALUES
(1, 'Accepted'),
(2, 'Canceled'),
(3, 'Waiting'),
(4, 'Payment received'),
(5, 'Momo waiting'),
(6, 'Momo canceled');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'admin'),
(2, 'user'),
(3, 'employee');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `room_types`
--

CREATE TABLE `room_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `hotel_id` int(10) UNSIGNED NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'https://res.cloudinary.com/dloeyqk30/image/upload/v1631955491/sample.jpg',
  `bed` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchases_number` int(11) NOT NULL DEFAULT 0,
  `area` int(10) UNSIGNED NOT NULL,
  `max_person` int(11) NOT NULL,
  `room_quantity` int(11) NOT NULL DEFAULT 10,
  `refund` tinyint(1) NOT NULL DEFAULT 0,
  `breakfast` tinyint(1) NOT NULL DEFAULT 0,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `room_types`
--

INSERT INTO `room_types` (`id`, `hotel_id`, `product_code`, `name`, `avatar`, `bed`, `purchases_number`, `area`, `max_person`, `room_quantity`, `refund`, `breakfast`, `price`) VALUES
(1, 1, 'hotel_1_room_1', 'Room 1', 'https://res.cloudinary.com/dloeyqk30/image/upload/v1633314438/FnGO/hotelImage/roomType/1_double_bed_tupdnd.jpg', '1-2', 0, 22, 2, 10, 1, 1, 2000000),
(2, 1, 'hotel_1_room_2', 'Room 2', 'https://res.cloudinary.com/dloeyqk30/image/upload/v1633314438/FnGO/hotelImage/roomType/1_double_bed_tupdnd.jpg', '1-2', 0, 22, 2, 10, 1, 1, 2000000),
(3, 2, 'hotel_2_room_1', 'Room 1', 'https://res.cloudinary.com/dloeyqk30/image/upload/v1633314428/FnGO/hotelImage/roomType/2_double_bed_zv5hjp.jpg', '2-2', 0, 24, 4, 10, 0, 0, 3000000),
(4, 2, 'hotel_2_room_2', 'Room 2', 'https://res.cloudinary.com/dloeyqk30/image/upload/v1633314428/FnGO/hotelImage/roomType/2_double_bed_zv5hjp.jpg', '2-2', 0, 24, 4, 10, 0, 0, 3000000),
(5, 3, 'hotel_3_room_1', 'Room 1', 'https://res.cloudinary.com/dloeyqk30/image/upload/v1633314428/FnGO/hotelImage/roomType/2_double_bed_zv5hjp.jpg', '2-2', 0, 24, 4, 10, 0, 0, 3000000),
(6, 3, 'hotel_3_room_2', 'Room 2', 'https://res.cloudinary.com/dloeyqk30/image/upload/v1633314428/FnGO/hotelImage/roomType/2_double_bed_zv5hjp.jpg', '2-2', 0, 24, 4, 10, 0, 0, 3000000),
(7, 4, 'hotel_4_room_1', 'Room 1', 'https://res.cloudinary.com/dloeyqk30/image/upload/v1633314428/FnGO/hotelImage/roomType/2_double_bed_zv5hjp.jpg', '2-2', 0, 24, 4, 10, 0, 0, 3000000),
(8, 4, 'hotel_4_room_2', 'Room 2', 'https://res.cloudinary.com/dloeyqk30/image/upload/v1633314428/FnGO/hotelImage/roomType/2_double_bed_zv5hjp.jpg', '2-2', 0, 24, 4, 10, 0, 0, 3000000),
(9, 5, 'hotel_5_room_1', 'Room 1', 'https://res.cloudinary.com/dloeyqk30/image/upload/v1636894593/FnGO/roomImage/phongks3_brioev.jpg', '2-2', 0, 24, 4, 10, 0, 0, 3000000),
(10, 4, 'hotel_5_room_2', 'Room 2', 'https://res.cloudinary.com/dloeyqk30/image/upload/v1636894593/FnGO/roomImage/phongks3_brioev.jpg', '2-2', 0, 24, 4, 10, 0, 0, 3000000),
(11, 6, 'hotel_6_room_1', 'Room 1', 'https://res.cloudinary.com/dloeyqk30/image/upload/v1636894593/FnGO/roomImage/phongks3_brioev.jpg', '2-2', 0, 24, 4, 10, 0, 0, 3000000),
(12, 6, 'hotel_6_room_2', 'Room 2', 'https://res.cloudinary.com/dloeyqk30/image/upload/v1636894593/FnGO/roomImage/phongks3_brioev.jpg', '2-2', 0, 24, 4, 10, 0, 0, 3000000),
(13, 6, 'hotel_6_room_3', 'Room 3', 'https://res.cloudinary.com/dloeyqk30/image/upload/v1636894902/FnGO/roomImage/phongks4_ksrkpa.jpg', '2-2', 0, 24, 4, 10, 0, 0, 3000000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sub_tours`
--

CREATE TABLE `sub_tours` (
  `id` int(10) UNSIGNED NOT NULL,
  `tour_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day` int(10) UNSIGNED NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sub_tours`
--

INSERT INTO `sub_tours` (`id`, `tour_id`, `title`, `day`, `content`) VALUES
(1, 1, 'TP.HCM - HN - ĐÀ LẠT', 1, 'Xe và đón khách  sân bay Liên Khương hoặc bến xe. Sau đó xe đưa quý khách về thành phồ, nhập đoàn HDV đưa quý khách tham quan Dinh Bảo Đại ngôi dinh thự được chính vua Bảo Đại – vị vua cuối cùng của Việt Nam xây dựng để nghỉ ngơi và làm việc tại Đà Lạt được nhà nước cấp hạng di tích quốc gia.'),
(2, 1, 'ĐÀ LẠT SỨ SỞ NGÀN THÔNG', 2, 'Xe và HDV đưa quý khách tham quan Nông Trại Cún Puppy Farm đây là một địa điểm du lịch Đà Lạt mới nhất năm 2019 dành cho những tín đồ yêu động vật.\r\n                Núi Langbiang Tiếp tục hành trình tới chân núi Langbiang (cao 2.169m), quý khách thuê xe Jeep lên núi (tự túc). Từ đỉnh núi quý khách sẽ cảm nhận được không khí mát mẻ dễ chịu của núi rừng, ngắm cảnh chụp hình bao quát thành phố Đà Lạt, hồ suối vàng, suối bạc…\r\n               '),
(3, 2, 'TP.HCM - Khánh Hoà', 1, 'Xe đón khách ở điểm tập kết. Sau đó xe đưa quý khách về thành phố theo con đường mới ven biển - Vịnh Diamond - một vịnh biển đẹp với khu du lịch lưu trú nghĩ dưỡng 5 sao, Các du khách sẽ được tham quan Bãi Dài, bãi biển cách thành phố Nha Trang 29km với bãi cát trắng trải dài cách bờ 100m. Tại đây quý khách có thể thưởng thức những món hải sản tươi sống do người dân địa phương tự đánh bắt...\r\n                Buổi chiều : tham quan chùa Long Sơn - ngôi chùa cổ kính và yên tĩnh nổi tiếng ở Nha Trang, tiếp đến là tháp bà Ponagar và tham quan du lịch Suối Khoáng Nóng Tháp Bà'),
(4, 2, 'Vinpearl Land', 2, 'Xe sẽ đưa quý khách tham quan Vịnh Nha Trang, ngắm cảnh làng chài, Hòn Một, Hòn Tre,... Đến khu vui chơi giải trí Con Sẻ Tre dùng cơm trưa, tắm biển và tham gia các hoạt động : moto nước, dù bay, xuồng thể thao, lướt sóng...\r\n                Buổi chiều : Tham quan Vinpearl Land bằng cáp treo biển dài nhất Việt Nam và tham gia các loại hình hoạt động vui chơi giải trí nơi đây.\r\n               '),
(5, 3, 'TP.HCM - Mộc Châu', 1, 'Từ Sân bay Tân Sơn Nhất di chuyển đến sân bay Nội Bài - Hà Nội. Từ Hà Nội tiếp tục di chuyển đến thị trấn Mộc Châu. Trên đường đi du khách có thể ngắm nhìn phong cảnh thiên nhiên nên thơ trữ tình của vùng núi Tây Bắc, thưởng thức đặc sản địa phương'),
(6, 3, 'Mộc Châu - Sơn La', 2, 'Tham quan đồi chè Trái Tim, rừng thông Bản Áng, thác Dải Yếm..., Bản Ba Phách - thiên đường hoa cải của Tây Bắc và thung lũng Nà Ka - nơi có cánh đồng hoa cải vàng tuyệt đẹp.\r\n               '),
(7, 3, 'Sơn La – Điện Biên', 3, 'Cung đường Sơn La – Điện Biên, các bạn sẽ đi qua đèo Pha Đin – một trong tứ đại đỉnh đèo của Việt Nam. Cung đường đã được rải nhựa nên rất dễ đi. Tuy nhiên, để đảm bảo an toàn các bạn vẫn nên đi chậm và chú ý quan sát khi đổ đèo.\r\n\r\n                Một số điểm tham quan các bạn nên ghé qua ở Điện Biên như Đồi A1, nghĩa trang Điện Biên, hầm Đờ Các, hồ Pá Khoang, cánh đồng Mường Thanh vào mùa lúa chín hoặc check – in A Pa Chải – Cực Tây của Tổ Quốc… Và đừng quên thưởng thức cá hồi gần sân bay Điện Biên, bánh cuốn chợ Nam Thanh, bún chả chân cầu Trắng, dê Minh Bục hoặc lẩu mắm gần nghĩa trang A1\r\n               '),
(8, 3, 'Điện Biên - Sapa', 4, 'khởi hành đi Sapa theo hướng Hoàng Liên Sơn – Mường Chà – Mường Lay. Trên đường đi, hãy nghỉ ăn trưa ở TP.Lai Châu. Và đừng quên dừng chân ở đèo Ô Quy Hồ để ngắm nhìn quang cảnh thiên nhiên núi rừng vừa nên thơ, vừa hùng vĩ và thưởng thức một số món đặc sản bên đường.\r\n\r\nTrên đường vào trung tâm thị trấn Sapa, các bạn cũng nên ghé thăm Thác Bạc. Giá vé 20.000 đồng/người lớn và 10.000 đồng/trẻ em.\r\nVào đến thị trấn nhận phòng, nghỉ ngơi, ăn trưa. Buổi chiều đi tham quan Nhà thờ Đá, núi Hàm Rồng, thác Tình Yêu… Buổi tối nhớ đi chợ đêm Sapa để tận hưởng không khí trong lành, thưởng thức món ăn ngon và mua chút đồ lưu niệm\r\n               '),
(9, 3, 'Sapa - Mù Cang Chải - TP.Hồ Chí Minh', 5, 'tham quan “nóc nhà Đông Dương” Fansipan. Món cháo cá hồi khá ngon và ấm bụng.tiếp tục hành trình đi Nghĩa Lộ theo QL 32, qua đèo Khau Phạ – Mù Cang Chải – Tú Lệ. Đèo Khau Phạ là một trong những con đèo dài và nguy hiểm. Nhưng lại rất đẹp, nhất là khi chìm trong sương mù. Đứng từ trên đèo nhìn xuống, sẽ thu được toàn bộ quan cảnh hùng vĩ của những thửa ruộng bậc thang ở thung lũng Cao Phạ, xã Lìm Mông, Lìm Thái. Đặc biệt, nếu đi vào mùa lúa chín (tầm tháng 9 – tháng 11) các bạn sẽ có những bức hình ruộng bậc thang “để đời” ở La Pán Tẩn.\r\n                Quay lại Hà Nội để kết thúc hành trình ở sân bay Tân Sơn Nhất - TP.Hồ Chí Minh\r\n               '),
(10, 4, 'Hà Nội - Vịnh Hạ Long', 1, 'Sáng : Xuất phát từ trạm tập kết sẵn di chuyển đến Vịnh Hạ Long, dùng cơm trưa và ngắm cảnh ven đường, 11h : checkin khách sạn và nghỉ ngơi\r\n                Chiều : tham quan vịnh Hạ Long, Hang Sửng Sốt, Làng chài Cửa Vạn'),
(11, 4, 'Bãi Cháy - Bảo tàng Quảng Ninh - Cung Cá Heo - Núi Bài Thơ', 2, ' Bãi cháy : à bãi biển rộng nhất thành phố Hạ Long, thu hút đông đảo khách du lịch đến đây vui chơi, tắm mát. Bờ biển nhân tạo này trải dài hơn 1000m mang vẻ đẹp tuyệt sắc với bãi cát sạch đẹp, dòng nước trong xanh, những hàng thông dài vô tận,...\r\n                                Bảo tàng Quảng Ninh là một công trình kiến trúc nghệ thuật có thiết kế độc đáo, mới lạ. Nơi đây lưu giữ những giá trị văn hóa, lịch sử của phố biển Hạ Long. Trong lịch trình du lịch Hạ Long, bạn nên đến đây để hiểu hơn về lịch sử, văn hóa và con người nơi này. \r\nCung cá heo nằm trên đường Trần Quốc Nghiễn, Tuần Châu, thành phố Hạ Long. Với lối kiến trúc độc đáo, mới lạ, nơi đây trở thành “thiên đường sống ảo” được giới trẻ đua nhau check-in.\r\nNúi Bài Thơ là ngọn núi đá vôi nằm ngay trung tâm thành phố Hạ Long. Đây là di tích văn hoá lịch sử quan trọng. Nếu bạn muốn khám phá thành phố Hạ Long từ một góc nhìn khác biệt, thì đừng bỏ qua núi Bài Thơ trong lịch trình du lịch Hạ Long của mình. Tuy nhiên hoạt động leo núi Bài Thơ đã bị tạm dừng do lo ngại về an toàn cho du khách, thay vào đó bạn có thể tham quan, ngắm cảnh bên dưới. Hãy cập nhật kỹ lưỡng thông tin từ chính quyền địa phương trước khi lên lịch trình cụ thể cho chuyến du lịch Hạ Long của mình nhé!\r\n               '),
(12, 4, 'Phố cổ Hạ Long - Hà Nội', 3, 'Phố cổ Hạ Long là địa điểm du lịch độc đáo với kiến trúc “phố lồng trong phố” mang đến sự pha trộn hài hòa giữa nét hiện đại và truyền thống. Lịch trình du lịch Hạ Long nhất định phải ghé phố cổ để tham quan, ăn uống, và đặc biệt là check – in không gian tuyệt đẹp của nơi đây.\r\n                Sau khi tham quan phố cổ, bạn ghé ăn trưa. Sau đó, quay về trả phòng khách sạn và lên xe về Hà Nội. Kết thúc tour du lịch Hạ Long 3 ngày 2 đêm đầy thú vị.\r\n               '),
(13, 5, 'TP.HCM - Phú Yên - Khu du lịch Ghềnh Ráng Tiên Sa - Mộ Hàn Mặc Tử - Tháp Đôi Hưng Hạnh - Biển Kỳ Co -Eo Gió', 1, 'Hạ cánh tại sân bay Phù Cát, Sau khi dùng bữa sáng và check-in khách sạn, điểm đến đầu tiên của chuyến hành trình là khu du lịch Ghềnh Ráng – Tiên Sa nằm cách trung tâm thành phố chưa tới 3km. Được ví như viên ngọc xanh giữa biển, Ghềnh Ráng – Tiên Sa không chỉ nổi tiếng với cảnh quan thoáng đãng, những bãi tắm đẹp, mà còn hấp dẫn du khách với những câu chuyện tình yêu gắn liền với sự ra đời của cái tên Ghềnh Ráng – Tiên Sa. Đã đến Ghềnh Ráng thì không thể không ghé đồi Thi Nhân để viếng mộ thi sĩ Hàn Mạc Tử. Ngược lên phía Bắc thành phố, Tuấn tham quan tháp đôi Quy Nhơn, hay còn gọi là tháp đôi Chăm pa Hưng Thạnh. Đây là dấu tích văn hóa của vương quốc Chăm Pa thời hoàng kim. Trải qua nhiều biến cố lịch sử thăng trầm, tháp đôi Hưng Thạnh từng bị phá hủy nặng nề nhưng cũng đã được trùng tu, tôn tạo, dưới sự giúp đỡ của các nhà khoa học trong nước và các chuyên gia đến từ Ba Lan. Sau khi ăn trưa xong, mình thẳng tiến ra biển Eo Gió Nhơn Lý, cách trung tâm thành phố khoảng 20km và được coi là biểu tượng của du lịch Quy Nhơn. Đây là một eo biển nằm giữa hai mỏm núi, quanh năm hút gió biển mát rượi nên được gọi là “Eo Gió”. Ngoài ra, con đường uốn lượn theo các dãy núi đá và ôm lấy eo biển này là một địa điểm check-in tuyệt đẹp không thể bỏ qua. Nằm khá gần Eo Gió chính là bãi biển Kỳ Co, không chỉ có nước biển trong xanh tận đáy, bãi tắm nông thích hợp cho cả trẻ em và những người không biết bơi, bãi biển Kỳ Co còn có những tảng đá lớn nhỏ nhiều hình thù liên kết với nhau, tạo nên những hồ nước nhỏ rất đẹp mắt'),
(14, 5, 'Ghềnh Đá Dĩa - Nhà Thờ Mằng Lăng – Đầm Ô Loan – Bãi Xép – Ghềnh Ông', 2, 'Điểm đến đầu tiên của ngày thứ 2 đó là Ghềnh Đá Dĩa, Bãi đá đen này có rất nhiều khối đá tròn lớn nhỏ xếp chồng lên nhau, tựa như chồng đĩa. Theo nghiên cứu, đây là đá bazan được hình thành từ hơn 200 triệu năm trước do nham thạch núi lửa Vân Hòa chảy xuống và đông tụ lại. Hiện tượng thiên nhiên kỳ thú này không chỉ nổi tiếng ở Việt Nam mà còn được thế giới biết đến.\r\n                Đi Phú Yên thì không thể không tham quan nhà thờ Mằng Lăng, một trong những nhà thờ cổ nhất Việt Nam, nổi bật với lối kiến trúc Gothic cổ điển đặc trưng của châu Âu, đây còn là nơi lưu giữ cuốn sách ghi chép bằng chữ quốc ngữ đầu tiên của Việt Nam. Nhà thờ Mằng Lăng thật sự là một nơi xứng đáng có mặt trong những tấm hình check-in của bạn.\r\n                Nếu ai từng xem qua bộ phim “Tôi thấy hoa vàng trên cỏ xanh” của đạo diễn Victor Vũ, ắt hẳn không quên những cảnh quay mượt mà, lãng mạn, được ghi lại tại khu vực Đầm Ô Loan, và Bãi Xép – Ghềnh Ông. Bãi Xép tuy không có gì quá nổi bật, nhưng lại hấp dẫn bởi sự nguyên sơ của nó, đặc biệt là dãy xương rồng mọc san sát nhau ngay mỏm đá nhô ra biển.\r\n               '),
(15, 5, 'Cầu Thị Nại – Đồi Cát Phương Mai – Khu Du Lịch Cửa Biển Seagate – Sân bay Phù Cát', 3, 'Ngày cuối cùng ở Quy Nhơn, mở đầu là cuộc hành trình vượt qua cầu Thị Nại, cây cầu vượt biển dài nhất Việt Nam, nối liền giữa thành phố Quy Nhơn và Nhơn Hội – một khu kinh tế sầm uất của tỉnh Bình Định. Cầu Thị Nại bao gồm cây cầu chính vượt đầm Thị Nại, và năm cây cầu nhỏ bắc qua sông Hà Thanh. Nhìn từ xa, cây cầu như dải lụa bắc ngang qua dòng nước xanh biếc, một đầu là đất liền, còn đầu kia là bán đảo Phương Mai nổi tiếng với đồi cát mênh mông.\r\n                Đồi cát Phương Mai là một trong những đồi cát đẹp nhất của tỉnh Bình Định, với nhiều cồn cát cao từ 20m, 30m, đến 100m so với mực nước biển. Đồi cát ở đây bao la, rộng lớn một màu vàng óng ánh, khiến Tuấn cảm thấy mình nhỏ bé như đang ở giữa sa mạc.\r\n                Từ cầu Thị Nại chạy thẳng qua Khu du lịch Cửa Biển – Seagate Park cách đó không xa để tham gia các trò chơi cực vui, cực đã trên nước. Không gian ở Khu du lịch Cửa Biển rất thoáng đãng và dễ chịu, được bao quanh bởi núi, rừng, và biển. Dùng bữa trưa và vui chơi đến chiều rồi trở về check-out khách sạn và đi thẳng ra sân bay Phù Cát để trở về thành phố Hồ Chí Minh.\r\n               '),
(16, 6, 'TP.HCM - Mỹ Tho - Bến Tre - Cần Thơ', 1, 'Buổi sáng, 8:00 sáng khởi hành từ VP công ty đi Mỹ Tho, 10h00 đến bến tàu Mỹ Tho, quý khách dừng chân tham quan cùa Vĩnh Tràng - một trong nhữg ngôi chùa cổ nổi tiếng của miền tây với lối kiến trúc độc đáo. Sau đó xe đưa đoan ra lên tàu du ngoạn sông Tiền tham quan những ngôi nhà nổi trên sông cùng với các bè cá,  nghe giới thiệu lịch sử hình thành 4 cù lao Long, Lân, Quy, Phụng. Đến cồn Thới Sơn - quý khách tham quan miệt vườn cây trái xứ cù lao, xem các tổ Ong mật và cách lấy mật. Quý khách dừng chân thưởng thức những tách trà mật ong nóng thơm lừng miễn phí nghe giới thiệu về các sản phẩm làm từ mật ong, sữa ong chúa, phấn hoa…sau đó đến khu vực nhà vườn nghỉ ngơi thưởng thức trái cây miễn phí, nghe đàn ca tài tử miệt vườn. Sau đó Quý khách ra bến đò đi đò chèo dọc bờ kênh dưới những tán dừa rợp mát đến cửa sông và lên tàu lớn tiếp tục đưa quý khách sang Bến Tre tham lò sản xuất kẹo dừa Bến Tre và các sản làm từ dừa. Sau đó đến nhà hàng miệt vườn dùng cơm trưa, nằm võng nghỉ ngơi. Sau đó lên tàu trở về bến. Trên đường nghe hướng dẫn thuyết minh về Cồn Phụng - Di tích Ông Đạo dừa..\r\n                uổi chiều, 15h00 quý khách trở lại bến tàu, tàu đưa quý khách về bến. Sau đó lên xe tiếp tục đi Cần Thơ. 17h00 đến Cần Thơ quý khách nhận phòng khách sạn, nghỉ ngơi, sau đó quý khách dùng bữa tối tại nhà hàng du thuyền trên Cần Thơ ngắm cảnh đẹp miền đất Tây Đô về đêm - nghe ca nhạc tài tử nam bộ và thưởng thức bữa tối với các món đặc sản miền tây tại nhà hàng trên du thuyền..'),
(17, 6, 'Chợ Nổi Cái Răng - Bình Thuỷ - Cồn Sơn - Châu Đốc', 2, 'Buổi sáng, xe đưa đoàn ra bến tàu đi tham quan chợ nổi Cái Răng – Xem cảnh buôn bán tấp nập trên sông – một nét đặc trưng của chợ miền sông nước miền tây. Quý khách có thể trực tiếp mua trái cây trên ghe - thuyền trên chợ nổi, tham quan lò sản xuất hủ tiếu và các các loại khô đặc sản, sau đó trở về khách sạn ăn sáng, trả phòng. Xe đưa đoàn đi thăm đình Bình Thủy – Long Tuyền Cổ Miếu ngôi đình đặc sắc nhất xứ Tây Đô cũng như Miền Tây Nam Bộ được vua Tự Đức phong sắc “Bổn Cảnh Thành Hoàng” ngày 29/11/1853. Sau đó tiếp tục viếng chùa Nam Nhã xây dựng năm 1895 theo tông phái Minh Sư – Ngôi chùa có kiến trúc độc đáo gắn liền với lịch sử đấu tranh hào hùng của các sỹ phu yêu nước thời Pháp thuộc. Sau đó tàu đưa quý khách sang Cồn Sơn. Tại đây quý khách check in khung cảnh miệt vườn phủ đầy màu xanh cây trái trên đường đi đặc biệt quý khách được trải nghiệm loại hình độc đáo xem cá lóc bay, chèo xuồng ba lá, uống trà sen, chụp ảnh vườn trái cây bưởi, ổi, nhãn, chôm chôm, tạo dáng hồ sen hồng, sen vua, tham quan bè nuôi cá heo sông Hậu. Quý khách thưởng thức bữa trưa món đặc sản cá lóc bay cồn Sơn nhúng mẻ ăn với bông kèo nèo và các món đặc sản khác. tàu đưa quý khách trở về bến tàu, sau đó lên xe khởi hành đi Châu Đốc.\r\n\r\nBuổi chiều, đến Châu Đốc quý khách tham quan rừng tràm Trà Sư với hệ sinh thái rừng tràm ngập nước đẹp nhất Đông Nam Á. Quý khách vào check in bến nước Trà Sư  xinh đẹp với nhiều tiểu cảnh đôc đáo chụp ảnh Cầu Kiều Trà Sư bắt qua qua sông lối vào rừng tràm. Hướng dẫn đưa quý khách đếm thăm Cầu Tre Vạn Bước đi xuyên rừng tràm tại đây quý khách nhẹ nhàng bước đi vào rừng tràm xanh mướt với khung cảnh tuyệt đẹp. Trên mặt nước phủ đầy một màu xanh lơ của những mãng bèo màu xanh như những tấm thảm khổng lồ bao phủ khắm rừng tràm. Trong không khí mát mẻ tạo cảm giác lâng lâng khó tả, cuộc sống chậm lại. Quý khách như gạt bỏ những điều phiền muộn của cuộc sống, tận hưởng cảm giác sản khoái khi đi giữa thiên nhiên hoang dã tuyệt đẹp. Tại đây quý khách được tận mắt xem những chú chim dạn dĩ kiếm mồi trên những đám bèo màu xanh, những đàn cò, diệt, trích lượng lờ, ríu rít trên những tán tràm xanh, và dưới những đám bèo xanh lơ dưới mặt nước. Sau một vòng khám phá, quý khách trở lại bến đò. Đò đưa quý khách đi một vòng vào lung tràm xanh mướt giữa rừng rộng bằng kích thước một sân bóng lớn, quý khách tha hồ check in, chụp ảnh.  Tàu tiếp tục đưa quý khách đến con đường độc đạo giữa rừng tràm đến trạm dừng chân tiếp theo. Tại đây quý khách có thể lên đài quan sát ngắm toàn cảnh rừng tràm Trà Sư, đi bộ trên đường đất giữa rừng tràm săn những bức ảnh đẹp, chụp ảnh cây cầu bắt ngang qua bờ kênh. Sau đó đến khu vực nhà hàng giữa chốn thiên nhiên hoang dã được bố trí những cụm nhà sàn nhỏ giữa rừng rất lãn mạng. Quý khách có thể dừng chân thưởng thức vài món dân dã, đạm bạc... Tàu đưa quý khách về lại bến đò kết thúc chuyến tham quan rừng tràm Trà Sư. Sau đó xe đoàn trở về nhận phòng khách sạn, dùng cơm tối.\r\n\r\nBuổi tối : Xe đưa quý khách vào vào núi Sam viếng Miếu Bà chúa Xứ, Lăng Thoại Ngọc Hầu, chùa Tây An...Sau đó về khách sạn nghỉ ngơi, hoặc tự do khám phá ẩm thực Châu Đốc về đêm.\r\n               '),
(18, 6, 'Châu Đốc - Đồng Tháp - TP.HCM', 3, 'Buổi sáng, 6h00 quý khách ăn sáng tại khách sạn, 6h30 trả phòng sau đó xe đưa quý khách ra chụp ảnh tượng đài Cá Ba Sa biểu tượng của TP Châu Đốc, sau đó tiếp tục hành trình đi Đồng Tháp. Quý khách được đi qua 2 cây cầu nổi tiếng của miền tây đó là cầu Vàm Cống và cầu Cao Lãnh - Từ trên cầu quý khách thả tầm mắt ngắm toàn cảnh những cánh đồng bát ngát, những vườn cây trái xum xuê. Đến Cao Lãnh quý khách dừng chân viếng khu di tích mộ cụ phó bảng Nguyễn Sinh Sắc, sau đó tiếp tục vào khu du lịch Gáo Giồng - Nơi được mệnh danh là Đồng Tháp Mười thu nhỏ và là lá phổi xanh của Đồng Tháp. Đây là điểm du lịch đẹp nhất Đồng Tháp hiện nay. Quý khách vào check in, chụp ảnh, xem phim tài liệu, thưởng thức trà sen...Sau đó ra bến đò lên xuồng ba lá cùng các cố gái mặt áo bà ba xinh tươi chèo xuồng đưa quý khách đi dưới những tán rừng tràm rợp mát ngắm cảnh hệ sinh thái tuyệt đẹp chỉ có ở Gáo Giồng, ngắm nhìn những đàn chim bay rợp trời hàng ngàn con, quý khách vào sân chim Gáo Giồng chụp cận cảnh những đàn chim trời đủ các loại…Sau chuyến trải nghiệm đầy thú vị, quý khách trở lại bến đò tham quan khu ẩm thực chợ quê Gáo Giồng và sau đó đến nhà hàng sinh thái miệt vườn quý khách dùng cơm trưa với các món đặc sản Đồng Tháp, cảm nhận hương đồng gió nội.\r\n\r\nBuổi chiều, Quý khách quý khách lên xe khởi hành về Sài Gòn dừng chân nghỉ trưa trên đường. Khoảng 18h30 xe về đến Sài Gòn, kết thúc tour du lịch miền tây 3 ngày 2 đêm Mỹ Tho - Bến Tre - Cần Thơ - Châu Đốc - Đồng Tháp - hẹn gặp lại quý khách.\r\n               '),
(19, 7, 'Cố Đô Huế - Đại Nội Kinh Thành - Du Thuyền Ca Huế', 1, 'Xe và HDV của công ty sẽ đón quý khách tại nhà ga, sân bay. Về khách sạn gửi hành lý. Quý khách sẽ tham quan city tour thành phố.\r\n\r\nTrưa : Quý khách dùng bữa trưa tại nhà hàng với hương vị ẩm thực Huế.\r\n\r\nSau bữa trưa đoàn về khách sạn nhận phòng nghỉ ngơi.\r\n\r\nChiều : Đoàn tham quan Đại Nội Kinh Thành Huế. Kinh thành Huế là một trong số các di tích thuộc Quần thể di tích Cố đô Huế được UNESCO công nhận là Di sản Văn hoá Thế giới.\r\n\r\nQuý khách sẽ tham quan các di tích thuộc quần thể di tích này.\r\n\r\nSau khi tham quan xong Đại Nội, quý khách di chuyển về khách sạn tắm rửa nghỉ ngơi.\r\n\r\nTối : Xe và HDV cùng đoàn đi dùng bữa tối tại nhà hàng.\r\n\r\n Du thuyền ca Huế : Thưởng ngoạn nét nhã nhạc cung đình Huế trên thuyền rồng, theo dòng sông Hương thơ mộng. Nét đặc trưng tiêu biểu của Cố Dô Huế.'),
(20, 7, 'Huế - Quảng Trị - Quảng Bình', 2, 'Sáng: quý khách có thể dậy sớm tản bộ bên dòng sông Hương thơ mộng. Sau đó dùng bữa sáng buffet tại khách sạn.\r\n\r\n7h30 : Đoàn trả phòng khách sạn. Khởi hành du lịch Quảng Bình.\r\n\r\nĐoàn sẽ đi theo con đường mòn Hồ Chi Minh nhánh Đông huyền thoại. Qua những địa danh lịch sử của Quảng Trị, nơi đánh phá ác liệt nhất trong chiến tranh Việt Nam. Như thành cổ Quảng Trị, Sông Thạch Hãn, Đường 9 Nam Lào, nghĩa trang đường 9, nghĩa trang Trường Sơn…\r\n\r\nCùng mường tượng về quá khứ hào hùng và những trận đánh ác liệt của chiến tranh Việt Nam.\r\n\r\n12h : Đoàn nghỉ ngơi và ăn trưa tại nhà hàng Phong Nha.\r\n\r\n13h30 :\r\n\r\nTham quan Động Phong Nha\r\nQuý khách sẽ được du thuyền ngược dòng Sông Son xanh ngắt. Thư thái thả hồn hòa quyện vào thiên nhiên, núi sông hùng vĩ tại Phong Nha. Bao nhiêu phiền muộn, mệt nhọc của cuộc sống bon chen hàng ngày đều tan biến. Đắm chìm trong cảnh sắc nước hương rừng bên dòng sông thơ mộng.\r\n\r\nQuý khách sẽ bắt gặp những cảnh hết đỗi thân thương và bình dị nơi làng quê hai bên bờ sông. Những đứa tre con chăn trâu nô đùa tắm sông, những thiếu nữa bên ruộng ngô, ruộng lúa… Đôi lúc lại bắt gặp những thuyền độc mộc của ngư dân bắt cá trên sông. Cảm giác thật bình yên.\r\n\r\nThuyền sẽ ngược dòng tầm 30 phút đưa quý khách đén với hang Động Phong Nha – Kỳ quan đệ nhất Động. Là hang động có dòng sông ngầm chảy qua dài nhất Đông Nam Á.\r\n\r\nCùng các hệ thống thạch nhũ huyền ảo, kỳ vĩ. Quý khách sẽ vô cùng ngạc nhiên trước tạo hóa của tự nhiên qua hàng trăm triệu năm lịch sử. Tại đây quý khách tha hồ tham quan chụp hình lưu niệm với các khối thạch nhũ muôn hình thù kỳ bí.\r\n\r\n16h : Kết thúc Động Phong Nha, đoàn sẽ khởi hành về thành phố Đồng Hới.\r\n\r\n17h : Nhận phòng khách sạn và nghỉ ngơi, hay quý khách có thể dạo chơi tắm biển Nhật Lệ.\r\n\r\nTối:  quý khách thưởng thức bữa tối tại các nhà hàng đặc sản của Quảng Bình, và tham quan thành phố về đêm.\r\n               '),
(21, 7, 'Động Thiên Đường - Sông Chày Hang Tối', 3, 'Sáng :\r\n\r\nQuý khách dậy sớm dạo chơi trên biển hay tắm biển Nhật Lệ, ngắm bình minh.\r\n\r\nQuý khách dùng bữa sáng buffet tại khách sạn.\r\n\r\n8h : Xe và HDV Phong Nha Tourist sẽ đón đoàn. Khởi hành tham quan vườn Quốc Gia Phong Nha – Kẻ Bàng.\r\n\r\n9h30 : Xe sẽ đua quý khách đến tận bãi đỗ xe của trung tâm du lịch Động Thiên Đường.\r\n\r\n10h :\r\n\r\nTham quan Động Thiên Đường\r\nSau khi nghỉ ngơi và làm thủ tục tham quan, đoàn sẽ di chuyển bằng xe điện. Vi vu dưới những bóng cây đại ngàn giữa vùng lõi vườn quốc gia. Cùng chiêm ngưỡng hệ sinh thái động thực vật vô cùng phong phú suốt quãng đường.\r\n\r\nTiếp đến chinh phục 525 bậc thang men theo sườn núi để đến tận cửa hang Động Thiên Đường. Cửa hang nhỏ hẹp nhưng quý khách sẽ thực sự phải bất ngờ khi bước vào bên trong. Khoảng không gian mở ra rộng lớn. Không khí trong hang luôn luôn mát lạnh. Với hệ thống chiếu sáng hợp lý không làm mất đi vẻ đẹp tự nhiên của hang động.\r\n\r\nQuý khách sẽ tham quan 1km đầu tiên của hang động trên hệ thống cầu thang gỗ. Thỏa sức tưởng tượng với hệ thống thạch nhũ lung linh kì ảo muôn hình thù. Nào là Voi Ma Mút, Kỳ Nhung Hươu, Nhà Rông Tây Nguyên, cung Quần Tiên Hội Tụ… \r\n\r\nTrưa: \r\n\r\n12h30 : Quý khách nghỉ ngơi và dùng bữa trưa tại nhà hàng với các món ăn đặc sản địa phương.\r\n\r\n13h30 :\r\n\r\nTham gia khám phá Sông Chày Hang Tối.\r\nTại đây quý khách thay thổi trang phục, trang bị các thiết bị an toàn như áo phao, dây đeo, đèn pin đội đầu…\r\n\r\nĐu Zipline chinh phục Sông Chày : là hệ thống Zipline 2 dây dài nhất Đông Nam Á. Được trang bị hết sức hiện đại và an toàn. Quý khách sẽ vượt 400m Sông Chày bằng hệ thống Zipline đến tận cửa Hang Tối.\r\n\r\nKhám phá Hang Tối : Cùng khám phá 1km trong Hang Tối bằn nón bảo hiểm và đèn pin đội đầu. Đường đi trong hang nhỏ hẹp và nhiều mõm đá trơn trượt, phải thật cẩn thận mới qua được đoạn đườg này. Đến với hồ tắm bùn tự nhiên trong hang động, ngâm mình thư giãn với hệ thống bùn tự nhiên độc đáo duy nhất tại Việt Nam.\r\n\r\nChèo thuyền kayak trải nghiệm Sông Chày : sau khi hoàn thành khám phá hang tối, quý khách sẽ trở ra và chèo thuyền kayak trên Sông Chay. Nước sông ở đây xanh màu ngọc bích đẹp đến lạ lùng. Nước dông vô cùng mát lạnh.\r\n\r\nThử thách cùng các trò chơi mạo hiểm trên sông. Như đu zipline ngắn thả mình giữa dong sông, chuỗi game chinh phục vượt sông…\r\n\r\n16h : Hoàn thành chương trình. Đoàn khởi hành về lại thành phố Đồng Hới.\r\n\r\n17h : Đến khách sạn tắm rửa và nghỉ ngơi.\r\n\r\nTối : Xe sẽ đón đoàn dùng bữa tối tại nhà hàng. Sau đó đoàn tự do khám phá thành phố về đêm.\r\n               '),
(22, 7, 'Động Thiên Đường - Sông Chày Hang Tối', 4, 'Sáng :\r\n\r\nQuý khách dậy sớm tắm biển Nhật Lệ. Ăn sang buffet tại khách sạn.\r\n\r\nLàm thủ tục trả phòng khách sạn. Xe và HDV đón đoàn tham quan thành phố Đồng Hới.\r\n\r\nCác địa danh nổi tiếng nhất của Quảng Bình. Như nhà thờ Tam Tòa, Quảng Bình Quan, tượng đài Mẹ Suốt, Lũy Thầy, thành Đồng Hới…\r\n\r\nTham quan chợ Đồng Hới – chợ hải sản lớn nhất Quảng Bình. Quý khách có thể mua đặc sản về làm quà.\r\n\r\nĐến giờ Xe và HDV sẽ tiễn đoàn ra nhà ga hay bến xe, sân bay Đồng Hới.\r\n\r\nKết thúc chương trinh Tour Du Lịch Huế Quảng Bình 4 Ngày 3 Đêm.'),
(23, 8, 'TP.HCM - Hội An', 1, 'Xe và HDV du lịch đón du khách tại điểm tập kết và di chuyển đến Quảng Nam. Sau khi nhận phòng và dùng điểm tâm sáng, tổ chức cho du khách tham quan các danh lam thắng cảnh nổi tiếng ở Hội An : Hội Quán Phúc Kiến, Hội Quán Triều Châu, làng Gốm Thanh Hà, Lò Gạch Cũ... và thưởng thức các đặc sản nơi đây : Cao Lầu, Mỳ Quảng, Bánh bèo Hội An... Buổi tối :  tham quan chợ đêm Hội An '),
(24, 8, 'Chùa Cầu - Xưởng Thủ Công Mỹ Nghệ Hội An - Cù Lao Chàm - Du lịch Cửa Đại', 2, ' Tiếp tục tham quan lần lượt các điểm danh nổi tiếng : Chùa Cầu - Biểu tượng của Hội An và cũng chính là minh chứng cho sự giao thoa văn hóa, Chùa Cầu còn được biết đến với tên là Chùa Cầu Nhật Bản do được các nghệ nhân Nhật thiết kế từ thế kỉ thứ 17. Tương truyền Chùa Cầu có ý nghĩa như thanh gươm trấn yểm quái thú Namazu, quái thú cựa mình là tạo ra động đất và lũ lụt. Trong chùa có tượng thờ Bắc Đế Trấn Võ, vị thần bảo vệ vùng đất và mang lại bình an cho con người. Chính vì vậy, các du khách khi tới Hội An đều ghé thăm Chùa Cầu, một phần để chiêm ngưỡng di sản kiến trúc độc đáo này, đồng thời để cầu mong sự yên bình cho mình và những người thân yêu.\r\n                Thưởng thức dân ca Bài Chòi - được UNESCO công nhận là di sản văn hoá phi vật thể. \r\n\r\n               ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tours`
--

CREATE TABLE `tours` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'tour_',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` bigint(20) NOT NULL,
  `departure_date` date NOT NULL,
  `departure_place` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `passenger_num` int(11) NOT NULL,
  `departure_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departure_hour` int(11) NOT NULL,
  `departure_minute` int(11) NOT NULL,
  `day_number` int(11) NOT NULL,
  `purchases_number` int(11) NOT NULL DEFAULT 0,
  `tourGuide_id` int(11) DEFAULT NULL,
  `transport_id` int(10) UNSIGNED DEFAULT NULL,
  `city_province_id` int(10) UNSIGNED NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tours`
--

INSERT INTO `tours` (`id`, `product_code`, `name`, `avatar`, `price`, `departure_date`, `departure_place`, `passenger_num`, `departure_time`, `departure_hour`, `departure_minute`, `day_number`, `purchases_number`, `tourGuide_id`, `transport_id`, `city_province_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 'tour_1', 'ĐÀ LẠT – 4N3Đ – THÀNH PHỐ SƯƠNG MÙ', 'https://res.cloudinary.com/dloeyqk30/image/upload/v1632636749/FnGO/TourImage/main/hinh-anh-ho-xuan-huong-da-lat-ve-dem-hinh1_utcmrz.jpg', 4500358, '2000-04-20', 'TPHCM', 10, '05:30', 5, 30, 4, 2, NULL, 1, 3, 'Tham quan 1 vong ĐÀ LẠT', '2022-06-24 01:57:58', '2022-06-24 01:57:58'),
(2, 'tour_2', 'TOUR NHA TRANG 3N3Đ- LỄ 30/04', 'https://res.cloudinary.com/dloeyqk30/image/upload/v1636948122/FnGO/TourImage/main/nhatrang3_vnr3qr.jpg', 4500358, '2000-04-20', 'TPHCM', 10, '05:30', 5, 30, 4, 3, NULL, 1, 8, 'Tham quan Nha Trang - Khánh Hoà', '2022-06-24 01:57:58', '2022-06-24 01:57:58'),
(3, 'tour_3', 'DU LỊCH TÂY BẮC - 5N-4Đ', 'https://res.cloudinary.com/dloeyqk30/image/upload/v1636948123/FnGO/TourImage/main/taybac_kgqtk1.jpg', 7608413, '2000-04-20', 'TPHCM', 10, '05:30', 5, 30, 4, 1, NULL, 1, 9, 'KHÁM PHÁ TOÀN BỘ TÂY BẮC', '2022-06-24 01:57:58', '2022-06-24 01:57:58'),
(4, 'tour_4', 'Quảng Ninh - Hạ Long - 3N2Đ', 'https://res.cloudinary.com/dloeyqk30/image/upload/v1636949900/FnGO/TourImage/main/vhl_u0ej4h.jpg', 6640338, '2000-04-20', 'Hà Nội', 10, '05:30', 5, 30, 4, 4, NULL, 1, 11, 'Tham quan Vịnh đẹp nhất Vịnh Bắc Bộ', '2022-06-24 01:57:58', '2022-06-24 01:57:58'),
(5, 'tour_5', 'PHÚ YÊN – 3N2Đ – NƠI ĐẤT PHÚ TRỜI YÊN', 'https://res.cloudinary.com/dloeyqk30/image/upload/v1636950439/FnGO/TourImage/main/phuyen_rypn8z.jpg', 5310368, '2000-04-20', 'TPHCM', 10, '05:30', 5, 30, 4, 4, NULL, 1, 13, 'Tham quan 1 vong ĐÀ LẠT', '2022-06-24 01:57:58', '2022-06-24 01:57:58'),
(6, 'tour_6', 'Tour du khảo về nguồn Miền Tây - 3N2Đ', 'https://res.cloudinary.com/dloeyqk30/image/upload/v1636951384/FnGO/TourImage/main/mientay_ts682c.jpg', 3684212, '2000-04-20', 'TPHCM', 10, '05:30', 5, 30, 4, 4, NULL, 3, 5, 'Tham quan 1 vòng Miền Tây', '2022-06-24 01:57:58', '2022-06-24 01:57:58'),
(7, 'tour_7', 'Hà Nội - Huế - 4N3Đ', 'https://res.cloudinary.com/dloeyqk30/image/upload/v1636951914/FnGO/TourImage/main/hue_oqln03.jpg', 7246650, '2000-04-20', 'Hà Nội', 10, '05:30', 5, 30, 4, 4, NULL, 2, 14, 'Tham quan thành phố Huế thơ mộng', '2022-06-24 01:57:58', '2022-06-24 01:57:58'),
(8, 'tour_8', ' TP.HCM - Hội An - 2N2Đ', 'https://res.cloudinary.com/dloeyqk30/image/upload/v1636952315/FnGO/TourImage/main/hoian_jwwwzs.jpg', 3761721, '2000-04-20', 'TP.HCM', 10, '07:30', 7, 30, 4, 4, NULL, 1, 15, 'Trải nghiệm du lịch Hội An', '2022-06-24 01:57:58', '2022-06-24 01:57:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transports`
--

CREATE TABLE `transports` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `transports`
--

INSERT INTO `transports` (`id`, `name`) VALUES
(1, 'Coach'),
(2, 'Train'),
(3, 'Plane');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT 2,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'https://res.cloudinary.com/dloeyqk30/image/upload/v1632037462/FnGO/UserAvatar/default_xu2gaz.png',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `phone`, `gender`, `avatar`, `password`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'admin@gmail.com', '0903828499', 'male', 'https://res.cloudinary.com/dloeyqk30/image/upload/v1632037462/FnGO/UserAvatar/default_xu2gaz.png', '$2y$10$moUnOmVuA3KH.usHG32Bl.yg1slXbL.QQuiSqO5d8sAPKt7EslxOy', '2022-06-23 09:33:12', NULL, '2022-06-24 01:57:57', '2022-06-24 01:57:57'),
(2, 2, 'user', 'user@gmail.com', '0905200419', 'female', 'https://res.cloudinary.com/dloeyqk30/image/upload/v1632037462/FnGO/UserAvatar/default_xu2gaz.png', '$2y$10$1bVorHwEMk7B7oosGIg0UeLX.n03qFp.UqdsDIDrjeTQIwO3.i.7O', NULL, NULL, '2022-06-24 01:57:57', '2022-06-24 01:57:57'),
(3, 2, 'dialga', 'spxdialga@gmail.com', '0907310419', 'male', 'https://res.cloudinary.com/dloeyqk30/image/upload/v1632037462/FnGO/UserAvatar/default_xu2gaz.png', '$2y$10$ulCBu3.Y5Ur7PdlazBXkXuuCEm0a/cXaswQFTfcdjCNZDhuM7xfRm', NULL, NULL, '2022-06-24 01:57:58', '2022-06-24 01:57:58'),
(4, 2, 'test', 'test@gmail.com', '0907310418', 'male', 'https://res.cloudinary.com/dloeyqk30/image/upload/v1632037462/FnGO/UserAvatar/default_xu2gaz.png', '$2y$10$eQnDvSKiewpsPN8Ek0pBxOm75LY93ll6.VagYMNu6dHFnBkxrUlPi', NULL, NULL, '2022-06-24 01:57:58', '2022-06-24 01:57:58'),
(5, 3, 'employee', 'employee@gmail.com', '0907310419', 'female', 'https://res.cloudinary.com/dloeyqk30/image/upload/v1632037462/FnGO/UserAvatar/default_xu2gaz.png', '$2y$10$tnLysCvzu8FhlDT1ar3//.y2Gd660TBDI/nZGPqXwXs60JfH/P.M6', NULL, NULL, '2022-06-24 01:57:58', '2022-06-24 01:57:58');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_user_id_foreign` (`user_id`),
  ADD KEY `articles_category_id_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `article_comments`
--
ALTER TABLE `article_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_comments_article_id_foreign` (`article_id`),
  ADD KEY `article_comments_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `city_provinces`
--
ALTER TABLE `city_provinces`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_product_id_foreign` (`product_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hotels_city_province_id_foreign` (`city_province_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_product_code_unique` (`product_code`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `receipts`
--
ALTER TABLE `receipts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `receipts_id_unique` (`id`),
  ADD KEY `receipts_accept_by_foreign` (`accept_by`),
  ADD KEY `receipts_cancel_by_foreign` (`cancel_by`),
  ADD KEY `receipts_user_id_foreign` (`user_id`),
  ADD KEY `receipts_status_id_foreign` (`status_id`),
  ADD KEY `receipts_payment_id_foreign` (`payment_id`);

--
-- Chỉ mục cho bảng `receipt_details`
--
ALTER TABLE `receipt_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `receipt_details_receipt_id_foreign` (`receipt_id`),
  ADD KEY `receipt_details_product_code_foreign` (`product_code`);

--
-- Chỉ mục cho bảng `receipt_statuses`
--
ALTER TABLE `receipt_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD UNIQUE KEY `roles_id_unique` (`id`);

--
-- Chỉ mục cho bảng `room_types`
--
ALTER TABLE `room_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `room_types_product_code_unique` (`product_code`),
  ADD KEY `room_types_hotel_id_foreign` (`hotel_id`);

--
-- Chỉ mục cho bảng `sub_tours`
--
ALTER TABLE `sub_tours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_tours_tour_id_foreign` (`tour_id`);

--
-- Chỉ mục cho bảng `tours`
--
ALTER TABLE `tours`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tours_product_code_unique` (`product_code`),
  ADD KEY `tours_city_province_id_foreign` (`city_province_id`),
  ADD KEY `tours_transport_id_foreign` (`transport_id`);

--
-- Chỉ mục cho bảng `transports`
--
ALTER TABLE `transports`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `article_comments`
--
ALTER TABLE `article_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `city_provinces`
--
ALTER TABLE `city_provinces`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `receipt_details`
--
ALTER TABLE `receipt_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `receipt_statuses`
--
ALTER TABLE `receipt_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `room_types`
--
ALTER TABLE `room_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `sub_tours`
--
ALTER TABLE `sub_tours`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `tours`
--
ALTER TABLE `tours`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `transports`
--
ALTER TABLE `transports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `articles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `article_comments`
--
ALTER TABLE `article_comments`
  ADD CONSTRAINT `article_comments_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `article_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `hotels`
--
ALTER TABLE `hotels`
  ADD CONSTRAINT `hotels_city_province_id_foreign` FOREIGN KEY (`city_province_id`) REFERENCES `city_provinces` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Các ràng buộc cho bảng `receipts`
--
ALTER TABLE `receipts`
  ADD CONSTRAINT `receipts_accept_by_foreign` FOREIGN KEY (`accept_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `receipts_cancel_by_foreign` FOREIGN KEY (`cancel_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `receipts_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `receipts_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `receipt_statuses` (`id`),
  ADD CONSTRAINT `receipts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `receipt_details`
--
ALTER TABLE `receipt_details`
  ADD CONSTRAINT `receipt_details_product_code_foreign` FOREIGN KEY (`product_code`) REFERENCES `products` (`product_code`),
  ADD CONSTRAINT `receipt_details_receipt_id_foreign` FOREIGN KEY (`receipt_id`) REFERENCES `receipts` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `room_types`
--
ALTER TABLE `room_types`
  ADD CONSTRAINT `room_types_hotel_id_foreign` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `sub_tours`
--
ALTER TABLE `sub_tours`
  ADD CONSTRAINT `sub_tours_tour_id_foreign` FOREIGN KEY (`tour_id`) REFERENCES `tours` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `tours`
--
ALTER TABLE `tours`
  ADD CONSTRAINT `tours_city_province_id_foreign` FOREIGN KEY (`city_province_id`) REFERENCES `city_provinces` (`id`),
  ADD CONSTRAINT `tours_transport_id_foreign` FOREIGN KEY (`transport_id`) REFERENCES `transports` (`id`);

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
