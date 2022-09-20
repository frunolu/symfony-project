CREATE TABLE IF NOT EXISTS `questions` (
    `qid` int(11) NOT NULL AUTO_INCREMENT,
    `question` varchar(150) NOT NULL,
    `is_enabled` int(11) NOT NULL,
    PRIMARY KEY (`qid`)
    ) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
