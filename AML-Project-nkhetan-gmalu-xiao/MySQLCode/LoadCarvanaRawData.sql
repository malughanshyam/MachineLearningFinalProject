/* Queries to load data into tables */


/* Training */
LOAD DATA LOCAL INFILE 'C:/Users/gmalu/Google Drive/Fall 2015/B659 AML/Project/Dataset/training/training.csv' 
INTO TABLE carvana.test_raw 
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 LINES 
(RefId,IsBadBuy,@date_time_variable,Auction,VehYear,VehicleAge,Make,Model,Trim,SubModel,Color,Transmission,WheelTypeID,WheelType,VehOdo,Nationality,Size,TopThreeAmericanName,MMRAcquisitionAuctionAveragePrice,MMRAcquisitionAuctionCleanPrice,MMRAcquisitionRetailAveragePrice,MMRAcquisitonRetailCleanPrice,MMRCurrentAuctionAveragePrice,MMRCurrentAuctionCleanPrice,MMRCurrentRetailAveragePrice,MMRCurrentRetailCleanPrice,PRIMEUNIT,AUCGUART,BYRNO,VNZIP1,VNST,VehBCost,IsOnlineSale,WarrantyCost)
SET PurchDate = STR_TO_DATE(@date_time_variable, '%m/%d/%Y');

/* Test */
LOAD DATA LOCAL INFILE 'C:/Users/gmalu/Google Drive/Fall 2015/B659 AML/Project/Dataset/test/test.csv' 
INTO TABLE carvana.test_raw 
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 LINES 
(RefId,@date_time_variable,Auction,VehYear,VehicleAge,Make,Model,Trim,SubModel,Color,Transmission,WheelTypeID,WheelType,VehOdo,Nationality,Size,TopThreeAmericanName,MMRAcquisitionAuctionAveragePrice,MMRAcquisitionAuctionCleanPrice,MMRAcquisitionRetailAveragePrice,MMRAcquisitonRetailCleanPrice,MMRCurrentAuctionAveragePrice,MMRCurrentAuctionCleanPrice,MMRCurrentRetailAveragePrice,MMRCurrentRetailCleanPrice,PRIMEUNIT,AUCGUART,BYRNO,VNZIP1,VNST,VehBCost,IsOnlineSale,WarrantyCost)
SET PurchDate = STR_TO_DATE(@date_time_variable, '%m/%d/%Y');

/*Test test_refid_isbadbuy_mapping */
LOAD DATA LOCAL INFILE 'C:/Users/gmalu/Documents/GitHub/MachineLearningFinalProject/Dataset/test/example_entry.csv' 
INTO TABLE carvana.test_refid_isbadbuy_mapping 
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 LINES 
(RefId,IsBadBuy);


/* Load training_raw_with_MM_YYYY*/
/*export*/
SELECT `training_raw`.`RefID`,
    `training_raw`.`IsBadBuy`,
    DATE_FORMAT(`training_raw`.`PurchDate`,'%m/%d/%Y') As PurchDate,
    MONTHNAME(PurchDate) AS PurchMonth,
    YEAR(PurchDate) AS PurchYear,
    `training_raw`.`Auction`,
    `training_raw`.`VehYear`,
    `training_raw`.`VehicleAge`,
    `training_raw`.`Make`,
    `training_raw`.`Model`,
    `training_raw`.`Trim`,
    `training_raw`.`SubModel`,
    `training_raw`.`Color`,
    `training_raw`.`Transmission`,
    `training_raw`.`WheelTypeID`,
    `training_raw`.`WheelType`,
    `training_raw`.`VehOdo`,
    `training_raw`.`Nationality`,
    `training_raw`.`Size`,
    `training_raw`.`TopThreeAmericanName`,
    `training_raw`.`MMRAcquisitionAuctionAveragePrice`,
    `training_raw`.`MMRAcquisitionAuctionCleanPrice`,
    `training_raw`.`MMRAcquisitionRetailAveragePrice`,
    `training_raw`.`MMRAcquisitonRetailCleanPrice`,
    `training_raw`.`MMRCurrentAuctionAveragePrice`,
    `training_raw`.`MMRCurrentAuctionCleanPrice`,
    `training_raw`.`MMRCurrentRetailAveragePrice`,
    `training_raw`.`MMRCurrentRetailCleanPrice`,
    `training_raw`.`PRIMEUNIT`,
    `training_raw`.`AUCGUART`,
    `training_raw`.`BYRNO`,
    `training_raw`.`VNZIP1`,
    `training_raw`.`VNST`,
    `training_raw`.`VehBCost`,
    `training_raw`.`IsOnlineSale`,
    `training_raw`.`WarrantyCost`
