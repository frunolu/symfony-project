DROP TABLE IF EXISTS `answer`;
CREATE TABLE `answer`
(
    `id` int unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY
) ENGINE='InnoDB' COLLATE 'utf8mb4_general_ci';

ALTER TABLE `answer`
    ADD `question_id` int(10) unsigned NOT NULL;

DROP TABLE IF EXISTS `question`;
CREATE TABLE `question`
(
    `id`        int unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `answer_id` int(10) unsigned,
    FOREIGN KEY (`answer_id`) REFERENCES `answer` (`id`) ON DELETE RESTRICT
) ENGINE='InnoDB' COLLATE 'utf8mb4_unicode_ci';

CREATE TABLE `random_answer`
(
    `id`          int unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `question_id` int(10) unsigned NOT NULL,
    FOREIGN KEY (`question_id`) REFERENCES `question` (`id`) ON DELETE RESTRICT
) ENGINE='InnoDB' COLLATE 'utf8mb4_unicode_ci';

ALTER TABLE `answer`
    ADD `answer` varchar(255) COLLATE 'utf8mb4_unicode_ci' NULL AFTER `id`;

ALTER TABLE `question`
    ADD `question` varchar(255) COLLATE 'utf8mb4_unicode_ci' NULL;

INSERT INTO `question` (`id`, `answer_id`,`question`)
VALUES (1, null,'Jak často pijete pivo?'),
       (2, null,'Jaká je vaše oblíbená značka piva?');

INSERT INTO `answer` (`id`, `answer`,`question_id`)
VALUES (1, 'Pivo vůbec nepiju' ,1),
       (2, 'Příležitostně',1),
       (3, 'Alespoň 1x za měsíc',1),
       (4, 'Alespoň 1x za týden',1),
       (5, 'Častěji než 1x za týden',1);
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
                         `id` int(30) NOT NULL,
                         `name` varchar(150) NOT NULL,
                         `user_type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = admin, 2= guest , 3 = user',
                         `username` varchar(25) NOT NULL,
                         `password` varchar(25) NOT NULL,
                         `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `user`
    ADD PRIMARY KEY (`id`);
