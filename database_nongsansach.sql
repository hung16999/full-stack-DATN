create database store;

CREATE TABLE `order_detail` (
  `id_order` varchar(50) NOT NULL,
  `id_product` varchar(50) NOT NULL,
  `quantity` int(11) DEFAULT NULL
);

INSERT INTO `order_detail` (`id_order`, `id_product`, `quantity`) VALUES
('order1', 'p8', 3),
('order2', 'p2', 4),
('order2', 'p5', 5),
('order3', 'p6', 5),
('order4', 'p6', 3),
('order4', 'p5', 3),
('order5', 'p4', 1),
('order6', 'p1', 1),
('order7', 'p1', 1),
('order7', 'p2', 2),
('order8', 'p7', 2),
('order8', 'p5', 3),
('order9', 'p7', 4),
('order10', 'p9', 4),
('order1', 'p7', 2),
('dc786d88-3f20-4b57-9f08-a461fd42079b', 'p1', 3),
('dc786d88-3f20-4b57-9f08-a461fd42079b', 'p11', 1),
('bfbfa8b8-67e8-4e2b-b1ac-6995b93f6c50', 'p8', 1),
('bfbfa8b8-67e8-4e2b-b1ac-6995b93f6c50', 'p1', 1),
('14f9ebd8-b15e-4347-90d7-986041f4ec83', 'p11', 3),
('14f9ebd8-b15e-4347-90d7-986041f4ec83', 'p1', 1),
('14f9ebd8-b15e-4347-90d7-986041f4ec83', 'p3', 2),
('14f9ebd8-b15e-4347-90d7-986041f4ec83', 'p9', 4),
('814db289-09f0-451f-979b-6d9807357204', 'p11', 3),
('99135345-cd9f-406f-acd0-4d262eb8143b', 'p1', 1),
('38a6b1ea-a90f-4ccf-9f8e-1d1bea5fd40a', 'p10', 1),
('fdf91b67-bcdf-47cd-865f-6f75c8407115', 'p9', 2),
('f927e42f-89ee-4062-869a-3b1d554a1d2b', 'p3', 1),
('36f10312-95a0-41f9-aa68-8cf9d1f6f131', 'p9', 3),
('3ddbc157-ded1-40d4-8055-9407f8f588ea', 'p117', 1),
('b683389f-5694-42d2-88f7-4c07f9737984', 'p117', 1),
('71ad33f4-f570-4818-9f44-27900542b383', '33068280', 1),
('71ad33f4-f570-4818-9f44-27900542b383', 'p111', 1),
('71ad33f4-f570-4818-9f44-27900542b383', 'p116', 1),
('71ad33f4-f570-4818-9f44-27900542b383', 'p112', 1),
('b14cc2e5-0db3-4891-a4cf-ff3dfbbff0a2', 'p1', 1),
('b14cc2e5-0db3-4891-a4cf-ff3dfbbff0a2', 'p6', 1),
('b14cc2e5-0db3-4891-a4cf-ff3dfbbff0a2', 'p5', 1),
('b14cc2e5-0db3-4891-a4cf-ff3dfbbff0a2', 'p8', 1),
('243acebb-14af-474e-9990-672a0b46c461', 'p113', 2);

CREATE TABLE `payment` (
  `id_order` varchar(50) NOT NULL,
  `total_money` int(11) DEFAULT NULL
);

CREATE TABLE `product` (
  `id` varchar(50) NOT NULL,
  `type` varchar(20) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `remains` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `src` varchar(256) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `origin` varchar(256) DEFAULT NULL,
  `quantity` int(11) DEFAULT 1
);