FROM `carvana`.`training_raw`
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 5.6/Uploads/training_raw_with_MM_YYYY.csv'
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n';
/* Add the header row in training_raw_with_MM_YYYY

RefId,IsBadBuy,PurchDate,PurchMonth,PurchYear,Auction,VehYear,VehicleAge,Make,Model,Trim,SubModel,Color,Transmission,WheelTypeID,WheelType,VehOdo,Nationality,Size,TopThreeAmericanName,MMRAcquisitionAuctionAveragePrice,MMRAcquisitionAuctionCleanPrice,MMRAcquisitionRetailAveragePrice,MMRAcquisitonRetailCleanPrice,MMRCurrentAuctionAveragePrice,MMRCurrentAuctionCleanPrice,MMRCurrentRetailAveragePrice,MMRCurrentRetailCleanPrice,PRIMEUNIT,AUCGUART,BYRNO,VNZIP1,VNST,VehBCost,IsOnlineSale,WarrantyCost 
*/

/*Import*/
LOAD DATA LOCAL INFILE 'C:/ProgramData/MySQL/MySQL Server 5.6/Uploads/training_raw_with_MM_YYYY.csv' 
INTO TABLE carvana.training_raw_with_MM_YYYY 
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 LINES 
(RefId,IsBadBuy,@date_time_variable,PurchMonth, PurchYear,Auction,VehYear,VehicleAge,Make,Model,Trim,SubModel,Color,Transmission,WheelTypeID,WheelType,VehOdo,Nationality,Size,TopThreeAmericanName,MMRAcquisitionAuctionAveragePrice,MMRAcquisitionAuctionCleanPrice,MMRAcquisitionRetailAveragePrice,MMRAcquisitonRetailCleanPrice,MMRCurrentAuctionAveragePrice,MMRCurrentAuctionCleanPrice,MMRCurrentRetailAveragePrice,MMRCurrentRetailCleanPrice,PRIMEUNIT,AUCGUART,BYRNO,VNZIP1,VNST,VehBCost,IsOnlineSale,WarrantyCost)
SET PurchDate = STR_TO_DATE(@date_time_variable, '%m/%d/%Y');


/* Load test_raw_with_MM_YYYY*/

/*export*/
SELECT `test_raw`.`RefID`,
    DATE_FORMAT(`test_raw`.`PurchDate`,'%m/%d/%Y') AS PurchDate,
    MONTHNAME(PurchDate) AS PurchMonth,
    YEAR(PurchDate) AS PurchYear,
    `test_raw`.`Auction`,
    `test_raw`.`VehYear`,
    `test_raw`.`VehicleAge`,
    `test_raw`.`Make`,
    `test_raw`.`Model`,
    `test_raw`.`Trim`,
    `test_raw`.`SubModel`,
    `test_raw`.`Color`,
    `test_raw`.`Transmission`,
    `test_raw`.`WheelTypeID`,
    `test_raw`.`WheelType`,
    `test_raw`.`VehOdo`,
    `test_raw`.`Nationality`,
    `test_raw`.`Size`,
    `test_raw`.`TopThreeAmericanName`,
    `test_raw`.`MMRAcquisitionAuctionAveragePrice`,
    `test_raw`.`MMRAcquisitionAuctionCleanPrice`,
    `test_raw`.`MMRAcquisitionRetailAveragePrice`,
    `test_raw`.`MMRAcquisitonRetailCleanPrice`,
    `test_raw`.`MMRCurrentAuctionAveragePrice`,
    `test_raw`.`MMRCurrentAuctionCleanPrice`,
    `test_raw`.`MMRCurrentRetailAveragePrice`,
    `test_raw`.`MMRCurrentRetailCleanPrice`,
    `test_raw`.`PRIMEUNIT`,
    `test_raw`.`AUCGUART`,
    `test_raw`.`BYRNO`,
    `test_raw`.`VNZIP1`,
    `test_raw`.`VNST`,
    `test_raw`.`VehBCost`,
    `test_raw`.`IsOnlineSale`,
    `test_raw`.`WarrantyCost`
