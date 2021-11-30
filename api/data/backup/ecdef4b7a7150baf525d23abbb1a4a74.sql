/*
MySQL Database SysBackup Tools
Search:localhost:3306
Database:study
Data:2021-05-07 10:08:19
*/
SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for s_admin
-- ----------------------------
DROP TABLE IF EXISTS `s_admin`;
CREATE TABLE `s_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL COMMENT '登录ip',
  `login_time` int(11) NOT NULL DEFAULT '0',
  `nickname` varchar(255) DEFAULT NULL,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  `state` int(11) NOT NULL DEFAULT '0' COMMENT '是否禁用',
  `tid` int(11) NOT NULL DEFAULT '0' COMMENT '教师id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COMMENT='管理员表';
-- ----------------------------
-- Records of s_admin
-- ----------------------------
INSERT INTO `s_admin` (`id`,`username`,`password`,`ip`,`login_time`,`nickname`,`uniacid`,`create_time`,`update_time`,`state`,`tid`) VALUES ('1','admin','fc1d65c8e32d6e7ab4e76ecc873d95d0','192.168.124.14','1620350231','admin','0','0','1620350231','0','1');

-- ----------------------------
-- Table structure for s_article
-- ----------------------------
DROP TABLE IF EXISTS `s_article`;
CREATE TABLE `s_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '文章标题',
  `short_title` varchar(255) DEFAULT NULL COMMENT '文章短标题',
  `summary` varchar(255) DEFAULT NULL COMMENT '文章摘要',
  `image` int(11) NOT NULL DEFAULT '0' COMMENT '文章标题图片',
  `reading_volume` int(11) NOT NULL DEFAULT '0' COMMENT '文章阅读量',
  `content` text COMMENT '正文内容',
  `is_hidden` int(11) NOT NULL DEFAULT '0' COMMENT '隐藏',
  `is_tui` int(11) NOT NULL DEFAULT '0' COMMENT '是否推荐',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  `delete_time` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COMMENT='文章表';
