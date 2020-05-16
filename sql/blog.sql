/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:3306
 Source Schema         : blog

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 16/05/2020 18:38:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_blog
-- ----------------------------
DROP TABLE IF EXISTS `t_blog`;
CREATE TABLE `t_blog` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `appreciate` bit(1) NOT NULL,
  `commentable` bit(1) NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `describe` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `create_time` int DEFAULT NULL,
  `first_picture` varchar(255) DEFAULT NULL,
  `flag` varchar(255) DEFAULT NULL,
  `published` bit(1) NOT NULL,
  `recommend` bit(1) NOT NULL,
  `share_statement` bit(1) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `update_time` int DEFAULT NULL,
  `views` int DEFAULT NULL,
  `type_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `like` int DEFAULT '0',
  `unlike` int DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `blog_user` (`user_id`),
  KEY `blog_type` (`type_id`),
  CONSTRAINT `blog_type` FOREIGN KEY (`type_id`) REFERENCES `t_type` (`id`),
  CONSTRAINT `blog_user` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_blog
-- ----------------------------
BEGIN;
INSERT INTO `t_blog` VALUES (1, b'1', b'1', '# 环境：\r\n\r\n- JDK 1.8\r\n- MySQL 8.0\r\n- maven 3.6.3\r\n\r\n## 1. 简介\r\n\r\n### 1.1 什么是Mybatis\r\n\r\n![MyBatis](http://mybatis.org/images/mybatis-logo.png)\r\n\r\n- Mybatis 是一款优秀的持久层框架\r\n- 他支持定制化SQL、存储过程以及高级映射。\r\n- MyBatis 避免了几乎所有的JDBC代码和手动设置参数以及获取结果集。MyBatis可有使用简单的XML或注解来配置和映射原生类型、接口和Java的POJO（Plain Old Java Object，普通老式Java对象）为数据库中的记录\r\n- MyBatis 本是[apache](https://baike.baidu.com/item/apache/6265)的一个开源项目[iBatis](https://baike.baidu.com/item/iBatis), 2010年这个项目由apache software foundation 迁移到了google code，并且改名为MyBatis 。\r\n- 2013年11月迁移到Github。\r\n\r\n如何获得MyBatis？\r\n- maven仓库\r\n\r\n	```xml\r\n	<dependency>\r\n		<groupId>org.mybatis</groupId>\r\n		<artifactId>mybatis</artifactId>\r\n		<version>3.5.2</version>\r\n	</dependency>\r\n	```\r\n- Github ：https://github.com/mybatis/mybatis-3/releases\r\n\r\n- 中文文档 ：https://mybatis.org/mybatis-3/zh/index.html\r\n\r\n### 6. 设置（settings）\r\n\r\n| **设置名**               | **描述**                                                     | 有效值                                                       | 默认值 |\r\n| ------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ | ------ |\r\n| mapUnderscoreToCamelCase | 是否开启驼峰命名自动映射，即从经典数据库列名 A_COLUMN 映射到经典 Java 属性名 aColumn。 | true—— false                                                 | False  |\r\n| logImpl                  | 指定 MyBatis 所用日志的具体实现，未指定时将自动查找。        | SLF4J \\| LOG4J \\| LOG4J2 \\| JDK_LOGGING \\| COMMONS_LOGGING \\| STDOUT_LOGGING \\| NO_LOGGING | 未设置 |\r\n| cacheEnabled             | 全局性地开启或关闭所有映射器配置文件中已配置的任何缓存。     | true \\| false                                                | true   |\r\n| lazyLoadingEnabled       | 延迟加载的全局开关。当开启时，所有关联对象都会延迟加载。 特定关联关系中可通过设置 `fetchType` 属性来覆盖该项的开关状态。 | true \\| false                                                | false  |', 'Mybatis 是一款优秀的持久层框架他支持定制化SQL、存储过程以及高级映射。\r\nMyBatis 避免了几乎所有的JDBC代码和手动设置参数以及获取结果集。MyBatis可有使用简单的XML或注解来配置和映射原生类型、接口和', 1556607915, 'https://picsum.photos/id/1/800/450', '原创', b'1', b'1', b'0', 'MyBatis', 1556607915, 1, 2, 1, 0, 0);
INSERT INTO `t_blog` VALUES (2, b'1', b'1', '## 简介\r\n- Nginx (engine x) 是一个高性能的HTTP和反向代理web服务器，同时也提供了IMAP/POP3/SMTP服务。\r\n- 因它的稳定性、丰富的功能集、示例配置文件和低系统资源的消耗而闻名。\r\n- Nginx是一款轻量级的Web 服务器/反向代理服务器及电子邮件（IMAP/POP3）代理服务器，在BSD-like 协议下发行。其特点是占有内存少，并发能力强，事实上nginx的并发能力在同类型的网页服务器中表现较好，中国大陆使用nginx网站用户有：百度、京东、新浪、网易、腾讯、淘宝等。\r\n## nginx安装\r\n\r\nCentOS安装nginx：https://blog.csdn.net/sqlquan/article/details/101099850\r\n\r\n安装/卸载命令\r\n\r\n```zsh\r\nsudo yum -y install nginx   # 安装 nginx\r\nsudo yum remove nginx  # 卸载 ngin\r\n```\r\n\r\nnginx常用命令\r\n\r\n```zsh\r\nsudo systemctl enable nginx # 设置开机启动 \r\nsudo service nginx start # 启动nginx服务\r\nsudo service nginx stop # 停止nginx服务\r\nsudo service nginx restart # 重启nginx服务\r\nsudo service nginx reload # 重新加载配置，一般是在修改过nginx配置文件时使用。\r\n```\r\n\r\n使用yum进行Nginx安装时，Nginx配置文件在`/etc/nginx`目录下。\r\n\r\n\r\n\r\n## Nginx配置实例-反向代理\r\n\r\n1. 实现效果：输入Nginx地址，跳转到Tomcat主页面\r\n\r\n', 'Nginx (engine x) 是一个高性能的HTTP和反向代理web服务器，同时也提供了IMAP/POP3/SMTP服务。因它的稳定性、丰富的功能集、示例配置文件和低系统资源的消耗而闻名。\r\nNginx是一款轻量级的Web 服务器/反向代理服务器', 1556607915, 'https://picsum.photos/id/1000/800/450', '原创', b'1', b'1', b'0', 'Nginx', 1556607915, 2, 4, 1, 0, 0);
INSERT INTO `t_blog` VALUES (3, b'1', b'0', '## 什么是MVC\r\n\r\n- MVC是模型(Model)、视图(View)、控制器(Controller)的简写，是一种软件设计规范。\r\n- 是将业务逻辑、数据、显示分离的方法来组织代码。\r\n- MVC主要作用是**降低了视图与业务逻辑间的双向偶合**。\r\n- MVC不是一种设计模式，**MVC是一种架构模式**。当然不同的MVC存在差异。\r\n\r\n**Model（模型）**:数据模型，提供要展示的数据，因此包含数据和行为，可以认为是领域模型或JavaBean组件（包含数据和行为），不过现在一般都分离开来：Value Object（数据Dao） 和 服务层（行为Service）。也就是模型提供了模型数据查询和模型数据的状态更新等功能，包括数据和业务。\r\n\r\n**View（视图）**：负责进行模型的展示，一般就是我们见到的用户界面，客户想看到的东西。\r\n\r\n**Controller（控制器）**：接收用户请求，委托给模型进行处理（状态改变），处理完毕后把返回的模型数据返回给视图，由视图负责展示。 也就是说控制器做了个调度员的工作。\r\n\r\n**最典型的MVC就是JSP + servlet + javabean的模式。**\r\n![](http://112.124.29.86:8088/images/originalImages/4041526897.png#pic_center)\r\n\r\n### Model1时代\r\n\r\n- 在web早期的开发中，通常采用的都是Model1。\r\n\r\n- Model1中，主要分为两层，视图层和模型层。\r\n  ![](http://112.124.29.86:8088/images/originalImages/449885502.png)\r\n\r\nModel1优点：架构简单，比较适合小型项目开发；\r\n\r\nModel1缺点：JSP职责不单一，职责过重，不便于维护；\r\n\r\n### Model2时代\r\n\r\nModel2把一个项目分成三部分，包括**视图、控制、模型。**\r\n![](http://112.124.29.86:8088/images/originalImages/4094962550.png)', 'MVC是模型(Model)、视图(View)、控制器(Controller)的简写，是一种软件设计规范。是将业务逻辑、数据、显示分离的方法来组织代码。\r\nMVC主要作用是降低了视图与业务逻辑间的双向偶合。\r\nMVC不是一种设计模式，MVC是一种架构模式。当然不同的MVC存在差异。', 1587914635, 'https://picsum.photos/seed/picsum/800/450', '原创', b'1', b'1', b'0', 'SpringMVC', 1588310633, 12, 2, 1, 4, 1);
INSERT INTO `t_blog` VALUES (4, b'1', b'1', '在写代码之前我们先了解一下这三个框架分别是干什么的？ 相信大以前也看过不少这些概念，我这就用大白话来讲，如果之前有了解过可以跳过这一大段，直接看代码！\r\n\r\nSpringMVC：它用于web层，相当于controller（等价于传统的servlet和struts的action），用来处理用户请求。举个例子，用户在地址栏输入http://网站域名/login，那么springmvc就会拦截到这个请求，并且调用controller层中相应的方法，（中间可能包含验证用户名和密码的业务逻辑，以及查询数据库操作，但这些都不是springmvc的职责），最终把结果返回给用户，并且返回相应的页面（当然也可以只返回json/xml等格式数据）。springmvc就是做前面和后面过程的活，与用户打交道！！\r\n\r\nSpring：太强大了，以至于我无法用一个词或一句话来概括它。但与我们平时开发接触最多的估计就是IOC容器，它可以装载bean（也就是我们java中的类，当然也包括service dao里面的），有了这个机制，我们就不用在每次使用这个类的时候为它初始化，很少看到关键字new。另外spring的aop，事务管理等等都是我们经常用到的。\r\n\r\nMyBatis：如果你问我它跟鼎鼎大名的Hibernate有什么区别？我只想说，他更符合我的需求。第一，它能自由控制sql，这会让有数据库经验的人（当然不是说我啦捂脸）编写的代码能搞提升数据库访问的效率。第二，它可以使用xml的方式来组织管理我们的sql，因为一般程序出错很多情况下是sql出错，别人接手代码后能快速找到出错地方，甚至可以优化原来写的sql。\r\n\r\n### 环境要求\r\n\r\n环境：\r\n\r\n- IDEA\r\n- MySQL 5.7.19\r\n- Tomcat 9\r\n- Maven 3.6\r\n\r\n要求：\r\n\r\n- 需要熟练掌握MySQL数据库，Spring，JavaWeb及MyBatis知识，简单的前端知识；\r\n\r\n### 数据库环境\r\n\r\n创建一个存放书籍数据的数据库表\r\n\r\n```sql\r\nCREATE DATABASE `ssmbuild`;\r\n\r\nUSE `ssmbuild`;\r\n\r\nDROP TABLE IF EXISTS `books`;\r\n\r\nCREATE TABLE `books` (\r\n  `bookID` INT(10) NOT NULL AUTO_INCREMENT COMMENT \'书id\',\r\n  `bookName` VARCHAR(100) NOT NULL COMMENT \'书名\',\r\n  `bookCounts` INT(11) NOT NULL COMMENT \'数量\',\r\n  `detail` VARCHAR(200) NOT NULL COMMENT \'描述\',\r\n  KEY `bookID` (`bookID`)\r\n) ENGINE=INNODB DEFAULT CHARSET=utf8\r\n\r\nINSERT  INTO `books`(`bookID`,`bookName`,`bookCounts`,`detail`)VALUES \r\n(1,\'Java\',1,\'从入门到放弃\'),\r\n(2,\'MySQL\',10,\'从删库到跑路\'),\r\n(3,\'Linux\',5,\'从进门到进牢\');\r\n```\r\n\r\n### 基本环境搭建\r\n\r\n1. 新建一Maven项目！ ssmbuild ， 添加web的支持\r\n2. 导入相关的pom依赖！\r\n\r\n```xml\r\n<!--依赖：Junit，数据库驱动，连接池，mybatis，mybatis-spring-->\r\n<dependencies>\r\n    <!--junit-->\r\n    <dependency>\r\n        <groupId>junit</groupId>\r\n        <artifactId>junit</artifactId>\r\n        <version>4.12</version>\r\n    </dependency>\r\n    <!--数据库驱动-->\r\n    <dependency>\r\n        <groupId>mysql</groupId>\r\n        <artifactId>mysql-connector-java</artifactId>\r\n        <version>8.0.18</version>\r\n    </dependency>\r\n    <!--数据库连接池-->\r\n    <dependency>\r\n        <groupId>com.mchange</groupId>\r\n        <artifactId>c3p0</artifactId>\r\n        <version>0.9.5.2</version>\r\n    </dependency>\r\n    <!--Servlet JSP-->\r\n    <dependency>\r\n        <groupId>javax.servlet</groupId>\r\n        <artifactId>javax.servlet-api</artifactId>\r\n        <version>4.0.0</version>\r\n        <scope>provided</scope>\r\n    </dependency>\r\n    <dependency>\r\n        <groupId>javax.servlet</groupId>\r\n        <artifactId>jsp-api</artifactId>\r\n        <version>2.0</version>\r\n        <scope>provided</scope>\r\n    </dependency>\r\n    <dependency>\r\n        <groupId>javax.servlet</groupId>\r\n        <artifactId>jstl</artifactId>\r\n        <version>1.2</version>\r\n    </dependency>\r\n    <!--MyBatis-->\r\n    <dependency>\r\n        <groupId>org.mybatis</groupId>\r\n        <artifactId>mybatis</artifactId>\r\n        <version>3.5.2</version>\r\n    </dependency>\r\n    <dependency>\r\n        <groupId>org.mybatis</groupId>\r\n        <artifactId>mybatis-spring</artifactId>\r\n        <version>2.0.4</version>\r\n    </dependency>\r\n\r\n    <!--Spring-->\r\n    <dependency>\r\n        <groupId>org.springframework</groupId>\r\n        <artifactId>spring-webmvc</artifactId>\r\n        <version>5.2.4.RELEASE</version>\r\n    </dependency>\r\n    <dependency>\r\n        <groupId>org.springframework</groupId>\r\n        <artifactId>spring-jdbc</artifactId>\r\n        <version>5.2.4.RELEASE</version>\r\n    </dependency>\r\n</dependencies>\r\n```\r\n\r\n\r\n\r\n1. Maven资源过滤设置\r\n\r\n```xml\r\n<build>\r\n    <resources>\r\n        <resource>\r\n            <directory>src/main/java</directory>\r\n            <includes>\r\n                <include>**/*.properties</include>\r\n                <include>**/*.xml</include>\r\n            </includes>\r\n            <filtering>true</filtering>\r\n        </resource>\r\n        <resource>\r\n            <directory>src/main/resources</directory>\r\n            <includes>\r\n                <include>**/*.properties</include>\r\n                <include>**/*.xml</include>\r\n            </includes>\r\n            <filtering>true</filtering>\r\n        </resource>\r\n    </resources>\r\n</build>\r\n```\r\n\r\n\r\n\r\n1. 建立基本结构和配置框架！\r\n\r\n   - com.kuang.pojo\r\n   - com.kuang.dao\r\n   - com.kuang.service\r\n   - com.kuang.controller\r\n   - mybatis-config.xml\r\n\r\n```xml\r\n<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\r\n<!DOCTYPE configuration\r\n        PUBLIC \"-//mybatis.org//DTD Config 3.0//EN\"\r\n        \"http://mybatis.org/dtd/mybatis-3-config.dtd\">\r\n<configuration>\r\n\r\n</configuration>\r\n```\r\n\r\n   - applicationContext.xml\r\n\r\n```xml\r\n<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<beans xmlns=\"http://www.springframework.org/schema/beans\"\r\n       xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"\r\n       xsi:schemaLocation=\"http://www.springframework.org/schema/beans\r\n                           http://www.springframework.org/schema/beans/spring-beans.xsd\">\r\n\r\n</beans>\r\n```\r\n\r\n### Mybatis层编写\r\n\r\n1. 数据库配置文件 **database.properties**\r\n\r\n```properties\r\njdbc.driver=com.mysql.jdbc.Driver\r\njdbc.url=jdbc:mysql://localhost:3306/ssmbuild?useSSL=true&useUnicode=true&characterEncoding=utf8\r\njdbc.username=root\r\njdbc.password=123456\r\n```\r\n\r\n\r\n\r\n1. IDEA关联数据库\r\n2. 编写MyBatis的核心配置文件\r\n\r\n```xml\r\n<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\r\n<!DOCTYPE configuration\r\n        PUBLIC \"-//mybatis.org//DTD Config 3.0//EN\"\r\n        \"http://mybatis.org/dtd/mybatis-3-config.dtd\">\r\n<configuration>\r\n    \r\n    <typeAliases>\r\n        <package name=\"com.kuang.pojo\"/>\r\n    </typeAliases>\r\n    <mappers>\r\n        <mapper resource=\"com/kuang/dao/BookMapper.xml\"/>\r\n    </mappers>\r\n\r\n</configuration>\r\n```\r\n\r\n\r\n\r\n1. 编写数据库对应的实体类 com.kuang.pojo.Books\r\n   使用lombok插件！\r\n\r\n```java\r\npackage com.kuang.pojo;\r\n\r\nimport lombok.AllArgsConstructor;\r\nimport lombok.Data;\r\nimport lombok.NoArgsConstructor;\r\n\r\n@Data\r\n@AllArgsConstructor\r\n@NoArgsConstructor\r\npublic class Books {\r\n    \r\n    private int bookID;\r\n    private String bookName;\r\n    private int bookCounts;\r\n    private String detail;\r\n    \r\n}\r\n```\r\n\r\n\r\n\r\n1. 编写Dao层的 Mapper接口！\r\n\r\n```java\r\npackage com.kuang.dao;\r\n\r\nimport com.kuang.pojo.Books;\r\nimport java.util.List;\r\n\r\npublic interface BookMapper {\r\n\r\n    //增加一个Book\r\n    int addBook(Books book);\r\n\r\n    //根据id删除一个Book\r\n    int deleteBookById(int id);\r\n\r\n    //更新Book\r\n    int updateBook(Books books);\r\n\r\n    //根据id查询,返回一个Book\r\n    Books queryBookById(int id);\r\n\r\n    //查询全部Book,返回list集合\r\n    List<Books> queryAllBook();\r\n\r\n}\r\n```\r\n\r\n\r\n\r\n1. 编写接口对应的 Mapper.xml 文件。需要导入MyBatis的包；\r\n\r\n```xml\r\n<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\r\n<!DOCTYPE mapper\r\n        PUBLIC \"-//mybatis.org//DTD Mapper 3.0//EN\"\r\n        \"http://mybatis.org/dtd/mybatis-3-mapper.dtd\">\r\n\r\n<mapper namespace=\"com.swx.dao.BookMapper\">\r\n\r\n    <!--增加一个Book-->\r\n    <insert id=\"addBook\" parameterType=\"Books\">\r\n        insert into ssmbuild.books(bookName,bookCounts,detail)\r\n        values (#{bookName}, #{bookCounts}, #{detail})\r\n    </insert>\r\n\r\n    <!--根据id删除一个Book-->\r\n    <delete id=\"deleteBookById\" parameterType=\"int\">\r\n        delete from ssmbuild.books where bookID=#{bookID}\r\n    </delete>\r\n\r\n    <!--更新Book-->\r\n    <update id=\"updateBook\" parameterType=\"Books\">\r\n        update ssmbuild.books\r\n        set bookName = #{bookName},bookCounts = #{bookCounts},detail = #{detail}\r\n        where bookID = #{bookID}\r\n    </update>\r\n\r\n    <!--根据id查询,返回一个Book-->\r\n    <select id=\"queryBookById\" resultType=\"Books\">\r\n        select * from ssmbuild.books\r\n        where bookID = #{bookID}\r\n    </select>\r\n\r\n    <!--查询全部Book-->\r\n    <select id=\"queryAllBook\" resultType=\"Books\">\r\n        SELECT * from ssmbuild.books\r\n    </select>\r\n\r\n</mapper>\r\n```\r\n\r\n\r\n\r\n1. 编写Service层的接口和实现类\r\n   接口：\r\n\r\n```java\r\npackage com.swx.service;\r\n\r\nimport com.swx.pojo.Books;\r\n\r\nimport java.util.List;\r\n\r\n//BookService:底下需要去实现,调用dao层\r\npublic interface BookService {\r\n    //增加一个Book\r\n    int addBook(Books book);\r\n    //根据id删除一个Book\r\n    int deleteBookById(int id);\r\n    //更新Book\r\n    int updateBook(Books books);\r\n    //根据id查询,返回一个Book\r\n    Books queryBookById(int id);\r\n    //查询全部Book,返回list集合\r\n    List<Books> queryAllBook();\r\n}\r\n```\r\n\r\n\r\n\r\n实现类：\r\n\r\n```java\r\npackage com.swx.service;\r\n\r\nimport com.swx.dao.BookMapper;\r\nimport com.swx.pojo.Books;\r\nimport java.util.List;\r\n\r\npublic class BookServiceImpl implements BookService {\r\n\r\n    //调用dao层的操作，设置一个set接口，方便Spring管理\r\n    private BookMapper bookMapper;\r\n\r\n    public void setBookMapper(BookMapper bookMapper) {\r\n        this.bookMapper = bookMapper;\r\n    }\r\n    \r\n    public int addBook(Books book) {\r\n        return bookMapper.addBook(book);\r\n    }\r\n    \r\n    public int deleteBookById(int id) {\r\n        return bookMapper.deleteBookById(id);\r\n    }\r\n    \r\n    public int updateBook(Books books) {\r\n        return bookMapper.updateBook(books);\r\n    }\r\n    \r\n    public Books queryBookById(int id) {\r\n        return bookMapper.queryBookById(id);\r\n    }\r\n    \r\n    public List<Books> queryAllBook() {\r\n        return bookMapper.queryAllBook();\r\n    }\r\n}\r\n```\r\n\r\n**OK，到此，底层需求操作编写完毕！**\r\n\r\n### Spring层\r\n\r\n1. 配置**Spring整合MyBatis**，我们这里数据源使用c3p0连接池；\r\n2. 我们去编写Spring整合Mybatis的相关的配置文件； spring-dao.xml\r\n\r\n```xml\r\n<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<beans xmlns=\"http://www.springframework.org/schema/beans\"\r\n       xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"\r\n       xmlns:context=\"http://www.springframework.org/schema/context\"\r\n       xsi:schemaLocation=\"http://www.springframework.org/schema/beans\r\nhttp://www.springframework.org/schema/beans/spring-beans.xsd\r\nhttp://www.springframework.org/schema/context\r\nhttps://www.springframework.org/schema/context/spring-context.xsd\">\r\n\r\n    <!-- 配置整合mybatis -->\r\n    <!-- 1.关联数据库文件 -->\r\n    <context:property-placeholder location=\"classpath:database.properties\"/>\r\n\r\n    <!-- 2.数据库连接池 -->\r\n    <!--数据库连接池\r\ndbcp  半自动化操作  不能自动连接\r\nc3p0  自动化操作（自动的加载配置文件 并且设置到对象里面）\r\n    -->\r\n    <bean id=\"dataSource\" class=\"com.mchange.v2.c3p0.ComboPooledDataSource\">\r\n<!-- 配置连接池属性 -->\r\n<property name=\"driverClass\" value=\"${jdbc.driver}\"/>\r\n<property name=\"jdbcUrl\" value=\"${jdbc.url}\"/>\r\n<property name=\"user\" value=\"${jdbc.username}\"/>\r\n<property name=\"password\" value=\"${jdbc.password}\"/>\r\n\r\n<!-- c3p0连接池的私有属性 -->\r\n<property name=\"maxPoolSize\" value=\"30\"/>\r\n<property name=\"minPoolSize\" value=\"10\"/>\r\n<!-- 关闭连接后不自动commit -->\r\n<property name=\"autoCommitOnClose\" value=\"false\"/>\r\n<!-- 获取连接超时时间 -->\r\n<property name=\"checkoutTimeout\" value=\"10000\"/>\r\n<!-- 当获取连接失败重试次数 -->\r\n<property name=\"acquireRetryAttempts\" value=\"2\"/>\r\n    </bean>\r\n\r\n    <!-- 3.配置SqlSessionFactory对象 -->\r\n    <bean id=\"sqlSessionFactory\" class=\"org.mybatis.spring.SqlSessionFactoryBean\">\r\n<!-- 注入数据库连接池 -->\r\n<property name=\"dataSource\" ref=\"dataSource\"/>\r\n<!-- 配置MyBaties全局配置文件:mybatis-config.xml -->\r\n<property name=\"configLocation\" value=\"classpath:mybatis-config.xml\"/>\r\n    </bean>\r\n\r\n    <!-- 4.配置扫描Dao接口包，动态实现Dao接口注入到spring容器中 -->\r\n    <!--解释 ： https://www.cnblogs.com/jpfss/p/7799806.html-->\r\n    <bean class=\"org.mybatis.spring.mapper.MapperScannerConfigurer\">\r\n        <!-- 注入sqlSessionFactory -->\r\n        <property name=\"sqlSessionFactoryBeanName\" value=\"sqlSessionFactory\"/>\r\n        <!-- 给出需要扫描Dao接口包 -->\r\n        <property name=\"basePackage\" value=\"com.swx.dao\"/>\r\n    </bean>\r\n\r\n</beans>\r\n```\r\n\r\n\r\n\r\n1. **Spring整合service层**\r\n\r\n```xml\r\n<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<beans xmlns=\"http://www.springframework.org/schema/beans\"\r\n       xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"\r\n       xmlns:context=\"http://www.springframework.org/schema/context\"\r\n       xsi:schemaLocation=\"http://www.springframework.org/schema/beans\r\n    http://www.springframework.org/schema/beans/spring-beans.xsd\r\n    http://www.springframework.org/schema/context\r\n    http://www.springframework.org/schema/context/spring-context.xsd\">\r\n\r\n    <!-- 扫描service相关的bean -->\r\n    <context:component-scan base-package=\"com.swx.service\" />\r\n\r\n    <!--BookServiceImpl注入到IOC容器中-->\r\n    <bean id=\"BookServiceImpl\" class=\"com.swx.service.BookServiceImpl\">\r\n<property name=\"bookMapper\" ref=\"bookMapper\"/>\r\n    </bean>\r\n\r\n    <!-- 配置事务管理器 -->\r\n    <bean id=\"transactionManager\" class=\"org.springframework.jdbc.datasource.DataSourceTransactionManager\">\r\n<!-- 注入数据库连接池 -->\r\n<property name=\"dataSource\" ref=\"dataSource\" />\r\n    </bean>\r\n\r\n</beans>\r\n```\r\n\r\n\r\n\r\nSpring层搞定！再次理解一下，Spring就是一个大杂烩，一个容器！对吧！\r\n\r\n### SpringMVC层\r\n\r\n1. **web.xml**\r\n\r\n```xml\r\n<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<web-app xmlns=\"http://xmlns.jcp.org/xml/ns/javaee\"\r\n         xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"\r\n         xsi:schemaLocation=\"http://xmlns.jcp.org/xml/ns/javaee http://xmlns.jcp.org/xml/ns/javaee/web-app_4_0.xsd\"\r\n         version=\"4.0\">\r\n\r\n    <!--DispatcherServlet-->\r\n    <servlet>\r\n        <servlet-name>DispatcherServlet</servlet-name>\r\n        <servlet-class>org.springframework.web.servlet.DispatcherServlet</servlet-class>\r\n        <init-param>\r\n            <param-name>contextConfigLocation</param-name>\r\n            <param-value>classpath:applicationContext.xml</param-value>\r\n        </init-param>\r\n        <load-on-startup>1</load-on-startup>\r\n    </servlet>\r\n    <servlet-mapping>\r\n        <servlet-name>DispatcherServlet</servlet-name>\r\n        <url-pattern>/</url-pattern>\r\n    </servlet-mapping>\r\n\r\n    <!--encodingFilter-->\r\n    <filter>\r\n        <filter-name>encodingFilter</filter-name>\r\n        <filter-class>\r\n            org.springframework.web.filter.CharacterEncodingFilter\r\n        </filter-class>\r\n        <init-param>\r\n            <param-name>encoding</param-name>\r\n            <param-value>utf-8</param-value>\r\n        </init-param>\r\n    </filter>\r\n    <filter-mapping>\r\n        <filter-name>encodingFilter</filter-name>\r\n        <url-pattern>/*</url-pattern>\r\n    </filter-mapping>\r\n    \r\n    <!--Session过期时间-->\r\n    <session-config>\r\n        <session-timeout>15</session-timeout>\r\n    </session-config>\r\n    \r\n</web-app>\r\n```\r\n\r\n\r\n\r\n1. **spring-mvc.xml**\r\n\r\n```xml\r\n<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<beans xmlns=\"http://www.springframework.org/schema/beans\"\r\n       xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"\r\n       xmlns:context=\"http://www.springframework.org/schema/context\"\r\n       xmlns:mvc=\"http://www.springframework.org/schema/mvc\"\r\n       xsi:schemaLocation=\"http://www.springframework.org/schema/beans\r\n    http://www.springframework.org/schema/beans/spring-beans.xsd\r\n    http://www.springframework.org/schema/context\r\n    http://www.springframework.org/schema/context/spring-context.xsd\r\n    http://www.springframework.org/schema/mvc\r\n    https://www.springframework.org/schema/mvc/spring-mvc.xsd\">\r\n\r\n    <!-- 配置SpringMVC -->\r\n    <!-- 1.开启SpringMVC注解驱动 -->\r\n    <mvc:annotation-driven />\r\n    <!-- 2.静态资源默认servlet配置-->\r\n    <mvc:default-servlet-handler/>\r\n\r\n    <!-- 3.配置jsp 显示ViewResolver视图解析器 -->\r\n    <bean class=\"org.springframework.web.servlet.view.InternalResourceViewResolver\">\r\n        <property name=\"viewClass\" value=\"org.springframework.web.servlet.view.JstlView\" />\r\n        <property name=\"prefix\" value=\"/WEB-INF/jsp/\" />\r\n        <property name=\"suffix\" value=\".jsp\" />\r\n    </bean>\r\n\r\n    <!-- 4.扫描web相关的bean -->\r\n    <context:component-scan base-package=\"com.swx.controller\" />\r\n\r\n</beans>\r\n```\r\n\r\n\r\n\r\n1. **Spring配置整合文件，applicationContext.xml**\r\n\r\n```xml\r\n<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<beans xmlns=\"http://www.springframework.org/schema/beans\"\r\n       xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"\r\n       xsi:schemaLocation=\"http://www.springframework.org/schema/beans\r\n        http://www.springframework.org/schema/beans/spring-beans.xsd\">\r\n\r\n    <import resource=\"spring-dao.xml\"/>\r\n    <import resource=\"spring-service.xml\"/>\r\n    <import resource=\"spring-mvc.xml\"/>\r\n    \r\n</beans>\r\n```\r\n\r\n\r\n\r\n**配置文件，暂时结束！Controller 和 视图层编写**\r\n\r\n1. BookController 类编写 ， 方法一：查询全部书籍\r\n\r\n```java\r\n@Controller\r\n@RequestMapping(\"/book\")\r\npublic class BookController {\r\n\r\n    @Autowired\r\n    @Qualifier(\"BookServiceImpl\")\r\n    private BookService bookService;\r\n\r\n    @RequestMapping(\"/allBook\")\r\n    public String list(Model model) {\r\n        List<Books> list = bookService.queryAllBook();\r\n        model.addAttribute(\"list\", list);\r\n        return \"allBook\";\r\n    }\r\n}\r\n```\r\n\r\n\r\n\r\n1. 编写首页 **index.jsp**\r\n\r\n```jsp\r\n<%@ page language=\"java\" contentType=\"text/html; charset=UTF-8\" pageEncoding=\"UTF-8\" %>\r\n<!DOCTYPE HTML>\r\n<html>\r\n<head>\r\n    <title>首页</title>\r\n    <style type=\"text/css\">\r\n        a {\r\n            text-decoration: none;\r\n            color: black;\r\n            font-size: 18px;\r\n        }\r\n        h3 {\r\n            width: 180px;\r\n            height: 38px;\r\n            margin: 100px auto;\r\n            text-align: center;\r\n            line-height: 38px;\r\n            background: deepskyblue;\r\n            border-radius: 4px;\r\n        }\r\n    </style>\r\n</head>\r\n<body>\r\n\r\n<h3>\r\n    <a href=\"${pageContext.request.contextPath}/book/allBook\">点击进入列表页</a>\r\n</h3>\r\n</body>\r\n</html>\r\n```\r\n\r\n\r\n\r\n1. 书籍列表页面 **allbook.jsp**\r\n\r\n```jsp\r\n<%@ taglib prefix=\"c\" uri=\"http://java.sun.com/jsp/jstl/core\" %>\r\n<%@ page contentType=\"text/html;charset=UTF-8\" language=\"java\" %>\r\n<html>\r\n<head>\r\n    <title>书籍列表</title>\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n    <!-- 引入 Bootstrap -->\r\n    <link href=\"https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n</head>\r\n<body>\r\n\r\n  <div class=\"container\">\r\n\r\n    <div class=\"row clearfix\">\r\n      <div class=\"col-md-12 column\">\r\n        <div class=\"page-header\">\r\n          <h1>\r\n            <small>书籍列表 —— 显示所有书籍</small>\r\n          </h1>\r\n        </div>\r\n      </div>\r\n    </div>\r\n\r\n    <div class=\"row\">\r\n      <div class=\"col-md-4 column\">\r\n        <a class=\"btn btn-primary\" href=\"${pageContext.request.contextPath}/book/toAddBook\">新增</a>\r\n      </div>\r\n    </div>\r\n\r\n    <div class=\"row clearfix\">\r\n      <div class=\"col-md-12 column\">\r\n        <table class=\"table table-hover table-striped\">\r\n          <thead>\r\n            <tr>\r\n              <th>书籍编号</th>\r\n              <th>书籍名字</th>\r\n              <th>书籍数量</th>\r\n              <th>书籍详情</th>\r\n              <th>操作</th>\r\n            </tr>\r\n          </thead>\r\n\r\n        <tbody>\r\n          <c:forEach var=\"book\" items=\"${requestScope.get(\'list\')}\">\r\n            <tr>\r\n              <td>${book.getBookID()}</td>\r\n              <td>${book.getBookName()}</td>\r\n              <td>${book.getBookCounts()}</td>\r\n              <td>${book.getDetail()}</td>\r\n              <td>\r\n                <a href=\"${pageContext.request.contextPath}/book/toUpdateBook?id=${book.getBookID()}\">更改</a> |\r\n                <a href=\"${pageContext.request.contextPath}/book/del/${book.getBookID()}\">删除</a>\r\n              </td>\r\n            </tr>\r\n          </c:forEach>\r\n        </tbody>\r\n      </table>\r\n    </div>\r\n  </div>\r\n</div>\r\n```\r\n\r\n\r\n\r\n1. BookController 类编写 ， 方法二：添加书籍\r\n\r\n```java\r\n@RequestMapping(\"/toAddBook\")\r\npublic String toAddPaper() {\r\n    return \"addBook\";\r\n}\r\n\r\n@RequestMapping(\"/addBook\")\r\npublic String addPaper(Books books) {\r\n    System.out.println(books);\r\n    bookService.addBook(books);\r\n    return \"redirect:/book/allBook\";\r\n}\r\n```\r\n\r\n\r\n\r\n1. 添加书籍页面：**addBook.jsp**\r\n\r\n```jsp\r\n<%@ taglib prefix=\"c\" uri=\"http://java.sun.com/jsp/jstl/core\" %>\r\n<%@ page contentType=\"text/html;charset=UTF-8\" language=\"java\" %>\r\n\r\n<html>\r\n<head>\r\n    <title>新增书籍</title>\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n    <!-- 引入 Bootstrap -->\r\n    <link href=\"https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n</head>\r\n<body>\r\n<div class=\"container\">\r\n\r\n    <div class=\"row clearfix\">\r\n        <div class=\"col-md-12 column\">\r\n            <div class=\"page-header\">\r\n                <h1>\r\n                    <small>新增书籍</small>\r\n                </h1>\r\n            </div>\r\n        </div>\r\n    </div>\r\n    <form action=\"${pageContext.request.contextPath}/book/addBook\" method=\"post\">\r\n        书籍名称：<input type=\"text\" name=\"bookName\"><br><br><br>\r\n        书籍数量：<input type=\"text\" name=\"bookCounts\"><br><br><br>\r\n        书籍详情：<input type=\"text\" name=\"detail\"><br><br><br>\r\n        <input type=\"submit\" value=\"添加\">\r\n    </form>\r\n\r\n</div>\r\n```\r\n\r\n\r\n\r\n1. BookController 类编写 ， 方法三：修改书籍\r\n\r\n```java\r\n@RequestMapping(\"/toUpdateBook\")\r\npublic String toUpdateBook(Model model, int id) {\r\n    Books books = bookService.queryBookById(id);\r\n    System.out.println(books);\r\n    model.addAttribute(\"book\",books );\r\n    return \"updateBook\";\r\n}\r\n\r\n@RequestMapping(\"/updateBook\")\r\npublic String updateBook(Model model, Books book) {\r\n    System.out.println(book);\r\n    bookService.updateBook(book);\r\n    Books books = bookService.queryBookById(book.getBookID());\r\n    model.addAttribute(\"books\", books);\r\n    return \"redirect:/book/allBook\";\r\n}\r\n```\r\n\r\n\r\n\r\n1. 修改书籍页面 **updateBook.jsp**\r\n\r\n```jsp\r\n<%@ taglib prefix=\"c\" uri=\"http://java.sun.com/jsp/jstl/core\" %>\r\n<%@ page contentType=\"text/html;charset=UTF-8\" language=\"java\" %>\r\n<html>\r\n<head>\r\n    <title>修改信息</title>\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n    <!-- 引入 Bootstrap -->\r\n    <link href=\"https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n</head>\r\n<body>\r\n<div class=\"container\">\r\n\r\n    <div class=\"row clearfix\">\r\n        <div class=\"col-md-12 column\">\r\n            <div class=\"page-header\">\r\n                <h1>\r\n                    <small>修改信息</small>\r\n                </h1>\r\n            </div>\r\n        </div>\r\n    </div>\r\n\r\n    <form action=\"${pageContext.request.contextPath}/book/updateBook\" method=\"post\">\r\n        <input type=\"hidden\" name=\"bookID\" value=\"${book.getBookID()}\"/>\r\n        书籍名称：<input type=\"text\" name=\"bookName\" value=\"${book.getBookName()}\"/>\r\n        书籍数量：<input type=\"text\" name=\"bookCounts\" value=\"${book.getBookCounts()}\"/>\r\n        书籍详情：<input type=\"text\" name=\"detail\" value=\"${book.getDetail() }\"/>\r\n        <input type=\"submit\" value=\"提交\"/>\r\n    </form>\r\n\r\n</div>\r\n```\r\n\r\n\r\n\r\n1. BookController 类编写 ， 方法四：删除书籍\r\n\r\n```java\r\n@RequestMapping(\"/del/{bookId}\")\r\npublic String deleteBook(@PathVariable(\"bookId\") int id) {\r\n    bookService.deleteBookById(id);\r\n    return \"redirect:/book/allBook\";\r\n}\r\n```\r\n\r\n\r\n\r\n**配置Tomcat，进行运行！**\r\n\r\n到目前为止，这个SSM项目整合已经完全的OK了，可以直接运行进行测试！这个练习十分的重要，大家需要保证，不看任何东西，自己也可以完整的实现出来！', 'SpringMVC：它用于web层，相当于controller（等价于传统的servlet和struts的action），用来处理用户请求。 Spring：太强大了，以至于我无法用一个词或一句话来概括它。但与我们平时开发接触最多的估计就是IOC容器，它可以装载bean MyBatis：如果你问我它跟鼎鼎大名的Hibernate有什么区别？我只想说，他更符合我的需求。第一，它能自由控制sql，这会让有数据库经验的', 1588058694, 'https://picsum.photos/id/1/800/450', '原创', b'1', b'1', b'1', 'SpringMVC：整合SSM', 1585737103, 37, 2, 1, 3, 0);
INSERT INTO `t_blog` VALUES (5, b'1', b'1', '## 地址\r\n\r\n[编辑器Markdown](https://pandao.github.io/editor.md/)\r\n\r\n[内容排版typo.css](https://github.com/sofish/typo.css)\r\n\r\n[动画animate.css](https://daneden.github.io/animate.css)\r\n\r\n[滚动动画 wow.js](https://github.com/matthieua/WOW)\r\n\r\n[代码高亮 prism](https://github.com/PrismJS/prism)\r\n\r\n[目录生成Tocbot](https://tscanlin.github.io/tocbot)\r\n\r\n[滚动侦测waypoints](https://imakewebthings.com/waypoints)\r\n\r\n[平滑滚动 jquery.scrollTo](https://github.com/flesler/jquery.scrollTo)\r\n\r\n[二维码生成qecode.js](https://davidshimjs.github.io/qrcodejs)\r\n\r\n## 插件的使用\r\n\r\n### Markdown\r\n\r\n> Markdown编辑器的简单使用\r\n\r\n在`static`目录下新建`lib/editormd`目录，将下面文件拷贝进去\r\n\r\n![](http://112.124.29.86:8088/images/originalImages/editormd.png)\r\n\r\n在页面中引入`css、js`文件\r\n\r\n```html\r\n<link rel=\"stylesheet\" href=\"../../static/lib/editormd/css/editormd.min.css\">\r\n\r\n<script src=\"../../static/lib/editormd/editormd.min.js\"></script>\r\n```\r\n\r\n初始化Markdown编辑器\r\n\r\n```javascript\r\n//初始化Markdown编辑器\r\nlet contentEditor;\r\n$(function() {\r\n  contentEditor = editormd(\"md-content\", {\r\n    width   : \"100%\",\r\n    height  : 640,\r\n    syncScrolling : \"single\",\r\n    path    : \'/lib/editormd/lib/\',\r\n    onfullscreen(){\r\n      $(\'#menu\').click();\r\n      fullscreen();\r\n      this.resize(window.screen.width,$(window).height());\r\n    },\r\n    onfullscreenExit(){\r\n      exitFullscreen()\r\n      this.resize(\'100%\',$(window).height());\r\n\r\n    },\r\n    imageUpload : true,\r\n    imageFormats : [\"jpg\", \"jpeg\", \"gif\", \"png\", \"bmp\", \"webp\"],\r\n    imageUploadURL : \"/admin/upload\",\r\n  });\r\n});\r\n```\r\n\r\n### Typo\r\n\r\n> 内容排版 typo.css 的简单实用\r\n\r\n将 type.css 拷贝到项目中的 `static/css`目录下\r\n\r\n在页面中引入 css 文件\r\n\r\n```htMl\r\n<link rel=\"stylesheet\" href=\"../static/css/typo.css\">\r\n```\r\n\r\n 在需要排版的元素加上`class=\"typo typo-selection\"`\r\n\r\n```html\r\n<div id=\"content\" class=\"typo typo-selection\"></div>\r\n```\r\n\r\n### Animate\r\n\r\n> 动画 animate.css 的简单使用\r\n\r\n将 animate.css 文件拷贝到项目中的 `static/css`目录下\r\n\r\n引入：在页面中引入 css 文件\r\n\r\n```html\r\n<link rel=\"stylesheet\" href=\"../static/css/animate.min.css\">\r\n```\r\n\r\n使用：在需要动画的元素加上 `class=\"animated XXX\"`\r\n\r\n```html\r\n<div id=\"waypoint\" class=\"animated fadeInUp\"></div>\r\n```\r\n### WOW\r\n\r\n> 滚动动画 wow.js 的简单使用\r\n> wow.js需要配合 animate使用\r\n\r\n将 animate.css 文件拷贝到项目中的 `static/css`目录下\r\n将 wow.min.js 文件拷贝到项目中的 `static/js`目录下\r\n\r\n引入：在页面中引入 `css、js` 文件\r\n\r\n```html\r\n<link rel=\"stylesheet\" href=\"../static/css/animate.min.css\">\r\n<script src=\"http://cdn.dowebok.com/131/js/wow.min.js\"></script>\r\n```\r\n初始化配置\r\n```javascript\r\nnew WOW().init();\r\n```\r\n使用：在需要动画的元素加上 `class=\"wow XXX\"`\r\n\r\n```html\r\n<div id=\"waypoint\" class=\"wow slideInLeft\"></div>\r\n```\r\n### Prism\r\n\r\n> 代码高亮 prism.css 的简单实用\r\n\r\n在`static`目录下新建`lib/prism`目录，将官网下载的文件拷贝进去\r\n\r\n```html\r\nprism.css\r\nprism.js\r\n```\r\n\r\n引入：在页面中引入 css、js 文件\r\n\r\n```html\r\n<link id=\"codeTheme\" rel=\"stylesheet\" href=\"../static/lib/prism/prism.css>\r\n<script src=\"../static/lib/prism/prism.js\" ></script>\r\n```\r\n\r\n使用：元素必须是 `pre、code`\r\n\r\n```html\r\n<pre></pre>\r\n<code></code>\r\n```\r\n\r\n### Tocbot\r\n\r\n> 目录生成 tocbot 的简单使用\r\n\r\n在`static`目录下新建`lib/tocbot`目录，将官网下载的文件拷贝进去\r\n\r\n```html\r\ntocbot.css\r\ntocbot.js\r\ntocbot.min.js\r\n```\r\n\r\n引入：在页面中引入 css、js 文件\r\n\r\n```html\r\n<link rel=\"stylesheet\" href=\"../static/lib/tocbot/tocbot.css>\r\n<script src=\"../static/lib/tocbot/tocbot.min.js\"></script>\r\n```\r\n\r\n配置生成目录\r\n\r\n```javascript\r\n// 目录生成\r\ntocbot.init({\r\n  tocSelector: \'.js-toc\',	// 目录生成位置\r\n  contentSelector: \'.js-toc-content\',	// 需要生成目录的区域\r\n  headingSelector: \'h1, h2, h3\',	// 生成目录级别\r\n  // For headings inside relative or absolute positioned containers within content.\r\n  hasInnerContainers: true,\r\n});\r\n\r\n```\r\n\r\n在需要生成目录的文档区域加上`class=\"js-toc-content\"`和`javascript`中对应\r\n\r\n```html\r\n<div id=\"content\" class=\"typo typo-selection js-toc-content\">\r\n```\r\n\r\n目录生成位置\r\n\r\n```html\r\n<div class=\"ui toc-container\" >\r\n  <ol class=\"js-toc\"></ol>\r\n</div>\r\n```\r\n\r\n\r\n\r\n### Waypoints\r\n\r\n> 滚动侦测 waypoints 的简单使用\r\n\r\n在`static`目录下新建`lib/waypoints`目录，将官网下载的文件拷贝进去\r\n\r\n```html\r\njquery.waypoints.js\r\njquery.waypoints.min.js\r\n```\r\n\r\n引入：在页面中引入 js 文件\r\n\r\n```html\r\n<script src=\"../static/lib/waypoints/jquery.waypoints.min.js\"></script>\r\n```\r\n\r\n配置一下\r\n\r\n```javascript\r\nlet waypoint = new Waypoint({\r\n  element: document.getElementById(\'waypoint\'),\r\n  handler: function (direction) {\r\n    if (direction === \'down\') {\r\n      $(\'#toolBar\').show();\r\n    } else {\r\n      $(\'#toolBar\').hide(200);\r\n    }\r\n  }\r\n});\r\n```\r\n\r\n- `id=\"waypoint\"`可以放在body元素上\r\n- `#toolBar`是一个侧边小工具条，控制这个工具条的隐藏和显示\r\n\r\n\r\n\r\n### ScrollTo\r\n\r\n> 平滑滚动 jquery.scrollTo 的简单使用\r\n\r\n采用`cdn`方式引入\r\n\r\n```html\r\n<script src=\"https://cdn.jsdelivr.net/npm/jquery.scrollto@2.1.2/jquery.scrollTo.min.js\"></script>\r\n```\r\n\r\n简单使用\r\n\r\n```javascript\r\n$(\'#toTop-btn\').click(function () {\r\n  $(window).scrollTo(0, 1000);\r\n});\r\n```\r\n\r\n- 为一个元素绑定单击时间就可以了\r\n\r\n\r\n\r\n### Qecode\r\n\r\n> 二维码生成工具 qecode.js 的简单使用\r\n\r\n在`static`目录下新建`lib/qrcode`目录，将官网下载的文件拷贝进去\r\n\r\n```html\r\nqrcode.js\r\nqrcode.min.js\r\n```\r\n\r\n引入：在页面中引入 js 文件\r\n\r\n```html\r\n<script src=\"../static/lib/qrcode/qrcode.min.js\" ></script>\r\n```\r\n\r\n配置\r\n\r\n```javascript\r\n// 二维码生成\r\nvar qrcode = new QRCode(\"qrcode\", {\r\n  text: window.location.href,\r\n  width: 110,\r\n  height: 110,\r\n  colorDark: \"#000000\",\r\n  colorLight: \"#ffffff\",\r\n  correctLevel: QRCode.CorrectLevel.H\r\n});\r\n```\r\n\r\n- text：我用的是本网页的网址\r\n\r\n', '一个个人博客网站的搭建，是一个不小的工程，我们需要借助一些优秀的三方插件来帮助我们完善我们的博客，让博客看起来更加漂亮，功能更加丰富', 1588410589, 'https://picsum.photos/id/1027/800/450', '原创', b'1', b'1', b'1', '个人博客必备插件', 1588429483, 41, 1, 1, 4, 1);
INSERT INTO `t_blog` VALUES (6, b'1', b'1', '## 安装vue-cli骨架\r\n> 官网地址：https://cli.vuejs.org/zh/\r\n\r\n1、安装\r\n```bash\r\nnpm install -g @vue/cli\r\n# OR\r\nyarn global add @vue/cli\r\n```\r\n> 如果安装失败，\r\n> Window用户：管理员身份运行`cmd`\r\n> Linux或Mac用户加上`sudo`\r\n\r\n2、查看版本\r\n```bash\r\nvue --version\r\n```\r\n\r\n## 创建一个简单的项目\r\n1、创建项目\r\n```\r\nvue ui\r\n```', 'Vue CLI 致力于将 Vue 生态中的工具基础标准化。它确保了各种构建工具能够基于智能的默认配置即可平稳衔接，这样你可以专注在撰写应用上，而不必花好几天去纠结配置的问题。与此同时', 1588864352, 'https://cli.vuejs.org/favicon.png', '原创', b'1', b'1', b'1', '使用vue-cli骨架创建一个项目', 1588864832, 2, 1, 1, 0, 0);
COMMIT;