FROM `carvana`.`test_raw`
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 5.6/Uploads/test_raw_with_MM_YYYY.csv'
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'

/* Add the header row in the test_raw_with_MM_YYYY.csv
RefId,PurchDate,PurchMonth,PurchYear,Auction,VehYear,VehicleAge,Make,Model,Trim,SubModel,Color,Transmission,WheelTypeID,WheelType,VehOdo,Nationality,Size,TopThreeAmericanName,MMRAcquisitionAuctionAveragePrice,MMRAcquisitionAuctionCleanPrice,MMRAcquisitionRetailAveragePrice,MMRAcquisitonRetailCleanPrice,MMRCurrentAuctionAveragePrice,MMRCurrentAuctionCleanPrice,MMRCurrentRetailAveragePrice,MMRCurrentRetailCleanPrice,PRIMEUNIT,AUCGUART,BYRNO,VNZIP1,VNST,VehBCost,IsOnlineSale,WarrantyCost
*/

/*Import*/
LOAD DATA LOCAL INFILE 'C:/ProgramData/MySQL/MySQL Server 5.6/Uploads/test_raw_with_MM_YYYY.csv' 
INTO TABLE carvana.test_raw_with_MM_YYYY 
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 LINES 
(RefId,@date_time_variable,PurchMonth, PurchYear,Auction,VehYear,VehicleAge,Make,Model,Trim,SubModel,Color,Transmission,WheelTypeID,WheelType,VehOdo,Nationality,Size,TopThreeAmericanName,MMRAcquisitionAuctionAveragePrice,MMRAcquisitionAuctionCleanPrice,MMRAcquisitionRetailAveragePrice,MMRAcquisitonRetailCleanPrice,MMRCurrentAuctionAveragePrice,MMRCurrentAuctionCleanPrice,MMRCurrentRetailAveragePrice,MMRCurrentRetailCleanPrice,PRIMEUNIT,AUCGUART,BYRNO,VNZIP1,VNST,VehBCost,IsOnlineSale,WarrantyCost)
SET PurchDate = STR_TO_DATE(@date_time_variable, '%m/%d/%Y');



/* training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30.csv */
/*export*/
SELECT `training_raw_with_mm_yyyy`.`RefID`,
    `training_raw_with_mm_yyyy`.`PurchDate`,
    `training_raw_with_mm_yyyy`.`PurchMonth`,
    `training_raw_with_mm_yyyy`.`PurchYear`,
    `training_raw_with_mm_yyyy`.`Auction`,
    `training_raw_with_mm_yyyy`.`VehicleAge`,
    `training_raw_with_mm_yyyy`.`Make`,
    `training_raw_with_mm_yyyy`.`Transmission`,
    `training_raw_with_mm_yyyy`.`WheelType`,
    `training_raw_with_mm_yyyy`.`VehOdo`,
    `training_raw_with_mm_yyyy`.`Nationality`,
    `training_raw_with_mm_yyyy`.`Size`,
    `training_raw_with_mm_yyyy`.`TopThreeAmericanName`,
    `training_raw_with_mm_yyyy`.`MMRAcquisitionAuctionAveragePrice`,
    `training_raw_with_mm_yyyy`.`MMRAcquisitionAuctionCleanPrice`,
    `training_raw_with_mm_yyyy`.`MMRAcquisitionRetailAveragePrice`,
    `training_raw_with_mm_yyyy`.`MMRAcquisitonRetailCleanPrice`,
    `training_raw_with_mm_yyyy`.`MMRCurrentAuctionAveragePrice`,
    `training_raw_with_mm_yyyy`.`MMRCurrentAuctionCleanPrice`,
    `training_raw_with_mm_yyyy`.`MMRCurrentRetailAveragePrice`,
    `training_raw_with_mm_yyyy`.`MMRCurrentRetailCleanPrice`,
    `training_raw_with_mm_yyyy`.`BYRNO`,
    `training_raw_with_mm_yyyy`.`VNST`,
    `training_raw_with_mm_yyyy`.`VehBCost`,
    `training_raw_with_mm_yyyy`.`IsOnlineSale`,
    `training_raw_with_mm_yyyy`.`WarrantyCost`,
    `training_raw_with_mm_yyyy`.`IsBadBuy`
FROM `carvana`.`training_raw_with_mm_yyyy`
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 5.6/Uploads/training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30.csv'
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n';

