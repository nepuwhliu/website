/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50027
Source Host           : 127.0.0.1:3307
Source Database       : website

Target Server Type    : MYSQL
Target Server Version : 50027
File Encoding         : 65001

Date: 2020-03-28 19:18:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for aboutus
-- ----------------------------
DROP TABLE IF EXISTS `aboutus`;
CREATE TABLE `aboutus` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) default NULL,
  `subheading` varchar(255) default NULL,
  `content` text,
  `iamgeurl` varchar(255) default NULL,
  `more` text,
  `createtime` datetime default NULL,
  `updatetime` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of aboutus
-- ----------------------------
INSERT INTO `aboutus` VALUES ('1', '上海沃特奇能源科技股份有限公司', '全球最具竞争力的新能源企业之一', '沃特能源（证券代码：430355）创建于2004年，是一家致力于清洁能源绿色技术、能源与健康物联网技术创新开发的高科技公司。沃特能源提供能源投资、项目实施、研发制造、智慧运营等全方位绿色科技服务，目前已累计实现应用面积超300万平方米。沃特能源秉承“筑就健康环境 彰显美好生活”的企业使命，以“诚信、实干、学习、创新”为经营理念，创新发展清洁能源和物联网高新技术，为低碳减排、健康环境、美好生活作出贡献。', 'http://www.water7.com.cn/img/about-home.jpg', null, '2020-03-25 11:26:37', '2020-03-25 11:26:39');
INSERT INTO `aboutus` VALUES ('2', '新能源系统', '能源物联网', '沃特能源利用土壤源、地表水源、地下水源、污水源、余热废热、空气源、天然气等新能源，采用EPC（工程总承包）、EMC（合同能源管理）、 BOT（建设-经营-转让）、PPP（政企资本合作）等经营模式，为绿色建筑、健康环境、低碳农业、节能工业提供地源热泵、冷热电三联供、空气源热泵、蓄能蓄电、清洁能源发电等新能源系统综合解决方案。...', 'http://www.water7.com.cn/img/about-home.jpg', null, '2020-03-25 11:40:32', '2020-03-25 11:40:24');
INSERT INTO `aboutus` VALUES ('3', 'FAPS吃鸡小分队', '大吉大利，今晚吃鸡', '百度拥有数以千计的研发工程师，这是中国乃至全球最为优秀的技术团队，这支队伍掌握着世界上最为先进的搜索引擎技术，使百度成为中国掌握世界尖端科学核心技术的中国高科技企业。\r\n\r\n从创立之初，百度便将“让人们最便捷地获取信息，找到所求”作为自己的使命，10年来，公司秉承“以用户为导向”的理念，始终坚持如一地响应广大网民的需求，不断地为网民提供基于搜索引擎的各种产品，其中包括：以网络搜索为主的功能性搜索，以贴吧为主的社区搜索，针对各区域、行业所需的垂直搜索，Mp3搜索，以及门户频道、IM等，全面覆盖了中文网络世界所有的搜索需求，根据第三方权威数据，百度在中国的搜索份额超过70%。', 'https://dss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=360878985,716777430&fm=26&gp=0.jpg', null, '2020-03-25 11:43:07', '2020-03-25 11:43:05');
INSERT INTO `aboutus` VALUES ('4', '阿里巴巴、腾讯等合作', '优质互联网企业', '阿里巴巴集团经营多项业务，另外也从关联公司的业务和服务中取得经营商业生态系统上的支援。业务和关联公司的业务包括：淘宝网、天猫、聚划算、全球速卖通、阿里巴巴国际交易市场、1688、阿里妈妈、阿里云、蚂蚁金服、菜鸟网络等', 'https://dss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=360878985,716777430&fm=26&gp=0.jpg', null, '2020-03-25 11:44:36', '2020-03-25 11:44:34');

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `id` int(11) NOT NULL auto_increment,
  `imageone` varchar(255) default NULL,
  `imagetwo` varchar(255) default NULL,
  `imagethree` varchar(255) default NULL,
  `imagefour` varchar(255) default NULL,
  `imagefive` varchar(255) default NULL,
  `createtime` datetime default NULL,
  `updatetime` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES ('1', 'http://www.water7.com.cn/img/2013/banner-4.4.jpg', 'http://www.water7.com.cn/img/2013/banner-1.1.jpg', 'http://www.water7.com.cn/img/2013/banner-2.2.jpg', 'http://www.water7.com.cn/img/2013/banner-3.3.jpg', 'http://www.water7.com.cn/img/produt.png', '2020-03-25 11:36:35', '2020-03-25 11:36:37');

-- ----------------------------
-- Table structure for fapsnews
-- ----------------------------
DROP TABLE IF EXISTS `fapsnews`;
CREATE TABLE `fapsnews` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) default NULL,
  `content` text,
  `imageurl` varchar(255) default NULL,
  `more` text,
  `createtime` datetime default NULL,
  `updatetime` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fapsnews
-- ----------------------------
INSERT INTO `fapsnews` VALUES ('1', '祝贺嘉兴沃信能源科技有限公司开业', '2016年12月13日，嘉兴沃信能源科技有限公司技术推介会暨启动仪式在嘉兴智慧产业创新园举行。活动以“倡导节能科技·缔造智慧城市”为主题，共商新能源、新材料、新科技等战略新兴产业的创新与发展。', 'http://www.water7.com.cn/img/new/20170111150713720163.jpg', null, '2020-03-25 11:28:24', '2020-03-25 11:28:26');
INSERT INTO `fapsnews` VALUES ('2', '沃特能源董事副总经理王文根参加2016上海国际绿', '2016年11月1日，上海市绿色建筑协会绿色能源与资源再生专业委员会于2016上海国际城市及建...', 'http://www.water7.com.cn/img/new/20161115154141649653.png', null, '2020-03-25 11:30:07', '2020-03-25 11:30:09');
INSERT INTO `fapsnews` VALUES ('3', '恭祝沃特能源中标上海市松江区中山街道新城主城C单元C22-04地块商业用房地源热泵项目', '近日，我公司成功中标上海市松江区中山街道新城主城C单元C22-04地块商业用房地源热泵项目…', 'http://www.water7.com.cn/img/new/20161115154236661453.png', null, '2020-03-25 11:35:10', '2020-03-25 11:35:15');

