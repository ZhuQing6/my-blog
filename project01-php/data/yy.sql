#数据库数据

SET NAMES UTF8;
DROP DATABASE IF EXISTS yiyouze;
CREATE DATABASE yiyouze CHARSET=UTF8;
USE yiyouze;

#企业用户登录表
CREATE TABLE employer_list(
 eid INT PRIMARY KEY AUTO_INCREMENT,
 emp VARCHAR(16),
 pwd VARCHAR(16),
 job_name VARCHAR(16),
 name VARCHAR(32),
 tel VARCHAR(32),
 email VARCHAR(16),
 area VARCHAR(10)
);
INSERT INTO employer_list VALUES
(null,'ab','ab1212','总经理','苏大大','18888888888','ab.qq.com','苏州'), 
(null,'gh','gh7878','市场经理','苏四大','18855555555','gh.qq.com','苏州'), 
(null,'ij','ij9090','部门经理','苏五大','18833333333','ij.qq.com','苏州');

#首页轮播图表：banner
CREATE TABLE banner(
 bid INT PRIMARY KEY AUTO_INCREMENT,
 url VARCHAR(32),
 title VARCHAR(32),
 href VARCHAR(32)
);
INSERT INTO banner VALUE
(null,'img/index/index01.jpg','中国人力资源服务外包公司','index.html'),
(null,'img/index/index02.jpg','创新就是创造一种资源,<br>人才最本质的特点在于创造','intr2.html'),
(null,'img/index/index03.jpg','能用众力，则无敌于天下矣,<br>能用众智，则无畏于圣人矣','intr3.html'),
(null,'img/index/index04.jpg','加入我们吧！一起铸就未来','intr1.html');

#导航条条目
CREATE TABLE nav_list(
 nid INT PRIMARY KEY AUTO_INCREMENT,
 title VARCHAR(32),
 url VARCHAR(32)
);
INSERT INTO nav_list VALUES
 (null,'首页','index.html'),
 (null,'关于我们','intr1.html'),
 (null,'企业服务方案','intr2.html'),
 (null,'易优伙伴','intr3.html'),
 (null,'联系我们','intr4.html');

#易优之关于我们
CREATE TABLE intr1(
 nid INT PRIMARY KEY AUTO_INCREMENT,
 title VARCHAR(32),
 content VARCHAR(2000)
);
INSERT INTO intr1 VALUES
 (null,'企业介绍','苏州易优泽企业管理有限公司成立于2016年，坐落于苏州高博技术学院办公楼，公司致力于成为中国人力资本经营服务专家，让人力资本实现最大价值，从而推动社会发展，并让我们的世界变得更加美好。<br><br>集团主营业务包括：企业管理服务、商务信息咨询、人才中介服务、酒店管理、保洁服务、家政服务、物业管理、汽车租赁、企业形象策划、展览展示服务、礼仪服务、企业内训、企业活动策划、市场营销策划；绿化工程设计与施工；环保技术的开发；销售：日用百货、文化办公用品、劳保用品、电子产品、机电设备及配件、服装、五金、建材。等多个专业人力资源外包服务领域。<br><br>Suzhou youze Enterprise Management Co.，Ltd. was founded in 2016，is committed to become the service expert human capital management Chinese，to maximize the value of human capital，so as to promote the development of the society， and make our world a better <br><br>The group‘s main business includes: enterprise management，business information consulting services，personnel intermediary services，hotel management，cleaning services，housekeeping services，car rental，property management，corporate image planning，exhibition services，service etiquette，enterprise training，business activities planning，marketing planning；green design and construction engineering；environmental protection technology development；sales: daily necessities，office supplies，labor supplies，electronic products，electrical and mechanical equipment and accessories，clothing，hardware，building materials。And other professional human resources outsourcing services。'),
 (null,'愿景与目标','成长为对社会卓有贡献的企业以高度的使命感推动社会发展，促进社会和谐，为社会创造最大价值；<br><br>成长为行业最有价值、最值得信赖的企业不断创新我们的服务于产品，用心、专注、精准求精、信守承诺；<br><br>成长为员工心目中的最佳雇主为员工提供一流的工作环境和发展平台，追求全体员工精神和物质双方面的幸福。<br><br>我们的目标：<br><br>-近期目标（10年内，2002-2012）成为中国最专业的蓝领外包服务供应商；<br><br>-中期目标（20年内，2002-2022）成为中国最受尊敬的人力资源服务机构；<br><br>-远期目标（50年内，2002-2052）成为全球最受尊敬的人力资源服务机构；<br><br>-百年目标（100年内，2002-2102）成长为一家伟大的公司');