INSERT INTO `product` (`id`, `type`, `name`, `remains`, `price`, `discount`, `src`, `description`, `origin`, `quantity`) VALUES
('33068280', 'rice', 'Gạo Nam Định', 321123, 70000, 40, '/images/gaoNamDinh.jpg', NULL, NULL, 1),
('p1', 'fruit', 'Táo Lào Cai Việt Nam', 100, 12000, 5, '/images/apple.jpg', 'Đây là sản phẩm được sản xuất trong nước với giá thành phải chăng, được người tiêu dùng chọn lựa, bạn có thể nấu hoặc xào nấu rất ngon. Một thực phẩm tốt cho sức khỏe.', 'Lào Cai - Việt Nam', 1),
('p10', 'fruit', 'Cam vàng Úc', 100, 239000, 0, '/images/camVangUc.jpg', 'Đây là sản phẩm sạch, được trồng tại hải dương', 'Hải Dương - Việt Nam', 1),
('p11', 'fruit', 'Dưa chuột', 200, 9000, 0, '/images/duaChuot.jpg', 'Sản phẩm tốt', 'Việt Nam', 1),
('p111', 'fruit', 'Cam sành', 3224, 34567, 4, '/images/camSanh.jpg', NULL, NULL, 1),
('p112', 'vegetable', 'Cần tây', 3324, 11234, 5, '/images/canTay.jpg', NULL, NULL, 1),
('p113', 'fruit', 'Dừa Bến Tre', 23432, 39000, 0, '/images/duaXiem.jpg', NULL, NULL, 1),
('p115', 'fruit', 'Ổi Thanh Hà', 3213, 12000, 0, '/images/oiThanhHa.jpg', NULL, NULL, 1),
('p116', 'vegetable', 'Rau mầm xanh', 12313, 9000, 40, '/images/rauMamXanh.jpg', NULL, NULL, 1),
('p117', 'vegetable', 'Su hào Hải Dương', 123213, 12000, 30, '/images/suhao.jpg', NULL, NULL, 1),
('p119', 'fruit', 'Thanh long Kiên Giang', 0, 23000, 10, '/images/thanhLong.jpg', NULL, NULL, 1),
('p120', 'rice', 'Gạo Vĩnh Phúc', 123, 14000, 0, '/images/gaoBaVi.jpg', NULL, NULL, 1),
('p1211', 'rice', 'Gạo Hải Phòng', 1231, 23000, 0, '/images/gaoHaiPhong.jpg', NULL, NULL, 1),
('p2', 'vegetable', 'Bắp cải ', 100, 13000, 4, '/images/bapCaiHd.jpg', 'Đây là sản phẩm được sản xuất trong nước với giá thành phải chăng, được người tiêu dùng chọn lựa, bạn có thể nấu hoặc xào nấu rất ngon. Một thực phẩm tốt cho sức khỏe.', 'Hải Dương - Việt Nam', 1),
('p3', 'vegetable', 'Bắp cải tím', 400, 40000, 0, '/images/bapCaiTim.jpg', 'Đây là sản phẩm được sản xuất trong nước với giá thành phải chăng, được người tiêu dùng chọn lựa, bạn có thể nấu hoặc xào nấu rất ngon. Một thực phẩm tốt cho sức khỏe.', 'Trung Quốc', 1),
('p4', 'vegetable', 'Bí đỏ', 0, 45000, 4, '/images/biDo.jpg', 'Đây là sản phẩm được sản xuất trong nước với giá thành phải chăng, được người tiêu dùng chọn lựa, bạn có thể nấu hoặc xào nấu rất ngon. Một thực phẩm tốt cho sức khỏe.', 'Tiền Giang - Việt Nam', 1),
('p5', 'fruit', 'Chuối tây', 90, 12300, 0, '/images/chuoi.jpg', 'Đây là sản phẩm được sản xuất trong nước với giá thành phải chăng, được người tiêu dùng chọn lựa, bạn có thể nấu hoặc xào nấu rất ngon. Một thực phẩm tốt cho sức khỏe.', 'Hưng Yên - Việt Nam', 1),
('p6', 'rice', 'Gạo ST25 Việt Nam', 4, 156000, 5, '/images/gaoST25.jpg', 'Đây là loại gạo ngon', 'Việt Nam', 1),
('p7', 'rice', 'Gạo Hải Phòng', 0, 19000, 0, '/images/gaoHaiPhong.jpg', 'Đây là loại gạo chất lượng được xuất khẩu đi khắp thế giới hạt dỏe gạo ngon thơm ngon bổ dưỡng', 'Hải Phòng - Việt Nam', 1),
('p8', 'vegetable', 'Cà chua', 100, 23000, 0, '/images/caChua.jpg', 'Đây là sản phẩm sạch, được trồng tại hải dương', 'Hải Dương - Việt Nam', 1),
('p9', 'vegetable', 'Cải cúc', 200, 12000, 0, '/images/caiCuc.jpg', 'Sản phẩm tốt', 'Việt Nam', 1);