-- ----------------------------
-- Table structure for t_blog_tags
-- ----------------------------
DROP TABLE IF EXISTS `t_blog_tags`;
CREATE TABLE `t_blog_tags` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `blog_id` bigint DEFAULT NULL,
  `tag_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tag` (`tag_id`),
  KEY `blog` (`blog_id`),
  CONSTRAINT `blog` FOREIGN KEY (`blog_id`) REFERENCES `t_blog` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tag` FOREIGN KEY (`tag_id`) REFERENCES `t_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_blog_tags
-- ----------------------------
BEGIN;
INSERT INTO `t_blog_tags` VALUES (44, 1, 6);
INSERT INTO `t_blog_tags` VALUES (45, 2, 3);
INSERT INTO `t_blog_tags` VALUES (46, 3, 12);
INSERT INTO `t_blog_tags` VALUES (47, 4, 8);
INSERT INTO `t_blog_tags` VALUES (48, 4, 6);
INSERT INTO `t_blog_tags` VALUES (49, 4, 4);
INSERT INTO `t_blog_tags` VALUES (50, 4, 2);
INSERT INTO `t_blog_tags` VALUES (51, 4, 7);
INSERT INTO `t_blog_tags` VALUES (52, 5, 3);
INSERT INTO `t_blog_tags` VALUES (53, 6, 17);
COMMIT;

