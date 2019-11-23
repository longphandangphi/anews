-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 23, 2019 lúc 09:45 AM
-- Phiên bản máy phục vụ: 10.4.6-MariaDB
-- Phiên bản PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `anews`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(255) NOT NULL,
  `name` varchar(120) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Thời sự'),
(2, 'Kinh tế vĩ mô'),
(3, 'Kinh doanh'),
(4, 'Công nghệ'),
(5, 'Sống'),
(25, 'Star');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(255) NOT NULL,
  `name` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `detail` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `cat_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `name`, `description`, `picture`, `detail`, `created_at`, `cat_id`) VALUES
(1, 'Chuyện xảy ra khi có hơn 2 triệu người đòi đột nhập \"Vùng 51\" tuyệt mật của Mỹ: \"Mọi thứ đang trở nên điên cuồng\"', 'Có đến 2 triệu người đã đồng ý với sự kiện \"Đột nhập vào Vùng 51 tuyệt mật\". Chẳng rõ các thanh niên thích đột nhập có đến thật không, chỉ biết rằng người dân địa phương đã chuẩn bị sẵn sàng.\r\n', 'hinh1.jpg', '<p>Đã từ lâu, nhiều người đã lan truyền thuyết âm mưu liên quan đến Vùng 51, rằng đó là nơi chính phủ Mỹ che giấu những bí mật về người ngoài hành tinh. Họ nhắc về khu vực này với một vẻ bí hiểm, kèm theo những câu chuyện đầy tính li kỳ.&nbsp;Nhưng với những người dân địa phương sinh sống tại những thị trấn nhỏ xung quanh, Vùng 51 chỉ là một phần nhỏ trong cuộc sống thường ngày của họ. Chẳng có gì đặc biệt, chỉ là một căn cứ quân sự, không hơn không kém.</p>', '2019-09-10 17:00:00', 1),
(2, 'Gần 16.000 người Nhật Bản bỗng dưng mất tích mỗi năm và chỉ một số ít quay về, rốt cuộc họ đã đi đâu?\r\n', 'Có người thường đến những cửa hàng tiện lợi cách nhà tầm vài trăm mét để mua nước uống hoặc một thứ gì đó. Vì chỉ nghĩ mất một vài phút nên người thân đã để họ ra ngoài. Nhưng họ đã không thể quay về...\r\n', 'hinh2.jpg', '<p>Để những người suy giảm nhận thức có thể trở về nhà, cơ quan chức năng tỉnh Kanagawa đã giới thiệu một hệ thống mới. Họ cung cấp cho các bệnh nhân suy giảm nhận thức ở địa phương những bộ quần áo với các mã vạch. Nếu sử dụng các phần mềm chuyên dụng quét mã vạch có thể đọc được các thông tin cá nhân như giới tính, đặc điểm thể chất, lịch sử y tế trong quá khứ,... Và người xung quanh có thể giúp họ nhanh chóng liên lạc với gia đình.</p>', '2019-09-10 17:00:00', 1),
(3, 'Thủ tướng: Nghiên cứu không áp thuế đối với ô tô điện', 'Thủ tướng giao Bộ Tài chính đề xuất sửa đổi, hoànthiện các chính sách thuế, phí hợp lý nhằm giúp các doanh nghiệp sản xuất, lắpráp ô tô trong nước nâng cao tỉ lệ giá trị nội địa...\r\n', 'hinh3.jpg', '<p>Theo đó, Thủ tướng giao cho các bộ, ngành phát huy lợi thế người đi sau, tranh thủ nắm bắt những thành công của thế giới, quyết tâm đưa ngành cơ khí Việt Nam phát triển và tham gia chuỗi giá trị toàn cầu gắn với khát vọng phát triển kinh tế Việt Nam.</p>', NULL, 2),
(4, 'Khung giá đất hiện tại chưa phản ánh đúng giá trị thị trường', 'Bảo tàng thuốc lá và muối hay bảo tàng Takoyaki chỉ là hai trong', 'hinh4.jpg', 'Trước đó, Tổng công ty này đã được Bộ Công an thông báo về việc gia tăng các hoạt động cướp biển ở khu vực Đông Nam Á thời gian qua. Cơ quan này lưu ý đã có sự gia tăng cả về số lượng lẫn tính chất các vụ việc liên quan đếncướp biển trong khu vực ASEAN. Cụ thể, trong 6 tháng đầu năm trong khu vực đã có 8 vụ cướp biển nhắm vào các tàu chở dầu, tăng 3 vụ so với cùng kỳ 2013.Trước đó, Tổng công ty này đã được Bộ Công an thông báo về việc gia tăng các hoạt động cướp biển ở khu vực Đông Nam Á thời gian qua. Cơ quan này lưu ý đã có sự gia tăng cả về số lượng lẫn tính chất các vụ việc liên quan đếncướp biển trong khu vực ASEAN. Cụ thể, trong 6 tháng đầu năm trong khu vực đã có 8 vụ cướp biển nhắm vào các tàu chở dầu, tăng 3 vụ so với cùng kỳ 2013.Trước đó, Tổng công ty này đã được Bộ Công an thông báo về việc gia tăng các hoạt động cướp biển ở khu vực Đông Nam Á thời gian qua. Cơ quan này lưu ý đã có sự gia tăng cả về số lượng lẫn tính chất các vụ việc liên quan đếncướp biển trong khu vực ASEAN. Cụ thể, trong 6 tháng đầu năm trong khu vực đã có 8 vụ cướp biển nhắm vào các tàu chở dầu, tăng 3 vụ so với cùng kỳ 2013.<p>Về mức tăng, thực tế hiện nay, giá đất giao dịch trên thị trường đã khác biệt rất lớn so với giá đất quy định trong bảng giá đất do UBND các tỉnh, thành phố ban hành. Khác biệt này đặc biệt thể hiện rõ ở hai thành phố lớn là Hà Nội và TP.HCM. Để thu hẹp khác biệt này, mỗi năm UBND các thành phố đều ban hành hệ số điều chỉnh giá đất để tính toán các nghĩa vụ tài chính liên quan đến đất đai. Đơn cử TP.HCM vừa ban hành hệ số điều chỉnh giá đất mới nhất, trong đó hệ số điều chỉnh khu vực 1 lên đến 2,5 lần. Điều này có thể thấy khác biệt giữa quy định và thực tế lớn đến như thế nào. </p>', NULL, 3),
(5, 'Phụ nữ Trung Quốc đua nhau sang Mỹ sinh con', 'Đầu tháng 8 vừa qua, truyền thông người Hoa ở Mỹ đưa tin, cảnh sát Los Angeles đã đột kích một trung tâm môi giới trong một tòa chung cư sang trọng tại thị xã Arcadia. Tại đây, họ phát hiện thấy 4 bà bầu từ Trung Quốc sang đây đợi ngày sinh.', 'hinh5.jpg', '<p>Kể từ sau khi xảy ra vụ án trung tâm môi giới sinh nở tại Nam Cali năm 2015, hiện tượng phụ nữ Trung Quốc sang Mỹ để sinh con đã trở thành vấn đề được quan tâm rộng rãi. Hôm 31/1/2019, cơ quan công tố liên bang đã bắt và khởi tố 3 người hoạt động tại trung tâm môi giới sinh nở về ba tội: đồng mưu (Conspiracy), lừa đảo visa (Visa fraud) và rửa tiền (Money laundering). Ngoài ra còn có 16 người khác có liên quan cũng bị khởi tố, nhưng những người này hiện đang ở Trung Quốc nên chưa thể quy án.</p>', '2019-09-10 17:00:00', 1),
(8, 'Mục tiêu tăng trưởng GDP năm 2020 của Việt Nam là khoảng 6,8%\r\n', 'Đáng buồn thay là Facebook không cho bạn select all toàn bộ bạn bè mà bạn phải chọn từng người một. Đứng ở góc cạnh nhà cung cấp dịch vụ, điều này là hoàn toàn hợp lý. Facebook không muốn bạn trở thành spammer.Với 426/430 đại biểu Quốc hội bỏ phiếu tán thành, Quốc hội đã chính thức thông qua Nghị quyết về Kế hoạch phát triển kinh tế - xã hội năm 2020, trong đó mục tiêu tăng trưởng GDP là khoảng 6,8%.\r\n', '', '<p>Sáng 11/11, Quốc hội bỏ phiếu thông qua Nghị quyết về Kế hoạch phát triển kinh tế - xã hội năm 2020 với 426 phiếu tán thành, 2 phiếu không tán thành và 2 đại biểu không biểu quyết. Với kết quả này, Nghị quyết về Kế hoạch phát triển kinh tế - xã hội năm 2020 đã chính thức được thông qua.</p>', NULL, 2),
(10, 'Sợ tiếng ồn, dị ứng ánh sáng, Việt Nam bỏ rơi nguồn lợi tỷ USD', 'Các hoạt động kinh tế đêm của Việt Nam hiện nay rất đơn điệu và quy mô nhỏ, tập trung vào ẩm thực và chợ đêm, hoặc phố đi bộ với quy mô nhỏ.\r\n', '', '<p>Tại báo cáo về kinh tế ban đêm gửi Thủ tướng Chính phủ, Bộ Công Thương nhận xét: Phát triển kinh tế đêm đã hình thành tại Việt Nam, nhưng mới chỉ xuất hiện manh mún tại một số đô thị và các trung tâm du lịch lớn như Hà Nội, thành phố Hồ Chí Minh, Đà Nẵng, Hội An, Sapa, Huế; chưa định hình thành một khu vực kinh tế có đóng góp quan trọng vào tăng trưởng GDP, chưa có báo cáo, thống kê cụ thể về đóng góp của kinh tế đêm vào phát triển kinh tế xã hội.</p>', NULL, 2),
(12, 'Trung tâm mổ từ thiện làm chết 3 trẻ chưa được cấp phép', 'Trung tâm OSCA mổ từ thiện cho các trẻ hở hàm ếch làm 3 cháu tử vong chưa được cấp phép thực hiện phẫu thuật, trong đoàn bác sĩ từ thiện có người không chứng chỉ hành nghề.AirPods đang giúp Apple thống trị thị trường tai nghe true wireless.', 'ong-Khue.jpg', '<p>Theo một báo cáo của Bloomberg, các lô hàng AirPods trên toàn thế giới được dự kiến tăng gấp đôi lên 60 triệu chiếc trong năm 2019, so với năm 2018. Báo cáo trích dẫn một nguồn tin thân cận với Apple, và cũng là báo cáo hiếm hoi về doanh số bán hàng thực sự của những chiếc tai nghe AirPods.</p>', NULL, 4),
(13, 'Vinsmart chính thức đưa tổ hợp sản xuất thiết bị điện tử thông minh vào hoạt động', 'Tổ hợp nhà máy sản xuất thiết bị điện tử VinSmart (thuộc Tập đoàn Vingroup) có diện tích gần 14,8 ha, tổng công suất dự kiến 125 triệu thiết bị/năm. Khi đi vào hoạt động, tổ hợp sản xuất thiết bị điện tử thông minh VinSmart sẽ có quy mô hiện đại hàng đầu khu vực với hệ thống dây chuyền được nhập khẩu từ Mỹ, Đức, Nhật Bản, Hàn Quốc. Các sản phẩm cũng được kiểm thử 100% bằng máy móc…\r\n', 'huy-518304.jpg', '<p>Ngày 23/11, Công ty Nghiên cứu và Sản xuất VinSmart (thuộc Tập đoàn <a class=\"seo-suggest-link\" href=\"http://cafebiz.vn/vingroup.html\" target=\"_blank\" title=\"vingroup\">Vingroup</a>) khánh thành giai đoạn 1 của Tổ hợp Nhà máy sản xuất thiết bị điện tử tại Khu công nghệ cao Hòa Lạc (Thạch Thất, Hà Nội), với hệ sinh thái sản phẩm rộng lớn gồm Điện thoại thông minh, Thiết bị điện tử thông minh... Sau khi đi vào vận hành, tổ hợp sẽ trở thành trung tâm sản xuất các thiết bị công nghệ hiện đại hàng đầu khu vực, góp phần ghi dấu ấn của VinSmart trên bản đồ công nghệ quốc tế.<br></p>', NULL, 3),
(14, 'Viettel và Ban quản lý khu công nghệ cao Hòa Lạc hợp tác chiến lược đẩy mạnh chuyển đổi số tại Việt Nam', 'rường dành hơn 200 loại học bổng (có thể lên đến 100% học phí) cho sinh viên có trình độ học vấn nổi bật, nỗ lực học tập và xứng đáng với phần thưởng giá trị này. ', 'huy-705072.png', '<p>Theo thoả thuận hợp tác chiến lược, quý 1/2020, Viettel sẽ khởi công xây dựng dự án Tổ hợp sản xuất công nghiệp CNC trên diện tích 9,1 ha tại Khu CNC Hòa Lạc. Đây sẽ trở thành trung tâm thử nghiệm, sản xuất thiết bị công nghệ cao của Viettel. Tiếp theo đó, Viettel cũng sẽ xây dựng Trung tâm Nghiên cứu và Phát triển Viettel trên diện tích 13,2 ha. Đây được coi là khu nghiên cứu R&amp;D quy mô lớn, là vườn ươm cho những dự án trọng điểm của Viettel như các sản phẩm công nghiệp quốc phòng, thiết bị điện tử viễn thông, hạ tầng mạng 5G, IoT...</p>', NULL, 4),
(15, '\"Quan tài thép\" vẫn dập dìu đến châu Âu', 'Cảnh sát Anh đã bắt giữ thêm 1 nghi phạm 23 tuổi, đến từ Bắc Ireland, với cáo buộc liên quan đến vụ 39 người Việt thiệt mạng trong một container đông lạnh được phát hiện tại hạt Essex – Anh hồi tháng 10.', 'baoso6.jph', '<p>Theo báo <i>The Sun</i>, nghi phạm trên bị bắt giữ tại thị trấn Beaconsfield, quận Nam Buckinghamshire – Anh, với cáo buộc âm mưu buôn người và hỗ trợ người di cư trái phép. Nghi phạm, danh tính không được tiết lộ, bị bắt giữ vào rạng sáng 22-11 và y hiện vẫn đang bị giam giữ để thẩm vấn.</p>', '2019-09-10 17:00:00', 1),
(22, 'Định nghĩa mới của từ \"hoàn hảo\": Là khi thủ môn Đặng Văn Lâm mặc áo sơ mi trắng\r\n', 'May mà Đặng Văn Lâm hiếm khi mặc áo sơ mi trắng chứ không thì không biết chị em phải mất bao nhiêu \"máu mũi\" nữa đây.\r\n', 'aaaaaaa.jpg', '<p>Nào là Lâm luôn giữ vững phong độ thi đấu, nào là Lâm cản phá bóng xuất sắc, nào là Lâm hát hay,... Và với hội mê trai đẹp thì Lâm còn đặc biệt điển trai. Chàng thủ môn 26 tuổi sở hữu tất tần tật đặc điểm mà chị em thường ao ước ở người đàn ông của đời mình: chiều cao 1m88, gương mặt nam tính, body cực phẩm, bờ vai Thái Bình Dương.</p>', '2019-11-09 03:35:50', 25),
(23, 'Mường tượng khung cảnh \"kinh hoàng\" khi dàn sao khủng đổ bộ Hà Nội dự AAA 2019: Yoona, TWICE hay Suju khủng hơn?\r\n', 'Họ là những ngôi sao Hàn Quốc hứa hẹn gây bão tại sân bay Nội Bài nhân dịp giải thưởng Asia Artist Awards 2019 (AAA 2019) tổ chức tại SVĐ Mỹ Đình nhờ sức hút khủng khiếp đối với công chúng.\r\n', 'aaaaaaa.jpg', '<p>&nbsp;</p>\r\n\r\n<p>Mường tượng khung cảnh \"kinh hoàng\" khi dàn sao khủng đổ bộ Hà Nội dự AAA 2019: Yoona, TWICE hay Suju khủng hơn?\r\n</p>\r\n', '2019-11-09 03:48:56', 25),
(24, 'Hãy tin rằng người Nhật, Hàn, Trung... đã có thời gian của mình, bây giờ là thời gian của chúng ta!', 'Nhờ chớp được thời cơ, Nhật Bản, Hàn Quốc hay Trung Quốc đã leo lên \"đỉnh\" thế giới trong 15 – 20 năm, ông Hoàng Nam Tiến, Chủ tịch FPT Software nói tại một hội thảo gần đây. \"Chúng ta hoàn toàn có cơ hội đấy\", ông nhấn mạnh.\r\n', 'tinhyeu.jpg', '<p>\"Nhật Bản, Hàn Quốc, Trung Quốc đã chớp được thời cơ. Trong 15 – 20 năm họ vươn lên đỉnh của thế giới. Chúng ta hoàn toàn có cơ hội đấy. Mức so sánh của người Nhật với người Mỹ hay Anh vào những năm 1960 thực ra không khác gì Việt Nam so sánh với các nước khác. Nếu thực sự chúng ta nắm bắt được cơ hội này, trong vòng 15 năm tới khi cả thế giới đang phát triển với tốc độ ì ạch 1 – 3%, chúng ta bứt phá phá được lên 7 – 10% thì mọi chuyện sẽ thay đổi\", ông nói.</p>', '2019-11-09 22:07:38', 1),
(25, 'Bùng nổ M&A nghìn tỷ trong ngành logistics Việt', 'Loạt thương vụ M&A nghìn tỷ được thực hiện trong năm 2019 cho thấy tiềm năng của ngành kinh tế logistics...', 'tinhyeu.jpg', '<p>Theo Hiệp hội Doanh dịch vụ Logistics Việt Nam (VLA), tốc độ phát triển của ngành logistics ở Việt Nam những năm gần đây đạt khoảng 14 -16%, với quy mô khoảng 40 - 42 tỷ USD/năm. Tham gia thị trường logistics gồm khoảng 3.000 doanh nghiệp trong nước và khoảng 25 tập đoàn giao nhận hàng đầu thế giới kinh doanh dưới nhiều hình thức. Hiện nay, 30 doanh nghiệp cung cấp dịch vụ logistics xuyên quốc gia đang hoạt động tại Việt Nam với các tên tuổi lớn như: DHL, FedEx, Maersk Logistics, APL Logistics, CJ Logistics, KMTC Logistics…</p>', '2019-11-09 22:10:38', 1),
(26, 'Hơn 2 triệu thông tin tài khoản của ngân hàng MSB bị lộ trên diễn đàn hacker?', 'Một tài khoản trên diễn đàn Raidf... vừa đăng tải thông tin chi tiết của 2 triệu khách hàng tại ngân hàng MSB. Tài khoản này cho biết có dữ liệu đầy đủ của ngân hàng, và thậm chí còn có dữ liệu của nhiều ngân hàng Việt Nam khác.', 'tinhyeu.jpg', '<p>Các thông tin bao gồm: <b>Tên khách hàng, số chứng minh thư, ngày sinh, giới tính, nghề nghiệp, số điện thoại, địa chỉ và email</b>. Các thông tin này hiện đang cho phép tải hoàn toàn miễn phí. Dữ liệu tải về bao gồm 2 file định dạng .txt với tổng dung lượng lên tới hơn 200mb.</p>\r\n<p>N?i dung&nbsp;<br />\r\nc&oacute; ch&agrave;ng trai vi?t l&ecirc;n c&acirc;y</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2019-11-09 22:14:39', 1),
(27, 'Chuyện đời nam diễn viên chỉ còn 7 USD trong ví đến tài tử có thù lao cao nhất thế giới', '\"Theo tôi, có ba bước để thành công. Đó là bắt đầu, làm việc nhiều hơn mọi người và tin vào chính mình\", diễn viên Johnson nói với tờ Fortune.', 'tinhyeu.jpg', '<p>Nói đền nghề diễn viên, chắc hẳn mỗi người đều có thần tượng cho riêng mình. Tuy nhiên nói đến thu nhập của ngành thì những con số không bao giờ biết nói dối. Năm 2018, tạo chí Forbes công bố nam diễn viên Dwayne Johnson với biệt danh \"The Rock\" có thu nhập 124 triệu USD, cao gấp đôi con số 65 triệu USD của năm trước đó và cũng là số tiền cao nhất lịch sử thống kê của Forbes 20 năm qua.&nbsp;</p>', '2019-11-09 22:21:40', 1),
(28, 'Theo tâm lý học, một người làm nên đại sự thường có 3 đặc trưng nổi bật: Chuẩn không cần chỉnh!\r\n2', 'Chỉ có những người biết nắm bắt chính xác những tiêu chuẩn của cuộc sống thì cuộc sống của họ mới thuận lợi thành công và hạnh phúc hơn.\r\n3', 'picture.jpg', '<p>Dù ở nơi làm việc hay trong cuộc sống, chúng ta sẽ gặp những người có hoài bão lớn lao. Trong cuộc sống ngày thường chúng ta sẽ thấy họ chẳng có gì nổi trội, chẳng có chút gì nổi bật giữa đám đông. Nhưng trên thực tế họ có thể đã từng đạt được rất nhiều thành công, những thành tựu mà những người này đạt được thì những người khác khó lòng có thể đạt được. &nbsp;<br></p>', '0000-00-00 00:00:00', 5),
(29, 'Biết chiếc thùng bị nứt nhưng vẫn dùng suốt 2 năm, phu gánh nước nói ra lý do giúp bao người tỉnh ngộ', 'Vì bị nứt nên số nước chiếc thùng mang về được chỉ bằng một nửa so với chiếc thùng bình thường. Vậy nhưng nó vẫn được người gánh nước tình nguyện sử dụng mỗi ngày.\r\n', 'picture.jpg', '<p>Người gánh nước cảm thây buồn thay cho chiếc thùng, anh nói: \"Trên đường chúng ta trở về nhà ông chủ, mày hãy chú ý đến những đóa hoa bên đường nhé.\"</p>', '0000-00-00 00:00:00', 5),
(30, 'Ông Đặng Lê Nguyên Vũ tiết lộ có trong tay công thức chữa lành tất cả mọi bệnh tật trong 7 ngày', 'Theo đó, chủ tịch tập đoàn Trung Nguyên khẳng định có công thức chữa mọi bệnh tật bằng nguồn năng lượng gốc, chỉ trừ một số bệnh như gãy tay, gãy chân,...', 'tinhyeu.jpg', '<p>C&acirc;u chuyện ly h&ocirc;n kh&ocirc;ng hồi kết giữa &ocirc;ng Đặng L&ecirc; Nguy&ecirc;n Vũ v&agrave; vợ &ocirc;ng, b&agrave; L&ecirc; Ho&agrave;ng Diệp Thảo đ&atilde; từng l&agrave; chủ đề n&oacute;ng của truyền th&ocirc;ng n&oacute;i ri&ecirc;ng v&agrave; những người quan t&acirc;m đến thương hiệu c&agrave; ph&ecirc; top đầu thị trường Việt Nam n&oacute;i chung.</p>\r\n\r\n<p>B&ecirc;n cạnh những chi tiết về qu&aacute; tr&igrave;nh h&igrave;nh th&agrave;nh thương hiệu hay khối t&agrave;i sản chung đồ sộ của hai người, một vấn đề kh&aacute;c cũng được dư luận ch&uacute; &yacute; ch&iacute;nh l&agrave; sự m&acirc;u thuẫn trong con người &ocirc;ng Đặng L&ecirc; Nguy&ecirc;n Vũ, khi một mặt, &ocirc;ng vẫn l&agrave; doanh nh&acirc;n am tường chuyện thương trường, mặt kh&aacute;c lại bị nh&igrave;n nhận l&agrave; c&oacute; vấn đề về sức khỏe, c&oacute; những ph&aacute;t ng&ocirc;n &quot;kh&ocirc;ng như người b&igrave;nh thường&quot; bởi ch&iacute;nh b&agrave; L&ecirc; Ho&agrave;ng Diệp Thảo.</p>\r\n\r\n<p>Chưa r&otilde; thực hư th&ocirc;ng tin ph&iacute;a b&agrave; Thảo đưa ra ng&agrave;y đ&oacute; thế n&agrave;o, nhưng trong một b&agrave;i b&aacute;o gần đ&acirc;y tr&ecirc;n Thanh Ni&ecirc;n, chủ tịch tập đo&agrave;n Trung Nguy&ecirc;n cho biết &ocirc;ng c&oacute; c&ocirc;ng thức ri&ecirc;ng chữa được mọi bệnh tật m&agrave; nền y học hiện đại kh&ocirc;ng l&agrave;m được.</p>\r\n\r\n<p>&Ocirc;ng n&oacute;i:<em>&nbsp;&quot;Qua c&oacute; c&ocirc;ng thức chữa l&agrave;nh c&aacute;i th&acirc;n m&agrave; kh&ocirc;ng c&oacute; nền y học hiện đại n&agrave;o l&agrave;m được. Sau n&agrave;y chỉ c&oacute; g&atilde;y tay, g&atilde;y ch&acirc;n... c&ograve;n mọi bệnh tật đều c&oacute; thể chữa bằng nguồn năng lượng gốc hết... mầm bệnh mầm đồ chỉ cần 7 ng&agrave;y l&ecirc;n đ&acirc;y l&agrave; hết. Đo đi, huyết &aacute;p, đường huyết... tất cả c&aacute;c chỉ số trước khi l&ecirc;n n&uacute;i nếu c&oacute;, xuống n&uacute;i l&agrave; hết tất. Sạch trơn hết. Cung cấp lối sống minh triết, tối giản nhất nhưng tối ưu nhất. Qua dạy cho họ c&aacute;i c&aacute;ch m&agrave; họ lu&ocirc;n lu&ocirc;n c&oacute; c&aacute;i họ muốn&quot;.</em></p>\r\n', '2019-11-22 19:52:20', 25);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
