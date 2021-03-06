--mysql 导入数据库 

--创建表 最新行政区划数据库

--字段 区划ID-父ID-级别-全称-全称聚合-区号-邮编-简称-简称聚合-拼音-简拼-首字母-经度-纬度

CREATE TABLE `areas``.`areas` (
`ID`  VARCHAR(45) NULL,
`ParentId` VARCHAR(45) NULL,
`Name` VARCHAR(45) NULL,
`MergerName` VARCHAR(200) NULL,
`ShortName` VARCHAR(45) NULL,
`MergerShortName` VARCHAR(200) NULL,
`LevelType` VARCHAR(45) NULL,
`CityCode` VARCHAR(45) NULL,
`ZipCode` VARCHAR(45) NULL,
`Pinyin` VARCHAR(45) NULL,
`Jianpin` VARCHAR(45) NULL,
`FirstChar` VARCHAR(45) NULL,
`lng` VARCHAR(45) NULL,
`Lat` VARCHAR(45) NULL
);



--导入数据库
LOAD DATA LOCAL INFILE 'G:\areas.txt'
INTO TABLE areas
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(ID,ParentId,Name,MergerName,ShortName,MergerShortName,LevelType,CityCode,ZipCode,Pinyin,Jianpin,FirstChar,lng,Lat);


--默认 txt为中文编码  导入时 请转为utf-8编码 以免乱码 