/* Add the header row in the training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30.csv
RefId,PurchDate,PurchMonth,PurchYear,Auction,VehicleAge,Make,Transmission,WheelType,VehOdo,Nationality,Size,TopThreeAmericanName,MMRAcquisitionAuctionAveragePrice,MMRAcquisitionAuctionCleanPrice,MMRAcquisitionRetailAveragePrice,MMRAcquisitonRetailCleanPrice,MMRCurrentAuctionAveragePrice,MMRCurrentAuctionCleanPrice,MMRCurrentRetailAveragePrice,MMRCurrentRetailCleanPrice,BYRNO,VNST,VehBCost,IsOnlineSale,WarrantyCost,IsBadBuy
*/

/*Import*/
LOAD DATA LOCAL INFILE 'C:/ProgramData/MySQL/MySQL Server 5.6/Uploads/training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30.csv' 
INTO TABLE carvana.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 LINES 
(RefId,@date_time_variable,PurchMonth,PurchYear,Auction,VehicleAge,Make,Transmission,WheelType,VehOdo,Nationality,Size,TopThreeAmericanName,MMRAcquisitionAuctionAveragePrice,MMRAcquisitionAuctionCleanPrice,MMRAcquisitionRetailAveragePrice,MMRAcquisitonRetailCleanPrice,MMRCurrentAuctionAveragePrice,MMRCurrentAuctionCleanPrice,MMRCurrentRetailAveragePrice,MMRCurrentRetailCleanPrice,BYRNO,VNST,VehBCost,IsOnlineSale,WarrantyCost,IsBadBuy)
SET PurchDate = STR_TO_DATE(@date_time_variable, '%Y-%m-%d');




/* test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30.csv */
/*export*/
SELECT `test_raw_with_mm_yyyy`.`RefID`,
    `test_raw_with_mm_yyyy`.`PurchDate`,
    `test_raw_with_mm_yyyy`.`PurchMonth`,
    `test_raw_with_mm_yyyy`.`PurchYear`,
    `test_raw_with_mm_yyyy`.`Auction`,
    `test_raw_with_mm_yyyy`.`VehicleAge`,
    `test_raw_with_mm_yyyy`.`Make`,
    `test_raw_with_mm_yyyy`.`Transmission`,
    `test_raw_with_mm_yyyy`.`WheelType`,
    `test_raw_with_mm_yyyy`.`VehOdo`,
    `test_raw_with_mm_yyyy`.`Nationality`,
    `test_raw_with_mm_yyyy`.`Size`,
    `test_raw_with_mm_yyyy`.`TopThreeAmericanName`,
    `test_raw_with_mm_yyyy`.`MMRAcquisitionAuctionAveragePrice`,
    `test_raw_with_mm_yyyy`.`MMRAcquisitionAuctionCleanPrice`,
    `test_raw_with_mm_yyyy`.`MMRAcquisitionRetailAveragePrice`,
    `test_raw_with_mm_yyyy`.`MMRAcquisitonRetailCleanPrice`,
    `test_raw_with_mm_yyyy`.`MMRCurrentAuctionAveragePrice`,
    `test_raw_with_mm_yyyy`.`MMRCurrentAuctionCleanPrice`,
    `test_raw_with_mm_yyyy`.`MMRCurrentRetailAveragePrice`,
    `test_raw_with_mm_yyyy`.`MMRCurrentRetailCleanPrice`,
    `test_raw_with_mm_yyyy`.`BYRNO`,
    `test_raw_with_mm_yyyy`.`VNST`,
    `test_raw_with_mm_yyyy`.`VehBCost`,
    `test_raw_with_mm_yyyy`.`IsOnlineSale`,
    `test_raw_with_mm_yyyy`.`WarrantyCost`
FROM `carvana`.`test_raw_with_mm_yyyy`
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 5.6/Uploads/test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30.csv'
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n';



/* Add the header row in the test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30.csv
RefId,PurchDate,PurchMonth,PurchYear,Auction,VehicleAge,Make,Transmission,WheelType,VehOdo,Nationality,Size,TopThreeAmericanName,MMRAcquisitionAuctionAveragePrice,MMRAcquisitionAuctionCleanPrice,MMRAcquisitionRetailAveragePrice,MMRAcquisitonRetailCleanPrice,MMRCurrentAuctionAveragePrice,MMRCurrentAuctionCleanPrice,MMRCurrentRetailAveragePrice,MMRCurrentRetailCleanPrice,BYRNO,VNST,VehBCost,IsOnlineSale,WarrantyCost
*/

