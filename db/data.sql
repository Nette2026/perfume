INSERT INTO designer(designer_id, designer_name)
VALUES
(1, 'dolce & gabbanna'),
(2, 'tory burch'),
(3, 'jimmy choo'),
(4, 'giorgio armani'),
(5, 'versace'),
(6, 'yves saint lauren');

INSERT INTO perfume(perfume_id, perfume_name, designer_id, launched, perfume_size, prefume_type, perfume_picture, inventory)
VALUES
(1, 'light blue', 1, 2001, 3.3, 'perfume spray', 'dglightblue.jpg', 4),
(2, 'the one', 1, 2006, 1, 'gift set', 'dg_theone.webp',  7),
(3, 'q', 1, 2023, 3.3, 'gift set', 'dg_q.webp',  9),
(4, 'signature eau de parfum', 2, 2020, 3.4, 'perfume spray', 'tb_signature.jpg', 15),
(5, 'just like heaven', 2, 2018, 3, 'perfume spray', 'tb_justlikeheaven.jpg', 3),
(6, 'divine moon', 2, 2022, 3, 'perfume spray', 'tb_divine-moon.webp', 6),
(7, 'blossom', 3, 2015, 3.3, 'perfume spray', 'jc_blossom.webp', 7),
(8, 'i want choo', 3, 2020, 3.4, 'perfume spray', 'jc_I_want_choo.webp', 8),
(9, 'fever', 3, 2018, 3.4, 'gift set', 'jc_fever.webp', 4),
(10, 'my way', 4, 2020, 3.3, 'perfume spray', 'dglightblue.jpg', 5),
(11, 'armani code', 4, 2022, 3, 'perfume spray', 'ga_code.jpg', 7),
(12,'ocean', 4, 2029, 3.4, 'perfume spray',  'ga_ocean.jpg', 5),
(13, 'red jeans', 5, 1994, 2.4, 'perfume spray',  'versace_redjean.jpg', 8),
(14, 'yellow diamond', 5, 2011, 3,  'gift set',  'yellowdiamondset.jpg', 4),
(15, 'bright crystal', 5, 2006, 2.5, 'perfume spray', 'yslparis.jpg', 5),
(16, 'paris', 6, 1983, 4.2,  'perfume spray',  ',yslparis.jpg', 10),
(17, 'mon paris', 6, 2016, 3, 'perfume spray', 'yslmon.jpg', 8),
(18, 'cinema', 6, 2004, 3,  'perfume spray',  'yslcinema.png', 6);


INSERT INTO scent(scent_id, scent)
VALUES
(1,	'red fruit'),
(2, 'raspberry dominates'),
(3,	'jasmine'), 
(4,	'ginger'),
(5,	'vanilla'),
(6,	'mandarin'),
(7, 'peach'),
(8,	'rose'),
(9, 'heliotrope'),
(10, 'vanilla-orchid'),
(11, 'sandalwood'),
(12, 'bergamot'),
(13, 'orange'),
(14, 'blossom tuberose'),
(15, 'iris'),
(16, 'cedarwood'),
(17, 'white musk'),
(18, 'sparkling pear'),
(19, 'romantic'),
(20, 'musk'),
(21, 'flowery'),
(22, 'airy floral'),
(23, 'peony'), 
(24, 'magnolia'), 
(25, 'lutus flower'),
(26, 'warm'),
(27, 'inviting'),
(28, 'raspberry'),
(29, 'blend of jasmine'),
(30, 'amaryllis'),
(31, 'cyclamen'),
(32, 'citrus'),
(33, 'woody'),
(34, 'fresh fruity aromatic'),
(35, 'musky powdery green'),
(36, 'mandarin'),
(37, 'rose'),
(39, 'crystal musk'),
(40, 'soft musk'),
(41, 'cherry'),
(42, 'floral'), 
(43, 'lemon'),
(44, 'neroli spearmint'),
(45, 'night flower'),
(46, 'almond milk'),
(47, 'sandalwood'),
(48, 'honey'),
(49, 'blood orange'),
(50, 'pear'),
(51, 'blossom'), 
(52, 'water'),
(53, 'musk'),
(54, 'raspberry');
	
INSERT INTO perfume_to_scent(perfume_id, scent_id)
VALUES
(1, 32),
(1, 33),
(1, 34),
(2, 36),
(2, 8),
(2, 5),
(3,	16),
(3,	39),
(3,	40),
(4,	32),
(4,	42),
(4,	43),
(4,	13),
(4,	44),
(4,	8),
(5,	43),
(5,	13),
(5,	44),
(5,	8),
(6,	45),
(6,	46),
(6,	47),
(6,	48),
(7,	1),
(7,	2),
(8,	3),
(8,	9),
(8,	10),
(8,	5),
(8,	6),
(8,	7),
(8,	8),
(9,	3),
(9,	9),
(9,	10),
(9,	11),
(10, 12),
(10, 13),
(10, 14),
(10, 15),
(10, 5),
(10, 16),
(10, 17),
(11, 4),
(11, 21),
(11, 49),
(11, 50),
(11, 51),
(11, 3),
(12, 18),
(12, 52),
(12, 3),
(12, 47),
(12, 53),
(13, 21),
(14, 22),
(15, 24),
(15, 25),
(16, 26),
(16, 19),
(16, 27),
(17, 13),
(17, 54),
(18, 42),
(18, 29),
(18, 30),
(18, 31);