CREATE TABLE `table_order` (
  `id_order` varchar(50) NOT NULL,
  `id_customer` varchar(50) NOT NULL,
  `phone` int(11) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `id_order_status` int(11) NOT NULL,
  `create_date` datetime DEFAULT NULL
);

INSERT INTO `table_order` (`id_order`, `id_customer`, `phone`, `address`, `id_order_status`, `create_date`) VALUES
('14f9ebd8-b15e-4347-90d7-986041f4ec83', 'kh1', 1234456666, 'Thanh Tùng', 2, '2021-07-01 09:10:42'),
('243acebb-14af-474e-9990-672a0b46c461', '2de1876d-f963-4b8c-aaef-d0b96f9c3219', 3223, 'cầu từ ô', 1, '2021-07-02 22:30:23'),
('36f10312-95a0-41f9-aa68-8cf9d1f6f131', 'kh1', 1, 'haaa', 2, '2021-07-01 18:41:26'),
('38a6b1ea-a90f-4ccf-9f8e-1d1bea5fd40a', 'kh1', 2147483647, 'thanh miện', 2, '2021-07-01 17:26:41'),
('3ddbc157-ded1-40d4-8055-9407f8f588ea', 'kh2', 23, 'hải phòng nam định', 1, '2021-07-02 21:58:55'),
('71ad33f4-f570-4818-9f44-27900542b383', '3f992e17-96c3-461e-ae04-7fcf5c5a0d41', 213213, 'hưng yên', 1, '2021-07-02 22:14:36'),
('814db289-09f0-451f-979b-6d9807357204', 'kh1', 11111, '11 duy tân', 2, '2021-07-01 17:13:46'),
('99135345-cd9f-406f-acd0-4d262eb8143b', 'kh1', 2147483647, 'hải phòng', 2, '2021-07-01 17:23:06'),
('b14cc2e5-0db3-4891-a4cf-ff3dfbbff0a2', '60907dd3-1c5e-4329-933f-9dee0cdd7788', 123132, 'hải dương', 1, '2021-07-02 22:19:37'),
('b683389f-5694-42d2-88f7-4c07f9737984', 'kh2', 1123123, 'hà nam mmmmm', 1, '2021-07-02 22:02:31'),
('bfbfa8b8-67e8-4e2b-b1ac-6995b93f6c50', 'kh2', 375340525, 'Phạm Kha Thanh Miện Hải Dương', 2, '2021-07-01 09:06:11'),
('dc786d88-3f20-4b57-9f08-a461fd42079b', 'kh1', 1900987, 'FPT Cầu Giấy', 2, '2021-07-01 08:32:49'),
('f927e42f-89ee-4062-869a-3b1d554a1d2b', 'kh2', 911, 'Mỹ', 2, '2021-07-01 18:08:30'),
('fdf91b67-bcdf-47cd-865f-6f75c8407115', 'kh1', 123456789, 'hải phòng thanh miện hải dương', 2, '2021-07-01 17:27:41'),
('order1', 'kh1', 987654321, '146 Vương Thừa Vũ', 3, '2021-06-02 10:45:39'),
('order10', 'kh2', 983746212, '67 Hoàng Quốc Việt', 2, '2021-06-04 03:47:55'),
('order2', 'kh2', 98374593, '123 Cầu Giấy', 4, '2021-05-04 08:46:12'),
('order3', 'kh2', 98763522, '456 Trường Chinh', 4, '2021-04-01 01:46:39'),
('order4', 'kh2', 374653789, '123 Trần Vỹ', 4, '2021-06-30 04:46:52'),
('order5', 'kh2', 98765273, '12 Duy Tân', 2, '2021-06-08 06:17:07'),
('order6', 'kh1', 982345672, '56 Phạm Văn Đồng', 2, '2021-06-16 04:46:01'),
('order7', 'kh2', 98345672, '34 Nhổn', 4, '2021-06-23 12:47:20'),
('order8', 'kh2', 935829743, '175 Tây Sơn ', 4, '2021-05-06 05:47:32'),
('order9', 'kh2', 93234323, '34 Hoàng Văn Thái', 2, '2021-06-16 01:47:45'),
('test1', 'kh1', 123456, 'Hải Dương', 2, '2021-06-28 16:40:50'),
('zxcv', '27550908-184c-415b-8e63-b0a5b6c69d5c', 11111, 'Thanh Hóa', 2, '2021-07-01 12:50:54');