/*Import*/
LOAD DATA LOCAL INFILE 'C:/ProgramData/MySQL/MySQL Server 5.6/Uploads/test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30.csv' 
INTO TABLE carvana.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 LINES 
(RefId,@date_time_variable,PurchMonth,PurchYear,Auction,VehicleAge,Make,Transmission,WheelType,VehOdo,Nationality,Size,TopThreeAmericanName,MMRAcquisitionAuctionAveragePrice,MMRAcquisitionAuctionCleanPrice,MMRAcquisitionRetailAveragePrice,MMRAcquisitonRetailCleanPrice,MMRCurrentAuctionAveragePrice,MMRCurrentAuctionCleanPrice,MMRCurrentRetailAveragePrice,MMRCurrentRetailCleanPrice,BYRNO,VNST,VehBCost,IsOnlineSale,WarrantyCost)
SET PurchDate = STR_TO_DATE(@date_time_variable, '%Y-%m-%d');


SELECT `test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized`.`RefID`,
    `test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized`.`PurchDate`,
    `test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized`.`PurchMonth`,
    `test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized`.`PurchYear`,
    `test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized`.`Auction`,
    `test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized`.`VehicleAge`,
    `test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized`.`Make`,
    `test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized`.`Transmission`,
    `test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized`.`WheelType`,
    `test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized`.`VehOdo`,
    `test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized`.`Nationality`,
    `test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized`.`Size`,
    `test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized`.`TopThreeAmericanName`,
    `test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized`.`MMRAcquisitionAuctionAveragePrice`,
    `test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized`.`MMRAcquisitionAuctionCleanPrice`,
    `test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized`.`MMRAcquisitionRetailAveragePrice`,
    `test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized`.`MMRAcquisitonRetailCleanPrice`,
    `test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized`.`MMRCurrentAuctionAveragePrice`,
    `test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized`.`MMRCurrentAuctionCleanPrice`,
    `test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized`.`MMRCurrentRetailAveragePrice`,
    `test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized`.`MMRCurrentRetailCleanPrice`,
    `test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized`.`BYRNO`,
    `test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized`.`VNST`,
    `test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized`.`VehBCost`,
    `test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized`.`IsOnlineSale`,
    `test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized`.`WarrantyCost`,
    B.IsBadBuy
FROM `carvana`.`test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized`
INNER JOIN carvana.test_refid_isbadbuy_mapping as B
ON (test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized.RefID = B.RefID)
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 5.6/Uploads/test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_dis_with_isbadbuy.csv'
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n';


/* Add the header row in the test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30.csv
RefId,PurchDate,PurchMonth,PurchYear,Auction,VehicleAge,Make,Transmission,WheelType,VehOdo,Nationality,Size,TopThreeAmericanName,MMRAcquisitionAuctionAveragePrice,MMRAcquisitionAuctionCleanPrice,MMRAcquisitionRetailAveragePrice,MMRAcquisitonRetailCleanPrice,MMRCurrentAuctionAveragePrice,MMRCurrentAuctionCleanPrice,MMRCurrentRetailAveragePrice,MMRCurrentRetailCleanPrice,BYRNO,VNST,VehBCost,IsOnlineSale,WarrantyCost,IsBadBuy
*/

/*Import*/
LOAD DATA LOCAL INFILE 'C:/ProgramData/MySQL/MySQL Server 5.6/Uploads/test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_dis_with_isbadbuy.csv' 
INTO TABLE carvana.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_dis_with_isbadbuy 
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 LINES 
(RefId,@date_time_variable,PurchMonth,PurchYear,Auction,VehicleAge,Make,Transmission,WheelType,VehOdo,Nationality,Size,TopThreeAmericanName,MMRAcquisitionAuctionAveragePrice,MMRAcquisitionAuctionCleanPrice,MMRAcquisitionRetailAveragePrice,MMRAcquisitonRetailCleanPrice,MMRCurrentAuctionAveragePrice,MMRCurrentAuctionCleanPrice,MMRCurrentRetailAveragePrice,MMRCurrentRetailCleanPrice,BYRNO,VNST,VehBCost,IsOnlineSale,WarrantyCost)
SET PurchDate = STR_TO_DATE(@date_time_variable, '%Y-%m-%d');