#企业服务方案之人事外包
CREATE TABLE intr2_1(
 nid INT PRIMARY KEY AUTO_INCREMENT,
 id VARCHAR(10),
 title VARCHAR(12),
 content VARCHAR(265)
);
INSERT INTO intr2_1 VALUES
 (null,'h2_1','服务类型','<li>1)劳务派遣</li><li>2)人事代理</li><li>3)RPO（招聘流程外包）</li><li>4)实习生托管</li><li>5)HR整体外包</li><li>6)4产品<li>&nbsp;a)ERS（员工关系服务）</li><li>&nbsp;b)TOS（员工培训服务）</li><li>&nbsp;c)IME（突发事件管理专家）</li><li>&nbsp;d)EBD（蓝领离职解决专家</li>'),
 (null,'h2_2','支持平台','<li>1) 业内领先的业务平台管理系统</li><li>2) 完善的市内外资源供应管理体系</li> <li>3) 热情、专业、高效的客户服务团队</li> <li>4) 强有力的员工关系服务、劳动保障服务体系</li> <li>5) 创新、专业、资深的研发团队</li> <li>6) 广泛深厚的政府合作背景</li> <li>7) 提供全方位服务的蓝领网</li> <li>8) 全国服务热线400-1133-400</li>'),
 (null,'h2_3','特色服务','<li>1) 个性化的《客户服务报告》</li> <li>2) 易优泽—站式服务中心</li> <li>3) 与时俱进的信息查询方式—易优泽员工微信服务</li> <li>4) 企业HR的交流平台—HR沙龙</li> <li>5) 及时、全面、创新的《每月行业资讯》</li> <li>7) 行业内第一本最具收藏价值的《员工手册》</li>');

#企业服务方案之制造外包
CREATE TABLE intr2(
 nid INT PRIMARY KEY AUTO_INCREMENT,
 title VARCHAR(32),
 content VARCHAR(400),
 url VARCHAR(32),
 class VARCHAR(20)
);
INSERT INTO intr2 VALUES
 (null,'制造外包的概念','制造外包，是指企业与其外部服务承揽机构之间建立合作伙伴关系，把生产中的作业运营流程，部分或者全部外包给专业高效的外包服务商。外包服务商凭借自身的专业资源优势按照企业标准，自行招募劳动者、培训上岗并自主经营管理。从而降低企业成本，提高效能，降低用工风险，增强企业自身竞争力。','img/intr/zz.png','zz'),
 (null,'战略','信息化、智能化带动制造业发展，各国纷纷布局工业4.0全球制造业产业调整和转移路径清晰、规模加大制造为主转向“微笑曲线”两端的研发、营销及服务企业经营管理功能与生产过程分离，成本效益最大化全球范围内整合和实现资源优化配置，分工更加深化','img/intr/intr2_1.png','intr2_1'),
 (null,'制造业外包趋势','制造业的服务化，延生企业产品和服务链条，创造更高附加值。制造业外包发展几何式增长，降本增效，聚焦核心事务。企业人力资源管理：劳动力资源→人力资源→人力资本;制造业驱动着过去30年中国经济的高速增长。但是中国制造业的主要产能集中在低附加值部分，处于产业经济学中“微笑曲线”（Smiling Curve）的底部区域，只能获得较薄的利润。当前，中国制造业正面临着市场需求不稳、用工成本上升、劳动力短缺、汇率波动、转型阵痛等方面的压力。而将制造非核心流程外包给专业服务商成为越来越多企业的选择。据调查，不同类型的制造型企业均逐步选择制造外包服务，把非核心制造流程的全部或部分外包给专业的外包服务商进行降本增效，这已成为国内制造型企业普遍的做法。','',''),
 (null,'制造业外包优势','<h4>省钱</h4><div>实现灵活用工、降低成本、提升利润。</div><h4>省心</h4><div>规避用工风险、降低经营风险、专注核心业务。</div><h4>省力</h4><div>简化流程、提升效率。','img/intr/intr2_2.png','intr2_2');