-- ----------------------------
-- Table structure for t_comment
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `create_time` int DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `blog_id` bigint DEFAULT NULL,
  `parent_comment_id` bigint DEFAULT NULL,
  `admin_comment` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`),
  KEY `child_parent` (`parent_comment_id`),
  CONSTRAINT `child_parent` FOREIGN KEY (`parent_comment_id`) REFERENCES `t_comment` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_comment
-- ----------------------------
BEGIN;
INSERT INTO `t_comment` VALUES (1, 'http://localhost:8080/images/avatar/useravatar01.jpg', '写的很不错', 1588028694, 'xiaosan@qq.com', '小三', 10, NULL, b'0');
INSERT INTO `t_comment` VALUES (2, 'http://localhost:8080/images/sw-code.jpg', '谢谢夸奖', 1588058694, 'admin@souhu.com', 'SW-Code', 10, 1, b'0');
INSERT INTO `t_comment` VALUES (3, 'http://localhost:8080/images/avatar/useravatar01.jpg', '确实不错', 1588054694, 'zhangsan@gmail.com', '张三', 10, 1, b'0');
INSERT INTO `t_comment` VALUES (4, 'http://localhost:8080/images/sw-code.jpg', '不用谢', 1588058794, 'xiaosan@qq.com', '小三', 10, 2, b'0');
INSERT INTO `t_comment` VALUES (5, '../images/avatar/useravatar02.jpg', '谢谢，解答了我的疑惑', 1588087047, 'dabala@qq.com', '达巴拉崩', 10, NULL, b'0');
INSERT INTO `t_comment` VALUES (7, '../images/avatar/useravatar04.jpg', '兄弟，我也是', 1588088903, 'sheshe@gmail.com', '射射', 10, 5, b'0');
INSERT INTO `t_comment` VALUES (8, '../images/avatar/useravatar03.jpg', '帮大忙了，兄弟', 1588088962, 'wunv@outlook.com', '巫女', 15, NULL, b'0');
INSERT INTO `t_comment` VALUES (9, '../images/avatar/useravatar03.jpg', '写的很棒，点赞', 1588089348, 'zhanan@outlook.com', '渣男', 15, NULL, b'0');
INSERT INTO `t_comment` VALUES (10, '../images/avatar/useravatar01.jpg', '确实不错', 1588089386, 'shunliu@gmail.com', '顺溜', 15, 9, b'0');
INSERT INTO `t_comment` VALUES (11, '../images/avatar/useravatar08.jpg', '加油', 1588089974, 'dada@qq.com', '哒哒', 15, NULL, b'0');
INSERT INTO `t_comment` VALUES (12, '../images/avatar/useravatar06.jpg', '是啊，帮大忙了', 1588090111, 'wuwu@souhu.com', '捂捂', 15, 8, b'0');
INSERT INTO `t_comment` VALUES (13, 'http://localhost:8080/images/avatar/useravatar01.jpg', '有帮助就好', 1588127996, 'sw-code@gmail.com', 'SW-Code', 15, 12, b'1');
INSERT INTO `t_comment` VALUES (14, '../images/avatar/useravatar02.jpg', '我也喜欢秦疆老师', 1588138639, 'huaidan@gmail.com', '坏蛋', 12, NULL, b'0');
INSERT INTO `t_comment` VALUES (15, 'http://localhost:8080/images/avatar/sw-code.jpg', '嗯嗯，他讲的很不错', 1588138805, 'sw-code@gmail.com', 'sw-code', 12, 14, b'1');
INSERT INTO `t_comment` VALUES (16, '../images/avatar/useravatar08.jpg', '写的不错的😃😃😃', 1588247608, 'lingnv@gmail.com', '渣女', 4, NULL, b'0');
INSERT INTO `t_comment` VALUES (17, '../images/avatar/useravatar08.jpg', '写的啥玩意', 1588310281, 'luozhixiang@gmail.com', '阳物运动', 3, NULL, b'0');
INSERT INTO `t_comment` VALUES (18, '../images/avatar/useravatar07.jpg', '最近正在搭建个人博客，帮大忙了', 1588425933, 'jizha@gmail.com', '叽叽喳喳', 5, NULL, b'0');
INSERT INTO `t_comment` VALUES (19, '../images/avatar/sw-code.jpg', '不客气', 1588428775, 'sw-code@gmail.com', 'sw-code', 5, 18, b'1');
INSERT INTO `t_comment` VALUES (20, '../images/avatar/sw-code.jpg', '谢谢O(∩_∩)O哈哈~', 1588431424, 'sw-code@gmail.com', 'sw-code', 4, 16, b'1');
INSERT INTO `t_comment` VALUES (21, '../images/avatar/useravatar08.jpg', '很棒', 1588431622, 'yuji@126.com', '虞姬', 5, NULL, b'0');
COMMIT;

-- ----------------------------
-- Table structure for t_tag
-- ----------------------------
DROP TABLE IF EXISTS `t_tag`;
CREATE TABLE `t_tag` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_tag
-- ----------------------------
BEGIN;
INSERT INTO `t_tag` VALUES (1, 'C++');
INSERT INTO `t_tag` VALUES (2, 'Java');
INSERT INTO `t_tag` VALUES (3, 'JavaScript');
INSERT INTO `t_tag` VALUES (4, 'Spring');
INSERT INTO `t_tag` VALUES (5, 'SpringBoot');
INSERT INTO `t_tag` VALUES (6, 'SpringMVC');
INSERT INTO `t_tag` VALUES (7, 'MyBatis');
INSERT INTO `t_tag` VALUES (8, 'Servlet');
INSERT INTO `t_tag` VALUES (9, 'JSP');
INSERT INTO `t_tag` VALUES (10, 'Thymeleaf');
INSERT INTO `t_tag` VALUES (11, 'Vue');
INSERT INTO `t_tag` VALUES (12, 'Element UI');
INSERT INTO `t_tag` VALUES (13, 'BootStrap');
INSERT INTO `t_tag` VALUES (14, 'Semantic UI');
INSERT INTO `t_tag` VALUES (15, 'JQuery');
INSERT INTO `t_tag` VALUES (16, '插件');
INSERT INTO `t_tag` VALUES (17, '11');
INSERT INTO `t_tag` VALUES (18, '17');
COMMIT;

-- ----------------------------
-- Table structure for t_type
-- ----------------------------
DROP TABLE IF EXISTS `t_type`;
CREATE TABLE `t_type` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_type
-- ----------------------------
BEGIN;
INSERT INTO `t_type` VALUES (1, '前端开发');
INSERT INTO `t_type` VALUES (2, '后端开发');
INSERT INTO `t_type` VALUES (3, '工具推荐');
INSERT INTO `t_type` VALUES (4, '人生感悟');
INSERT INTO `t_type` VALUES (5, '项目收获');
INSERT INTO `t_type` VALUES (6, '系统篇');
INSERT INTO `t_type` VALUES (7, '开发工具美化');
INSERT INTO `t_type` VALUES (8, '网络篇');
INSERT INTO `t_type` VALUES (9, '错误集合');
INSERT INTO `t_type` VALUES (10, '网站推荐');
INSERT INTO `t_type` VALUES (11, 'C');
INSERT INTO `t_type` VALUES (12, 'Bootstrap');
INSERT INTO `t_type` VALUES (13, 'Element UI');
INSERT INTO `t_type` VALUES (14, 'Layui');
INSERT INTO `t_type` VALUES (15, 'Test2');
INSERT INTO `t_type` VALUES (16, 'Test');
COMMIT;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` bigint NOT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `type` int DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
BEGIN;
INSERT INTO `t_user` VALUES (1, 'sw-code', 'admin', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'sw-code@gmail.com', '/dev-api/images/avatar/sw-code.jpg', NULL, '2020-04-20 17:25:02', '2020-04-20 17:25:05');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