SELECT * FROM `carvana`.training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30 
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 5.6/Uploads/training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30.csv'
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n';


/*training_dataset_1*/
/*Import*/
LOAD DATA LOCAL INFILE 'C:/ProgramData/MySQL/MySQL Server 5.6/Uploads/training_balanced.csv' 
INTO TABLE carvana.training_dataset_1 
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 LINES 
(Auction,VehicleAge,Make,Transmission,WheelType,VehOdo,Nationality,Size,TopThreeAmericanName,MMRAcquisitionAuctionAveragePrice,MMRAcquisitionAuctionCleanPrice,MMRAcquisitionRetailAveragePrice,MMRAcquisitonRetailCleanPrice,MMRCurrentAuctionAveragePrice,MMRCurrentAuctionCleanPrice,MMRCurrentRetailAveragePrice,MMRCurrentRetailCleanPrice,VNST,VehBCost,IsOnlineSale,WarrantyCost,IsBadBuy);

CREATE TABLE training_dataset_2 AS 
SELECT *
FROM `carvana`.`training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30`
WHERE 1=1;

/* training_dataset_1_balanced_discretized */
SELECT `training_dataset_1`.`Auction`,
    `training_dataset_1`.`VehicleAge`,
    `training_dataset_1`.`Make`,
    `training_dataset_1`.`Transmission`,
    `training_dataset_1`.`WheelType`,
    `training_dataset_1`.`VehOdo`,
    `training_dataset_1`.`Nationality`,
    `training_dataset_1`.`Size`,
    `training_dataset_1`.`TopThreeAmericanName`,
    `training_dataset_1`.`MMRAcquisitionAuctionAveragePrice`,
    `training_dataset_1`.`MMRAcquisitionAuctionCleanPrice`,
    `training_dataset_1`.`MMRAcquisitionRetailAveragePrice`,
    `training_dataset_1`.`MMRAcquisitonRetailCleanPrice`,
    `training_dataset_1`.`MMRCurrentAuctionAveragePrice`,
    `training_dataset_1`.`MMRCurrentAuctionCleanPrice`,
    `training_dataset_1`.`MMRCurrentRetailAveragePrice`,
    `training_dataset_1`.`MMRCurrentRetailCleanPrice`,
    `training_dataset_1`.`VNST`,
    `training_dataset_1`.`VehBCost`,
    `training_dataset_1`.`IsOnlineSale`,
    `training_dataset_1`.`WarrantyCost`,
    `training_dataset_1`.`IsBadBuy`
FROM `carvana`.`training_dataset_1`
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 5.6/Uploads/training_dataset_1_balanced_discretized.csv'
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n';

/* training_dataset_2_unbalanced_discretized */
SELECT `training_dataset_2`.`Auction`,
    `training_dataset_2`.`VehicleAge`,
    `training_dataset_2`.`Make`,
    `training_dataset_2`.`Transmission`,
    `training_dataset_2`.`WheelType`,
    `training_dataset_2`.`VehOdo`,
    `training_dataset_2`.`Nationality`,
    `training_dataset_2`.`Size`,
    `training_dataset_2`.`TopThreeAmericanName`,
    `training_dataset_2`.`MMRAcquisitionAuctionAveragePrice`,
    `training_dataset_2`.`MMRAcquisitionAuctionCleanPrice`,
    `training_dataset_2`.`MMRAcquisitionRetailAveragePrice`,
    `training_dataset_2`.`MMRAcquisitonRetailCleanPrice`,
    `training_dataset_2`.`MMRCurrentAuctionAveragePrice`,
    `training_dataset_2`.`MMRCurrentAuctionCleanPrice`,
    `training_dataset_2`.`MMRCurrentRetailAveragePrice`,
    `training_dataset_2`.`MMRCurrentRetailCleanPrice`,
    `training_dataset_2`.`VNST`,
    `training_dataset_2`.`VehBCost`,
    `training_dataset_2`.`IsOnlineSale`,
    `training_dataset_2`.`WarrantyCost`,
    `training_dataset_2`.`IsBadBuy`
FROM `carvana`.`training_dataset_2`
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 5.6/Uploads/training_dataset_2_unbalanced_discretized.csv'
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n';