-- ----------------------------
-- Records of s_article
-- ----------------------------
INSERT INTO `s_article` (`id`,`title`,`short_title`,`summary`,`image`,`reading_volume`,`content`,`is_hidden`,`is_tui`,`create_time`,`update_time`,`delete_time`,`type`) VALUES ('3','33311','文章短标题','党的十九届五中全会是我们党在全面建。。。。。。','3','62','<p>&quot;</p><p style="margin-top: 23px; margin-bottom: 0px; padding: 0px; text-align: justify; font-size: 14px; line-height: 38px; font-family: &quot;Microsoft YaHei&quot;, 微软雅黑; white-space: normal;">本报讯 商务部发布的数据显示，2020年1-11月中国对外非金融类直接投资6593.6亿元(折合950.8亿美元)，同比下降3.1%。对外承包工程新签合同额13828.2亿元（折合1994亿美元），同比下降3.7%；完成营业额8349.6亿元（折合1204亿美元），同比下降10.2%。对外劳务合作派出各类劳务人员25.5万人，11月末在外各类劳务人员63.5万人。</p><p style="margin-top: 23px; margin-bottom: 0px; padding: 0px; text-align: justify; font-size: 14px; line-height: 38px; font-family: &quot;Microsoft YaHei&quot;, 微软雅黑; white-space: normal;">　　统计显示，1-11月中国对“一带一路”沿线国家非金融类直接投资159.6亿美元，同比增长24.9%，占同期总额的16.8%，比上年提升3.9个百分点。在沿线国家新签承包工程合同额1143.8亿美元，完成营业额708.7亿美元，分别占同期总额的57.4%和58.9%。 （姚文）</p><center style="font-family: &quot;Microsoft YaHei&quot;, 微软雅黑; white-space: normal;"><table align="center" width="40%"><tbody><tr class="firstRow"></tr></tbody></table></center><p>(责编：赵安妮(实习生)、李栋)</p><p><br/></p><p>&quot;</p>','0','0','1970','1619764647','1619764647','0');
INSERT INTO `s_article` (`id`,`title`,`short_title`,`summary`,`image`,`reading_volume`,`content`,`is_hidden`,`is_tui`,`create_time`,`update_time`,`delete_time`,`type`) VALUES ('7','让乡村振兴的“里子”更充实','文章短标题','　日前，浙江杭州临安区青山湖街道召开新闻发布会，全面招募“乡村运营师”。','6','75','<p style="margin-top: 23px; margin-bottom: 0px; padding: 0px; text-align: justify; font-size: 14px; line-height: 38px; font-family: &quot;Microsoft YaHei&quot;, 微软雅黑; white-space: normal;">　日前，浙江杭州临安区青山湖街道召开新闻发布会，全面招募“乡村运营师”。来自青山湖街道洪村村、郎家村、孝村村、白水涧村、研里村、朱村村6个村的村书记，共同签署了“乡村运营师招商服务承诺书”，以保障“乡村运营师”团队在村里更好地开展运营工作。</p><p style="margin-top: 23px; margin-bottom: 0px; padding: 0px; text-align: justify; font-size: 14px; line-height: 38px; font-family: &quot;Microsoft YaHei&quot;, 微软雅黑; white-space: normal;">　　近年来，通过美丽乡村建设，青山湖街道各个村庄面貌焕然一新，但乡村“面子”美了，“里子”还需充实，产业如何植入、乡村振兴如何实现，这些问题始终困扰着几位村书记。</p><p style="margin-top: 23px; margin-bottom: 0px; padding: 0px; text-align: justify; font-size: 14px; line-height: 38px; font-family: &quot;Microsoft YaHei&quot;, 微软雅黑; white-space: normal;">　　2017年年初，临安首次提出“村落景区”概念，同年5月，临安进一步提出“村落景区运营”概念，并开始探索市场化运营模式，致力于与爱乡村、会策划、懂营销的团队开展合作，让村落资源发挥市场化效应，将乡村资源优势、生态优势转化为经济优势、发展优势，让美丽村庄也有美丽经济。</p><p style="margin-top: 23px; margin-bottom: 0px; padding: 0px; text-align: justify; font-size: 14px; line-height: 38px; font-family: &quot;Microsoft YaHei&quot;, 微软雅黑; white-space: normal;">　　3年间，在乡村文旅运营方面，临安做了许多积极探索和实践。目前，已有14家村落景区与运营商签约合作，完成落户项目53个，项目总投资达5.2亿元。3年来，12个村落景区共吸引返乡青年100余人，各类手工匠人参与业态运营96个，增加村民就业岗位200余个。临安村落景区市场化运营的创新举措，引起全国各地的广泛关注，不少地方学习“临安模式”，开始推广实施乡村市场化运营。</p><p style="margin-top: 23px; margin-bottom: 0px; padding: 0px; text-align: justify; font-size: 14px; line-height: 38px; font-family: &quot;Microsoft YaHei&quot;, 微软雅黑; white-space: normal;">　　如今，招引市场化主体来进行村落景区整体运营的“临安模式”再度完善升级。青山湖街道“乡村运营师”开启全面招募。此次招聘的乡村运营师需与村集体自愿签约，双方以资源资产使用权或资金入股组建运营公司，青山湖街道将主要负责村落景区的基础设施建设，运营由乡村运营师团队负责，收益按照公司股份分成。这些村落将借助乡村运营师之手丰富新产品、发展新业态、注入新理念，通过市场化运营，增强村落景区的旅游吸引力以及市场竞争力，实现整村产业融合发展目标。</p><p style="margin-top: 23px; margin-bottom: 0px; padding: 0px; text-align: justify; font-size: 14
px; line-height: 38px; font-family: &quot;Microsoft YaHei&quot;, 微软雅黑; white-space: normal;">　　在临安区文旅局副局长陈伟洪看来，一支优秀的乡村运营师队伍应当具备以下五个能力：第一，要有运营策划能力；第二，要有优质文旅资源可以导入乡村；第三，要能组建平台，将乡村资源盘活；第四，要有乡村理想，热爱乡村；第五，要有工匠精神，能深耕乡村。“乡村运营不单是乡村旅游，更是乡村振兴的一个有效路径。”陈伟洪说。</p><p>(责编：孟植良、任一林)</p><p><br/></p>','0','1','1616807876','1619148206','0','0');
INSERT INTO `s_article` (`id`,`title`,`short_title`,`summary`,`image`,`reading_volume`,`content`,`is_hidden`,`is_tui`,`create_time`,`update_time`,`delete_time`,`type`) VALUES ('8','全面建设社会主义现代化国家高质量供给来自哪里 ','文章短标题','党的十九届五中全会是我们党在全面建。。。。。。','8','31','<p>&quot;</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; line-height: 14px; color: rgb(51, 51, 51); font-family: SimSun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">寒潮下的天津港，气温接近零下10摄氏度。在天津港码头，总能看到引航员在寒风中脚踩摇晃的软梯登上十几米高的船舶甲板，引航一艘艘巨轮穿梭于天津港航道之上。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; line-height: 28px; color: rgb(51, 51, 51); font-family: SimSun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">我国规定对外籍船舶进出实施强制引航。国外船只进出天津港时，由于航道复杂，必须由熟悉航道走向和港池水深的引航员上船“代驾”，并指挥调配拖轮协助船只安全靠离码头。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; line-height: 28px; color: rgb(51, 51, 51); font-family: SimSun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">引航工作不分昼夜且风险性高，最危险的环节往往发生在登船时。在冬日里，引航员们常常冒着寒风从直升机上垂直降落在船舶甲板上或“踩着”浪花沿着十几米高的引航软梯攀登上船。“遇到恶劣天气时，船与拖轮间会因海浪有很高的落差，会给攀爬软梯带来很大困难，每次执行引航任务都要承受来自身体和心理的巨大压力。”在天津港引航17年的高级引航员李占涛说。指挥几十万吨的巨轮以厘米级的速度精准靠岸，考验的不止是知识和经验，更考验着他们的生理极限。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; line-height: 28px; color: rgb(51, 51, 51); font-family: SimSun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">天津港是繁忙的世界级大港，即使在寒冬时节，进出天津港码头的航道上，船舶依然川流不息。天津港引航中心作为天津港的唯一引航机构，共有136名引航员。元旦假期期间，天津港引航中心超过50名引航员坚守在引航岗位上。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; line-height: 28px; color: rgb(51, 51, 51); font-family: SimSun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">一年365天，引航员们伴着星光，脚踩浪花，在雾中守候，在风中靠泊，在引航梯上“攀岩”，为天津港建设世界一流港口保驾护航。新华社发（孙凡越、赵子硕 摄）</p><p><br/></p><p>&quot;</p>','0','1','1616807876','1619071353','0','0');
INSERT INTO `s_article` (`id`,`title`,`short_title`,`summary`,`image`,`reading_volume`,`content`,`is_hidden`,`is_tui`,`create_time`,`update_time`,`delete_time`,`type`) VALUES ('9','全面建设社会主义现代化国家高质量供给来自哪里 ','文章短标题','党的十九届五中全会是我们党在全面建。。。。。。','3','12','<p>编者按

　　党的十九届五中全会是我们党在全面建成小康社会胜利在望、全面建设社会主义现代化国家新征程即将开启的重要历史时刻召开的一次十分重要的会议，全会通过的《中共中央关于制定国民经济和社会发展第十四个五年规划和二〇三五年远景目标的建议》（以下简称《建议》），是开启全面建设社会主义现代化国家新征程、向第二个百年奋斗目标进军的纲领性文件，是今后五年乃至更长时间中国经济社会发展的行动指南。为深入学习贯彻党的十九届五中全会精神，本报与广东省社会科学界联合会特邀我省优秀社会科学家，围绕推动高质量发展、加快构建新发展格局、全面推进乡村振兴、推进社会主义文化强国建设等重大问题撰写刊发一组理论文章，敬请垂注。

　　我国即将跨入全面建设社会主义现代化国家的新阶段。这个新阶段的基本特征是高质量发展。高质量发展就是以高质量供给不断地满足人民群众的高品质需要。正因为如此，《建议》明确地把高质量发展和深化供给侧结构性改革作为我国“十四五”发展规划的主题主线。那么，高质量供给从哪里来？

　　一是技术创新。我们现在使用的诸如智能手机、数码相机、智能玩具和电动飞行器等许多产品在几十年前都不曾见过。与人们生活密切相关的产品种类从上世纪80年代初期不足百种到现在多达上万种。即使是同一类产品，款式、品种、功能与档次等也是多种多样、琳琅满目，同时，每一种产品的功能不断更新，诸如食品越来越突出绿色、健康、卫生以及地方特色，手机从单纯打电话发展到集社交、支付、计算、门禁、网上阅读、听音乐、看电影以及网络阅读等众多功能于一体，许多家具企业从标准化的制造商转向了以定制化为主的服务商。显然，我们生活中发生的这些变化都是创新推动的结果。未来，新一轮科技革命与产业变革的快速进步将使生产与生活方式发生更深刻、更迅速的变化。习近平总书记在浦东开发开放30周年庆祝大会上指出：“科学技术从来没有像今天这样深刻影响着国家前途命运，从来没有像今天这样深刻影响着人民幸福安康。”在这个科技快速进步的时代，哪个企业能不断聚焦新产品、新技术与新模式，把创新作为第一动力，不断加大创新投入，它在激烈的市场竞争中就能抢占更多的市场份额。哪一个城市和地区能围绕着创新配置资源与布局产业，它们就会脱颖而出。

　　二是工匠精神。工匠精神就是一种一丝不苟、精益求精的工作态度，孜孜不倦、精雕细琢的职业精神。一个企业要重视长期发展，懂得渐进变革，关注质量改进，就离不开工匠精神。因为提供高质量产品与服务的关键在于对细节的专注，在品质革命中，细节决定竞争力。当然，重视质量与品质并不是与生俱来的，而是在质量决定生存的环境中逼出来的。比如说，19世纪末期，“德国制造”被英国人当成是低质工业品的标签。二战后，“德国制造”逐步成为质量与稳定的代名词。到目前为止，德国人生产的工业制造品，大到挖地铁的掘进机，小到文具订书机，从质量上讲都称得上世界领先。之所以“德国制造”有这样的变化，就是因为德国企业自一战后就把产品质量看成是生存发展的命门，一方面由制造业的行业联盟制定很高的产品质量标准，引导企业按照高标准生产以质量提高竞争力；另一方面形成了通过企业与客户互动、促进企业开发符合客户特定需要产品的机制。这种机制使客户可以识别质量的差距，也使竞争对手难以轻易复制。在走向创新型社会中，工匠精神与创新是相互促进的，发扬工匠精神既有利于企业通过精益求精发现许多创新的机会，也有利于新创出来的产品功能不断完善。

　　三是循环效率。高质量发展不仅体现在某一种产品与服务上，还体现在生产、流通、分配、消费等环节构成的经济运行与联系上。经济学理论表明，企业将资金配置到采购、生产与销售等三个环节，从而发生了资本从货币形态转向实物与产品形态再转向货币形态的变化过程。如果每个环节占用的资金少、周转快，那么，资金的循环效率就较高。如果采购与销售中的交易成本与运输成本都较高，产品积压较多，资金周转缓慢，那么，资金的循环效率就较低。提高资金循环效率是企业提高资金配置效率的重要领域，如果资金周转缓慢，循环效率偏低，企业采购原材料与提供产品与服务的及时性、精准性与有效性都会受到影响，高质量供给也无从谈起。宏观经济是建立在微观经济活动基础上的，如果微观的资金循环效率不高，那么，宏观经济运行也会受到影响，这将迫使宏观经济环境进一步优化，交易成本与运输成本大幅度降低，从而为微观经济活动提供更好的软硬件服务。2013—2019年间，我国社会物流总费用占GDP的比重从17.3%降至14.1%，还高于世界平均水平3个百分点。这表明，我国在降低交易成本与运输成本等方面还有较大潜力。这需要在高质量发展新阶段，加大体制改革力度，打通制约产品、要素流动的各种障碍，消除地方壁垒，从而为企业提供更高质量、更低成本的公共设施网络与服务体系。

　　四是制度供给。高水平的制度供给是高质量供给中的重要组成部分，也是高质量产品与服务供给的重要支撑。推动高水平的制度供给可从三方面入手。第一，提供的制度要与国际先进的技术与质量标准相衔接、与国际通行的营商惯例相适应。高质量供给是在更开放条件下推进的，更开放的制度供给的特征是规则等制度型开放。这需要统一内外资法律法规，完善公开、透明的涉外法律体系，全面实行准入前国民待遇加负面清单管理制度，持续放宽市场准入，尊重国际营商惯例，保护外资企业合法权益。第二，市场体系建设要体现高标准要求。诸如推进营商环境向市场化、国际化与法治化等国际一流方向迈进，加快自由贸易试验区先行先试的经验做法向更大范围内复制与推广，打通部门之间、地区之间的信息孤岛，扩大市场环境中政策规则的区域一体化进程，推进更大区域内形成高效规范、公平竞争的统一市场。第三，内外贸一体化体系要加快形成。《建议》强调：“促进内外贸法律规则、监管体系、经营资质、质量标准、检测检疫、认证认可等相衔接，推进同线同标同质。”这是充分利用两个市场、两种资源，形成国内国际双循环的关键。哪些省市和地区在这些方面能率先推进，那么，它在国内国际双循环的新发展格局中就能先走一步。（广东省第二届优秀社会科学家、广东省社会科学院教授 王珺）</p>','0','1','1616807876','1619142316','0','0');
INSERT INTO `s_article` (`id`,`title`,`short_title`,`summary`,`image`,`reading_volume`,`content`,`is_hidden`,`is_tui`,`create_time`,`update_time`,`delete_time`,`type`) VALUES ('10','文章标题','文章短标题','文章摘要','7','5','<p>文章内容</p>','0','1','2021','1619147272','0','0');
INSERT INTO `s_article` (`id`,`title`,`short_title`,`summary`,`image`,`reading_volume`,`content`,`is_hidden`,`is_tui`,`create_time`,`update_time`,`delete_time`,`type`) VALUES ('11','123123','123123','12312312','0','1','<p>12312312321323213123123</p>','0','0','1618369948','1619764317','1619764317','0');
INSERT INTO `s_article` (`id`,`title`,`short_title`,`summary`,`image`,`reading_volume`,`content`,`is_hidden`,`is_tui`,`create_time`,`update_time`,`delete_time`,`type`) VALUES ('12','213123','123','123123','0','1','<p>123123123123</p>','0','1','1618370124','1619764319','1619764319','0');
INSERT INTO `s_article` (`id`,`title`,`short_title`,`summary`,`image`,`reading_volume`,`content`,`is_hidden`,`is_tui`,`create_time`,`update_time`,`delete_time`,`type`) VALUES ('13','123','123','123','0','4','<p>1231231231</p>','0','0','1618386095','1619083559','1619083559','0');
INSERT INTO `s_article` (`id`,`title`,`short_title`,`summary`,`image`,`reading_volume`,`content`,`is_hidden`,`is_tui`,`create_time`,`update_time`,`delete_time`,`type`) VALUES ('14','123WW','123','123','0','2','<p>123123</p>','0','0','1618386168','1619083708','1619083708','0');
INSERT INTO `s_article` (`id`,`title`,`short_title`,`summary`,`image`,`reading_volume`,`content`,`is_hidden`,`is_tui`,`create_time`,`update_time`,`delete_time`,`type`) VALUES ('15','123GG','123123','13213','4','3','<p>123</p>','0','0','1618386271','1619083554','1619083554','0');
INSERT INTO `s_article` (`id`,`title`,`short_title`,`summary`,`image`,`reading_volume`,`content`,`is_hidden`,`is_tui`,`create_time`,`update_time`,`delete_time`,`type`) VALUES ('16','全面建设社会主义现代化国家高质量供给来自哪里 ','文章短标题','党的十九届五中全会是我们党在全面建。。。。。。','9','10','<p>&quot;</p><p style="margin-top: 23px; margin-bottom: 0px; padding: 0px; text-align: justify; font-size: 14px; line-height: 38px; font-family: &quot;Microsoft YaHei&quot;, 微软雅黑; white-space: normal;">本报讯 商务部发布的数据显示，2020年1-11月中国对外非金融类直接投资6593.6亿元(折合950.8亿美元)，同比下降3.1%。对外承包工程新签合同额13828.2亿元（折合1994亿美元），同比下降3.7%；完成营业额8349.6亿元（折合1204亿美元），同比下降10.2%。对外劳务合作派出各类劳务人员25.5万人，11月末在外各类劳务人员63.5万人。</p><p style="margin-top: 23px; margin-bottom: 0px; padding: 0px; text-align: justify; font-size: 14px; line-height: 38px; font-family: &quot;Microsoft YaHei&quot;, 微软雅黑; white-space: normal;">　　统计显示，1-11月中国对“一带一路”沿线国家非金融类直接投资159.6亿美元，同比增长24.9%，占同期总额的16.8%，比上年提升3.9个百分点。在沿线国家新签承包工程合同额1143.8亿美元，完成营业额708.7亿美元，分别占同期总额的57.4%和58.9%。 （姚文）</p><center style="font-family: &quot;Microsoft YaHei&quot;, 微软雅黑; white-space: normal;"><table align="center" width="40%"><tbody><tr class="firstRow"></tr></tbody></table></center><p>(责编：赵安妮(实习生)、李栋)</p><p><br/></p><p>&quot;</p>','0','0','1618814882','1619146876','0','0');
INSERT INTO `s_article` (`id`,`title`,`short_title`,`summary`,`image`,`reading_volume`,`content`,`is_hidden`,`is_tui`,`create_time`,`update_time`,`delete_time`,`type`) VALUES ('17','学校相关','学校相关','学校相关','3','18','<p style="box-sizing: border-box; transition: none 0s ease 0s; margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; line-height: inherit; color: rgb(90, 90, 90); vertical-align: baseline; white-space: normal;">&nbsp;&nbsp;<span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: 宋体; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">黔西南布依族苗族自治州兴义第一中学，简称兴义一中（</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Calibri; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">Xingyi No.1 High School</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: 宋体; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">），是贵州省最早成立的公立学校之一，前身是创办于清代乾隆年间（</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Calibri; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">1736-1795</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: 宋体; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">）的兴义笔山书院，</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Calibri; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">1905</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: 宋体; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">年升格为高等小学堂，</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Calibri; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">1926</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: 宋体; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">年定名为县立兴义中学。</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Calibri; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">1982</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: 宋体; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">年，黔西南布依族苗族自治州成立，学校更名为黔西南州兴义一中。</span></p><p style="box-sizing: border-box; transition: none 0s ease 0s; margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; line-height: inherit; color: rgb(90, 90, 90); vertical-align: baseline; white-space: normal; text-indent: 28px;"><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: 宋体; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">兴义一中是贵州省首批重点中学，省级一类示范性高中。近年来荣获全国文明校园，全国教育系统先进集体，全国国防教育先进单位，全国中小学心理健康教育特色学校，全国五好小公民主题教育活动示范校，全国足球特色学校，全国学校体育工作示范校，贵州省文明单位，贵州省首批校本研修示范校，贵州省绿色学校，贵州省高中新课改优秀学校，贵州省青少年科技特色学校，贵州省中小学（幼儿园）教师专业发展示范基地校等荣誉称号。</span></p><p style="box-sizing: border-box; transition: none 0s ease 0s; margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; line-height: inherit; color: rgb(90, 90, 90); vertical-align: baseline; white-space: normal; text-indent: 28px;"><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Calibri; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">&nbsp;</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: 宋体; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">校园面积</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Calibri; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">204</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: 宋体; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">亩，教学占地面积</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Calibri; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">167</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: 宋体; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">亩，布局合理，功能设施齐备，环境优美，学校现有</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Calibri; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">75</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: 宋体; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">个班，在校生</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Calibri; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">3719</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: 宋体; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">人。现有教职工</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Calibri; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">342</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: 宋体; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">人（专任教师</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Calibri; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">326</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: 宋体; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">人）。其中，正高级教师</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Calibri; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">11</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: 宋体; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">人，高级教师</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Calibri; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">118</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: 宋体; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">人，一级教师</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Calibri; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">133</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: 宋体; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">人；黔西南州优秀科技人才</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Calibri; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">4</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: 宋体; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">人，黔西南州骨干教师</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Calibri; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">50</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: 宋体; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">人，黔西南州级名师</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Calibri; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">27</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: 宋体; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">人；省级骨干教师</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Calibri; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">22</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: 宋体; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">人，省级名师</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Calibri; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">10</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: 宋体; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">人，特级教师</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Calibri; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">13</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: 宋体; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">人，国家万人计划教学名师</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Calibri; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">1</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: 宋体; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">人。留学英国的英语教师</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Calibri; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">9</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: 宋体; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">人，贵州省名校长工作室</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Calibri; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">1</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: 宋体; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">个，贵州省名师工作室</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Calibri; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">6</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: 宋体; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">个，州级工作室</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Calibri; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">5</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: 宋体; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">个。近五年来，受国家、省、州表彰的优秀教师、班主任等有</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Calibri; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">100</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: 宋体; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">多人。</span></p><p style="box-sizing: border-box; transition: none 0s ease 0s; margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; line-height: inherit; color: rgb(90, 90, 90); vertical-align: baseline; white-space: normal; text-indent: 28px;"><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: 宋体; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">兴义一中传承创新，凝炼并实施“双主体互动式”课堂教学改革，教育教学质量大幅跃升。继</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Calibri; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">2005</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: 宋体; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">年罗远航同学获全省理科第一名后，</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Calibri; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">2020</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: 宋体; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">届黄阿想同学勇夺全省文科第一名。本届高三年级</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Calibri; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">1169</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: 宋体; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">人参考，</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Calibri; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">1029</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: 宋体; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">人上一本线，上线率</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Calibri; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">88.02%</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: 宋体; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">，比</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Calibri; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">2019</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: 宋体; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">年提升了</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Calibri; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">9.42%</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: 宋体; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">，其中有</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Calibri; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">5</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: 宋体; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">个班的一本上线率达到</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Calibri; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">100%</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: 宋体; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">；一、二本上线人数</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Calibri; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">1162</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: 宋体; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">人，上线率</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Calibri; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">99.40%</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: 宋体; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">，</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Calibri; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">600</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: 宋体; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">分以上人数</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Calibri; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">201</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: 宋体; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">人；册望班</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Calibri; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">45</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: 宋体; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">人参考，</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Calibri; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">600</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: 宋体; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">分以上</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Calibri; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">5</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: 宋体; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">人，一本线上线</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Calibri; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">41</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: 宋体; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">人，上线率</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Calibri; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">91.11%</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: 宋体; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">，比</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Calibri; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">2019</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: 宋体; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">年提升了</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Calibri; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">4.11%</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: 宋体; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">，一、二本上线</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Calibri; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">45</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: 宋体; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">人，上线率</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Calibri; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">100%</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: 宋体; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">。</span>&nbsp;<span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: 宋体; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">为全州</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Calibri; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">2020</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: 宋体; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">年高考质量的再提高做出了贡献。</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Calibri; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">&nbsp;&nbsp;&nbsp;</span></p><p style="box-sizing: border-box; transition: none 0s ease 0s; margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; line-height: inherit; color: rgb(90, 90, 90); vertical-align: baseline; white-space: normal; text-indent: 28px;"><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: 宋体; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">兴义一中秉承</span>&nbsp;<span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: 宋体; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">“勤慎笃敬”的校训和“为学生一生的成功奠基”，让教职工享受教育人生”的办学理念，以“健康的体格、健全的人格、良好的学业素养、基本的国际交往素养”为学生培养目标，构建了“面向社会、自主发展、诚信求实”的育人模式，形成了“乐学、善思、自主、善问”的良好学风和“传承创新、全面育人”的办学特色。基本实现了教学设施标准化、教育管理规范化、教育思想现代化、学生素质优良化、学校办学特色化的办学目标。</span></p><p style="box-sizing: border-box; transition: none 0s ease 0s; margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; line-height: inherit; color: rgb(90, 90, 90); vertical-align: baseline; white-space: normal; text-indent: 28px;"><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: 宋体; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">辛勤耕耘，结出累累硕果；夙愿浇灌，勃发气象万千。兴义一中与时俱进，为国家培养合格人才，已向全国各所高校输送了四十多名清华北大在内的上万名大学生。兴义一中将始终坚持大教育思想，以提高教育教学质量为核心，坚持质量强校、文化立校、管理治校、名师扬校、科研兴校战略；坚持改革，构建特色管理体系；继承弘扬</span>&nbsp;<span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: 宋体; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">“韬光养晦、厚积薄发、负重前行、默默奉献”的兴义一中精神，奋力建设和谐奋进的学校文化，形成书院文化</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Calibri; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">+</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: 宋体; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">少数民族文化</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Calibri; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">+</span><span style="box-sizing: border-box; transition: none 0s ease 0s; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: 宋体; font-size: inherit; line-height: inherit; color: inherit; vertical-align: baseline;">现代科学文化的特色学校文化，复兴兴义一中文化教育品牌，为把兴义一中办成黔滇桂区域性特色名校奠定基础。</span></p><p><br/></p>','0','0','1970','1619148365','0','1');
INSERT INTO `s_article` (`id`,`title`,`short_title`,`summary`,`image`,`reading_volume`,`content`,`is_hidden`,`is_tui`,`create_time`,`update_time`,`delete_time`,`type`) VALUES ('18','123YYTT','123TT','123TT','6','2','<p>123123123123TT</p>','0','0','2021','1618983191','1618983191','0');
INSERT INTO `s_article` (`id`,`title`,`short_title`,`summary`,`image`,`reading_volume`,`content`,`is_hidden`,`is_tui`,`create_time`,`update_time`,`delete_time`,`type`) VALUES ('19','asd','asd','asd','0','2','<p>asd</p>','0','0','2021','1619146931','1619146931','1');
INSERT INTO `s_article` (`id`,`title`,`short_title`,`summary`,`image`,`reading_volume`,`content`,`is_hidden`,`is_tui`,`create_time`,`update_time`,`delete_time`,`type`) VALUES ('20','隐私相关','隐私相关','隐私相关','0','5','<p><melo-data data-src="{&quot;mainAtext&quot;:&quot;{\&quot;atext\&quot;:{\&quot;attribs\&quot;:\&quot;*0*1*2*3+8*4*5*6*7*8*9*a*b*0*1+1*0*1*2*3+g*4*5*6*7*8*9*a*b*0*1*2*3+1*0*1*2*3+g*4*5*6*7*8*9*a*b*0*1*2*3+1*0*1*2*3+5*c*5*6*7*8*9*a*b*0*1*2*3+1*0*1*2*3+hj*4*5*6*7*8*9*a*b*0*1*2*3+1\&quot;,\&quot;text\&quot;:\&quot;如花商城隐私政策\\n最近更新日期:2020年1月1日\\n版本生效日期:2020年1月1日\\n提示条款:\\n您的信任对如花商城(我们)非常重要，我们深知个人信 息对您的重要性，我们非常重视用户的隐私和个人信息保 护。您在下载、安装、开启、浏览、注册、登录、使用(以下统称“使用”)我们的产品与/或服务时，我们可 能会收集和使用您的相关信息，我们亦将按法律法规要 求，采取相应安全保护措施，尽力保护您上述个人信息安 全可控。我们希望通过《如花商城隐私政策》(“本隐私 政策”)向您说明我们在您使用我们的产品与/或服务时 如何收集、使用、保存、共享和转让这些信息，以及我们 为您提供的访问、更新、删除和保护这些信息的方式。 本隐私政策与您所使用的如花商城服务以及该服务所包括 的各种业务功能(以下统称“我们的产品与/或服务”) 息息相关，希望您在使用我们的产品与/或服务前仔细阅 读并确认您已经充分理解本政策所写明的内容，并让您可 以按照本隐私政策的指引做出您认为适当的选择。您使用 或在我们更新本隐私政策后(我们会及时提示您更新的情 况)继续使用我们的产品与/或服务，即意味着您同意本 隐私政策(含更新版本)内容，并且同意我们按照本隐私政 策收集、使用、保存和共享您的相关信息。 需要特别说明的是，本政策不适用于其他第三方向您提供 的服务，也不适用于如花商城中已另行独立设置隐私权政 策的产品或服务。例如如花商城上的卖家依托如花商城向 您提供服务时，您向卖家提供的个人信息不适用本政策。 如对本隐私政策或相关事宜有任何问题，您可随时通过我 们提供的各种联系方式与我们联系。\\n\&quot;},\&quot;apool\&quot;:{\&quot;numToAttrib\&quot;:{\&quot;0\&quot;:[\&quot;author\&quot;,\&quot;p.51703921\&quot;],\&quot;1\&quot;:[\&quot;font-family\&quot;,\&quot;微软雅黑\&quot;],\&quot;2\&quot;:[\&quot;font-size\&quot;,\&quot;15pt\&quot;],\&quot;3\&quot;:[\&quot;color\&quot;,\&quot;#000000\&quot;],\&quot;4\&quot;:[\&quot;textalign\&quot;,\&quot;justify\&quot;],\&quot;5\&quot;:[\&quot;pap-specialIndent\&quot;,\&quot;26pt\&quot;],\&quot;6\&quot;:[\&quot;pap-line\&quot;,\&quot;15pt\&quot;],\&quot;7\&quot;:[\&quot;pap-line-rule\&quot;,\&quot;exact\&quot;],\&quot;8\&quot;:[\&quot;pap-spacing-before\&quot;,\&quot;2pt\&quot;],\&quot;9\&quot;:[\&quot;pap-spacing-after\&quot;,\&quot;0pt\&quot;],\&quot;10\&quot;:[\&quot;pap-stylesheet-name\&quot;,\&quot;normal\&quot;],\&quot;11\&quot;:[\&quot;snapToGrid\&quot;,\&quot;0\&quot;],\&quot;12\&quot;:[\&quot;textalign\&quot;,\&quot;left\&quot;]},\&quot;nextNum\&quot;:13}}&quot;,&quot;storyAtexts&quot;:[],&quot;srcGlobalPadId&quot;:&quot;300000000$JUCgcKbUKQKA&quot;}" data-version="2.1.0"></melo-data></p><p class="paragraph text-align-type-justify pap-line-15pt pap-line-rule-exact pap-spacing-before-2pt pap-spacing-after-0pt pap-firstline-indent-26pt" style="text-align:justify;line-height:20px;margin-top:2.6666666666666665px;margin-bottom:0px;text-indent:34.666666666666664px"><span style="font-size: 16px;"><span style="font-family: 微软雅黑, -apple-system, &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; letter-spacing: 0pt; vertical-align: baseline;">如花商城隐私政策</span><span style="font-family: 微软雅黑, -apple-system, &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; letter-spacing: 0pt; vertical-align: baseline;"></span></span></p><p class="paragraph text-align-type-justify pap-line-15pt pap-line-rule-exact pap-spacing-before-2pt pap-spacing-after-0pt pap-firstline-indent-26pt" style="text-align:justify;line-height:20px;margin-top:2.6666666666666665px;margin-bottom:0px;text-indent:34.666666666666664px"><span style="font-size: 15pt; font-family: 微软雅黑, -apple-system, &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; letter-spacing: 0pt; vertical-align: baseline;">最近更新日期:2020年1月1日</span></p><p class="paragraph text-align-type-justify pap-line-15pt pap-line-rule-exact pap-spacing-before-2pt pap-spacing-after-0pt pap-firstline-indent-26pt" style="text-align:justify;line-height:20px;margin-top:2.6666666666666665px;margin-bottom:0px;text-indent:34.666666666666664px"><span style="font-size: 15pt; font-family: 微软雅黑, -apple-system, &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; letter-spacing: 0pt; vertical-align: baseline;">版本生效日期:2020年1月1日</span></p><p class="paragraph text-align-type-left pap-line-15pt pap-line-rule-exact pap-spacing-before-2pt pap-spacing-after-0pt pap-firstline-indent-26pt" style="line-height: 20px; margin-top: 2.66667px; margin-bottom: 0px; text-indent: 34.6667px;"><span style="font-size: 15pt; font-family: 微软雅黑, -apple-system, &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; letter-spacing: 0pt; vertical-align: baseline;">提示条款:</span></p><p class="paragraph text-align-type-justify pap-line-15pt pap-line-rule-exact pap-spacing-before-2pt pap-spacing-after-0pt pap-firstline-indent-26pt" style="text-align:justify;line-height:20px;margin-top:2.6666666666666665px;margin-bottom:0px;text-indent:34.666666666666664px"><span style="font-family: 微软雅黑, -apple-system, &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; letter-spacing: 0pt; vertical-align: baseline; font-size: 16px;">您的信任对如花商城(我们)非常重要，我们深知个人信 息对您的重要性，我们非常重视用户的隐私和个人信息保 护。您在下载、安装、开启、浏览、注册、登录、使用(以下统称“使用”)我们的产品与/或服务时，我们可 能会收集和使用您的相关信息，我们亦将按法律法规要 求，采取相应安全保护措施，尽力保护您上述个人信息安 全可控。我们希望通过《如花商城隐私政策》(“本隐私 政策”)向您说明我们在您使用我们的产品与/或服务时 如何收集、使用、保存、共享和转让这些信息，以及我们 为您提供的访问、更新、删除和保护这些信息的方式。 本隐私政策与您所使用的如花商城服务以及该服务所包括 的各种业务功能(以下统称“我们的产品与/或服务”) 息息相关，希望您在使用我们的产品与/或服务前仔细阅 读并确认您已经充分理解本政策所写明的内容，并让您可 以按照本隐私政策的指引做出您认为适当的选择。您使用 或在我们更新本隐私政策后(我们会及时提示您更新的情 况)继续使用我们的产品与/或服务，即意味着您同意本 隐私政策(含更新版本)内容，并且同意我们按照本隐私政 策收集、使用、保存和共享您的相关信息。 需要特别说明的是，本政策不适用于其他第三方向您提供 的服务，也不适用于如花商城中已另行独立设置隐私权政 策的产品或服务。例如如花商城上的卖家依托如花商城向 您提供服务时，您向卖家提供的个人信息不适用本政策。 如对本隐私政策或相关事宜有任何问题，您可随时通过我 们提供的各种联系方式与我们联系。</span><span style="font-size: 15pt; font-family: 微软雅黑, -apple-system, &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; letter-spacing: 0pt; vertical-align: baseline;"></span></p><p><br/></p>','0','0','2021','1619602299','0','1');
INSERT INTO `s_article` (`id`,`title`,`short_title`,`summary`,`image`,`reading_volume`,`content`,`is_hidden`,`is_tui`,`create_time`,`update_time`,`delete_time`,`type`) VALUES ('21','123','123','123','6','0','<p>123123123</p>','0','0','1619163730','1619226693','1619226693','0');
INSERT INTO `s_article` (`id`,`title`,`short_title`,`summary`,`image`,`reading_volume`,`content`,`is_hidden`,`is_tui`,`create_time`,`update_time`,`delete_time`,`type`) VALUES ('22','321','321','321','6','2','<p>123</p>','0','1','1619163744','1619226691','1619226691','0');
INSERT INTO `s_article` (`id`,`title`,`short_title`,`summary`,`image`,`reading_volume`,`content`,`is_hidden`,`is_tui`,`create_time`,`update_time`,`delete_time`,`type`) VALUES ('23','qweqwe','qwe','asd','6','1','<p>asd</p>','0','0','2021','1619226682','1619226682','0');

-- ----------------------------
-- Table structure for s_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `s_auth_group`;
CREATE TABLE `s_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(255) NOT NULL DEFAULT '''\\''\\''''',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` varchar(1000) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;
-- ----------------------------
-- Records of s_auth_group
-- ----------------------------
INSERT INTO `s_auth_group` (`id`,`title`,`status`,`rules`) VALUES ('1','管理员','1','1,2,3,4,5,6,7,8,9,10,11,12,13');
INSERT INTO `s_auth_group` (`id`,`title`,`status`,`rules`) VALUES ('2','1232','1','106,14,22,26,48,113,29');
INSERT INTO `s_auth_group` (`id`,`title`,`status`,`rules`) VALUES ('3','超级管理员','1','102,96,103,2,3,28,99,104,5,38,39,40,41,105,35,36,37,106,14,22,26,48,107,23,24,49,50,51,108,13,100,109,58,59,60,110,25,27,31,101,111,19,68,69,72,112,20,21,61,62,63,64,65,113,29,114,30,32,33,34');

-- ----------------------------
-- Table structure for s_auth_group_access
-- ----------------------------
DROP TABLE IF EXISTS `s_auth_group_access`;
CREATE TABLE `s_auth_group_access` (
  `aid` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  KEY `group_id` (`group_id`) USING BTREE,
  KEY `uid` (`aid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;
-- ----------------------------
-- Records of s_auth_group_access
-- ----------------------------
INSERT INTO `s_auth_group_access` (`aid`,`group_id`) VALUES ('1','3');
INSERT INTO `s_auth_group_access` (`aid`,`group_id`) VALUES ('5','2');
INSERT INTO `s_auth_group_access` (`aid`,`group_id`) VALUES ('5','2');
INSERT INTO `s_auth_group_access` (`aid`,`group_id`) VALUES ('6','2');
INSERT INTO `s_auth_group_access` (`aid`,`group_id`) VALUES ('7','2');
INSERT INTO `s_auth_group_access` (`aid`,`group_id`) VALUES ('8','2');
INSERT INTO `s_auth_group_access` (`aid`,`group_id`) VALUES ('9','2');

-- ----------------------------
-- Table structure for s_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `s_auth_rule`;
CREATE TABLE `s_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(80) DEFAULT NULL,
  `title` char(20) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `pid` int(1) NOT NULL DEFAULT '0',
  `condition` char(100) NOT NULL DEFAULT '',
  `brief` varchar(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=119 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
-- ----------------------------
-- Records of s_auth_rule
-- ----------------------------
INSERT INTO `s_auth_rule` (`id`,`name`,`title`,`type`,`status`,`pid`,`condition`,`brief`) VALUES ('2','/user/cms_get_teacher','获取教师','1','1','103','','');
INSERT INTO `s_auth_rule` (`id`,`name`,`title`,`type`,`status`,`pid`,`condition`,`brief`) VALUES ('3','/user/get_user','获取所有用户','1','1','103','','');
INSERT INTO `s_auth_rule` (`id`,`name`,`title`,`type`,`status`,`pid`,`condition`,`brief`) VALUES ('5','/article/get_delete_article','获取回收站文章','1','1','104','','');
INSERT INTO `s_auth_rule` (`id`,`name`,`title`,`type`,`status`,`pid`,`condition`,`brief`) VALUES ('13','/course/cms_get_course','获取课程','1','1','108','','');
INSERT INTO `s_auth_rule` (`id`,`name`,`title`,`type`,`status`,`pid`,`condition`,`brief`) VALUES ('14','/class/cms_get_class','获取班级','1','1','106','','');
INSERT INTO `s_auth_rule` (`id`,`name`,`title`,`type`,`status`,`pid`,`condition`,`brief`) VALUES ('19','/cms/get_config','配置获取','1','1','111','','');
INSERT INTO `s_auth_rule` (`id`,`name`,`title`,`type`,`status`,`pid`,`condition`,`brief`) VALUES ('20','/admins/createAdmin','添加','1','1','112','','');
INSERT INTO `s_auth_rule` (`id`,`name`,`title`,`type`,`status`,`pid`,`condition`,`brief`) VALUES ('21','/group/admin/createGroup','添加分组','1','1','112','','');
INSERT INTO `s_auth_rule` (`id`,`name`,`title`,`type`,`status`,`pid`,`condition`,`brief`) VALUES ('22','/class/edit_classes','编辑班级','1','1','106','','');
INSERT INTO `s_auth_rule` (`id`,`name`,`title`,`type`,`status`,`pid`,`condition`,`brief`) VALUES ('23','/course/edit_course','编辑课程','1','1','107','','');
INSERT INTO `s_auth_rule` (`id`,`name`,`title`,`type`,`status`,`pid`,`condition`,`brief`) VALUES ('24','/course/add_course','添加课程','1','1','107','','');
INSERT INTO `s_auth_rule` (`id`,`name`,`title`,`type`,`status`,`pid`,`condition`,`brief`) VALUES ('25','/student/change_class','学生换班','1','1','110','','');
INSERT INTO `s_auth_rule` (`id`,`name`,`title`,`type`,`status`,`pid`,`condition`,`brief`) VALUES ('26','/class/add_class','添加班级','1','1','106','','');
INSERT INTO `s_auth_rule` (`id`,`name`,`title`,`type`,`status`,`pid`,`condition`,`brief`) VALUES ('27','/student/add_student','添加学生','1','1','110','','');
INSERT INTO `s_auth_rule` (`id`,`name`,`title`,`type`,`status`,`pid`,`condition`,`brief`) VALUES ('28','/user/user_to_teacher','添加教师','1','1','103','','');
INSERT INTO `s_auth_rule` (`id`,`name`,`title`,`type`,`status`,`pid`,`condition`,`brief`) VALUES ('29','/plan/add_plan','添加计划','1','1','113','','');
INSERT INTO `s_auth_rule` (`id`,`name`,`title`,`type`,`status`,`pid`,`condition`,`brief`) VALUES ('30','/video/upload_video','上传视频','1','1','114','','');
INSERT INTO `s_auth_rule` (`id`,`name`,`title`,`type`,`status`,`pid`,`condition`,`brief`) VALUES ('31','/msg/get_change_msg','获取换班日志','1','1','110','','');
INSERT INTO `s_auth_rule` (`id`,`name`,`title`,`type`,`status`,`pid`,`condition`,`brief`) VALUES ('32','/image/upload_img','图片上传','1','1','114','','');
INSERT INTO `s_auth_rule` (`id`,`name`,`title`,`type`,`status`,`pid`,`condition`,`brief`) VALUES ('33','/image/delete_img','删除图片','1','1','114','','');
INSERT INTO `s_auth_rule` (`id`,`name`,`title`,`type`,`status`,`pid`,`condition`,`brief`) VALUES ('34','/video/delete_video','删除视频','1','1','114','','');
INSERT INTO `s_auth_rule` (`id`,`name`,`title`,`type`,`status`,`pid`,`condition`,`brief`) VALUES ('35','/banner/add_banner','添加广告','1','1','105','','');
INSERT INTO `s_auth_rule` (`id`,`name`,`title`,`type`,`status`,`pid`,`condition`,`brief`) VALUES ('36','/banner/edit_banner','编辑广告','1','1','105','','');
INSERT INTO `s_auth_rule` (`id`,`name`,`title`,`type`,`status`,`pid`,`condition`,`brief`) VALUES ('37','/banner/del_banner','删除广告','1','1','105','','');
INSERT INTO `s_auth_rule` (`id`,`name`,`title`,`type`,`status`,`pid`,`condition`,`brief`) VALUES ('38','/article/add_article','添加文章','1','1','104','','');
INSERT INTO `s_auth_rule` (`id`,`name`,`title`,`type`,`status`,`pid`,`condition`,`brief`) VALUES ('39','/article/edit_article','编辑文章','1','1','104','','');
INSERT INTO `s_auth_rule` (`id`,`name`,`title`,`type`,`status`,`pid`,`condition`,`brief`) VALUES ('40','/article/del_article','删除文章','1','1','104','','');
INSERT INTO `s_auth_rule` (`id`,`name`,`title`,`type`,`status`,`pid`,`condition`,`brief`) VALUES ('41','/article/recieve_article','文章批量恢复','1','1','104','','');
INSERT INTO `s_auth_rule` (`id`,`name`,`title`,`type`,`status`,`pid`,`condition`,`brief`) VALUES ('48','/class/del_classes','删除班级','1','1','106','','');
INSERT INTO `s_auth_rule` (`id`,`name`,`title`,`type`,`status`,`pid`,`condition`,`brief`) VALUES ('49','/project/add_project','添加课程分类','1','1','107','','');
INSERT INTO `s_auth_rule` (`id`,`name`,`title`,`type`,`status`,`pid`,`condition`,`brief`) VALUES ('50','/project/edit_project','编辑课程分类','1','1','107','','');
INSERT INTO `s_auth_rule` (`id`,`name`,`title`,`type`,`status`,`pid`,`condition`,`brief`) VALUES ('51','/project/del_project','删除课程分类','1','1','107','','');
INSERT INTO `s_auth_rule` (`id`,`name`,`title`,`type`,`status`,`pid`,`condition`,`brief`) VALUES ('58','/label/add_label','添加标签','1','1','109','','');
INSERT INTO `s_auth_rule` (`id`,`name`,`title`,`type`,`status`,`pid`,`condition`,`brief`) VALUES ('59','/label/update_label','编辑标签','1','1','109','','');
INSERT INTO `s_auth_rule` (`id`,`name`,`title`,`type`,`status`,`pid`,`condition`,`brief`) VALUES ('60','/label/delete_label','删除标签','1','1','109','','');
INSERT INTO `s_auth_rule` (`id`,`name`,`title`,`type`,`status`,`pid`,`condition`,`brief`) VALUES ('61','/admins/deleteAdmin','删除管理员','1','1','112','','');
INSERT INTO `s_auth_rule` (`id`,`name`,`title`,`type`,`status`,`pid`,`condition`,`brief`) VALUES ('62','/admins/update_admin','编辑管理员','1','1','112','','');
INSERT INTO `s_auth_rule` (`id`,`name`,`title`,`type`,`status`,`pid`,`condition`,`brief`) VALUES ('63','/group/admin/updateGroup','编辑分组','1','1','112','','');
INSERT INTO `s_auth_rule` (`id`,`name`,`title`,`type`,`status`,`pid`,`condition`,`brief`) VALUES ('64','/group/admin/deleteGroup','删除分组','1','1','112','','');
INSERT INTO `s_auth_rule` (`id`,`name`,`title`,`type`,`status`,`pid`,`condition`,`brief`) VALUES ('65','/group/admin/getGroupAll','获取分组','1','1','112','','');
INSERT INTO `s_auth_rule` (`id`,`name`,`title`,`type`,`status`,`pid`,`condition`,`brief`) VALUES ('68','/cms/update_sys','更新配置','1','1','111','','');
INSERT INTO `s_auth_rule` (`id`,`name`,`title`,`type`,`status`,`pid`,`condition`,`brief`) VALUES ('69','/gy/update_ys','更新关于','1','1','111','','');
INSERT INTO `s_auth_rule` (`id`,`name`,`title`,`type`,`status`,`pid`,`condition`,`brief`) VALUES ('72','/gy/update_Fw','编辑服务','1','1','111','','');
INSERT INTO `s_auth_rule` (`id`,`name`,`title`,`type`,`status`,`pid`,`condition`,`brief`) VALUES ('99','/user/del_teacher','删除老师','1','1','103','','');
INSERT INTO `s_auth_rule` (`id`,`name`,`title`,`type`,`status`,`pid`,`condition`,`brief`) VALUES ('100','/course/del_course','删除课程','1','1','108','','');
INSERT INTO `s_auth_rule` (`id`,`name`,`title`,`type`,`status`,`pid`,`condition`,`brief`) VALUES ('101','/student/del_student','删除学生','1','1','110','','');
INSERT INTO `s_auth_rule` (`id`,`name`,`title`,`type`,`status`,`pid`,`condition`,`brief`) VALUES ('102','','首页','1','1','0','','home');
INSERT INTO `s_auth_rule` (`id`,`name`,`title`,`type`,`status`,`pid`,`condition`,`brief`) VALUES ('103','','教师管理','1','1','0','','teacher');
INSERT INTO `s_auth_rule` (`id`,`name`,`title`,`type`,`status`,`pid`,`condition`,`brief`) VALUES ('104','','文章管理','1','1','0','','article');
INSERT INTO `s_auth_rule` (`id`,`name`,`title`,`type`,`status`,`pid`,`condition`,`brief`) VALUES ('105','','内容管理','1','1','0','','banner');
INSERT INTO `s_auth_rule` (`id`,`name`,`title`,`type`,`status`,`pid`,`condition`,`brief`) VALUES ('106','','班级管理','1','1','0','','class_manage');
INSERT INTO `s_auth_rule` (`id`,`name`,`title`,`type`,`status`,`pid`,`condition`,`brief`) VALUES ('107','','课程分类','1','1','0','','project');
INSERT INTO `s_auth_rule` (`id`,`name`,`title`,`type`,`status`,`pid`,`condition`,`brief`) VALUES ('108','','课程管理','1','1','0','','course');
INSERT INTO `s_auth_rule` (`id`,`name`,`title`,`type`,`status`,`pid`,`condition`,`brief`) VALUES ('109','','学生标签','1','1','0','','label');
INSERT INTO `s_auth_rule` (`id`,`name`,`title`,`type`,`status`,`pid`,`condition`,`brief`) VALUES ('110','','学生管理','1','1','0','','student');
INSERT INTO `s_auth_rule` (`id`,`name`,`title`,`type`,`status`,`pid`,`condition`,`brief`) VALUES ('111','','设置','1','1','0','','set');
INSERT INTO `s_auth_rule` (`id`,`name`,`title`,`type`,`status`,`pid`,`condition`,`brief`) VALUES ('112','','管理员','1','1','0','','manage');
INSERT INTO `s_auth_rule` (`id`,`name`,`title`,`type`,`status`,`pid`,`condition`,`brief`) VALUES ('113','','学习计划','1','1','0','','plan');
INSERT INTO `s_auth_rule` (`id`,`name`,`title`,`type`,`status`,`pid`,`condition`,`brief`) VALUES ('114','','资源管理','1','1','0','','resources');

-- ----------------------------
-- Table structure for s_banner
-- ----------------------------
DROP TABLE IF EXISTS `s_banner`;
CREATE TABLE `s_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `img_id` int(11) NOT NULL DEFAULT '0' COMMENT '图片id',
  `type` int(11) NOT NULL DEFAULT '0' COMMENT '0普通轮播图1跳转到文章、2跳转到优秀教师、3跳转到课程',
  `jump_id` int(11) NOT NULL DEFAULT '0' COMMENT '跳转id',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COMMENT='轮播图';
-- ----------------------------
-- Records of s_banner
-- ----------------------------
INSERT INTO `s_banner` (`id`,`name`,`img_id`,`type`,`jump_id`,`sort`,`create_time`,`update_time`) VALUES ('12','123','1','0','0','4','1618478200','1619764620');
INSERT INTO `s_banner` (`id`,`name`,`img_id`,`type`,`jump_id`,`sort`,`create_time`,`update_time`) VALUES ('21','555','4','1','16','2','1618970767','1619764632');

-- ----------------------------
-- Table structure for s_bind_teacher
-- ----------------------------
DROP TABLE IF EXISTS `s_bind_teacher`;
CREATE TABLE `s_bind_teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mobile` varchar(255) DEFAULT NULL COMMENT '电话号码',
  `uid` int(11) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='教师绑定号码表';
-- ----------------------------
-- Records of s_bind_teacher
-- ----------------------------

-- ----------------------------
-- Table structure for s_class_project
-- ----------------------------
DROP TABLE IF EXISTS `s_class_project`;
CREATE TABLE `s_class_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `pid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='班级科目表';
-- ----------------------------
-- Records of s_class_project
-- ----------------------------

-- ----------------------------
-- Table structure for s_class_stu
-- ----------------------------
DROP TABLE IF EXISTS `s_class_stu`;
CREATE TABLE `s_class_stu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `uid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COMMENT='班级学生表';
-- ----------------------------
-- Records of s_class_stu
-- ----------------------------
INSERT INTO `s_class_stu` (`id`,`cid`,`uid`) VALUES ('1','1','10');
INSERT INTO `s_class_stu` (`id`,`cid`,`uid`) VALUES ('2','1','9');
INSERT INTO `s_class_stu` (`id`,`cid`,`uid`) VALUES ('3','1','8');
INSERT INTO `s_class_stu` (`id`,`cid`,`uid`) VALUES ('4','1','4');
INSERT INTO `s_class_stu` (`id`,`cid`,`uid`) VALUES ('5','2','12');
INSERT INTO `s_class_stu` (`id`,`cid`,`uid`) VALUES ('6','2','11');
INSERT INTO `s_class_stu` (`id`,`cid`,`uid`) VALUES ('7','2','10');
INSERT INTO `s_class_stu` (`id`,`cid`,`uid`) VALUES ('8','2','9');
INSERT INTO `s_class_stu` (`id`,`cid`,`uid`) VALUES ('9','3','10');
INSERT INTO `s_class_stu` (`id`,`cid`,`uid`) VALUES ('10','3','9');
INSERT INTO `s_class_stu` (`id`,`cid`,`uid`) VALUES ('11','3','8');
INSERT INTO `s_class_stu` (`id`,`cid`,`uid`) VALUES ('12','3','4');
INSERT INTO `s_class_stu` (`id`,`cid`,`uid`) VALUES ('17','5','10');
INSERT INTO `s_class_stu` (`id`,`cid`,`uid`) VALUES ('18','5','9');
INSERT INTO `s_class_stu` (`id`,`cid`,`uid`) VALUES ('19','5','8');
INSERT INTO `s_class_stu` (`id`,`cid`,`uid`) VALUES ('20','5','4');
INSERT INTO `s_class_stu` (`id`,`cid`,`uid`) VALUES ('23','3','11');
INSERT INTO `s_class_stu` (`id`,`cid`,`uid`) VALUES ('24','1','11');
INSERT INTO `s_class_stu` (`id`,`cid`,`uid`) VALUES ('33','10','12');
INSERT INTO `s_class_stu` (`id`,`cid`,`uid`) VALUES ('34','10','5');
INSERT INTO `s_class_stu` (`id`,`cid`,`uid`) VALUES ('35','10','8');

-- ----------------------------
-- Table structure for s_class_teacher
-- ----------------------------
DROP TABLE IF EXISTS `s_class_teacher`;
CREATE TABLE `s_class_teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0' COMMENT '课程id',
  `tid` int(11) NOT NULL DEFAULT '0' COMMENT '教师id',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  `course_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COMMENT='教师班级绑定表';
-- ----------------------------
-- Records of s_class_teacher
-- ----------------------------
INSERT INTO `s_class_teacher` (`id`,`cid`,`tid`,`create_time`,`update_time`,`course_id`) VALUES ('3','2','1','1619766275','1619766275','1');
INSERT INTO `s_class_teacher` (`id`,`cid`,`tid`,`create_time`,`update_time`,`course_id`) VALUES ('6','4','3','1619766580','1619766580','1');
INSERT INTO `s_class_teacher` (`id`,`cid`,`tid`,`create_time`,`update_time`,`course_id`) VALUES ('11','5','3','1620267985','1620267985','1');
INSERT INTO `s_class_teacher` (`id`,`cid`,`tid`,`create_time`,`update_time`,`course_id`) VALUES ('12','6','3','1620268072','1620268072','3');
INSERT INTO `s_class_teacher` (`id`,`cid`,`tid`,`create_time`,`update_time`,`course_id`) VALUES ('13','7','3','1620268180','1620268180','3');
INSERT INTO `s_class_teacher` (`id`,`cid`,`tid`,`create_time`,`update_time`,`course_id`) VALUES ('14','3','3','1620269674','1620269674','1');
INSERT INTO `s_class_teacher` (`id`,`cid`,`tid`,`create_time`,`update_time`,`course_id`) VALUES ('15','3','1','1620269674','1620269674','1');
INSERT INTO `s_class_teacher` (`id`,`cid`,`tid`,`create_time`,`update_time`,`course_id`) VALUES ('16','1','2','1620269684','1620269684','2');
INSERT INTO `s_class_teacher` (`id`,`cid`,`tid`,`create_time`,`update_time`,`course_id`) VALUES ('17','1','1','1620269684','1620269684','2');
INSERT INTO `s_class_teacher` (`id`,`cid`,`tid`,`create_time`,`update_time`,`course_id`) VALUES ('18','8','3','1620350629','1620350629','3');
INSERT INTO `s_class_teacher` (`id`,`cid`,`tid`,`create_time`,`update_time`,`course_id`) VALUES ('19','9','2','1620350806','1620350806','2');
INSERT INTO `s_class_teacher` (`id`,`cid`,`tid`,`create_time`,`update_time`,`course_id`) VALUES ('22','10','2','1620353145','1620353145','4');
INSERT INTO `s_class_teacher` (`id`,`cid`,`tid`,`create_time`,`update_time`,`course_id`) VALUES ('23','10','1','1620353145','1620353145','4');

-- ----------------------------
-- Table structure for s_classes
-- ----------------------------
DROP TABLE IF EXISTS `s_classes`;
CREATE TABLE `s_classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '班级名称',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(11) NOT NULL DEFAULT '0',
  `course` int(11) NOT NULL DEFAULT '0' COMMENT '课程id',
  `plan_date` text COMMENT '开课日期',
  `classroom` varchar(255) DEFAULT NULL COMMENT '教室',
  `num` int(11) NOT NULL DEFAULT '0' COMMENT '10',
  `delete_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COMMENT='班级表';
-- ----------------------------
-- Records of s_classes
-- ----------------------------
INSERT INTO `s_classes` (`id`,`name`,`create_time`,`update_time`,`start_time`,`end_time`,`course`,`plan_date`,`classroom`,`num`,`delete_time`) VALUES ('1','舞蹈提升班','1619765812','1620268609','1619798400','1622390400','2','["2021-05-01"]','205教室','20','0');
INSERT INTO `s_classes` (`id`,`name`,`create_time`,`update_time`,`start_time`,`end_time`,`course`,`plan_date`,`classroom`,`num`,`delete_time`) VALUES ('2','武术班','1619766275','1620267761','1619625600','1622390400','1','["2021-05-01"]','体操房','50','0');
INSERT INTO `s_classes` (`id`,`name`,`create_time`,`update_time`,`start_time`,`end_time`,`course`,`plan_date`,`classroom`,`num`,`delete_time`) VALUES ('3','武术提升班','1619766367','1620264214','1619798400','1622390400','1','["2021-05-01","2021-05-01","2021-05-02"]','123','20','0');
INSERT INTO `s_classes` (`id`,`name`,`create_time`,`update_time`,`start_time`,`end_time`,`course`,`plan_date`,`classroom`,`num`,`delete_time`) VALUES ('4','qwe','1619766580','1620351740','1619107200','1619798400','1','','123','0','1620351740');
INSERT INTO `s_classes` (`id`,`name`,`create_time`,`update_time`,`start_time`,`end_time`,`course`,`plan_date`,`classroom`,`num`,`delete_time`) VALUES ('5','体能强化班','1620267985','1620267985','1619798400','1622390400','1','','306教室','20','0');
INSERT INTO `s_classes` (`id`,`name`,`create_time`,`update_time`,`start_time`,`end_time`,`course`,`plan_date`,`classroom`,`num`,`delete_time`) VALUES ('6','体能提升班','1620268072','1620351747','1620316800','1622390400','3','','306教室','20','1620351747');
INSERT INTO `s_classes` (`id`,`name`,`create_time`,`update_time`,`start_time`,`end_time`,`course`,`plan_date`,`classroom`,`num`,`delete_time`) VALUES ('7','asd','1620268180','1620351732','1620921600','1622390400','3','','','0','1620351732');
INSERT INTO `s_classes` (`id`,`name`,`create_time`,`update_time`,`start_time`,`end_time`,`course`,`plan_date`,`classroom`,`num`,`delete_time`) VALUES ('8','音乐班','1620350629','1620351729','1620662400','1623859200','3','','98989','25','1620351729');
INSERT INTO `s_classes` (`id`,`name`,`create_time`,`update_time`,`start_time`,`end_time`,`course`,`plan_date`,`classroom`,`num`,`delete_time`) VALUES ('9','音乐2班','1620350806','1620351726','1620057600','1624982400','2','','236','99','1620351726');
INSERT INTO `s_classes` (`id`,`name`,`create_time`,`update_time`,`start_time`,`end_time`,`course`,`plan_date`,`classroom`,`num`,`delete_time`) VALUES ('10','java基础培训班','1620353061','1620353082','1622476800','1624982400','4','["2021-06-01","2021-06-01","2021-06-02"]','505教室','30','0');

-- ----------------------------
-- Table structure for s_course
-- ----------------------------
DROP TABLE IF EXISTS `s_course`;
CREATE TABLE `s_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '课程名称',
  `image` int(11) NOT NULL DEFAULT '0' COMMENT '课程封面图片',
  `play` int(11) NOT NULL DEFAULT '0' COMMENT '播放量',
  `content` text COMMENT '详细介绍',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '课程价格',
  `market_price` decimal(10,2) DEFAULT NULL COMMENT '市场价格',
  `teacher` int(11) NOT NULL DEFAULT '0' COMMENT '授课老师',
  `is_down` int(11) NOT NULL DEFAULT '0' COMMENT '是否下架',
  `is_tui` int(11) NOT NULL DEFAULT '0' COMMENT '推荐',
  `project` int(11) NOT NULL DEFAULT '0' COMMENT '课程分类',
  `yj` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '分享佣金',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  `url` int(11) NOT NULL DEFAULT '0' COMMENT '视频连接',
  `buy` int(11) NOT NULL DEFAULT '0' COMMENT '购买开启',
  `delete_time` int(11) NOT NULL DEFAULT '0',
  `url_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='视频课程表';
-- ----------------------------
-- Records of s_course
-- ----------------------------
INSERT INTO `s_course` (`id`,`name`,`image`,`play`,`content`,`price`,`market_price`,`teacher`,`is_down`,`is_tui`,`project`,`yj`,`sort`,`create_time`,`update_time`,`url`,`buy`,`delete_time`,`url_name`) VALUES ('1','中华武术太极拳','4','0','<p><img src="http://192.168.124.14:8092//ue_upload/img/20210430/1619764888.png" style="" title="1619764888.png"/></p><p><img src="http://192.168.124.14:8092//ue_upload/img/20210430/1619764888.png" style="" title="1619764888.png"/></p><p><br/></p>','399.00','0.00','0','0','1','4','40.00','0','1619764896','1619764896','1','1','0','CCTV.mp4');
INSERT INTO `s_course` (`id`,`name`,`image`,`play`,`content`,`price`,`market_price`,`teacher`,`is_down`,`is_tui`,`project`,`yj`,`sort`,`create_time`,`update_time`,`url`,`buy`,`delete_time`,`url_name`) VALUES ('2','舞蹈提升课程','5','0','<p><img src="http://192.168.124.14:8092//ue_upload/img/20210506/1620265445.png" style="" title="1620265445.png"/></p><p><img src="http://192.168.124.14:8092//ue_upload/img/20210506/1620265445.png" style="" title="1620265445.png"/></p><p><br/></p>','199.00','0.00','0','0','0','6','1.00','0','1620265448','1620267121','0','1','0','');
INSERT INTO `s_course` (`id`,`name`,`image`,`play`,`content`,`price`,`market_price`,`teacher`,`is_down`,`is_tui`,`project`,`yj`,`sort`,`create_time`,`update_time`,`url`,`buy`,`delete_time`,`url_name`) VALUES ('3','体能提升强化课','2','0','<p>强生健体，保家卫国</p><p><br/></p>','300.00','0.00','0','0','1','7','20.00','0','1620268028','1620268327','0','1','0','');
INSERT INTO `s_course` (`id`,`name`,`image`,`play`,`content`,`price`,`market_price`,`teacher`,`is_down`,`is_tui`,`project`,`yj`,`sort`,`create_time`,`update_time`,`url`,`buy`,`delete_time`,`url_name`) VALUES ('4','思维开阔基础java课','1','0','<p>课程介绍<br/></p>','166.00','0.00','0','0','1','8','20.00','0','1620352974','1620352974','0','1','0','');

-- ----------------------------
-- Table structure for s_course_teacher
-- ----------------------------
DROP TABLE IF EXISTS `s_course_teacher`;
CREATE TABLE `s_course_teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL DEFAULT '0',
  `tid` int(11) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COMMENT='教师课程关联表';
-- ----------------------------
-- Records of s_course_teacher
-- ----------------------------
INSERT INTO `s_course_teacher` (`id`,`course_id`,`tid`,`create_time`,`update_time`) VALUES ('1','1','1','1619764896','1619764896');
INSERT INTO `s_course_teacher` (`id`,`course_id`,`tid`,`create_time`,`update_time`) VALUES ('4','2','3','1620267121','1620267121');
INSERT INTO `s_course_teacher` (`id`,`course_id`,`tid`,`create_time`,`update_time`) VALUES ('6','3','3','1620268327','1620268327');
INSERT INTO `s_course_teacher` (`id`,`course_id`,`tid`,`create_time`,`update_time`) VALUES ('7','4','3','1620352974','1620352974');

-- ----------------------------
-- Table structure for s_experience
-- ----------------------------
DROP TABLE IF EXISTS `s_experience`;
CREATE TABLE `s_experience` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `certificate` text COMMENT '教师资质',
  `experience` text COMMENT '教师经验',
  `content` text COMMENT '教师特点',
  `json` text COMMENT '其它备用字段',
  `uid` int(11) NOT NULL DEFAULT '0',
  `infor` text COMMENT '教师简介',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  `mobile` varchar(20) DEFAULT '0' COMMENT '电话号码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='教师资质表';
-- ----------------------------
-- Records of s_experience
-- ----------------------------

-- ----------------------------
-- Table structure for s_fx
-- ----------------------------
DROP TABLE IF EXISTS `s_fx`;
CREATE TABLE `s_fx` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `mobile` varchar(20) DEFAULT NULL COMMENT '电话',
  `infor` text COMMENT '简介',
  `tid` int(11) NOT NULL DEFAULT '0' COMMENT '老师',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `child` varchar(20) DEFAULT NULL COMMENT '孩子',
  `sex` int(11) NOT NULL DEFAULT '0',
  `age` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='分销表';
-- ----------------------------
-- Records of s_fx
-- ----------------------------

-- ----------------------------
-- Table structure for s_image
-- ----------------------------
DROP TABLE IF EXISTS `s_image`;
CREATE TABLE `s_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL COMMENT '图片路径',
  `from` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 来自本地，2 来自公网',
  `use_name` varchar(80) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0' COMMENT '图片分类',
  `is_visible` int(11) NOT NULL DEFAULT '1' COMMENT '是否能显示1能0不能',
  `delete_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='图片总表';
-- ----------------------------
-- Records of s_image
-- ----------------------------
INSERT INTO `s_image` (`id`,`url`,`from`,`use_name`,`category_id`,`is_visible`,`delete_time`,`update_time`) VALUES ('1','/uploads/img/20210430/631a48c82733801f120373be436ad531.jpg','1','0','0','1','0','0');
INSERT INTO `s_image` (`id`,`url`,`from`,`use_name`,`category_id`,`is_visible`,`delete_time`,`update_time`) VALUES ('2','/uploads/img/20210430/4432d34d5fe166bb0d6d913aa0f3549a.jpg','1','0','0','1','0','0');
INSERT INTO `s_image` (`id`,`url`,`from`,`use_name`,`category_id`,`is_visible`,`delete_time`,`update_time`) VALUES ('3','/uploads/img/20210430/6ad9d45e19084c1b4d3208e3a7052a38.jpg','1','0','0','1','0','0');
INSERT INTO `s_image` (`id`,`url`,`from`,`use_name`,`category_id`,`is_visible`,`delete_time`,`update_time`) VALUES ('4','/uploads/img/20210430/7c332d4cac3d944031c5867e67cb8984.jpg','1','0','0','1','0','0');
INSERT INTO `s_image` (`id`,`url`,`from`,`use_name`,`category_id`,`is_visible`,`delete_time`,`update_time`) VALUES ('5','/uploads/img/20210430/83854f3f37f98bc2b4c2cc8fc955026a.jpg','1','0','0','1','0','0');

-- ----------------------------
-- Table structure for s_image_category
-- ----------------------------
DROP TABLE IF EXISTS `s_image_category`;
CREATE TABLE `s_image_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `is_visible` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
-- ----------------------------
-- Records of s_image_category
-- ----------------------------

-- ----------------------------
-- Table structure for s_kids
-- ----------------------------
DROP TABLE IF EXISTS `s_kids`;
CREATE TABLE `s_kids` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT NULL COMMENT '姓名',
  `sex` int(11) NOT NULL DEFAULT '0' COMMENT '性别',
  `age` int(11) NOT NULL DEFAULT '0' COMMENT '年龄',
  `person` int(11) NOT NULL DEFAULT '0' COMMENT '家长',
  `uid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='学生表';
-- ----------------------------
-- Records of s_kids
-- ----------------------------

-- ----------------------------
-- Table structure for s_message
-- ----------------------------
DROP TABLE IF EXISTS `s_message`;
CREATE TABLE `s_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0',
  `content` varchar(255) DEFAULT NULL COMMENT '留言内容',
  `time` int(11) NOT NULL DEFAULT '0' COMMENT '日期',
  `type` int(11) NOT NULL DEFAULT '0' COMMENT '0请假1反馈2报名',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  `read` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='留言表';
-- ----------------------------
-- Records of s_message
-- ----------------------------
INSERT INTO `s_message` (`id`,`uid`,`content`,`time`,`type`,`create_time`,`update_time`,`read`) VALUES ('2','5','重感冒，需要请假','1620489600','0','1620269335','1620269335','0');
INSERT INTO `s_message` (`id`,`uid`,`content`,`time`,`type`,`create_time`,`update_time`,`read`) VALUES ('3','2','重感冒，要请假','1620835200','0','1620269454','1620269454','0');

-- ----------------------------
-- Table structure for s_msg
-- ----------------------------
DROP TABLE IF EXISTS `s_msg`;
CREATE TABLE `s_msg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0' COMMENT '0分销记录1价格修改记录3换班',
  `content` text COMMENT '修改内容',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  `value` decimal(10,2) NOT NULL DEFAULT '0.00',
  `read` int(11) NOT NULL DEFAULT '0' COMMENT '阅读',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COMMENT='日志';
-- ----------------------------
-- Records of s_msg
-- ----------------------------
INSERT INTO `s_msg` (`id`,`uid`,`type`,`content`,`create_time`,`update_time`,`value`,`read`) VALUES ('1','4','3','李小小A 加入中华武术班','1619765812','1619765812','0.00','0');
INSERT INTO `s_msg` (`id`,`uid`,`type`,`content`,`create_time`,`update_time`,`value`,`read`) VALUES ('2','8','3','李小虎 加入中华武术班','1619765812','1619765812','0.00','0');
INSERT INTO `s_msg` (`id`,`uid`,`type`,`content`,`create_time`,`update_time`,`value`,`read`) VALUES ('3','9','3','李小A 加入中华武术班','1619765812','1619765812','0.00','0');
INSERT INTO `s_msg` (`id`,`uid`,`type`,`content`,`create_time`,`update_time`,`value`,`read`) VALUES ('4','10','3','李小小 加入中华武术班','1619765812','1619765812','0.00','0');
INSERT INTO `s_msg` (`id`,`uid`,`type`,`content`,`create_time`,`update_time`,`value`,`read`) VALUES ('5','9','3','李小A 加入武术班','1619766275','1619766275','0.00','0');
INSERT INTO `s_msg` (`id`,`uid`,`type`,`content`,`create_time`,`update_time`,`value`,`read`) VALUES ('6','10','3','李小小 加入武术班','1619766275','1619766275','0.00','0');
INSERT INTO `s_msg` (`id`,`uid`,`type`,`content`,`create_time`,`update_time`,`value`,`read`) VALUES ('7','11','3','小明A 加入武术班','1619766275','1619766275','0.00','0');
INSERT INTO `s_msg` (`id`,`uid`,`type`,`content`,`create_time`,`update_time`,`value`,`read`) VALUES ('8','12','3','张小花 加入武术班','1619766275','1619766275','0.00','0');
INSERT INTO `s_msg` (`id`,`uid`,`type`,`content`,`create_time`,`update_time`,`value`,`read`) VALUES ('9','4','3','李小小A 加入武术','1619766367','1619766367','0.00','0');
INSERT INTO `s_msg` (`id`,`uid`,`type`,`content`,`create_time`,`update_time`,`value`,`read`) VALUES ('10','8','3','李小虎 加入武术','1619766367','1619766367','0.00','0');
INSERT INTO `s_msg` (`id`,`uid`,`type`,`content`,`create_time`,`update_time`,`value`,`read`) VALUES ('11','9','3','李小A 加入武术','1619766367','1619766367','0.00','0');
INSERT INTO `s_msg` (`id`,`uid`,`type`,`content`,`create_time`,`update_time`,`value`,`read`) VALUES ('12','10','3','李小小 加入武术','1619766367','1619766367','0.00','0');
INSERT INTO `s_msg` (`id`,`uid`,`type`,`content`,`create_time`,`update_time`,`value`,`read`) VALUES ('13','4','3','李小小A 加入qwe','1619766581','1619766581','0.00','0');
INSERT INTO `s_msg` (`id`,`uid`,`type`,`content`,`create_time`,`update_time`,`value`,`read`) VALUES ('14','8','3','李小虎 加入qwe','1619766581','1619766581','0.00','0');
INSERT INTO `s_msg` (`id`,`uid`,`type`,`content`,`create_time`,`update_time`,`value`,`read`) VALUES ('15','9','3','李小A 加入qwe','1619766581','1619766581','0.00','0');
INSERT INTO `s_msg` (`id`,`uid`,`type`,`content`,`create_time`,`update_time`,`value`,`read`) VALUES ('16','10','3','李小小 加入qwe','1619766581','1619766581','0.00','0');
INSERT INTO `s_msg` (`id`,`uid`,`type`,`content`,`create_time`,`update_time`,`value`,`read`) VALUES ('17','4','3','李小小A 加入体能强化班','1620267985','1620267985','0.00','0');
INSERT INTO `s_msg` (`id`,`uid`,`type`,`content`,`create_time`,`update_time`,`value`,`read`) VALUES ('18','8','3','李小虎 加入体能强化班','1620267985','1620267985','0.00','0');
INSERT INTO `s_msg` (`id`,`uid`,`type`,`content`,`create_time`,`update_time`,`value`,`read`) VALUES ('19','9','3','李小A 加入体能强化班','1620267985','1620267985','0.00','0');
INSERT INTO `s_msg` (`id`,`uid`,`type`,`content`,`create_time`,`update_time`,`value`,`read`) VALUES ('20','10','3','李小小 加入体能强化班','1620267985','1620267985','0.00','0');
INSERT INTO `s_msg` (`id`,`uid`,`type`,`content`,`create_time`,`update_time`,`value`,`read`) VALUES ('21','9','3','李小A 加入体能提升班','1620268072','1620268072','0.00','0');
INSERT INTO `s_msg` (`id`,`uid`,`type`,`content`,`create_time`,`update_time`,`value`,`read`) VALUES ('22','10','3','李小小 加入体能提升班','1620268072','1620268072','0.00','0');
INSERT INTO `s_msg` (`id`,`uid`,`type`,`content`,`create_time`,`update_time`,`value`,`read`) VALUES ('23','1','3','张小花C 加入音乐班','1620350629','1620350629','0.00','0');
INSERT INTO `s_msg` (`id`,`uid`,`type`,`content`,`create_time`,`update_time`,`value`,`read`) VALUES ('24','6','3','张小花B 加入音乐班','1620350629','1620350629','0.00','0');
INSERT INTO `s_msg` (`id`,`uid`,`type`,`content`,`create_time`,`update_time`,`value`,`read`) VALUES ('25','7','3','张小花A 加入音乐班','1620350629','1620350629','0.00','0');
INSERT INTO `s_msg` (`id`,`uid`,`type`,`content`,`create_time`,`update_time`,`value`,`read`) VALUES ('26','12','3','张小花 加入音乐班','1620350629','1620350629','0.00','0');
INSERT INTO `s_msg` (`id`,`uid`,`type`,`content`,`create_time`,`update_time`,`value`,`read`) VALUES ('27','4','3','李小小A 加入音乐2班','1620350806','1620350806','0.00','0');
INSERT INTO `s_msg` (`id`,`uid`,`type`,`content`,`create_time`,`update_time`,`value`,`read`) VALUES ('28','8','3','李小虎 加入音乐2班','1620350806','1620350806','0.00','0');
INSERT INTO `s_msg` (`id`,`uid`,`type`,`content`,`create_time`,`update_time`,`value`,`read`) VALUES ('29','9','3','李小A 加入音乐2班','1620350806','1620350806','0.00','0');
INSERT INTO `s_msg` (`id`,`uid`,`type`,`content`,`create_time`,`update_time`,`value`,`read`) VALUES ('30','10','3','李小小 加入音乐2班','1620350806','1620350806','0.00','0');
INSERT INTO `s_msg` (`id`,`uid`,`type`,`content`,`create_time`,`update_time`,`value`,`read`) VALUES ('31','12','3','张小花 加入java基础培训班','1620353061','1620353061','0.00','0');

-- ----------------------------
-- Table structure for s_order
-- ----------------------------
DROP TABLE IF EXISTS `s_order`;
CREATE TABLE `s_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_num` varchar(255) DEFAULT NULL COMMENT '订单编号',
  `course_id` int(11) NOT NULL DEFAULT '0' COMMENT '课程id',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '课程价格',
  `total_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '最终价格',
  `pay_statement` int(11) NOT NULL DEFAULT '0' COMMENT '支付状态',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `prepay_id` varchar(255) DEFAULT NULL,
  `pay_time` int(11) NOT NULL DEFAULT '0' COMMENT '支付时间',
  `fx_teacher` int(11) NOT NULL DEFAULT '0' COMMENT '分享教师',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  `delete_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='订单表';
-- ----------------------------
-- Records of s_order
-- ----------------------------

-- ----------------------------
-- Table structure for s_pingce
-- ----------------------------
DROP TABLE IF EXISTS `s_pingce`;
CREATE TABLE `s_pingce` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '学生id',
  `class_id` int(11) NOT NULL DEFAULT '0',
  `index` int(11) NOT NULL DEFAULT '0',
  `name` varchar(30) DEFAULT NULL COMMENT '姓名',
  `cyxx` int(11) NOT NULL DEFAULT '0' COMMENT '创意想象',
  `hmbx` int(11) NOT NULL DEFAULT '0' COMMENT '画面表现',
  `scgz` int(11) NOT NULL DEFAULT '0' COMMENT '色彩感知',
  `qgbd` int(11) NOT NULL DEFAULT '0' COMMENT '情感表达',
  `hhjq` int(11) NOT NULL DEFAULT '0' COMMENT '绘画技巧',
  `zzl` int(11) NOT NULL DEFAULT '0' COMMENT '专注力',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COMMENT='教学评测表';
-- ----------------------------
-- Records of s_pingce
-- ----------------------------
INSERT INTO `s_pingce` (`id`,`uid`,`class_id`,`index`,`name`,`cyxx`,`hmbx`,`scgz`,`qgbd`,`hhjq`,`zzl`,`create_time`,`update_time`) VALUES ('1','10','3','0','李小小','1','1','2','0','5','99','1619766977','1619766977');
INSERT INTO `s_pingce` (`id`,`uid`,`class_id`,`index`,`name`,`cyxx`,`hmbx`,`scgz`,`qgbd`,`hhjq`,`zzl`,`create_time`,`update_time`) VALUES ('2','9','3','0','李小A','2','3','10','3','9','98','1619766977','1619766977');
INSERT INTO `s_pingce` (`id`,`uid`,`class_id`,`index`,`name`,`cyxx`,`hmbx`,`scgz`,`qgbd`,`hhjq`,`zzl`,`create_time`,`update_time`) VALUES ('3','8','3','0','李小虎','3','5','18','6','13','97','1619766977','1619766977');
INSERT INTO `s_pingce` (`id`,`uid`,`class_id`,`index`,`name`,`cyxx`,`hmbx`,`scgz`,`qgbd`,`hhjq`,`zzl`,`create_time`,`update_time`) VALUES ('4','4','3','0','李小小A','4','7','26','9','17','96','1619766977','1619766977');
INSERT INTO `s_pingce` (`id`,`uid`,`class_id`,`index`,`name`,`cyxx`,`hmbx`,`scgz`,`qgbd`,`hhjq`,`zzl`,`create_time`,`update_time`) VALUES ('5','10','3','1','李小小','1','1','2','0','5','50','1619767013','1619767013');
INSERT INTO `s_pingce` (`id`,`uid`,`class_id`,`index`,`name`,`cyxx`,`hmbx`,`scgz`,`qgbd`,`hhjq`,`zzl`,`create_time`,`update_time`) VALUES ('6','9','3','1','李小A','25','30','10','3','9','98','1619767013','1619767013');
INSERT INTO `s_pingce` (`id`,`uid`,`class_id`,`index`,`name`,`cyxx`,`hmbx`,`scgz`,`qgbd`,`hhjq`,`zzl`,`create_time`,`update_time`) VALUES ('7','8','3','1','李小虎','3','5','18','6','13','97','1619767013','1619767013');
INSERT INTO `s_pingce` (`id`,`uid`,`class_id`,`index`,`name`,`cyxx`,`hmbx`,`scgz`,`qgbd`,`hhjq`,`zzl`,`create_time`,`update_time`) VALUES ('8','4','3','1','李小小A','4','7','26','9','17','96','1619767013','1619767013');

-- ----------------------------
-- Table structure for s_plan
-- ----------------------------
DROP TABLE IF EXISTS `s_plan`;
CREATE TABLE `s_plan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '学生id',
  `cid` int(11) NOT NULL DEFAULT '0' COMMENT '课程id',
  `tid` int(11) NOT NULL DEFAULT '0' COMMENT '老师id',
  `plan_time` int(11) NOT NULL DEFAULT '0' COMMENT '计划日期日',
  `content` text COMMENT '计划内容',
  `message` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  `delete_time` int(11) NOT NULL DEFAULT '0',
  `class_id` int(11) NOT NULL DEFAULT '0' COMMENT '班级id',
  `index` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='学习计划';
-- ----------------------------
-- Records of s_plan
-- ----------------------------
INSERT INTO `s_plan` (`id`,`uid`,`cid`,`tid`,`plan_time`,`content`,`message`,`create_time`,`update_time`,`delete_time`,`class_id`,`index`) VALUES ('1','0','0','1','1619798400','{"content":"武术课，讲解太极拳","video":"http:\/\/192.168.124.14:8092\/uploads\/video\/20210430\/932762c06be7b73dcbfaade2ecffb79c.mp4","time":"15:12"}','','1619766762','1619766762','0','3','0');
INSERT INTO `s_plan` (`id`,`uid`,`cid`,`tid`,`plan_time`,`content`,`message`,`create_time`,`update_time`,`delete_time`,`class_id`,`index`) VALUES ('2','0','0','1','1619798400','{"content":"这是一截很长的介绍内容","video":"","time":"17:16"}','','1619767004','1619767004','0','3','1');
INSERT INTO `s_plan` (`id`,`uid`,`cid`,`tid`,`plan_time`,`content`,`message`,`create_time`,`update_time`,`delete_time`,`class_id`,`index`) VALUES ('3','0','0','1','1619884800','{"content":"\n这是一截很长的介绍内容","video":"","time":"08:11"}','','1619767047','1619767047','0','3','2');
INSERT INTO `s_plan` (`id`,`uid`,`cid`,`tid`,`plan_time`,`content`,`message`,`create_time`,`update_time`,`delete_time`,`class_id`,`index`) VALUES ('4','0','0','1','1620316800','{"content":"基础知识讲解","video":"http:\/\/192.168.124.14:8092\/uploads\/video\/20210506\/fd33399f41719a8ce738136ca7db657d.mp4","time":"09:40"}','','1620265248','1620265248','0','2','0');
INSERT INTO `s_plan` (`id`,`uid`,`cid`,`tid`,`plan_time`,`content`,`message`,`create_time`,`update_time`,`delete_time`,`class_id`,`index`) VALUES ('5','0','0','1','1620403200','{"content":"讲解舞蹈基础动作","video":"","time":"09:45"}','','1620265527','1620265527','0','1','0');
INSERT INTO `s_plan` (`id`,`uid`,`cid`,`tid`,`plan_time`,`content`,`message`,`create_time`,`update_time`,`delete_time`,`class_id`,`index`) VALUES ('6','0','0','1','1622476800','{"content":"基础训练","video":"http:\/\/192.168.124.14:8092\/uploads\/video\/20210507\/283783a01fdda32006c6a60865f371ff.mp4","time":"09:00"}','','1620353115','1620353115','0','10','0');

-- ----------------------------
-- Table structure for s_project
-- ----------------------------
DROP TABLE IF EXISTS `s_project`;
CREATE TABLE `s_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '父级id',
  `sort` int(11) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0' COMMENT '上限人数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COMMENT='学科表';
-- ----------------------------
-- Records of s_project
-- ----------------------------
INSERT INTO `s_project` (`id`,`name`,`pid`,`sort`,`create_time`,`update_time`,`count`) VALUES ('1','绘画','0','0','1619764753','1619764753','40');
INSERT INTO `s_project` (`id`,`name`,`pid`,`sort`,`create_time`,`update_time`,`count`) VALUES ('2','油画','1','0','1619764782','1619764782','20');
INSERT INTO `s_project` (`id`,`name`,`pid`,`sort`,`create_time`,`update_time`,`count`) VALUES ('3','武术','0','0','1619764797','1619764797','50');
INSERT INTO `s_project` (`id`,`name`,`pid`,`sort`,`create_time`,`update_time`,`count`) VALUES ('4','太极拳','3','0','1619764815','1619764815','20');
INSERT INTO `s_project` (`id`,`name`,`pid`,`sort`,`create_time`,`update_time`,`count`) VALUES ('5','舞蹈','0','0','1619765028','1619765028','20');
INSERT INTO `s_project` (`id`,`name`,`pid`,`sort`,`create_time`,`update_time`,`count`) VALUES ('6','中国舞','5','0','1620267112','1620267112','30');
INSERT INTO `s_project` (`id`,`name`,`pid`,`sort`,`create_time`,`update_time`,`count`) VALUES ('7','武术健身操','3','0','1620267928','1620267928','30');
INSERT INTO `s_project` (`id`,`name`,`pid`,`sort`,`create_time`,`update_time`,`count`) VALUES ('8','编程','0','0','1620352876','1620352876','20');
INSERT INTO `s_project` (`id`,`name`,`pid`,`sort`,`create_time`,`update_time`,`count`) VALUES ('9','java','8','0','1620352885','1620352885','30');

-- ----------------------------
-- Table structure for s_stu_label
-- ----------------------------
DROP TABLE IF EXISTS `s_stu_label`;
CREATE TABLE `s_stu_label` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL COMMENT '标签名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='学生标签表';
-- ----------------------------
-- Records of s_stu_label
-- ----------------------------
INSERT INTO `s_stu_label` (`id`,`name`) VALUES ('1','舞蹈女生');
INSERT INTO `s_stu_label` (`id`,`name`) VALUES ('2','武术男生');
INSERT INTO `s_stu_label` (`id`,`name`) VALUES ('3','油画男生');
INSERT INTO `s_stu_label` (`id`,`name`) VALUES ('4','武术女生');

-- ----------------------------
-- Table structure for s_student
-- ----------------------------
DROP TABLE IF EXISTS `s_student`;
CREATE TABLE `s_student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '学生姓名',
  `img` varchar(255) DEFAULT NULL COMMENT '学生头像',
  `age` int(11) NOT NULL DEFAULT '0' COMMENT '学生年龄',
  `sex` int(11) NOT NULL DEFAULT '0' COMMENT '学生性别0男1女',
  `mobile` varchar(20) DEFAULT NULL COMMENT '学生电话',
  `person` int(11) NOT NULL DEFAULT '0' COMMENT '家长id',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '学生绑定用户id',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  `delete_time` int(11) NOT NULL DEFAULT '0',
  `label` text COMMENT '标签',
  `fee_course_num` int(11) NOT NULL DEFAULT '0' COMMENT '交费课时',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COMMENT='学生表';
-- ----------------------------
-- Records of s_student
-- ----------------------------
INSERT INTO `s_student` (`id`,`name`,`img`,`age`,`sex`,`mobile`,`person`,`uid`,`create_time`,`update_time`,`delete_time`,`label`,`fee_course_num`) VALUES ('1','张小花C','','12','1','','0','0','1619765352','1619765352','0','[4,1]','30');
INSERT INTO `s_student` (`id`,`name`,`img`,`age`,`sex`,`mobile`,`person`,`uid`,`create_time`,`update_time`,`delete_time`,`label`,`fee_course_num`) VALUES ('2','李小虎A','','12','0','','0','0','1619765481','1619765650','1619765650','[2]','30');
INSERT INTO `s_student` (`id`,`name`,`img`,`age`,`sex`,`mobile`,`person`,`uid`,`create_time`,`update_time`,`delete_time`,`label`,`fee_course_num`) VALUES ('3','李小A','','8','0','','0','0','1619765520','1619765648','1619765648','[2]','30');
INSERT INTO `s_student` (`id`,`name`,`img`,`age`,`sex`,`mobile`,`person`,`uid`,`create_time`,`update_time`,`delete_time`,`label`,`fee_course_num`) VALUES ('4','李小小A','','13','0','','0','0','1619765553','1619765553','0','[2]','30');
INSERT INTO `s_student` (`id`,`name`,`img`,`age`,`sex`,`mobile`,`person`,`uid`,`create_time`,`update_time`,`delete_time`,`label`,`fee_course_num`) VALUES ('5','小明','','12','0','','0','1','1619765587','1620269317','0','[3]','30');
INSERT INTO `s_student` (`id`,`name`,`img`,`age`,`sex`,`mobile`,`person`,`uid`,`create_time`,`update_time`,`delete_time`,`label`,`fee_course_num`) VALUES ('6','张小花B','','12','1','','0','0','1619765352','1619765352','0','[4,1]','30');
INSERT INTO `s_student` (`id`,`name`,`img`,`age`,`sex`,`mobile`,`person`,`uid`,`create_time`,`update_time`,`delete_time`,`label`,`fee_course_num`) VALUES ('7','张小花A','','12','1','','0','0','1619765352','1619765352','0','[4,1]','30');
INSERT INTO `s_student` (`id`,`name`,`img`,`age`,`sex`,`mobile`,`person`,`uid`,`create_time`,`update_time`,`delete_time`,`label`,`fee_course_num`) VALUES ('8','李小虎','','12','0','','0','0','1619765481','1619765481','0','[2]','30');
INSERT INTO `s_student` (`id`,`name`,`img`,`age`,`sex`,`mobile`,`person`,`uid`,`create_time`,`update_time`,`delete_time`,`label`,`fee_course_num`) VALUES ('9','李小A','','8','0','','0','0','1619765520','1619765520','0','[2]','30');
INSERT INTO `s_student` (`id`,`name`,`img`,`age`,`sex`,`mobile`,`person`,`uid`,`create_time`,`update_time`,`delete_time`,`label`,`fee_course_num`) VALUES ('10','李小小','','13','0','','0','0','1619765553','1619765553','0','[2]','30');
INSERT INTO `s_student` (`id`,`name`,`img`,`age`,`sex`,`mobile`,`person`,`uid`,`create_time`,`update_time`,`delete_time`,`label`,`fee_course_num`) VALUES ('11','小明A','','12','0','','0','2','1619765587','1620269656','0','[3]','30');
INSERT INTO `s_student` (`id`,`name`,`img`,`age`,`sex`,`mobile`,`person`,`uid`,`create_time`,`update_time`,`delete_time`,`label`,`fee_course_num`) VALUES ('12','张小花','','12','1','','0','0','1619765352','1619765352','0','[4,1]','30');

-- ----------------------------
-- Table structure for s_study_history
-- ----------------------------
DROP TABLE IF EXISTS `s_study_history`;
CREATE TABLE `s_study_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL DEFAULT '0' COMMENT '课程Id',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='学习轨迹';
-- ----------------------------
-- Records of s_study_history
-- ----------------------------

-- ----------------------------
-- Table structure for s_sys_config
-- ----------------------------
DROP TABLE IF EXISTS `s_sys_config`;
CREATE TABLE `s_sys_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `value` text,
  `desc` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL COMMENT '1基础2微信3支付宝4短信5物流6上传配置',
  `switch` int(11) NOT NULL DEFAULT '0' COMMENT '0填写框1开关2单选3多选',
  `other` varchar(255) DEFAULT NULL,
  `delete_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统配置表';
-- ----------------------------
-- Records of s_sys_config
-- ----------------------------
INSERT INTO `s_sys_config` (`id`,`key`,`value`,`desc`,`type`,`switch`,`other`,`delete_time`) VALUES ('1','api_url','','入口位置','1','0','','0');
INSERT INTO `s_sys_config` (`id`,`key`,`value`,`desc`,`type`,`switch`,`other`,`delete_time`) VALUES ('5','wx_app_id','wx40342b8063b72fc1','小程序appid','2','0','','0');
INSERT INTO `s_sys_config` (`id`,`key`,`value`,`desc`,`type`,`switch`,`other`,`delete_time`) VALUES ('6','wx_app_secret','bc8719518f6c5e792286832c2e47671b','小程序秘钥','2','0','','0');
INSERT INTO `s_sys_config` (`id`,`key`,`value`,`desc`,`type`,`switch`,`other`,`delete_time`) VALUES ('7','pay_num','1514141031','商户id','2','0','','0');
INSERT INTO `s_sys_config` (`id`,`key`,`value`,`desc`,`type`,`switch`,`other`,`delete_time`) VALUES ('8','pay_key','asf983rhfsjkyhFSt5hDS45a23kj12h3','商户key','2','0','','0');
INSERT INTO `s_sys_config` (`id`,`key`,`value`,`desc`,`type`,`switch`,`other`,`delete_time`) VALUES ('9','wx_token_expire','72000','token有效期','1','0','','0');
INSERT INTO `s_sys_config` (`id`,`key`,`value`,`desc`,`type`,`switch`,`other`,`delete_time`) VALUES ('35','app_appid','','app的appid','2','0','','0');
INSERT INTO `s_sys_config` (`id`,`key`,`value`,`desc`,`type`,`switch`,`other`,`delete_time`) VALUES ('39','fx_royalty','1','提现方式','1','2','0手动提现1自动打款','1618996528');
INSERT INTO `s_sys_config` (`id`,`key`,`value`,`desc`,`type`,`switch`,`other`,`delete_time`) VALUES ('40','yzm_tmp_id','','阿里云模板ID','4','0','','1618996528');
INSERT INTO `s_sys_config` (`id`,`key`,`value`,`desc`,`type`,`switch`,`other`,`delete_time`) VALUES ('41','yzm_sign','黔域','阿里云短信签名','4','0','','1618996528');
INSERT INTO `s_sys_config` (`id`,`key`,`value`,`desc`,`type`,`switch`,`other`,`delete_time`) VALUES ('42','yzm_keyid','','阿里云短信KeyId','4','0','','1618996528');
INSERT INTO `s_sys_config` (`id`,`key`,`value`,`desc`,`type`,`switch`,`other`,`delete_time`) VALUES ('43','yzm_secret','','阿里云短信秘钥','4','0','','1618996528');
INSERT INTO `s_sys_config` (`id`,`key`,`value`,`desc`,`type`,`switch`,`other`,`delete_time`) VALUES ('97','title','ABC培训机构','系统标题','1','0','','0');
INSERT INTO `s_sys_config` (`id`,`key`,`value`,`desc`,`type`,`switch`,`other`,`delete_time`) VALUES ('98','copyright','CCLV@1209','版权信息','1','0','','0');

-- ----------------------------
-- Table structure for s_teacher
-- ----------------------------
DROP TABLE IF EXISTS `s_teacher`;
CREATE TABLE `s_teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '教师名称',
  `label` text NOT NULL COMMENT '教师标签',
  `t_json` text COMMENT '教师简介',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '教师id',
  `header` varchar(255) DEFAULT NULL COMMENT '教师头像',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  `delete_time` int(11) NOT NULL DEFAULT '0',
  `is_tui` int(11) NOT NULL DEFAULT '0' COMMENT '是否推荐',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '教师改价额度',
  `already` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '教师已用额度',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='教师表';
-- ----------------------------
-- Records of s_teacher
-- ----------------------------
INSERT INTO `s_teacher` (`id`,`name`,`label`,`t_json`,`uid`,`header`,`create_time`,`update_time`,`delete_time`,`is_tui`,`money`,`already`) VALUES ('1','李易峰','','{"count":"<p style=\"white-space: normal;\"><strong>教学经历<\/strong><\/p><p style=\"white-space: normal;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<\/strong>&nbsp;&nbsp;&nbsp;&nbsp;某某学校&nbsp; 2008-2013<strong><br\/><\/strong><\/p><p style=\"white-space: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;某某中学&nbsp; 20013-2019<\/p><p style=\"white-space: normal;\"><strong>教学资质<\/strong><\/p><p style=\"white-space: normal;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<\/strong>教师资格证 [123348762-ttrx]<\/p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;担任中华武术馆馆主<br style=\"white-space: normal;\"\/><\/p><p><br\/><\/p>","xueli":"本科","jinyan":"5年"}','0','http://192.168.124.14:8092/uploads/img/20210430/4432d34d5fe166bb0d6d913aa0f3549a.jpg','1619764679','1619764998','0','1','2000.00','0.00');
INSERT INTO `s_teacher` (`id`,`name`,`label`,`t_json`,`uid`,`header`,`create_time`,`update_time`,`delete_time`,`is_tui`,`money`,`already`) VALUES ('2','刘诗诗','','{"count":"<p style=\"white-space: normal;\"><strong>教学经历<\/strong><\/p><p style=\"white-space: normal;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<\/strong>&nbsp;&nbsp;&nbsp;&nbsp;某某学校&nbsp; 2008-2013<strong><br\/><\/strong><\/p><p style=\"white-space: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;某某中学&nbsp; 20013-2019<\/p><p style=\"white-space: normal;\"><strong>教学资质<\/strong><\/p><p style=\"white-space: normal;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<\/strong>教师资格证 [123348762-ttrx]<\/p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;中国舞蹈戏剧学员<br\/><\/p>","xueli":"本科","jinyan":"3年"}','0','http://192.168.124.14:8092/uploads/img/20210430/6ad9d45e19084c1b4d3208e3a7052a38.jpg','1619765084','1619765213','0','1','3000.00','0.00');
INSERT INTO `s_teacher` (`id`,`name`,`label`,`t_json`,`uid`,`header`,`create_time`,`update_time`,`delete_time`,`is_tui`,`money`,`already`) VALUES ('3','吴奇隆','','{"count":"<p style=\"white-space: normal;\"><strong>教学经历<\/strong><\/p><p style=\"white-space: normal;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<\/strong>&nbsp;&nbsp;&nbsp;&nbsp;某某学校&nbsp; 2008-2013<strong><br\/><\/strong><\/p><p style=\"white-space: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;某某中学&nbsp; 20013-2019<\/p><p style=\"white-space: normal;\"><strong>教学资质<\/strong><\/p><p style=\"white-space: normal;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<\/strong>教师资格证 [123348762-ttrx]<\/p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;太极拳K1总冠军<br\/><\/p>","xueli":"研究生","jinyan":"6年"}','0','http://192.168.124.14:8092/uploads/img/20210430/4432d34d5fe166bb0d6d913aa0f3549a.jpg','1619765203','1619765203','0','1','5000.00','0.00');

-- ----------------------------
-- Table structure for s_tui_form
-- ----------------------------
DROP TABLE IF EXISTS `s_tui_form`;
CREATE TABLE `s_tui_form` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0',
  `tid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(20) DEFAULT NULL COMMENT '姓名',
  `mobile` varchar(15) DEFAULT NULL COMMENT '电话',
  `address` varchar(255) DEFAULT NULL COMMENT '家庭住址',
  `kids` varchar(20) DEFAULT NULL COMMENT '孩子',
  `sex` int(11) NOT NULL DEFAULT '0' COMMENT '性别',
  `age` int(11) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='教师推广表单';
-- ----------------------------
-- Records of s_tui_form
-- ----------------------------

-- ----------------------------
-- Table structure for s_user
-- ----------------------------
DROP TABLE IF EXISTS `s_user`;
CREATE TABLE `s_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(255) DEFAULT NULL,
  `openid_gzh` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL COMMENT '微信昵称',
  `headpic` varchar(255) DEFAULT NULL COMMENT '微信头像',
  `name` varchar(255) DEFAULT NULL COMMENT '真实姓名',
  `mobile` varchar(20) DEFAULT NULL COMMENT '电话号码',
  `project` int(11) NOT NULL DEFAULT '0' COMMENT '学科',
  `qrcode_xcx` varchar(255) DEFAULT NULL COMMENT '小程序分享码',
  `qrcode_gzh` varchar(255) DEFAULT NULL COMMENT 'H5分享码',
  `img` varchar(255) DEFAULT NULL COMMENT '真实头像',
  `fans` int(11) NOT NULL DEFAULT '0' COMMENT '粉丝数',
  `coach_time` varchar(255) NOT NULL DEFAULT '0小时' COMMENT '辅导时长',
  `rate` int(11) NOT NULL DEFAULT '5' COMMENT '综合评价',
  `job` int(11) NOT NULL DEFAULT '0' COMMENT '0普通用户1老师2家长',
  `unionid` varchar(255) DEFAULT NULL,
  `is_you` int(11) NOT NULL DEFAULT '0' COMMENT '优秀老师',
  `teacher_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '修改课程费用额度',
  `yj` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '佣金',
  `backgroud` varchar(255) DEFAULT NULL COMMENT '推荐封面图',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  `session_key` varchar(255) DEFAULT NULL,
  `invite_code` int(11) NOT NULL DEFAULT '0' COMMENT '身份码',
  `chird` varchar(255) DEFAULT NULL COMMENT '孩子',
  `bind_code` varchar(10) DEFAULT NULL COMMENT '绑定教师的code',
  `t_json` text COMMENT '教师简介',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='用户表';
-- ----------------------------
-- Records of s_user
-- ----------------------------
INSERT INTO `s_user` (`id`,`openid`,`openid_gzh`,`nickname`,`headpic`,`name`,`mobile`,`project`,`qrcode_xcx`,`qrcode_gzh`,`img`,`fans`,`coach_time`,`rate`,`job`,`unionid`,`is_you`,`teacher_money`,`yj`,`backgroud`,`create_time`,`update_time`,`session_key`,`invite_code`,`chird`,`bind_code`,`t_json`) VALUES ('2','oq_jb4rLOXUkdTcZPtrFfAtflJj8','','5ZKp772e','https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eo6V4KJDvtPjzLmEUIH8q99Ycble6ZrbSx0KxfOz9rdvEQv1EqFAmDicEhVPmeiauX0iapB454n9OlTQ/132','阿七','','0','/uploads/img/6159200xcxcode.png','','','0','0小时','5','0','o-6THw566fwte9gEQiFtHwqLTyX4','0','0.00','0.00','','1620269409','1620349459','y/yj5mYCoAEIURjBPsefsQ==','6159200','','','');

-- ----------------------------
-- Table structure for s_user_course
-- ----------------------------
DROP TABLE IF EXISTS `s_user_course`;
CREATE TABLE `s_user_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL DEFAULT '0',
  `uid` int(11) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='学生课程表';
-- ----------------------------
-- Records of s_user_course
-- ----------------------------

-- ----------------------------
-- Table structure for s_user_project
-- ----------------------------
DROP TABLE IF EXISTS `s_user_project`;
CREATE TABLE `s_user_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0',
  `label` int(11) NOT NULL DEFAULT '0' COMMENT '标签id',
  `tid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=293 DEFAULT CHARSET=utf8mb4 COMMENT='用户标签表';
-- ----------------------------
-- Records of s_user_project
-- ----------------------------
INSERT INTO `s_user_project` (`id`,`uid`,`label`,`tid`) VALUES ('15','9','2','0');
INSERT INTO `s_user_project` (`id`,`uid`,`label`,`tid`) VALUES ('16','9','3','0');
INSERT INTO `s_user_project` (`id`,`uid`,`label`,`tid`) VALUES ('17','10','2','0');
INSERT INTO `s_user_project` (`id`,`uid`,`label`,`tid`) VALUES ('18','10','3','0');
INSERT INTO `s_user_project` (`id`,`uid`,`label`,`tid`) VALUES ('19','11','8','0');
INSERT INTO `s_user_project` (`id`,`uid`,`label`,`tid`) VALUES ('20','11','3','0');
INSERT INTO `s_user_project` (`id`,`uid`,`label`,`tid`) VALUES ('21','12','8','0');
INSERT INTO `s_user_project` (`id`,`uid`,`label`,`tid`) VALUES ('22','12','7','0');
INSERT INTO `s_user_project` (`id`,`uid`,`label`,`tid`) VALUES ('59','8','7','8');
INSERT INTO `s_user_project` (`id`,`uid`,`label`,`tid`) VALUES ('60','8','3','8');
INSERT INTO `s_user_project` (`id`,`uid`,`label`,`tid`) VALUES ('61','8','8','8');
INSERT INTO `s_user_project` (`id`,`uid`,`label`,`tid`) VALUES ('106','3','5','33');
INSERT INTO `s_user_project` (`id`,`uid`,`label`,`tid`) VALUES ('117','7','12','5');
INSERT INTO `s_user_project` (`id`,`uid`,`label`,`tid`) VALUES ('183','38','9','38');
INSERT INTO `s_user_project` (`id`,`uid`,`label`,`tid`) VALUES ('184','38','14','38');
INSERT INTO `s_user_project` (`id`,`uid`,`label`,`tid`) VALUES ('185','38','6','38');
INSERT INTO `s_user_project` (`id`,`uid`,`label`,`tid`) VALUES ('186','40','15','40');
INSERT INTO `s_user_project` (`id`,`uid`,`label`,`tid`) VALUES ('187','40','14','40');
INSERT INTO `s_user_project` (`id`,`uid`,`label`,`tid`) VALUES ('188','40','9','40');
INSERT INTO `s_user_project` (`id`,`uid`,`label`,`tid`) VALUES ('193','45','9','45');
INSERT INTO `s_user_project` (`id`,`uid`,`label`,`tid`) VALUES ('194','45','7','45');
INSERT INTO `s_user_project` (`id`,`uid`,`label`,`tid`) VALUES ('218','53','8','53');
INSERT INTO `s_user_project` (`id`,`uid`,`label`,`tid`) VALUES ('219','53','7','53');
INSERT INTO `s_user_project` (`id`,`uid`,`label`,`tid`) VALUES ('220','53','5','53');
INSERT INTO `s_user_project` (`id`,`uid`,`label`,`tid`) VALUES ('238','52','5','52');
INSERT INTO `s_user_project` (`id`,`uid`,`label`,`tid`) VALUES ('239','52','3','52');
INSERT INTO `s_user_project` (`id`,`uid`,`label`,`tid`) VALUES ('240','52','7','52');
INSERT INTO `s_user_project` (`id`,`uid`,`label`,`tid`) VALUES ('253','56','3','56');
INSERT INTO `s_user_project` (`id`,`uid`,`label`,`tid`) VALUES ('254','56','7','56');
INSERT INTO `s_user_project` (`id`,`uid`,`label`,`tid`) VALUES ('255','54','9','54');
INSERT INTO `s_user_project` (`id`,`uid`,`label`,`tid`) VALUES ('256','54','5','54');
INSERT INTO `s_user_project` (`id`,`uid`,`label`,`tid`) VALUES ('257','49','5','49');
INSERT INTO `s_user_project` (`id`,`uid`,`label`,`tid`) VALUES ('258','49','8','49');
INSERT INTO `s_user_project` (`id`,`uid`,`label`,`tid`) VALUES ('259','49','2','49');
INSERT INTO `s_user_project` (`id`,`uid`,`label`,`tid`) VALUES ('266','58','9','58');
INSERT INTO `s_user_project` (`id`,`uid`,`label`,`tid`) VALUES ('267','58','7','58');
INSERT INTO `s_user_project` (`id`,`uid`,`label`,`tid`) VALUES ('268','58','3','58');
INSERT INTO `s_user_project` (`id`,`uid`,`label`,`tid`) VALUES ('278','59','15','59');
INSERT INTO `s_user_project` (`id`,`uid`,`label`,`tid`) VALUES ('281','50','5','50');
INSERT INTO `s_user_project` (`id`,`uid`,`label`,`tid`) VALUES ('282','50','3','50');
INSERT INTO `s_user_project` (`id`,`uid`,`label`,`tid`) VALUES ('283','50','8','50');
INSERT INTO `s_user_project` (`id`,`uid`,`label`,`tid`) VALUES ('284','57','9','57');
INSERT INTO `s_user_project` (`id`,`uid`,`label`,`tid`) VALUES ('285','57','5','57');
INSERT INTO `s_user_project` (`id`,`uid`,`label`,`tid`) VALUES ('286','1','3','1');
INSERT INTO `s_user_project` (`id`,`uid`,`label`,`tid`) VALUES ('289','0','2','3');
INSERT INTO `s_user_project` (`id`,`uid`,`label`,`tid`) VALUES ('290','0','4','3');
INSERT INTO `s_user_project` (`id`,`uid`,`label`,`tid`) VALUES ('291','2','5','2');
INSERT INTO `s_user_project` (`id`,`uid`,`label`,`tid`) VALUES ('292','2','1','2');

-- ----------------------------
-- Table structure for s_video
-- ----------------------------
DROP TABLE IF EXISTS `s_video`;
CREATE TABLE `s_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='视频表';
-- ----------------------------
-- Records of s_video
-- ----------------------------
INSERT INTO `s_video` (`id`,`url`,`name`,`create_time`,`update_time`) VALUES ('1','/uploads/video/20210430/9460b6b25a6b07894e013aa384f5717a.mp4','视频','1619764873','1619764873');
INSERT INTO `s_video` (`id`,`url`,`name`,`create_time`,`update_time`) VALUES ('2','/uploads/video/20210430/932762c06be7b73dcbfaade2ecffb79c.mp4','视频','1619766761','1619766761');
INSERT INTO `s_video` (`id`,`url`,`name`,`create_time`,`update_time`) VALUES ('3','/uploads/video/20210506/fd33399f41719a8ce738136ca7db657d.mp4','视频','1620265247','1620265247');
INSERT INTO `s_video` (`id`,`url`,`name`,`create_time`,`update_time`) VALUES ('4','/uploads/video/20210507/283783a01fdda32006c6a60865f371ff.mp4','视频','1620353114','1620353114');

