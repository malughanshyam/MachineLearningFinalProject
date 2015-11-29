select count(*) from test_raw; --48707
select count(*) from training_raw; --72983

select count(*) from test_raw_with_mm_yyyy; --48707
select count(*) from training_raw_with_mm_yyyy; --72983

select count(*) from test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30; --48707
select count(*) from training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30; --72983

SELECT AVG(MMRAcquisitionAuctionAveragePrice), 
AVG(MMRAcquisitionAuctionCleanPrice) , 
AVG(MMRAcquisitionRetailAveragePrice) , 
AVG(MMRAcquisitonRetailCleanPrice) ,
AVG(MMRCurrentAuctionAveragePrice) ,
AVG(MMRCurrentAuctionCleanPrice) ,
AVG(MMRCurrentRetailAveragePrice) ,
AVG(MMRCurrentRetailCleanPrice) ,
AVG(VehBCost) ,
AVG(WarrantyCost) 
FROM `carvana`.`training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`;

SELECT `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`Auction`,
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`VehicleAge`,
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`Make`,
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`Transmission`,
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`WheelType`,
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`VehOdo`,
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`Nationality`,
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`Size`,
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`TopThreeAmericanName`,
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`MMRAcquisitionAuctionAveragePrice`,
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`MMRAcquisitionAuctionCleanPrice`,
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`MMRAcquisitionRetailAveragePrice`,
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`MMRAcquisitonRetailCleanPrice`,
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`MMRCurrentAuctionAveragePrice`,
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`MMRCurrentAuctionCleanPrice`,
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`MMRCurrentRetailAveragePrice`,
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`MMRCurrentRetailCleanPrice`,
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`VNST`,
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`VehBCost`,
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`IsOnlineSale`,
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`WarrantyCost`,
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`IsBadBuy`
FROM `carvana`.`training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`
WHERE  `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`Auction` is NULL OR
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`VehicleAge` is NULL OR
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`Make` is NULL OR
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`Transmission` is NULL OR
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`WheelType` is NULL OR
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`VehOdo` is NULL OR
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`Nationality` is NULL OR
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`Size` is NULL OR
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`TopThreeAmericanName` is NULL OR
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`MMRAcquisitionAuctionAveragePrice` is NULL OR
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`MMRAcquisitionAuctionCleanPrice` is NULL OR
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`MMRAcquisitionRetailAveragePrice` is NULL OR
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`MMRAcquisitonRetailCleanPrice` is NULL OR
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`MMRCurrentAuctionAveragePrice` is NULL OR
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`MMRCurrentAuctionCleanPrice` is NULL OR
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`MMRCurrentRetailAveragePrice` is NULL OR
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`MMRCurrentRetailCleanPrice` is NULL OR
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`VNST` is NULL OR
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`VehBCost` is NULL OR
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`IsOnlineSale` is NULL OR
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`WarrantyCost` is NULL OR
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`IsBadBuy` is NULL;
	
	
	
SELECT `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`Auction`,
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`VehicleAge`,
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`Make`,
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`Transmission`,
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`WheelType`,
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`VehOdo`,
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`Nationality`,
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`Size`,
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`TopThreeAmericanName`,
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`MMRAcquisitionAuctionAveragePrice`,
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`MMRAcquisitionAuctionCleanPrice`,
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`MMRAcquisitionRetailAveragePrice`,
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`MMRAcquisitonRetailCleanPrice`,
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`MMRCurrentAuctionAveragePrice`,
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`MMRCurrentAuctionCleanPrice`,
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`MMRCurrentRetailAveragePrice`,
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`MMRCurrentRetailCleanPrice`,
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`VNST`,
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`VehBCost`,
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`IsOnlineSale`,
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`WarrantyCost`,
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`IsBadBuy`
FROM `carvana`.`training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`
WHERE  
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`MMRAcquisitionAuctionAveragePrice`  in (0,1) OR
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`MMRAcquisitionAuctionCleanPrice`  in (0,1) OR
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`MMRAcquisitionRetailAveragePrice`  in (0,1) OR
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`MMRAcquisitonRetailCleanPrice`  in (0,1) OR
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`MMRCurrentAuctionAveragePrice`  in (0,1) OR
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`MMRCurrentAuctionCleanPrice`  in (0,1) OR
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`MMRCurrentRetailAveragePrice`  in (0,1) OR
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`MMRCurrentRetailCleanPrice`  in (0,1) OR
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`VehBCost`  in (0,1) OR
    `training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`.`WarrantyCost`  in (0,1);