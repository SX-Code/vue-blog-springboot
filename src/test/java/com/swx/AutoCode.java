package com.swx;

import com.baomidou.mybatisplus.annotation.DbType;
import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.generator.AutoGenerator;
import com.baomidou.mybatisplus.generator.config.DataSourceConfig;
import com.baomidou.mybatisplus.generator.config.GlobalConfig;
import com.baomidou.mybatisplus.generator.config.PackageConfig;
import com.baomidou.mybatisplus.generator.config.StrategyConfig;
import com.baomidou.mybatisplus.generator.config.po.TableFill;
import com.baomidou.mybatisplus.generator.config.rules.NamingStrategy;

import java.util.ArrayList;

public class AutoCode {

    public static void main(String[] args) {

        AutoGenerator mpg = new AutoGenerator();

        //配置策略
        //1、全局配置
        GlobalConfig gc = new GlobalConfig();
        String projectPath = System.getProperty("user.dir");
        gc.setOutputDir(projectPath+"/src/main/java")
                .setAuthor("sw-code")
                .setOpen(false)
                .setBaseResultMap(true)
                .setFileOverride(false)
                .setServiceName("%sService")
                .setIdType(IdType.ID_WORKER);

        //配置数据源
        DataSourceConfig dsc = new DataSourceConfig();
        dsc.setUrl("jdbc:mysql:///blog?useSSL=false&serveTimezone=GMT%2B8&useUnicode=true&characterEncoding=utf-8")
                .setDriverName("com.mysql.cj.jdbc.Driver")
                .setUsername("root")
                .setPassword("swx852345")
                .setDbType(DbType.MYSQL);

        //包的配置
        PackageConfig pc = new PackageConfig();
        pc.setModuleName("blog")
                .setParent("com.swx")
                .setEntity("pojo")
                .setMapper("mapper")
                .setService("service")
                .setController("controller");

        //策略配置
        StrategyConfig sc = new StrategyConfig();
        sc.setInclude("t_blog","t_comment","t_tag","t_type","t_user")
                .setTablePrefix("t_")
                .setNaming(NamingStrategy.underline_to_camel)
                .setColumnNaming(NamingStrategy.underline_to_camel)
                .setEntityLombokModel(true)
                .setLogicDeleteFieldName("delete");

        //自动填充配置
        TableFill createTime = new TableFill("create_time", FieldFill.INSERT);
        TableFill updateTime = new TableFill("update_time",FieldFill.INSERT_UPDATE);
        ArrayList<TableFill> tableFills = new ArrayList<>();
        tableFills.add(createTime);
        tableFills.add(updateTime);
        sc.setTableFillList(tableFills);
        //乐观锁
        sc.setVersionFieldName("version");
        // RestFul风格
        sc.setRestControllerStyle(true)
                .setControllerMappingHyphenStyle(true);

        mpg.setStrategy(sc);
        mpg.setPackageInfo(pc);
        mpg.setDataSource(dsc);
        mpg.setGlobalConfig(gc);

        mpg.execute();
    }




}