#易优伙伴之合作案例
CREATE TABLE intr3(
 nid INT PRIMARY KEY AUTO_INCREMENT,
 title1 VARCHAR(10),
 content1 VARCHAR(64),
 title2 VARCHAR(10),
 content2 VARCHAR(300),
 title3 VARCHAR(10),
 content3 VARCHAR(64),
 title4 VARCHAR(10),
 content4 VARCHAR(100),
 title5 VARCHAR(10),
 content5 VARCHAR(100),
 title6 VARCHAR(10),
 content6 VARCHAR(200)
);
INSERT INTO intr3 VALUES
 (null,'客户名称','某电梯制造企业','客户简介','是一家行业涉及电、扶梯、立体停车设备、精密压铸、CNC数控机床、节能电机等产品的跨国型集团企业。于2012年1月16日成功上市，是国内首家登陆上海主板上市的内资电梯企业。','承包内容','生产外包','承包方式','整体承包计时模式','外包人力','60人','优势体现','真正制造外包模式，项目管理体系完善规范；健全的质量管理制度；生产效率提升5-20%；帮助客户实现灵活用工，规避用工风险。'),
 (null,'客户名称','某显示面板制造企业','客户简介','外国独资兴办的液晶显示面板生产工厂，是液晶显示领域的领跑者，凭借先进的技术、一流的管理以及雄厚的资金实力与人才队伍，一直占据着显示市场业界第一的领袖位置。','承包内容','检验外包','承包方式','计时与计件相结合模式','外包人力','600人','优势体现','强大的招聘渠道；为客户解决了产线用工淡旺季的用工成本；经过合理的排班制度大大缩减用人成本、提高生产效率；员工培养晋升体系，完善提升组织能力建设，基础管理人员全部现场培养、提拔。'),
 (null,'客户名称','某物流快递企业','客户简介','主营国内、国际快递及相关业务，是国内唯一拥有快件全生命周期管理系统的民营快递企业。2003年成为国内首家包机夜航的民营速递公司，截止目前仍然是国内唯一一家启用全货机运输快件包裹的民营速递公司。','承包内容','仓储物流外包','承包方式','整体承包计重模式','外包人力','100人','优势体现','系统完善的培训体系，仓库管理人员的专业技能全面提升；货物摆放位置按照标准严格执行，达到0异常；特殊的激励方式，提升仓管积极性及管理协调能力；春节期间，双11期间，人员灵活安排，帮助客户解决快递高峰期的用工问题。'),
 (null,'客户名称','某大型农业机械生产企业','客户简介','创立于1992年，主要从事工程机械、环境产业、农业机械等高新技术装备的研发制造。工程机械、环卫机械均位居国内第一，农业机械位居国内前三。先后实现深港两地上市。','承包内容','技术蓝领岗位外包','承包方式','计时+计件模式','外包人力','100人','优势体现','涂装、焊接等区域技术蓝领（焊工、喷漆工）都有涉及，充分解决客户淡旺季难题，成功降低成本。将人力资源部门从繁琐的人力资源事务中解脱出来，专注于核心事务。不断提高外包水平及管理方式，得到客户的高度好评。');

#首页intr
CREATE TABLE index_intr(
 id INT PRIMARY KEY AUTO_INCREMENT,
 class VARCHAR(10),
 href VARCHAR(20),
 title VARCHAR(10),
 src1 VARCHAR(20),
 itm1 VARCHAR(10),
 src2 VARCHAR(20),
 itm2 VARCHAR(16)
);
INSERT INTO index_intr VALUES
 (null,'bla','intr1.html','关于我们','img/intr/intr.jpg','企业介绍','img/intr/aim.jpg','愿景与目标'),
 (null,'bla bla1','intr2.html','企业服务方案','img/intr/hr.jpg','人事外包','img/intr/zhizao.jpg','制造外包'),
 (null,'bla bla2','intr3.html','易优伙伴','img/intr/case.png','合作案例','img/intr/aim.png','客户总览图'),
 (null,'bla','intr4.html','联系我们','img/intr/map.png','总部地图路线','img/intr/line.png','服务热线');

 #用户咨询记录表
 CREATE TABLE user_connect(
  id INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(16),
  tel VARCHAR(24),
  connect VARCHAR(500)
 );

#用户搜索表
 CREATE TABLE user_search(
  sid INT PRIMARY KEY AUTO_INCREMENT,
  url VARCHAR(16),
  title VARCHAR(24),
  connect VARCHAR(100)
 );
INSERT INTO user_search VALUES
 (null,'intr1.html','关于我们','公司介绍发展史成立时间目标愿景主营业务服务机构类型创立'),
 (null,'intr2.html','企业服务方案之人事外包','服务类型劳务派遣人事代理招聘流程外包实习生托管HR产品员工关系服务（员工培训服务）（突发事件管理专家）（蓝领离职解决专家支持平台) 业务平台管理系统市内外资源供应管理体系客户服务团队员工关系服务、劳动保障服务体系创新研发团队政府合作《客户服务报告》服务中心《员工手册》流程企业服务方案之人事外包人力'),
 (null,'intr2.html','企业服务方案之制造外包','制造外包是指企业与其外部服务承揽机构之间建立合作伙伴关系生产中的作业运营流程服务商业资源优势企业人力资源管理'),
 (null,'intr3.html','易优伙伴之合作案例','合作公司客户名称,客户简介涉及电、扶梯、立体停车设备、精密压铸、CNC数控机床、节能电机等产品的跨国型集团企业承包内容生产外包承包方式整体承包计时模式外包人力优势体现真正制造外包模式，项目管理体系完善规范；健全的质量管理制度；生产效率提升5-20%易优伙伴之合作案例'),
 (null,'intr4.html','联系我们','地址地图联系电话客服公交联系路线');