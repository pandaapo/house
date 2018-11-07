create table `house` (
`id` bigint(20) unsigned not null AUTO_INCREMENT COMMENT '主键id',
`name` varchar (20) not null default '' COMMENT '房产名称',
`type` tinyint1 not null default '0' COMMENT '1:销售，2：出租',
`price` int (11) not null COMMENT '单位元',
`images` varchar (1024) not null default '' COMMENT '图片地址',
`area` int(11) not null default '0' COMMENT '面积',
`beds` int(11) not null default '0' COMMENT '卧室数量',
`baths` int (11) not null default '0' COMMENT '卫生间数量',
`rating` double not null default '0' COMMENT '评级',
`remarks` varchar (512) not null default '' COMMENT '房产描述',
`properties` varchar (512) not null default '' COMMENT '属性',
`floor_plan` varchar (250) not null default '' COMMENT '户型图',
`tags` varchar (20) not null default '' COMMENT '标签',
`create_time` date not null COMMENT '创建时间',
`city_id` int(11) not null default '0' COMMENT '城市名称',
`community_id` int (11) not null default '0' COMMENT '小区名称',
`address` varchar (20) not null default '' COMMENT '房产地址',
`state` tinyint(1) default '1' COMMENT '1-上架，2-下架',
primary key (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8

create table `community` (
`id` int (11) unsigned not null AUTO_INCREMENT,
`city_code` varchar (11) not null default '' COMMENT '城市编码',
`name` varchar (50) not null default '' COMMENT '小区名称',
`city_name` varchar (11) not null default '' COMMENT '城市名称',
primary key (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 default CHARSET=utf8

create table `user` (
`id` bigint(20) unsigned not null AUTO_INCREMENT COMMENT '主键',
`name` varchar (20) not null default '' COMMENT '姓名',
`phone` char (13) not null default '' COMMENT '手机号',
`email` varchar (90) not null default '' COMMENT '电子邮件',
`aboutme` varchar (250) not null default '' COMMENT '自我介绍',
`passwd` varchar (512) not null default '' COMMENT '经过MD5加密的密码',
`avatar` varchar (512) not null default '' COMMENT '头像图片',
`type` tinyint(1) not null COMMENT '1:普通用户，2：房产经纪人',
`create_time` date not null COMMENT '创建时间',
`enable` tinyint(1) not null COMMENT '1启用，0停用',
`agency_id` int(11) not null default '0' COMMENT '所属经纪机构',
primary key (`id`),
UNIQUE key `idx_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8

create table `house_user` (
`id` bigint(20) unsigned not null AUTO_INCREMENT,
`house_id` bigint(20) not null COMMENT '房屋ID',
`user_id` bigint(20) not null COMMENT '用户id',
`create_time` date not null COMMENT '创建时间',
`type` tinyint(1) not null COMMENT '1-售卖，2-收藏',
primary key (`id`),
UNIQUE KEY `house_id_user_id_type` (`house_id`,`user_id`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8

create table `house_msg` (
`id` bigint(20) unsigned not null AUTO_INCREMENT,
`msg` varchar(512) not null default '' COMMENT '消息',
`create_time` date not null COMMENT '创建时间',
`agent_id` bigint(20) not null COMMENT '经纪人id',
`house_id` bigint(20) not null COMMENT '房屋id',
`user_name` varchar (20) not null default '' COMMENT '用户姓名',
primary key (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8

create table `agency` (
`id` int(11) unsigned not null AUTO_INCREMENT,
`name` varchar(20) not null default '' COMMENT '经纪机构名称',
`address` varchar (100) not null default '' COMMENT '地址',
`phone` varchar (30) not null default '' COMMENT '手机',
`email` varchar (50) not null default '' COMMENT '电子邮件',
`about_us` varchar (100) not null default '' COMMENT '描述',
`mobile` varchar (11) not null default '' COMMENT '电话',
`web_site` varchar (20) not null default '' COMMENT '网站',
primary key (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8

create table `comment` (
`id` bigint(20) unsigned not null AUTO_INCREMENT,
`content` varchar (512) not null default '' COMMENT '评论给内容',
`house_id` bigint(20) not null COMMENT '房屋id',
`create_time` date not null COMMENT '发布时间戳',
`blog_id` int (11) not null COMMENT '博客id',
`type` tinyint(1) not null COMMENT '类型1-房屋评论，2-博客评论',
`user_id` bigint(20) not null COMMENT '评论用户',
primary key (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8

create table `blog` (
`id` int(11) unsigned not null AUTO_INCREMENT,
`tags` varchar (20) not null default '' COMMENT '标签',
`content` text not null COMMENT '内容',
`create_time` date not null COMMENT '日期',
`title` varchar (20) not null default '' COMMENT '标题',
`cat` int(11) default null COMMENT '分类1-准备买房，2-看房/选房,3-签约/定房，4-全款/贷款，5-缴税/过户，6-入住/交接，7-买房风险',
primary key (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8