CREATE TABLE `users` (
  `id_account` varchar(100) NOT NULL,
  `role` int(11) DEFAULT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL
);

INSERT INTO `users` (`id_account`, `role`, `username`, `password`, `name`, `phone`) VALUES
('27550908-184c-415b-8e63-b0a5b6c69d5c', 4, 'top', 'top123', 'TOP bigbang', 1223213213),
('2d6ce11f-91be-4231-9074-198ba3fd77d3', 4, 'hang12363', '123', 'chihang', 11189),
('2de1876d-f963-4b8c-aaef-d0b96f9c3219', 4, 'toan', '1', 'Phạm Văn Toàn', 21321),
('3f992e17-96c3-461e-ae04-7fcf5c5a0d41', 4, 'tranghp', '1', 'Đăng Linh Trang', 34234),
('40bef817-4b04-48da-81d9-6fb36a48a04d', 4, 'phucnguyen', '123', 'phucss', 1111),
('468408f7-297c-4c4b-9315-bc303d7f713d', 3, 'ship1', '1', 'Quang Trung', 111111),
('60907dd3-1c5e-4329-933f-9dee0cdd7788', 4, 'hanh', '1', 'Nguyễn Thị Hạnh ', 123098),
('6cf7d9c4-a953-4a20-8ceb-b4b565104157', 3, 'huyenhp', 'hp', 'Thu Huyền', 2423),
('79c6cbb1-42cc-499c-a528-0fa46228207f', 4, 'tamm11111', '1', 'Quang Trung', 111111),
('8a7da7d3-2091-472e-ae07-5a3f1193e2aa', 2, 'hung', '1', 'Nguyễn Văn Hưng', 2312),
('a1fc0779-20f9-4a6d-b0e2-2b1848565f74', 3, 'quangtrung', '1', 'Quang Trung', 111111),
('admin1', 1, 'admin1', '1', 'Hồ Ngọc Trung', 987766552),
('d87f9287-5ba9-4e11-9c9d-691a336b888f', 4, 'phuc1', 'abc', 'Nguyễn Xuân Phúc', 1222222222),
('fe818ef3-bf1c-4594-beaa-3d3f5edb3f05', 4, 'test1', 'test1', 'Nguyễn Xuân Phúc', 837372838),
('kh1', 4, 'kh1', '1', 'Nguyễn Văn Hưng', 375340525),
('kh2', 4, 'kh2', '1', 'Trần Hưng Đạo', 98165483),
('sale1', 2, 'sale1', '1', 'Phạm Thị Thanh Tâm', 865915552),
('sale2', 2, 'sale2', '1', 'Đàm Vĩnh Hưng', 222245679),
('sale3', 2, 'sale4', '1', 'Chị Mai Trang', 893343249),
('ship2', 2, 'ship2', 'ship2', 'Thomas Anders', 981236788);

ALTER TABLE `order_detail`
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_order` (`id_order`);

ALTER TABLE `payment`
  ADD KEY `id_order` (`id_order`);

ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `table_order`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `id_customer` (`id_customer`);

ALTER TABLE `users`
  ADD PRIMARY KEY (`id_account`),
  ADD UNIQUE KEY `username` (`username`);

ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `order_detail_ibfk_2` FOREIGN KEY (`id_order`) REFERENCES `table_order` (`id_order`);

ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`id_order`) REFERENCES `table_order` (`id_order`);

ALTER TABLE `table_order`
  ADD CONSTRAINT `table_order_ibfk_3` FOREIGN KEY (`id_customer`) REFERENCES `users` (`id_account`);
COMMIT;