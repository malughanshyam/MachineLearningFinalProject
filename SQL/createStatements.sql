CREATE TABLE `training_raw` (
  `RefID` int(11) NOT NULL,
  `IsBadBuy` int(11) DEFAULT NULL,
  `PurchDate` date DEFAULT NULL,
  `Auction` varchar(90) DEFAULT NULL,
  `VehYear` int(11) DEFAULT NULL,
  `VehicleAge` int(11) DEFAULT NULL,
  `Make` varchar(90) DEFAULT NULL,
  `Model` varchar(255) DEFAULT NULL,
  `Trim` varchar(45) DEFAULT NULL,
  `SubModel` varchar(255) DEFAULT NULL,
  `Color` varchar(45) DEFAULT NULL,
  `Transmission` varchar(45) DEFAULT NULL,
  `WheelTypeID` int(11) DEFAULT NULL,
  `WheelType` varchar(45) DEFAULT NULL,
  `VehOdo` int(11) DEFAULT NULL,
  `Nationality` varchar(255) DEFAULT NULL,
  `Size` varchar(80) DEFAULT NULL,
  `TopThreeAmericanName` varchar(255) DEFAULT NULL,
  `MMRAcquisitionAuctionAveragePrice` decimal(10,0) DEFAULT NULL,
  `MMRAcquisitionAuctionCleanPrice` decimal(10,0) DEFAULT NULL,
  `MMRAcquisitionRetailAveragePrice` decimal(10,0) DEFAULT NULL,
  `MMRAcquisitonRetailCleanPrice` decimal(10,0) DEFAULT NULL,
  `MMRCurrentAuctionAveragePrice` decimal(10,0) DEFAULT NULL,
  `MMRCurrentAuctionCleanPrice` decimal(10,0) DEFAULT NULL,
  `MMRCurrentRetailAveragePrice` decimal(10,0) DEFAULT NULL,
  `MMRCurrentRetailCleanPrice` decimal(10,0) DEFAULT NULL,
  `PRIMEUNIT` varchar(45) DEFAULT NULL,
  `AUCGUART` varchar(45) DEFAULT NULL,
  `BYRNO` int(11) DEFAULT NULL,
  `VNZIP1` int(11) DEFAULT NULL,
  `VNST` varchar(45) DEFAULT NULL,
  `VehBCost` decimal(10,0) DEFAULT NULL,
  `IsOnlineSale` int(11) DEFAULT NULL,
  `WarrantyCost` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`RefID`),
  KEY `IsBadBuy` (`IsBadBuy`),
  KEY `Size` (`Size`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `test_raw` (
  `RefID` int(11) NOT NULL,
  `PurchDate` date DEFAULT NULL,
  `Auction` varchar(90) DEFAULT NULL,
  `VehYear` int(11) DEFAULT NULL,
  `VehicleAge` int(11) DEFAULT NULL,
  `Make` varchar(90) DEFAULT NULL,
  `Model` varchar(255) DEFAULT NULL,
  `Trim` varchar(45) DEFAULT NULL,
  `SubModel` varchar(255) DEFAULT NULL,
  `Color` varchar(45) DEFAULT NULL,
  `Transmission` varchar(45) DEFAULT NULL,
  `WheelTypeID` int(11) DEFAULT NULL,
  `WheelType` varchar(45) DEFAULT NULL,
  `VehOdo` int(11) DEFAULT NULL,
  `Nationality` varchar(255) DEFAULT NULL,
  `Size` varchar(80) DEFAULT NULL,
  `TopThreeAmericanName` varchar(255) DEFAULT NULL,
  `MMRAcquisitionAuctionAveragePrice` decimal(10,0) DEFAULT NULL,
  `MMRAcquisitionAuctionCleanPrice` decimal(10,0) DEFAULT NULL,
  `MMRAcquisitionRetailAveragePrice` decimal(10,0) DEFAULT NULL,
  `MMRAcquisitonRetailCleanPrice` decimal(10,0) DEFAULT NULL,
  `MMRCurrentAuctionAveragePrice` decimal(10,0) DEFAULT NULL,
  `MMRCurrentAuctionCleanPrice` decimal(10,0) DEFAULT NULL,
  `MMRCurrentRetailAveragePrice` decimal(10,0) DEFAULT NULL,
  `MMRCurrentRetailCleanPrice` decimal(10,0) DEFAULT NULL,
  `PRIMEUNIT` varchar(45) DEFAULT NULL,
  `AUCGUART` varchar(45) DEFAULT NULL,
  `BYRNO` int(11) DEFAULT NULL,
  `VNZIP1` int(11) DEFAULT NULL,
  `VNST` varchar(45) DEFAULT NULL,
  `VehBCost` decimal(10,0) DEFAULT NULL,
  `IsOnlineSale` int(11) DEFAULT NULL,
  `WarrantyCost` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`RefID`),
  KEY `Size` (`Size`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `training_raw_with_MM_YYYY` (
  `RefID` int(11) NOT NULL,
  `IsBadBuy` int(11) DEFAULT NULL,
  `PurchDate` date DEFAULT NULL,
  `PurchMonth` varchar(90) DEFAULT NULL,
  `PurchYear` int(11) DEFAULT NULL,
  `Auction` varchar(90) DEFAULT NULL,
  `VehYear` int(11) DEFAULT NULL,
  `VehicleAge` int(11) DEFAULT NULL,
  `Make` varchar(90) DEFAULT NULL,
  `Model` varchar(255) DEFAULT NULL,
  `Trim` varchar(45) DEFAULT NULL,
  `SubModel` varchar(255) DEFAULT NULL,
  `Color` varchar(45) DEFAULT NULL,
  `Transmission` varchar(45) DEFAULT NULL,
  `WheelTypeID` int(11) DEFAULT NULL,
  `WheelType` varchar(45) DEFAULT NULL,
  `VehOdo` int(11) DEFAULT NULL,
  `Nationality` varchar(255) DEFAULT NULL,
  `Size` varchar(80) DEFAULT NULL,
  `TopThreeAmericanName` varchar(255) DEFAULT NULL,
  `MMRAcquisitionAuctionAveragePrice` decimal(10,0) DEFAULT NULL,
  `MMRAcquisitionAuctionCleanPrice` decimal(10,0) DEFAULT NULL,
  `MMRAcquisitionRetailAveragePrice` decimal(10,0) DEFAULT NULL,
  `MMRAcquisitonRetailCleanPrice` decimal(10,0) DEFAULT NULL,
  `MMRCurrentAuctionAveragePrice` decimal(10,0) DEFAULT NULL,
  `MMRCurrentAuctionCleanPrice` decimal(10,0) DEFAULT NULL,
  `MMRCurrentRetailAveragePrice` decimal(10,0) DEFAULT NULL,
  `MMRCurrentRetailCleanPrice` decimal(10,0) DEFAULT NULL,
  `PRIMEUNIT` varchar(45) DEFAULT NULL,
  `AUCGUART` varchar(45) DEFAULT NULL,
  `BYRNO` int(11) DEFAULT NULL,
  `VNZIP1` int(11) DEFAULT NULL,
  `VNST` varchar(45) DEFAULT NULL,
  `VehBCost` decimal(10,0) DEFAULT NULL,
  `IsOnlineSale` int(11) DEFAULT NULL,
  `WarrantyCost` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`RefID`),
  KEY `IsBadBuy` (`IsBadBuy`),
  KEY `Size` (`Size`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `test_raw_with_MM_YYYY` (
  `RefID` int(11) NOT NULL,
  `PurchDate` date DEFAULT NULL,
  `PurchMonth` varchar(90) DEFAULT NULL,
  `PurchYear` int(11) DEFAULT NULL,
  `Auction` varchar(90) DEFAULT NULL,
  `VehYear` int(11) DEFAULT NULL,
  `VehicleAge` int(11) DEFAULT NULL,
  `Make` varchar(90) DEFAULT NULL,
  `Model` varchar(255) DEFAULT NULL,
  `Trim` varchar(45) DEFAULT NULL,
  `SubModel` varchar(255) DEFAULT NULL,
  `Color` varchar(45) DEFAULT NULL,
  `Transmission` varchar(45) DEFAULT NULL,
  `WheelTypeID` int(11) DEFAULT NULL,
  `WheelType` varchar(45) DEFAULT NULL,
  `VehOdo` int(11) DEFAULT NULL,
  `Nationality` varchar(255) DEFAULT NULL,
  `Size` varchar(80) DEFAULT NULL,
  `TopThreeAmericanName` varchar(255) DEFAULT NULL,
  `MMRAcquisitionAuctionAveragePrice` decimal(10,0) DEFAULT NULL,
  `MMRAcquisitionAuctionCleanPrice` decimal(10,0) DEFAULT NULL,
  `MMRAcquisitionRetailAveragePrice` decimal(10,0) DEFAULT NULL,
  `MMRAcquisitonRetailCleanPrice` decimal(10,0) DEFAULT NULL,
  `MMRCurrentAuctionAveragePrice` decimal(10,0) DEFAULT NULL,
  `MMRCurrentAuctionCleanPrice` decimal(10,0) DEFAULT NULL,
  `MMRCurrentRetailAveragePrice` decimal(10,0) DEFAULT NULL,
  `MMRCurrentRetailCleanPrice` decimal(10,0) DEFAULT NULL,
  `PRIMEUNIT` varchar(45) DEFAULT NULL,
  `AUCGUART` varchar(45) DEFAULT NULL,
  `BYRNO` int(11) DEFAULT NULL,
  `VNZIP1` int(11) DEFAULT NULL,
  `VNST` varchar(45) DEFAULT NULL,
  `VehBCost` decimal(10,0) DEFAULT NULL,
  `IsOnlineSale` int(11) DEFAULT NULL,
  `WarrantyCost` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`RefID`),
  KEY `Size` (`Size`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30` (
  `RefID` int(11) NOT NULL,
  `PurchDate` date DEFAULT NULL,
  `PurchMonth` varchar(90) DEFAULT NULL,
  `PurchYear` int(11) DEFAULT NULL,
  `Auction` varchar(90) DEFAULT NULL,
  `VehicleAge` varchar(90) DEFAULT NULL,
  `Make` varchar(90) DEFAULT NULL,
  `Transmission` varchar(45) DEFAULT NULL,
  `WheelType` varchar(45) DEFAULT NULL,
  `VehOdo` varchar(90) DEFAULT NULL,
  `Nationality` varchar(255) DEFAULT NULL,
  `Size` varchar(80) DEFAULT NULL,
  `TopThreeAmericanName` varchar(255) DEFAULT NULL,
  `MMRAcquisitionAuctionAveragePrice` varchar(90) DEFAULT NULL,
  `MMRAcquisitionAuctionCleanPrice` varchar(90) DEFAULT NULL,
  `MMRAcquisitionRetailAveragePrice` varchar(90) DEFAULT NULL,
  `MMRAcquisitonRetailCleanPrice` varchar(90) DEFAULT NULL,
  `MMRCurrentAuctionAveragePrice` varchar(90) DEFAULT NULL,
  `MMRCurrentAuctionCleanPrice` varchar(90) DEFAULT NULL,
  `MMRCurrentRetailAveragePrice` varchar(90) DEFAULT NULL,
  `MMRCurrentRetailCleanPrice` varchar(90) DEFAULT NULL,
  `BYRNO` varchar(90) DEFAULT NULL,
  `VNST` varchar(45) DEFAULT NULL,
  `VehBCost` varchar(90) DEFAULT NULL,
  `IsOnlineSale` int(11) DEFAULT NULL,
  `WarrantyCost` varchar(90) DEFAULT NULL,
  `IsBadBuy` int(11) DEFAULT NULL,
  PRIMARY KEY (`RefID`),
  KEY `IsBadBuy` (`IsBadBuy`),
  KEY `Size` (`Size`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30` (
  `RefID` int(11) NOT NULL,
  `PurchDate` date DEFAULT NULL,
  `PurchMonth` varchar(90) DEFAULT NULL,
  `PurchYear` int(11) DEFAULT NULL,
  `Auction` varchar(90) DEFAULT NULL,
  `VehicleAge` varchar(90) DEFAULT NULL,
  `Make` varchar(90) DEFAULT NULL,
  `Transmission` varchar(45) DEFAULT NULL,
  `WheelType` varchar(45) DEFAULT NULL,
  `VehOdo` varchar(90) DEFAULT NULL,
  `Nationality` varchar(255) DEFAULT NULL,
  `Size` varchar(80) DEFAULT NULL,
  `TopThreeAmericanName` varchar(255) DEFAULT NULL,
  `MMRAcquisitionAuctionAveragePrice` varchar(90) DEFAULT NULL,
  `MMRAcquisitionAuctionCleanPrice` varchar(90) DEFAULT NULL,
  `MMRAcquisitionRetailAveragePrice` varchar(90) DEFAULT NULL,
  `MMRAcquisitonRetailCleanPrice` varchar(90) DEFAULT NULL,
  `MMRCurrentAuctionAveragePrice` varchar(90) DEFAULT NULL,
  `MMRCurrentAuctionCleanPrice` varchar(90) DEFAULT NULL,
  `MMRCurrentRetailAveragePrice` varchar(90) DEFAULT NULL,
  `MMRCurrentRetailCleanPrice` varchar(90) DEFAULT NULL,
  `BYRNO` varchar(90) DEFAULT NULL,
  `VNST` varchar(45) DEFAULT NULL,
  `VehBCost` varchar(90) DEFAULT NULL,
  `IsOnlineSale` int(11) DEFAULT NULL,
  `WarrantyCost` varchar(90) DEFAULT NULL,
  PRIMARY KEY (`RefID`),
  KEY `Size` (`Size`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized AS 
  SELECT *
  FROM training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30;
  
CREATE TABLE test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized AS 
  SELECT *
  FROM test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30;

  
CREATE TABLE `test_refid_isbadbuy_mapping` (
  `RefId` int(11) NOT NULL,
  `IsBadBuy` int(11) DEFAULT NULL,
  PRIMARY KEY (`RefId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE CREATE TABLE `test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_dis_with_isbadbuy` (
  `RefID` int(11) NOT NULL,
  `PurchDate` date DEFAULT NULL,
  `PurchMonth` varchar(90) DEFAULT NULL,
  `PurchYear` int(11) DEFAULT NULL,
  `Auction` varchar(90) DEFAULT NULL,
  `VehicleAge` varchar(90) DEFAULT NULL,
  `Make` varchar(90) DEFAULT NULL,
  `Transmission` varchar(45) DEFAULT NULL,
  `WheelType` varchar(45) DEFAULT NULL,
  `VehOdo` varchar(90) DEFAULT NULL,
  `Nationality` varchar(255) DEFAULT NULL,
  `Size` varchar(80) DEFAULT NULL,
  `TopThreeAmericanName` varchar(255) DEFAULT NULL,
  `MMRAcquisitionAuctionAveragePrice` varchar(90) DEFAULT NULL,
  `MMRAcquisitionAuctionCleanPrice` varchar(90) DEFAULT NULL,
  `MMRAcquisitionRetailAveragePrice` varchar(90) DEFAULT NULL,
  `MMRAcquisitonRetailCleanPrice` varchar(90) DEFAULT NULL,
  `MMRCurrentAuctionAveragePrice` varchar(90) DEFAULT NULL,
  `MMRCurrentAuctionCleanPrice` varchar(90) DEFAULT NULL,
  `MMRCurrentRetailAveragePrice` varchar(90) DEFAULT NULL,
  `MMRCurrentRetailCleanPrice` varchar(90) DEFAULT NULL,
  `BYRNO` varchar(90) DEFAULT NULL,
  `VNST` varchar(45) DEFAULT NULL,
  `VehBCost` varchar(90) DEFAULT NULL,
  `IsOnlineSale` int(11) DEFAULT NULL,
  `WarrantyCost` varchar(90) DEFAULT NULL,
  `IsBadBuy` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



  
CREATE TABLE training_exluding_f1_5_8_9_10_11_13_27_28_30_disc2 AS 
  SELECT `training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized`.`RefID`,
    `training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized`.`PurchMonth`,
    `training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized`.`PurchYear`,
    `training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized`.`Auction`,
    `training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized`.`VehicleAge`,
    `training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized`.`Make`,
    `training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized`.`Transmission`,
    `training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized`.`WheelType`,
    `training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized`.`VehOdo`,
    `training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized`.`Nationality`,
    `training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized`.`Size`,
    `training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized`.`TopThreeAmericanName`,
    `training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized`.`MMRAcquisitionAuctionAveragePrice`,
    `training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized`.`MMRAcquisitionAuctionCleanPrice`,
    `training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized`.`MMRAcquisitionRetailAveragePrice`,
    `training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized`.`MMRAcquisitonRetailCleanPrice`,
    `training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized`.`MMRCurrentAuctionAveragePrice`,
    `training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized`.`MMRCurrentAuctionCleanPrice`,
    `training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized`.`MMRCurrentRetailAveragePrice`,
    `training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized`.`MMRCurrentRetailCleanPrice`,
    `training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized`.`BYRNO`,
    `training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized`.`VNST`,
    `training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized`.`VehBCost`,
    `training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized`.`IsOnlineSale`,
    `training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized`.`WarrantyCost`,
    `training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized`.`IsBadBuy`
FROM `carvana`.`training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized`;


CREATE TABLE training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30 AS 
SELECT 
    `training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30`.`Auction`,
    `training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30`.`VehicleAge`,
    `training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30`.`Make`,
    `training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30`.`Transmission`,
    `training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30`.`WheelType`,
    `training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30`.`VehOdo`,
    `training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30`.`Nationality`,
    `training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30`.`Size`,
    `training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30`.`TopThreeAmericanName`,
    `training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30`.`MMRAcquisitionAuctionAveragePrice`,
    `training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30`.`MMRAcquisitionAuctionCleanPrice`,
    `training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30`.`MMRAcquisitionRetailAveragePrice`,
    `training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30`.`MMRAcquisitonRetailCleanPrice`,
    `training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30`.`MMRCurrentAuctionAveragePrice`,
    `training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30`.`MMRCurrentAuctionCleanPrice`,
    `training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30`.`MMRCurrentRetailAveragePrice`,
    `training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30`.`MMRCurrentRetailCleanPrice`,
    `training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30`.`VNST`,
    `training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30`.`VehBCost`,
    `training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30`.`IsOnlineSale`,
    `training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30`.`WarrantyCost`,
    `training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30`.`IsBadBuy`
FROM `carvana`.`training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30`;


CREATE TABLE training_dataset_1 AS 
SELECT *
FROM `carvana`.`training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`
WHERE 1=2;

CREATE TABLE training_dataset_2 AS 
SELECT *
FROM `carvana`.`training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`
WHERE 1=1;

CREATE TABLE training_dataset_2_bkp AS
SELECT * FROM training_dataset_2;

ALTER TABLE `training_dataset_1_bkp` ADD COLUMN `id` INT(11) NOT NULL AUTO_INCREMENT, ADD primary KEY Id(Id) ;
ALTER TABLE `training_dataset_1` ADD COLUMN `id` INT(11) NOT NULL AUTO_INCREMENT, ADD primary KEY Id(Id) ;
ALTER TABLE `training_dataset_2_bkp` ADD COLUMN `id` INT(11) NOT NULL AUTO_INCREMENT, ADD primary KEY Id(Id) ;
ALTER TABLE `training_dataset_2` ADD COLUMN `id` INT(11) NOT NULL AUTO_INCREMENT, ADD primary KEY Id(Id) ;

