CREATE TABLE `cake` (
  `id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sweetness_level` double NOT NULL,
  `difficulty_level` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO `cake` (`id`, `name`, `detail`, `image`, `sweetness_level`, `difficulty_level`) VALUES
(1, 'Chocolate Lava Cake', 'A small individual chocolate cake with a molten chocolate center. Best served warm with ice cream.', 'https://preppykitchen.com/wp-content/uploads/2022/03/Chocolate-Lava-Cake-Recipe.jpg', 4.5, 3.5),
(2, 'Classic Cheesecake', 'A rich, dense, and creamy dessert made from soft fresh cheese, usually on a graham cracker crust.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3mRQLPMi7dpAwk8k6cEt7QSMiMBG8F3gyjA&s', 3.0, 2.0),
(3, 'Red Velvet Cake', 'A majestic layered cake with a striking reddish-brown color, subtly flavored with cocoa and topped with cream cheese frosting.', 'https://recipe.sgethai.com/wp-content/uploads/2025/04/090425-red-velvet-cake-cover.webp', 4.0, 3.0),
(4, 'Tiramisu', 'A coffee-flavored Italian dessert made of ladyfingers dipped in coffee, layered with a whipped mixture of eggs, sugar, and mascarpone cheese.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyp-zhGhMSTKOOkhu0hxej4RqF1EeAXcpbhA&s', 2.5, 4.0),
(5, 'Carrot Cake', 'A moist spice cake containing carrots mixed into the batter. It is often topped with cream cheese icing.', 'https://static01.nyt.com/images/2020/11/01/dining/Carrot-Cake-textless/Carrot-Cake-textless-videoSixteenByNineJumbo1600.jpg', 3.5, 2.5),
(6, 'Black Forest Cake', 'A German dessert traditionally made with layers of chocolate sponge cake, whipped cream, and cherries.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyiNb086e4g4Mz_DJqUfrtaLURwGbH614iBg&s', 3.8, 4.5),
(7, 'Lemon Drizzle Cake', 'A simple British cake soaked in a lemon syrup after baking, resulting in a moist and tangy flavor.', 'https://realfood.tesco.com/media/images/1400x919-Brown-butter-lemon--thyme-drizzle-cake--90d04bca-c512-4565-b147-34cb3d2b5611-0-1400x919.jpg', 2.0, 1.5),
(8, 'Opera Cake', 'A French cake made with layers of almond sponge cake (Joconde), soaked in coffee syrup, layered with coffee buttercream and chocolate ganache.', 'https://www.ckapsweet.com/photo/food/1711428362_c656fa542bb717de963c.jpeg', 3.3, 5.0),
(9, 'Angel Food Cake', 'A type of sponge cake made with only egg whites, flour, and sugar. It is characterized by its light, airy texture.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFoBlRvqmMq6XCNdX5O7PL9Bdn7DxN1TeQaw&s', 1.5, 3.0),
(10, 'Sacher Torte', 'A famous Viennese chocolate cake, invented by Franz Sacher. It consists of dense chocolate cake layers with a thin layer of apricot jam, coated in dark chocolate icing.', 'https://i0.wp.com/jennyisbaking.com/wp-1c174-content/uploads/2018/06/DSC00839.jpg', 4.0, 4.0),
(11, 'Matcha Roll Cake', 'A light and fluffy sponge cake infused with Japanese green tea (Matcha), filled with fresh whipped cream.', 'https://www.japandishes.com/wp-content/uploads/2025/07/chatgpt-image-2-juil-2025-19-58-36-6865735b5a1b7.webp', 2.2, 3.5),
(12, 'Butter Cake', 'A simple cake made with butter, flour, eggs, and sugar, known for its rich and buttery flavor. Great for everyday eating.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRm1D8GDGOxBFlxxKHHkAKZPU57i3M2OLVHlg&s', 3.0, 1.0);

ALTER TABLE `cake`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `cake`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;