-- ----------------------------
-- Table structure for itemaccumulation
-- ----------------------------
DROP TABLE IF EXISTS `itemaccumulation`;
CREATE TABLE `itemaccumulation` (
  `id` int(11) NOT NULL auto_increment,
  `video` text,
  `inserttime` datetime default NULL,
  `theme` varchar(255) default NULL,
  `createtime` datetime default NULL,
  `updatetime` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of itemaccumulation
-- ----------------------------
INSERT INTO `itemaccumulation` VALUES ('1', 'https://www.runoob.com/try/demo_source/movie.mp4', '2020-03-27 14:51:17', '喜洋洋与灰太狼', '2020-03-27 14:51:35', '2020-03-27 14:51:37');
INSERT INTO `itemaccumulation` VALUES ('2', 'https://www.runoob.com/try/demo_source/movie.mp4', '2020-03-27 14:51:44', '猫和老鼠', '2020-03-27 14:51:50', '2020-03-27 14:51:53');
INSERT INTO `itemaccumulation` VALUES ('3', 'https://www.runoob.com/try/demo_source/movie.mp4', '2020-03-27 14:51:58', '斗罗大陆', '2020-03-27 14:52:03', '2020-03-27 14:52:07');
INSERT INTO `itemaccumulation` VALUES ('4', 'https://www.runoob.com/try/demo_source/movie.mp4', '2020-03-27 14:52:14', '笑傲江湖', '2020-03-27 14:52:21', '2020-03-27 14:52:23');

-- ----------------------------
-- Table structure for itemimage
-- ----------------------------
DROP TABLE IF EXISTS `itemimage`;
CREATE TABLE `itemimage` (
  `id` int(11) NOT NULL auto_increment,
  `image` text,
  `createtime` datetime default NULL,
  `updatetime` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of itemimage
-- ----------------------------
INSERT INTO `itemimage` VALUES ('1', 'https://image.so.com/view?src=360pic_strong&z=1&i=0&cmg=b8eb0291b2ba320c452b678ff5a997b8&q=%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E5%9B%BE%E7%89%87%E7%B4%A0%E6%9D%90&correct=%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E5%9B%BE%E7%89%87%E7%B4%A0%E6%9D%90&ancestor=list&cmsid=ca4558a1dac80b685ace41b103efbaae&cmras=1&cn=0&gn=0&kn=20&fsn=100&adstar=0&clw=250#id=2f26aeded10fb6faaac8d05991a96c9b&currsn=0&ps=75&pc=75', '2020-03-28 18:41:00', '2020-03-28 18:41:02');
INSERT INTO `itemimage` VALUES ('2', 'https://image.so.com/view?src=360pic_strong&z=1&i=0&cmg=b8eb0291b2ba320c452b678ff5a997b8&q=%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E5%9B%BE%E7%89%87%E7%B4%A0%E6%9D%90&correct=%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E5%9B%BE%E7%89%87%E7%B4%A0%E6%9D%90&ancestor=list&cmsid=ca4558a1dac80b685ace41b103efbaae&cmras=1&cn=0&gn=0&kn=20&fsn=100&adstar=0&clw=250#id=2b7eb2045a7ed36fd5ac95f7cea37f4b&currsn=0&ps=75&pc=75', '2020-03-28 18:41:23', '2020-03-28 18:41:21');
INSERT INTO `itemimage` VALUES ('3', 'https://image.so.com/view?src=360pic_strong&z=1&i=0&cmg=b8eb0291b2ba320c452b678ff5a997b8&q=%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E5%9B%BE%E7%89%87%E7%B4%A0%E6%9D%90&correct=%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E5%9B%BE%E7%89%87%E7%B4%A0%E6%9D%90&ancestor=list&cmsid=ca4558a1dac80b685ace41b103efbaae&cmras=1&cn=0&gn=0&kn=20&fsn=100&adstar=0&clw=250#id=2ee1e1981c9ca92147a844d3f64335be&currsn=0&ps=75&pc=75', '2020-03-28 18:41:30', '2020-03-28 18:41:32');
INSERT INTO `itemimage` VALUES ('4', 'https://image.so.com/view?src=360pic_strong&z=1&i=0&cmg=b8eb0291b2ba320c452b678ff5a997b8&q=%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E5%9B%BE%E7%89%87%E7%B4%A0%E6%9D%90&correct=%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E5%9B%BE%E7%89%87%E7%B4%A0%E6%9D%90&ancestor=list&cmsid=ca4558a1dac80b685ace41b103efbaae&cmras=1&cn=0&gn=0&kn=20&fsn=100&adstar=0&clw=250#id=61d219d29df1db8d8064d9ce3979334b&currsn=0&ps=75&pc=75', '2020-03-28 18:41:39', '2020-03-28 18:41:42');
INSERT INTO `itemimage` VALUES ('5', 'https://image.so.com/view?src=360pic_strong&z=1&i=0&cmg=b8eb0291b2ba320c452b678ff5a997b8&q=%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E5%9B%BE%E7%89%87%E7%B4%A0%E6%9D%90&correct=%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E5%9B%BE%E7%89%87%E7%B4%A0%E6%9D%90&ancestor=list&cmsid=ca4558a1dac80b685ace41b103efbaae&cmras=1&cn=0&gn=0&kn=20&fsn=100&adstar=0&clw=250#id=61d219d29df1db8d8064d9ce3979334b&currsn=0&ps=75&pc=75', '2020-03-28 18:41:51', '2020-03-28 18:41:53');
INSERT INTO `itemimage` VALUES ('6', 'https://image.so.com/view?src=360pic_strong&z=1&i=0&cmg=b8eb0291b2ba320c452b678ff5a997b8&q=%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E5%9B%BE%E7%89%87%E7%B4%A0%E6%9D%90&correct=%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E5%9B%BE%E7%89%87%E7%B4%A0%E6%9D%90&ancestor=list&cmsid=ca4558a1dac80b685ace41b103efbaae&cmras=1&cn=0&gn=0&kn=20&fsn=100&adstar=0&clw=250#id=9a585e2b9d670f3c774027688b0fd593&currsn=0&ps=75&pc=75', '2020-03-28 18:41:59', '2020-03-28 18:42:01');
INSERT INTO `itemimage` VALUES ('7', 'https://image.so.com/view?src=360pic_strong&z=1&i=0&cmg=b8eb0291b2ba320c452b678ff5a997b8&q=%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E5%9B%BE%E7%89%87%E7%B4%A0%E6%9D%90&correct=%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E5%9B%BE%E7%89%87%E7%B4%A0%E6%9D%90&ancestor=list&cmsid=ca4558a1dac80b685ace41b103efbaae&cmras=1&cn=0&gn=0&kn=20&fsn=100&adstar=0&clw=250#id=9a585e2b9d670f3c774027688b0fd593&currsn=0&ps=75&pc=75', '2020-03-28 18:42:06', '2020-03-28 18:42:09');
INSERT INTO `itemimage` VALUES ('8', 'https://image.so.com/view?src=360pic_strong&z=1&i=0&cmg=b8eb0291b2ba320c452b678ff5a997b8&q=%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E5%9B%BE%E7%89%87%E7%B4%A0%E6%9D%90&correct=%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E5%9B%BE%E7%89%87%E7%B4%A0%E6%9D%90&ancestor=list&cmsid=ca4558a1dac80b685ace41b103efbaae&cmras=1&cn=0&gn=0&kn=20&fsn=100&adstar=0&clw=250#id=3fee9fefe92edf191033090b68b0ca6d&currsn=0&ps=75&pc=75', '2020-03-28 18:42:14', '2020-03-28 18:42:16');

-- ----------------------------
-- Table structure for itempublication
-- ----------------------------
DROP TABLE IF EXISTS `itempublication`;
CREATE TABLE `itempublication` (
  `id` int(11) NOT NULL auto_increment,
  `itemname` varchar(255) default NULL,
  `title` text,
  `author` text,
  `source` text,
  `submittime` datetime default NULL,
  `link` varchar(255) default NULL,
  `createtime` datetime default NULL,
  `updatetime` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of itempublication
-- ----------------------------
INSERT INTO `itempublication` VALUES ('1', '文章发表', 'Learning seismic image enhancement from pairs of 3D partial and full image volumes', 'Enning Wang and Jeff Nealon, Chevron Energy Technology Company', '东北石油大学', '2020-03-28 11:51:09', null, '2020-03-28 11:51:09', '2020-03-28 11:51:09');
INSERT INTO `itempublication` VALUES ('2', '文章发表', 'Learning seismic image enhancement from pairs of 3D partial and full image volumes', 'Enning Wang and Jeff Nealon, Chevron Energy Technology Company', '东北石油大学', '2020-03-28 11:51:09', null, '2020-03-28 11:51:09', '2020-03-28 11:51:09');
INSERT INTO `itempublication` VALUES ('3', '文章发表', 'Learning seismic image enhancement from pairs of 3D partial and full image volumes', 'Enning Wang and Jeff Nealon, Chevron Energy Technology Company', '东北石油大学', '2020-03-28 11:51:09', null, '2020-03-28 11:51:09', '2020-03-28 11:51:09');
INSERT INTO `itempublication` VALUES ('4', '文章发表', 'Learning seismic image enhancement from pairs of 3D partial and full image volumes', 'Enning Wang and Jeff Nealon, Chevron Energy Technology Company', '东北石油大学', '2020-03-28 11:51:09', null, '2020-03-28 11:51:09', '2020-03-28 11:51:09');
INSERT INTO `itempublication` VALUES ('5', '专利权', 'Learning seismic image enhancement from pairs of 3D partial and full image volumes', 'Enning Wang and Jeff Nealon, Chevron Energy Technology Company', '东北石油大学', '2020-03-28 11:51:09', null, '2020-03-28 11:51:09', '2020-03-28 11:51:09');
INSERT INTO `itempublication` VALUES ('6', '专利权', 'Learning seismic image enhancement from pairs of 3D partial and full image volumes', 'Enning Wang and Jeff Nealon, Chevron Energy Technology Company', '东北石油大学', '2020-03-28 11:51:09', null, '2020-03-28 11:51:09', '2020-03-28 11:51:09');
INSERT INTO `itempublication` VALUES ('7', '专利权', 'Learning seismic image enhancement from pairs of 3D partial and full image volumes', 'Enning Wang and Jeff Nealon, Chevron Energy Technology Company', '东北石油大学', '2020-03-28 11:51:09', null, '2020-03-28 11:51:09', '2020-03-28 11:51:09');
INSERT INTO `itempublication` VALUES ('8', '专利权', 'Learning seismic image enhancement from pairs of 3D partial and full image volumes', 'Enning Wang and Jeff Nealon, Chevron Energy Technology Company', '东北石油大学', '2020-03-28 11:51:09', null, '2020-03-28 11:51:09', '2020-03-28 11:51:09');
INSERT INTO `itempublication` VALUES ('9', '专利权', 'Learning seismic image enhancement from pairs of 3D partial and full image volumes', 'Enning Wang and Jeff Nealon, Chevron Energy Technology Company', '东北石油大学', '2020-03-28 11:51:09', null, '2020-03-28 11:51:09', '2020-03-28 11:51:09');
INSERT INTO `itempublication` VALUES ('10', '软件著作权', 'Learning seismic image enhancement from pairs of 3D partial and full image volumes', 'Enning Wang and Jeff Nealon, Chevron Energy Technology Company', '东北石油大学', '2020-03-28 11:51:09', null, '2020-03-28 11:51:09', '2020-03-28 11:51:09');
INSERT INTO `itempublication` VALUES ('11', '软件著作权', 'Learning seismic image enhancement from pairs of 3D partial and full image volumes', 'Enning Wang and Jeff Nealon, Chevron Energy Technology Company', '东北石油大学', '2020-03-28 11:51:09', null, '2020-03-28 11:51:09', '2020-03-28 11:51:09');
INSERT INTO `itempublication` VALUES ('12', '软件著作权', 'Learning seismic image enhancement from pairs of 3D partial and full image volumes', 'Enning Wang and Jeff Nealon, Chevron Energy Technology Company', '东北石油大学', '2020-03-28 11:51:09', null, '2020-03-28 11:51:09', '2020-03-28 11:51:09');
INSERT INTO `itempublication` VALUES ('13', '软件著作权', 'Learning seismic image enhancement from pairs of 3D partial and full image volumes', 'Enning Wang and Jeff Nealon, Chevron Energy Technology Company', '东北石油大学', '2020-03-28 11:51:09', null, '2020-03-28 11:51:09', '2020-03-28 11:51:09');
INSERT INTO `itempublication` VALUES ('14', '软件著作权', 'Learning seismic image enhancement from pairs of 3D partial and full image volumes', 'Enning Wang and Jeff Nealon, Chevron Energy Technology Companyc', '东北石油大学', '2020-03-28 11:51:09', null, '2020-03-28 11:51:09', '2020-03-28 11:51:09');
INSERT INTO `itempublication` VALUES ('15', '断层稳定性', 'Learning seismic image enhancement from pairs of 3D partial and full image volumes', 'Enning Wang and Jeff Nealon, Chevron Energy Technology Companyc', '东北石油大学', '2020-03-28 11:51:09', null, '2020-03-28 11:51:09', '2020-03-28 11:51:09');
INSERT INTO `itempublication` VALUES ('16', '断层稳定性', 'Learning seismic image enhancement from pairs of 3D partial and full image volumes', 'Enning Wang and Jeff Nealon, Chevron Energy Technology Companyc', '东北石油大学', '2020-03-28 11:51:09', null, '2020-03-28 11:51:09', '2020-03-28 11:51:09');
INSERT INTO `itempublication` VALUES ('17', '断层稳定性', 'Learning seismic image enhancement from pairs of 3D partial and full image volumes', 'Enning Wang and Jeff Nealon, Chevron Energy Technology Companyc', '东北石油大学', '2020-03-28 11:51:09', null, '2020-03-28 11:51:09', '2020-03-28 11:51:09');
INSERT INTO `itempublication` VALUES ('18', '断层稳定性', 'Learning seismic image enhancement from pairs of 3D partial and full image volumes', 'Enning Wang and Jeff Nealon, Chevron Energy Technology Companyc', '东北石油大学', '2020-03-28 11:51:09', null, '2020-03-28 11:51:09', '2020-03-28 11:51:09');
INSERT INTO `itempublication` VALUES ('19', '断层封闭性', 'Learning seismic image enhancement from pairs of 3D partial and full image volumes', 'Enning Wang and Jeff Nealon, Chevron Energy Technology Companyc', '东北石油大学', '2020-03-28 11:51:09', null, '2020-03-28 11:51:09', '2020-03-28 11:51:09');
INSERT INTO `itempublication` VALUES ('20', '断层封闭性', 'Learning seismic image enhancement from pairs of 3D partial and full image volumes', 'Enning Wang and Jeff Nealon, Chevron Energy Technology Companyc', '东北石油大学', '2020-03-28 11:51:09', null, '2020-03-28 11:51:09', '2020-03-28 11:51:09');
INSERT INTO `itempublication` VALUES ('21', '断层封闭性', 'Learning seismic image enhancement from pairs of 3D partial and full image volumes', 'Enning Wang and Jeff Nealon, Chevron Energy Technology Companyc', '东北石油大学', '2020-03-28 11:51:09', null, '2020-03-28 11:51:09', '2020-03-28 11:51:09');
INSERT INTO `itempublication` VALUES ('22', '断层封闭性', 'Learning seismic image enhancement from pairs of 3D partial and full image volumes', 'Enning Wang and Jeff Nealon, Chevron Energy Technology Companyc', '东北石油大学', '2020-03-28 11:51:09', null, '2020-03-28 11:51:09', '2020-03-28 11:51:09');
INSERT INTO `itempublication` VALUES ('23', '断层稳定性', 'Learning seismic image enhancement from pairs of 3D partial and full image volumes', 'Enning Wang and Jeff Nealon, Chevron Energy Technology Companyc', '东北石油大学', '2020-03-28 11:51:09', null, '2020-03-28 11:51:09', '2020-03-28 11:51:09');
INSERT INTO `itempublication` VALUES ('24', '断层稳定性', 'Learning seismic image enhancement from pairs of 3D partial and full image volumes', 'Enning Wang and Jeff Nealon, Chevron Energy Technology Companyc', '东北石油大学', '2020-03-28 11:51:09', null, '2020-03-28 11:51:09', '2020-03-28 11:51:09');
INSERT INTO `itempublication` VALUES ('25', '断层稳定性', 'Learning seismic image enhancement from pairs of 3D partial and full image volumes', 'Enning Wang and Jeff Nealon, Chevron Energy Technology Companyc', '东北石油大学', '2020-03-28 11:51:09', null, '2020-03-28 11:51:09', '2020-03-28 11:51:09');
INSERT INTO `itempublication` VALUES ('26', '断层稳定性', 'Learning seismic image enhancement from pairs of 3D partial and full image volumes', 'Enning Wang and Jeff Nealon, Chevron Energy Technology Companyc', '东北石油大学', '2020-03-28 11:51:09', null, '2020-03-28 11:51:09', '2020-03-28 11:51:09');

-- ----------------------------
-- Table structure for itemresearch
-- ----------------------------
DROP TABLE IF EXISTS `itemresearch`;
CREATE TABLE `itemresearch` (
  `id` int(11) NOT NULL auto_increment,
  `projectname` varchar(255) default NULL,
  `projecttime` datetime default NULL,
  `projectimage` text,
  `projectabstract` text,
  `more` text,
  `createtime` datetime default NULL,
  `updatetime` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of itemresearch
-- ----------------------------
INSERT INTO `itemresearch` VALUES ('1', '深度学习在油气地震勘探中的应用', '2020-03-27 10:50:00', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1585287714271&di=69acd70df7fa7236660e8167e9198855&imgtype=0&src=http%3A%2F%2Fss.csdn.net%2Fp%3Fhttps%3A%2F%2Fmmbiz.qpic.cn%2Fmmbiz_png%2F04xjhEico2kVOHv51AWia892tShbFPeZn5w9IA0tp0y6omZwcbQMbzzAktDDb2ZjunIT4hKCiaLECsYoOqZXOIYYA%2F0%3Fwx_fmt%3Dpng', '油气勘探，是指为了识别勘探区域，探明油气储量而进行的地质调查、地球物理勘探、钻探及相关活动，是油气开采的第一个关键环节。运用的原理包括\"地震地层学\"、\"数值模拟技术\"等，采取的方法有\"地震勘探\"、\"重力勘探\"等。新中国的油气勘探技术堪称世界一流，在发达国家视为畏途的地方，找到了很多大型油气田。', null, '2020-03-27 10:56:04', '2020-03-27 10:56:06');
INSERT INTO `itemresearch` VALUES ('2', '深度学习在地震资料断层识别中的应用', '2020-03-27 10:56:46', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1585287714271&di=69acd70df7fa7236660e8167e9198855&imgtype=0&src=http%3A%2F%2Fss.csdn.net%2Fp%3Fhttps%3A%2F%2Fmmbiz.qpic.cn%2Fmmbiz_png%2F04xjhEico2kVOHv51AWia892tShbFPeZn5w9IA0tp0y6omZwcbQMbzzAktDDb2ZjunIT4hKCiaLECsYoOqZXOIYYA%2F0%3Fwx_fmt%3Dpng', '近年来随着大数据 时 代的 到 来 ， 深度学 习 技术 已 经成 为 当 前人工 智能领域 的 一个研究 热 点 ， 其在各个领 域 已 经展现 出 巨 大的优 势 ， 并且仍在 继 续发展变 化 。 在地 震勘探开发领域早期也 广 泛地使用 人工 神经 网 络 ， 遗传 算法等机器 学 习 算 法用 于 初至拾取， 反演等方面 ， 但是 目 前使用 深度学 习 算法在地震勘探开发领域仍 然较少 。 断 层识别 在地震勘探开发上具有极为 重要的 意 义 ， 尤其是小 断层 识别 ， 在地震剖 面 上不 易 直接别 ， 而且 在油 田 勘探后期或 阶段对于 探区 的可 采储 量 ， 产 能建设等具有 重要意义。 本文将深度学 习 中 的 卷积神 经网 络算法应 用 在地 震勘探开发 中 ， 针对 断层数据 的 特点 设计 网 络模型 ， 对 实 际地震数据 进行断层识别 训 练 ， 再 用 实 际地震 资料进 行断层的 识别 测 试 。', null, '2020-03-27 10:57:13', '2020-03-27 10:57:15');
INSERT INTO `itemresearch` VALUES ('3', '卷积神经网络在地震断层自动识别中的应用', '2020-03-27 10:58:08', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1585287714270&di=0d8fea9b2ebc7e908cb1dda2a0af8127&imgtype=0&src=http%3A%2F%2Fzhangtielei.com%2Fassets%2Fphotos_neural_nets%2Fdeep_learning_abstraction.png', '地震断层识别在地震解释中是一项关键而又耗时的工作，现有的地震断层识别技术有很多，如相干体分析、\r\n边缘检测、人工蚂蚁算法等，但这些方法计算量较大且依赖于地质解释人员的经验。本文将断层识别问题转变为\r\n机器学习中的二分类问题，提出了基于卷积神经网络（CNN）的地震断层自动识别方法。该方法主要分为两步，\r\n首先搭建 CNN 网络训练出一个模型，再用这个模型对三维实际地震数据进行断层自动识别和预测。本文在三维地\r\n震数据中选取少量数据进行人工标记（断层点和非断层点），并以选取的标记点为中心，沿着 Xline、Inline、Time\r\n三个方向分别提取一个二维地震数据作为训练样本，希望能在减少训练时间的同时，更大地利用三维地震数据的\r\n空间特征信息训练模型。本文在进行网络训练之前对样本进行了数据增广，以避免因数据量小而出现的过拟合现\r\n象，增强网络的推广性。最后，将本文提出的算法用于三维实际地震数据进行断层识别和预测，并与传统的相干\r\n体算法结果进行了对比', null, '2020-03-27 10:57:47', '2020-03-27 10:57:44');
INSERT INTO `itemresearch` VALUES ('4', '基于卷积神经网络的断层识别方法研究', '2020-03-27 10:58:43', 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=2322396948,1350289859&fm=26&gp=0.jpg', '断层解释是复杂构造解释的核心，解释效率及好坏程度直接影响着油气勘探开发工作的进展。近年来，人\r\n工智能已在诸多领域得到应用并取得较好效果，本文尝试将卷积神经网络用于断层识别。首先我们利用 Wu 等人\r\n开发的通过调整不同参数生成不同类型数据集的工具制作了包含不同类型断层的合成地震记录，并用数据增强技\r\n术和归一化对其进行了预处理，将地震数据中以每个采样点为中心的高为 48 像素宽为 32 像素的方形的像素块作\r\n为输入；构建卷积神经网络模型，通过训练对模型参数进行对比，最终采用 adam 优化函数，初始学习率设置为\r\n0.001，设置 batch size 为 64，全连接层 dropout 为 0.5，激活函数采用 Relu 函数；用合成地震记录对训练得\r\n到的模型进行测试，准确率为 92.36%，结果验证了用卷积神经网络进行断层识别的可行性', null, '2020-03-27 11:00:12', '2020-03-27 11:00:16');
INSERT INTO `itemresearch` VALUES ('5', '地震纹理分析在油气勘探中应用进展', '2020-03-27 10:58:47', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1585287714269&di=3a637be9a106b46bc493efcbf5c58335&imgtype=0&src=http%3A%2F%2Fwww.0769chtonb.com%2Fresource%2Fimages%2Ff5383921238645808469e83405317476_3.jpg', '将 图像处 理技术 中的纹理分 析理 念运用到地震油气 勘探 中 ，一方 面丰 富了纹理 分析 的内容 ，另一方 面也为 地震油气勘探提供了新思路。文章在收集、整理相关文献的基础上 ，从以下三个方面分析 、归纳了地震纹理分析技 术的发展现状：①就地震纹理分析的发展历程而言，发展较早但实际应用较晚，尤其在国内；②就地震纹理分析的 算法而言，目前应用比较广泛的算法有两种，分别是：灰度共生矩阵(GLCM)和纹理模型回归分析(TMR)；⑧就地 震纹理在油气勘探的应用而言，主要表现在地震构造解释、地震相分类 、储层特征研究及预测三个方面。最后从发 展趋势上得出结论：随着地震纹理分析算法的不断发展，该技术在油气勘探领域的应用将进一步扩展，不仅表现在 碎屑岩油气，而且在碳酸盐岩甚至非常规油气中都将得到应用。因此发展前景十分广阔。', null, '2020-03-27 11:00:55', '2020-03-27 11:00:58');
INSERT INTO `itemresearch` VALUES ('6', 'very deep convolutional networks for large-scale image recognition', '2020-03-27 10:58:49', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1585287714269&di=a34feda8f40fba42f49ef208d280d41c&imgtype=0&src=http%3A%2F%2Fwww.mems.me%2Fuploadfile%2F2017%2F1119%2F20171119040451394.jpg', 'In this work we investigate the effect of the convolutional network depth on its\r\naccuracy in the large-scale image recognition setting. Our main contribution is\r\na thorough evaluation of networks of increasing depth using an architecture with\r\nvery small (3×3) convolution filters, which shows that a significant improvement\r\non the prior-art configurations can be achieved by pushing the depth to 16–19\r\nweight layers. These findings were the basis of our ImageNet Challenge 2014\r\nsubmission, where our team secured the first and the second places in the localisation and classification tracks respectively. We also show that our representations\r\ngeneralise well to other datasets, where they achieve state-of-the-art results. We\r\nhave made our two best-performing ConvNet models publicly available to facilitate further research on the use of deep visual representations in computer vision.', null, '2020-03-27 11:01:20', '2020-03-27 11:01:23');
INSERT INTO `itemresearch` VALUES ('7', 'Transfer Learning Applied to Seismic Images Classification', '2020-03-27 10:58:52', 'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1036284300,4114127965&fm=26&gp=0.jpg', 'Seismic imaging is an essential tool in oil and gas (O&G) exploration since it provides information about subsurface geometry and structural \r\nfeatures. Also, by gathering other sources of data, it is possible to identify relevant localities of hydrocarbon accumulation. Current petroleum \r\nexploration demands analysis and interpretation of large volumes of seismic data within in strict deadlines. Therefore, computational systems \r\nthat assist the expert in classifying subsurface features aiming to speed-up the analysis process are paramount to the industry development.\r\nThe growing popularity of deep learning inspired scientists to apply such methods to seismic data in real data sets. Although this technique has \r\nshown good results, a well known issue in deep learning systems is the difficulty to find a good starting point to adjust model\'s parameters. A \r\npoor initialization may lead to longer training sessions or to the inability of finding a solution. To address the initialization problem, we propose \r\nthe use of transfer learning to set a good starting point to the parameters of our model. The idea behind this technique is to use previous \r\nknowledge obtained from one task in another. In our approach, to train a convolutional neural network (CNN) for a new data set, we initialize \r\nthe model using the values of the parameters from a CNN trained with another seismic cube.\r\nWe conducted two main experiments using real seismic data sets from Scotia and Central-Graben (North Sea) basins. The first one was \r\ndesigned to verify if it is possible to train a model with a highly limited number of examples using previous knowledge. We proposed the \r\nsecond experiment to check whether training information from one cube would be useful to set a good starting point for the new model. The \r\nresults showed performance improvements, even using cubes from regions that are not geologically similar', null, '2020-03-27 11:01:47', '2020-03-27 11:01:50');
INSERT INTO `itemresearch` VALUES ('8', 'Stratigraphic Segmentation Using Convolutional Neural \r\nNetworks', '2020-03-27 10:58:55', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1585287714268&di=d8517959589b6c848537ed730e9741ab&imgtype=0&src=http%3A%2F%2Fimg.mp.itc.cn%2Fupload%2F20160616%2Fe935834a472a44db95cdfe9a11ae35f4_th.jpg', 'The Discovery of new possibles reserves is an critical activities for the oil and gas industry. The most used methods \r\nto understand the sub-surface are based on seismic surveys. however, the process of the interpretation of these \r\nsurveys are very expensive and due to the volume of data it overload the human capabilities. On the other hand, \r\ndeep learning techniques have been increasingly applied in several areas of science to help in tasks that were \r\nconsidered human-centered, such as image classification and language translation, among others. We propose a \r\nmachine learning methodology to classify seismic data at the pixel level, producing an interpretation mask \r\nsuggestion. Our methodology comprises three main parts: model selection, dataset preparation, and training. We \r\nalso present Danet-FCN3, a deep neural network specifically designed to classify seismic images at pixel level \r\nresolution. We have recently demonstrated that our deep learning models can distinguish among different rock \r\nlayers helping the expert to interpret new seismic images. The dataset preparation processes the raw post-stacked \r\ndata and the interpretation labels to produce training, validation and testing sets.', null, '2020-03-27 11:02:13', '2020-03-27 11:02:16');
INSERT INTO `itemresearch` VALUES ('9', 'A Survey on Transfer Learning', '2020-03-27 14:32:43', 'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1036284300,4114127965&fm=26&gp=0.jpg', 'A major assumption in many machine learning and data mining algorithms is that the training and future data must be\r\nin the same feature space and have the same distribution. However, in many real-world applications, this assumption may not hold.\r\nFor example, we sometimes have a classification task in one domain of interest, but we only have sufficient training data in another\r\ndomain of interest, where the latter data may be in a different feature space or follow a different data distribution. In such cases,\r\nknowledge transfer, if done successfully, would greatly improve the performance of learning by avoiding much expensive data labeling\r\nefforts. In recent years, transfer learning has emerged as a new learning framework to address this problem. This survey focuses on\r\ncategorizing and reviewing the current progress on transfer learning for classification, regression and clustering problems. In this survey,\r\nwe discuss the relationship between transfer learning and other related machine learning techniques such as domain adaptation, multitask learning and sample selection bias, as well as co-variate shift. We also explore some potential future issues in transfer learning\r\nresearch.', null, '2020-03-27 14:33:39', '2020-03-27 14:33:42');
INSERT INTO `itemresearch` VALUES ('10', 'Seismic facies classification using different deep convolutional neural networks', '2020-03-27 14:33:15', 'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1036284300,4114127965&fm=26&gp=0.jpg', 'Convolutional neural networks (CNNs) is a type of \r\nsupervised learning technique that can be directly applied to \r\namplitude data for seismic data classification. The high \r\nflexibility in CNN architecture enables researchers to design \r\ndifferent models for specific problems. In this study, I \r\nintroduce an encoder-decoder CNN model for seismic facies \r\nclassification, which classifies all samples in a seismic line \r\nsimultaneously and provides superior seismic facies quality \r\ncomparing to the traditional patch-based CNN methods. I \r\ncompare the encoder-decoder model with a traditional patchbased model to conclude the usability of both CNN \r\narchitectures.', null, '2020-03-27 14:34:05', '2020-03-27 14:34:08');
INSERT INTO `itemresearch` VALUES ('11', 'Transfer Learning Applied to Seismic Images Classification', '2020-03-27 14:33:19', 'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1036284300,4114127965&fm=26&gp=0.jpg', 'Seismic imaging is an essential tool in oil and gas (O&G) exploration since it provides information about subsurface geometry and structural \r\nfeatures. Also, by gathering other sources of data, it is possible to identify relevant localities of hydrocarbon accumulation. Current petroleum \r\nexploration demands analysis and interpretation of large volumes of seismic data within in strict deadlines. Therefore, computational systems \r\nthat assist the expert in classifying subsurface features aiming to speed-up the analysis process are paramount to the industry development.\r\nThe growing popularity of deep learning inspired scientists to apply such methods to seismic data in real data sets. Although this technique has \r\nshown good results, a well known issue in deep learning systems is the difficulty to find a good starting point to adjust model\'s parameters. A \r\npoor initialization may lead to longer training sessions or to the inability of finding a solution. To address the initialization problem, we propose \r\nthe use of transfer learning to set a good starting point to the parameters of our model. The idea behind this technique is to use previous \r\nknowledge obtained from one task in another. In our approach, to train a convolutional neural network (CNN) for a new data set, we initialize \r\nthe model using the values of the parameters from a CNN trained with another seismic cube.', null, '2020-03-27 14:34:34', '2020-03-27 14:34:37');

-- ----------------------------
-- Table structure for navigationbar
-- ----------------------------
DROP TABLE IF EXISTS `navigationbar`;
CREATE TABLE `navigationbar` (
  `id` int(11) NOT NULL auto_increment,
  `parentid` int(11) default NULL,
  `name` varchar(255) default NULL,
  `createtime` datetime default NULL,
  `updatetime` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of navigationbar
-- ----------------------------
INSERT INTO `navigationbar` VALUES ('1', '0', '关于我们', '2020-03-25 11:11:52', '2020-03-25 11:11:54');
INSERT INTO `navigationbar` VALUES ('2', '0', '研究中心', '2020-03-25 11:11:57', '2020-03-25 11:12:00');
INSERT INTO `navigationbar` VALUES ('3', '0', 'FAPS众创', '2020-03-25 11:12:03', '2020-03-25 11:12:05');
INSERT INTO `navigationbar` VALUES ('4', '0', '产品与服务', '2020-03-25 11:12:08', '2020-03-25 11:12:11');
INSERT INTO `navigationbar` VALUES ('5', '0', 'FAPS新闻', '2020-03-25 11:12:14', '2020-03-25 11:12:17');
INSERT INTO `navigationbar` VALUES ('6', '0', '联系我们', '2020-03-25 11:12:20', '2020-03-25 11:12:22');
INSERT INTO `navigationbar` VALUES ('7', '2', '技术共享', '2020-03-25 11:12:25', '2020-03-25 11:12:28');
INSERT INTO `navigationbar` VALUES ('8', '2', '研究成果', '2020-03-25 11:12:32', '2020-03-25 11:12:35');
INSERT INTO `navigationbar` VALUES ('9', '2', '优选文献', '2020-03-25 11:12:38', '2020-03-25 11:12:40');
INSERT INTO `navigationbar` VALUES ('10', '2', '优选视频', '2020-03-25 11:12:43', '2020-03-25 11:12:46');
INSERT INTO `navigationbar` VALUES ('11', '2', '优选图片', '2020-03-25 11:12:48', '2020-03-25 11:12:50');
INSERT INTO `navigationbar` VALUES ('12', '3', '开放基金', '2020-03-25 11:12:53', '2020-03-25 11:12:55');
INSERT INTO `navigationbar` VALUES ('13', '3', '实践基地', '2020-03-25 11:12:58', '2020-03-25 11:13:00');
INSERT INTO `navigationbar` VALUES ('14', '4', '自主研发', '2020-03-25 11:13:02', '2020-03-25 11:13:05');
INSERT INTO `navigationbar` VALUES ('15', '4', '技术服务', '2020-03-25 11:13:07', '2020-03-25 11:13:11');
INSERT INTO `navigationbar` VALUES ('16', '4', '产品代理', '2020-03-25 11:13:09', '2020-03-25 11:13:14');

-- ----------------------------
-- Table structure for process_itemaccumulation
-- ----------------------------
DROP TABLE IF EXISTS `process_itemaccumulation`;
CREATE TABLE `process_itemaccumulation` (
  `id` int(11) NOT NULL,
  `processid` int(11) default NULL,
  `itemaccumulationid` int(11) default NULL,
  `createtime` datetime default NULL,
  `updatetime` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of process_itemaccumulation
-- ----------------------------
INSERT INTO `process_itemaccumulation` VALUES ('1', '3', '1', '2020-03-27 14:53:13', '2020-03-27 14:53:16');
INSERT INTO `process_itemaccumulation` VALUES ('2', '3', '2', '2020-03-27 14:53:19', '2020-03-27 14:53:27');
INSERT INTO `process_itemaccumulation` VALUES ('3', '3', '3', '2020-03-27 14:53:22', '2020-03-27 14:53:30');
INSERT INTO `process_itemaccumulation` VALUES ('4', '3', '4', '2020-03-27 14:53:25', '2020-03-27 14:53:32');

-- ----------------------------
-- Table structure for process_itempublication
-- ----------------------------
DROP TABLE IF EXISTS `process_itempublication`;
CREATE TABLE `process_itempublication` (
  `id` int(11) NOT NULL auto_increment,
  `processid` int(11) default NULL,
  `publicationid` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of process_itempublication
-- ----------------------------
INSERT INTO `process_itempublication` VALUES ('1', '4', '1');
INSERT INTO `process_itempublication` VALUES ('2', '4', '2');
INSERT INTO `process_itempublication` VALUES ('3', '4', '3');
INSERT INTO `process_itempublication` VALUES ('4', '4', '4');
INSERT INTO `process_itempublication` VALUES ('5', '5', '5');
INSERT INTO `process_itempublication` VALUES ('6', '5', '6');
INSERT INTO `process_itempublication` VALUES ('7', '5', '7');
INSERT INTO `process_itempublication` VALUES ('8', '5', '8');
INSERT INTO `process_itempublication` VALUES ('9', '5', '9');
INSERT INTO `process_itempublication` VALUES ('10', '6', '10');
INSERT INTO `process_itempublication` VALUES ('11', '6', '11');
INSERT INTO `process_itempublication` VALUES ('12', '6', '12');
INSERT INTO `process_itempublication` VALUES ('13', '6', '13');
INSERT INTO `process_itempublication` VALUES ('14', '6', '14');
INSERT INTO `process_itempublication` VALUES ('15', '7', '15');
INSERT INTO `process_itempublication` VALUES ('16', '7', '16');
INSERT INTO `process_itempublication` VALUES ('17', '7', '17');
INSERT INTO `process_itempublication` VALUES ('18', '7', '18');
INSERT INTO `process_itempublication` VALUES ('19', '8', '19');
INSERT INTO `process_itempublication` VALUES ('20', '8', '20');
INSERT INTO `process_itempublication` VALUES ('21', '8', '21');
INSERT INTO `process_itempublication` VALUES ('22', '8', '22');
INSERT INTO `process_itempublication` VALUES ('23', '9', '23');
INSERT INTO `process_itempublication` VALUES ('24', '9', '24');
INSERT INTO `process_itempublication` VALUES ('25', '9', '25');
INSERT INTO `process_itempublication` VALUES ('26', '9', '26');

-- ----------------------------
-- Table structure for process_itemresearch
-- ----------------------------
DROP TABLE IF EXISTS `process_itemresearch`;
CREATE TABLE `process_itemresearch` (
  `id` int(11) NOT NULL auto_increment,
  `processid` int(11) default NULL,
  `itemresearchid` int(11) default NULL,
  `createtime` datetime default NULL,
  `updatetime` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of process_itemresearch
-- ----------------------------
INSERT INTO `process_itemresearch` VALUES ('1', '1', '1', '2020-03-27 11:03:12', '2020-03-27 11:03:15');
INSERT INTO `process_itemresearch` VALUES ('2', '1', '2', '2020-03-27 11:03:51', '2020-03-27 11:03:53');
INSERT INTO `process_itemresearch` VALUES ('3', '1', '3', '2020-03-27 11:03:56', '2020-03-27 11:04:11');
INSERT INTO `process_itemresearch` VALUES ('4', '1', '4', '2020-03-27 11:03:58', '2020-03-27 11:04:13');
INSERT INTO `process_itemresearch` VALUES ('5', '1', '5', '2020-03-27 11:04:00', '2020-03-27 11:04:17');
INSERT INTO `process_itemresearch` VALUES ('6', '1', '6', '2020-03-27 11:04:03', '2020-03-27 11:04:19');
INSERT INTO `process_itemresearch` VALUES ('7', '1', '7', '2020-03-27 11:04:06', '2020-03-27 11:04:24');
INSERT INTO `process_itemresearch` VALUES ('8', '1', '8', '2020-03-27 11:04:08', '2020-03-27 11:04:26');
INSERT INTO `process_itemresearch` VALUES ('9', '2', '9', '2020-03-27 14:35:20', '2020-03-27 14:35:28');
INSERT INTO `process_itemresearch` VALUES ('10', '2', '10', '2020-03-27 14:35:22', '2020-03-27 14:35:31');
INSERT INTO `process_itemresearch` VALUES ('11', '2', '11', '2020-03-27 14:35:25', '2020-03-27 14:35:34');

-- ----------------------------
-- Table structure for researchprocess
-- ----------------------------
DROP TABLE IF EXISTS `researchprocess`;
CREATE TABLE `researchprocess` (
  `id` int(11) NOT NULL auto_increment,
  `navigationbarid` int(11) NOT NULL,
  `content` varchar(255) default NULL,
  `createtime` datetime default NULL,
  `updatetime` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of researchprocess
-- ----------------------------
INSERT INTO `researchprocess` VALUES ('1', '7', '实验研究', '2020-03-26 19:55:36', '2020-03-26 19:55:40');
INSERT INTO `researchprocess` VALUES ('2', '7', '项目案例', '2020-03-26 19:55:56', '2020-03-26 19:55:58');
INSERT INTO `researchprocess` VALUES ('3', '7', '点滴积累', '2020-03-26 19:56:13', '2020-03-26 19:56:15');
INSERT INTO `researchprocess` VALUES ('4', '8', '文章发表', '2020-03-27 09:31:36', '2020-03-27 09:31:39');
INSERT INTO `researchprocess` VALUES ('5', '8', '专利权', '2020-03-27 09:31:51', '2020-03-27 09:31:54');
INSERT INTO `researchprocess` VALUES ('6', '8', '软件著作权', '2020-03-27 09:53:10', '2020-03-27 09:53:12');
INSERT INTO `researchprocess` VALUES ('7', '9', '断层内部结构', '2020-03-27 09:54:37', '2020-03-27 09:54:39');
INSERT INTO `researchprocess` VALUES ('8', '9', '断层封闭性', '2020-03-27 09:55:01', '2020-03-27 09:55:03');
INSERT INTO `researchprocess` VALUES ('9', '9', '断层稳定性', '2020-03-27 09:56:34', '2020-03-27 09:56:36');
