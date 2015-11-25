/* Discretization SQL Queries */

/* Update Nationality */

UPDATE `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized 
SET  Nationality = 'ASIAN'
WHERE Nationality in ('OTHER ASIAN', 'TOP LINE ASIAN');

UPDATE `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized 
SET  Nationality = 'ASIAN'
WHERE Nationality in ('OTHER ASIAN', 'TOP LINE ASIAN');

/* Delete NULLS */
DELETE FROM `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized 
WHERE Nationality = 'NULL';

DELETE FROM `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized 
WHERE Nationality = 'NULL';


/* Update Size */

UPDATE `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized 
SET  Size = 'LARGE'
WHERE Size in ('LARGE TRUCK', 'LARGE SUV');

UPDATE `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized 
SET  Size = 'LARGE'
WHERE Size in ('LARGE TRUCK', 'LARGE SUV');


UPDATE `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized 
SET  Size = 'MEDIUM'
WHERE Size in ('MEDIUM SUV', 'CROSSOVER');

UPDATE `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized 
SET  Size = 'MEDIUM'
WHERE Size in ('MEDIUM SUV', 'CROSSOVER');

UPDATE `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized 
SET  Size = 'SMALL'
WHERE Size in ('COMPACT', 'SMALL TRUCK', 'SMALL SUV');

UPDATE `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized 
SET  Size = 'SMALL'
WHERE Size in ('COMPACT', 'SMALL TRUCK', 'SMALL SUV');

UPDATE `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized 
SET  Size = 'SPECIAL'
WHERE Size in ('VAN', 'SPECIALTY', 'SPORTS');

UPDATE `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized 
SET  Size = 'SPECIAL'
WHERE Size in ('VAN', 'SPECIALTY', 'SPORTS');

/* WheelType */
UPDATE `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized 
SET  WheelType = 'Other'
WHERE WheelType in ('NULL');

UPDATE `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized 
SET  WheelType = 'Other'
WHERE WheelType in ('NULL');

/* Delete Nulls */
DELETE FROM `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized 
WHERE TopThreeAmericanName in ('NULL', ' ');

DELETE FROM `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized 
WHERE TopThreeAmericanName in ('NULL', ' ');

DELETE FROM `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized 
WHERE Transmission in ('NULL', ' ');

DELETE FROM `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized 
WHERE Transmission in ('NULL', ' ');

DELETE FROM `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized 
WHERE VehicleAge in ('NULL', ' ');

DELETE FROM `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized 
WHERE VehicleAge in ('NULL', ' ');

/* Update VehicleAge */
UPDATE `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE VehicleAge <= 3) AS B
 ON A.RefID = B.RefID 
SET  A.VehicleAge = '<=3 yrs';

UPDATE `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE VehicleAge <= 3) AS B
 ON A.RefID = B.RefID 
SET  A.VehicleAge = '<=3 yrs';

UPDATE `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE VehicleAge > 3 and VehicleAge <= 6) AS B
 ON A.RefID = B.RefID 
SET  A.VehicleAge = '4 to 6 yrs';

UPDATE `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE VehicleAge > 3 and VehicleAge <= 6) AS B
 ON A.RefID = B.RefID 
SET  A.VehicleAge = '4 to 6 yrs';

UPDATE `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE VehicleAge > 6) AS B
 ON A.RefID = B.RefID 
SET  A.VehicleAge = '>7 yrs';


UPDATE `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE VehicleAge > 6) AS B
 ON A.RefID = B.RefID 
SET  A.VehicleAge = '>7 yrs';


/* Update VehOdo */
UPDATE `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE VehOdo <= 41789) AS B
 ON A.RefID = B.RefID 
SET  A.VehOdo = '<=41789';

UPDATE `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE VehOdo <= 41789) AS B
 ON A.RefID = B.RefID 
SET  A.VehOdo = '<=41789';

UPDATE `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE VehOdo > 41789 and VehOdo <= 78753) AS B
 ON A.RefID = B.RefID 
SET  A.VehOdo = '41790 to 78753';

UPDATE `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE VehOdo > 41789 and VehOdo <= 78753) AS B
 ON A.RefID = B.RefID 
SET  A.VehOdo = '41790 to 78753';

UPDATE `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE VehOdo > 78753) AS B
 ON A.RefID = B.RefID 
SET  A.VehOdo = '>78753';


UPDATE `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE VehOdo > 78753) AS B
 ON A.RefID = B.RefID 
SET  A.VehOdo = '>78753';


/* Update BYRNO */
UPDATE `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE BYRNO <= 17443) AS B
 ON A.RefID = B.RefID 
SET  A.BYRNO = '<=17443';

UPDATE `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE BYRNO <= 17443) AS B
 ON A.RefID = B.RefID 
SET  A.BYRNO = '<=17443';

UPDATE `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE BYRNO > 17443 and BYRNO <= 19650) AS B
 ON A.RefID = B.RefID 
SET  A.BYRNO = '17444 to 19650';

UPDATE `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE BYRNO > 17443 and BYRNO <= 19650) AS B
 ON A.RefID = B.RefID 
SET  A.BYRNO = '17444 to 19650';

UPDATE `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE BYRNO > 19650 and BYRNO <= 22390) AS B
 ON A.RefID = B.RefID 
SET  A.BYRNO = '19651 to 22390';

UPDATE `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE BYRNO > 19650 and BYRNO <= 22390) AS B
 ON A.RefID = B.RefID 
SET  A.BYRNO = '19651 to 22390';

UPDATE `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE BYRNO > 22390) AS B
 ON A.RefID = B.RefID 
SET  A.BYRNO = '>22390';


UPDATE `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE BYRNO > 22390) AS B
 ON A.RefID = B.RefID 
SET  A.BYRNO = '>22390';



/* Update Prices - MMRAcquisitionAuctionAveragePrice */

UPDATE `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE MMRAcquisitionAuctionAveragePrice <= 11907.33) AS B
 ON A.RefID = B.RefID 
SET  A.MMRAcquisitionAuctionAveragePrice = '<=11907.33';

UPDATE `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE MMRAcquisitionAuctionAveragePrice <= 11907.33) AS B
 ON A.RefID = B.RefID 
SET  A.MMRAcquisitionAuctionAveragePrice = '<=11907.33';

UPDATE `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE MMRAcquisitionAuctionAveragePrice > 11907.33 and MMRAcquisitionAuctionAveragePrice <= 23814.67) AS B
 ON A.RefID = B.RefID 
SET  A.MMRAcquisitionAuctionAveragePrice = '11907.33 to 23814.67';

UPDATE `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE MMRAcquisitionAuctionAveragePrice > 11907.33 and MMRAcquisitionAuctionAveragePrice <= 23814.67) AS B
 ON A.RefID = B.RefID 
SET  A.MMRAcquisitionAuctionAveragePrice = '11907.33 to 23814.67';

UPDATE `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE MMRAcquisitionAuctionAveragePrice > 23814.67) AS B
 ON A.RefID = B.RefID 
SET  A.MMRAcquisitionAuctionAveragePrice = '>23814.67';


UPDATE `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE MMRAcquisitionAuctionAveragePrice > 23814.67) AS B
 ON A.RefID = B.RefID 
SET  A.MMRAcquisitionAuctionAveragePrice = '>23814.67';


/* Update Prices - MMRAcquisitionAuctionCleanPrice */

UPDATE `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE MMRAcquisitionAuctionCleanPrice <= 12286.33) AS B
 ON A.RefID = B.RefID 
SET  A.MMRAcquisitionAuctionCleanPrice = '<=12286.33';

UPDATE `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE MMRAcquisitionAuctionCleanPrice <= 12286.33) AS B
 ON A.RefID = B.RefID 
SET  A.MMRAcquisitionAuctionCleanPrice = '<=12286.33';

UPDATE `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE MMRAcquisitionAuctionCleanPrice > 12286.33 and MMRAcquisitionAuctionCleanPrice <= 24572.67) AS B
 ON A.RefID = B.RefID 
SET  A.MMRAcquisitionAuctionCleanPrice = '12286.33 to 24572.67';

UPDATE `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE MMRAcquisitionAuctionCleanPrice > 12286.33 and MMRAcquisitionAuctionCleanPrice <= 24572.67) AS B
 ON A.RefID = B.RefID 
SET  A.MMRAcquisitionAuctionCleanPrice = '12286.33 to 24572.67';

UPDATE `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE MMRAcquisitionAuctionCleanPrice > 24572.67) AS B
 ON A.RefID = B.RefID 
SET  A.MMRAcquisitionAuctionCleanPrice = '>24572.67';


UPDATE `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE MMRAcquisitionAuctionCleanPrice > 24572.67) AS B
 ON A.RefID = B.RefID 
SET  A.MMRAcquisitionAuctionCleanPrice = '>24572.67';



/* Update Prices - MMRAcquisitionRetailAveragePrice */

UPDATE `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE MMRAcquisitionRetailAveragePrice <= 13026.67) AS B
 ON A.RefID = B.RefID 
SET  A.MMRAcquisitionRetailAveragePrice = '<=13026.67';

UPDATE `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE MMRAcquisitionRetailAveragePrice <= 13026.67) AS B
 ON A.RefID = B.RefID 
SET  A.MMRAcquisitionRetailAveragePrice = '<=13026.67';

UPDATE `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE MMRAcquisitionRetailAveragePrice > 13026.67 and MMRAcquisitionRetailAveragePrice <= 26053.33) AS B
 ON A.RefID = B.RefID 
SET  A.MMRAcquisitionRetailAveragePrice = '13026.67 to 26053.33';

UPDATE `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE MMRAcquisitionRetailAveragePrice > 13026.67 and MMRAcquisitionRetailAveragePrice <= 26053.33) AS B
 ON A.RefID = B.RefID 
SET  A.MMRAcquisitionRetailAveragePrice = '13026.67 to 26053.33';

UPDATE `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE MMRAcquisitionRetailAveragePrice > 26053.33) AS B
 ON A.RefID = B.RefID 
SET  A.MMRAcquisitionRetailAveragePrice = '>26053.33';


UPDATE `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE MMRAcquisitionRetailAveragePrice > 26053.33) AS B
 ON A.RefID = B.RefID 
SET  A.MMRAcquisitionRetailAveragePrice = '>26053.33';





/* Update Prices - MMRAcquisitonRetailCleanPrice */

UPDATE `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE MMRAcquisitonRetailCleanPrice <= 13827.33) AS B
 ON A.RefID = B.RefID 
SET  A.MMRAcquisitonRetailCleanPrice = '<=13827.33';

UPDATE `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE MMRAcquisitonRetailCleanPrice <= 13827.33) AS B
 ON A.RefID = B.RefID 
SET  A.MMRAcquisitonRetailCleanPrice = '<=13827.33';

UPDATE `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE MMRAcquisitonRetailCleanPrice > 13827.33 and MMRAcquisitonRetailCleanPrice <= 27654.67) AS B
 ON A.RefID = B.RefID 
SET  A.MMRAcquisitonRetailCleanPrice = '13827.33 to 27654.67';

UPDATE `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE MMRAcquisitonRetailCleanPrice > 13827.33 and MMRAcquisitonRetailCleanPrice <= 27654.67) AS B
 ON A.RefID = B.RefID 
SET  A.MMRAcquisitonRetailCleanPrice = '13827.33 to 27654.67';

UPDATE `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE MMRAcquisitonRetailCleanPrice > 27654.67) AS B
 ON A.RefID = B.RefID 
SET  A.MMRAcquisitonRetailCleanPrice = '>27654.67';


UPDATE `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE MMRAcquisitonRetailCleanPrice > 27654.67) AS B
 ON A.RefID = B.RefID 
SET  A.MMRAcquisitonRetailCleanPrice = '>27654.67';



/* Update Prices - MMRCurrentAuctionAveragePrice */

UPDATE `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE MMRCurrentAuctionAveragePrice <= 11907.33) AS B
 ON A.RefID = B.RefID 
SET  A.MMRCurrentAuctionAveragePrice = '<=11907.33';

UPDATE `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE MMRCurrentAuctionAveragePrice <= 11907.33) AS B
 ON A.RefID = B.RefID 
SET  A.MMRCurrentAuctionAveragePrice = '<=11907.33';

UPDATE `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE MMRCurrentAuctionAveragePrice > 11907.33 and MMRCurrentAuctionAveragePrice <= 23814.67) AS B
 ON A.RefID = B.RefID 
SET  A.MMRCurrentAuctionAveragePrice = '11907.33 to 23814.67';

UPDATE `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE MMRCurrentAuctionAveragePrice > 11907.33 and MMRCurrentAuctionAveragePrice <= 23814.67) AS B
 ON A.RefID = B.RefID 
SET  A.MMRCurrentAuctionAveragePrice = '11907.33 to 23814.67';

UPDATE `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE MMRCurrentAuctionAveragePrice > 23814.67) AS B
 ON A.RefID = B.RefID 
SET  A.MMRCurrentAuctionAveragePrice = '>23814.67';


UPDATE `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE MMRCurrentAuctionAveragePrice > 23814.67) AS B
 ON A.RefID = B.RefID 
SET  A.MMRCurrentAuctionAveragePrice = '>23814.67';



/* Update Prices - MMRCurrentAuctionCleanPrice */

UPDATE `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE MMRCurrentAuctionCleanPrice <= 12286.33) AS B
 ON A.RefID = B.RefID 
SET  A.MMRCurrentAuctionCleanPrice = '<=12286.33';

UPDATE `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE MMRCurrentAuctionCleanPrice <= 12286.33) AS B
 ON A.RefID = B.RefID 
SET  A.MMRCurrentAuctionCleanPrice = '<=12286.33';

UPDATE `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE MMRCurrentAuctionCleanPrice > 12286.33 and MMRCurrentAuctionCleanPrice <= 24572.67) AS B
 ON A.RefID = B.RefID 
SET  A.MMRCurrentAuctionCleanPrice = '12286.33 to 24572.67';

UPDATE `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE MMRCurrentAuctionCleanPrice > 12286.33 and MMRCurrentAuctionCleanPrice <= 24572.67) AS B
 ON A.RefID = B.RefID 
SET  A.MMRCurrentAuctionCleanPrice = '12286.33 to 24572.67';

UPDATE `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE MMRCurrentAuctionCleanPrice > 24572.67) AS B
 ON A.RefID = B.RefID 
SET  A.MMRCurrentAuctionCleanPrice = '>24572.67';


UPDATE `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE MMRCurrentAuctionCleanPrice > 24572.67) AS B
 ON A.RefID = B.RefID 
SET  A.MMRCurrentAuctionCleanPrice = '>24572.67';




/* Update Prices - MMRCurrentRetailAveragePrice */

UPDATE `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE MMRCurrentRetailAveragePrice <= 13026.67) AS B
 ON A.RefID = B.RefID 
SET  A.MMRCurrentRetailAveragePrice = '<=13026.67';

UPDATE `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE MMRCurrentRetailAveragePrice <= 13026.67) AS B
 ON A.RefID = B.RefID 
SET  A.MMRCurrentRetailAveragePrice = '<=13026.67';

UPDATE `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE MMRCurrentRetailAveragePrice > 13026.67 and MMRCurrentRetailAveragePrice <= 26053.33) AS B
 ON A.RefID = B.RefID 
SET  A.MMRCurrentRetailAveragePrice = '13026.67 to 26053.33';

UPDATE `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE MMRCurrentRetailAveragePrice > 13026.67 and MMRCurrentRetailAveragePrice <= 26053.33) AS B
 ON A.RefID = B.RefID 
SET  A.MMRCurrentRetailAveragePrice = '13026.67 to 26053.33';

UPDATE `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE MMRCurrentRetailAveragePrice > 26053.33) AS B
 ON A.RefID = B.RefID 
SET  A.MMRCurrentRetailAveragePrice = '>26053.33';


UPDATE `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE MMRCurrentRetailAveragePrice > 26053.33) AS B
 ON A.RefID = B.RefID 
SET  A.MMRCurrentRetailAveragePrice = '>26053.33';




/* Update Prices - MMRCurrentRetailCleanPrice */

UPDATE `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE MMRCurrentRetailCleanPrice <= 13687.33) AS B
 ON A.RefID = B.RefID 
SET  A.MMRCurrentRetailCleanPrice = '<=13687.33';

UPDATE `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE MMRCurrentRetailCleanPrice <= 13687.33) AS B
 ON A.RefID = B.RefID 
SET  A.MMRCurrentRetailCleanPrice = '<=13687.33';

UPDATE `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE MMRCurrentRetailCleanPrice > 13687.33 and MMRCurrentRetailCleanPrice <= 27374.67) AS B
 ON A.RefID = B.RefID 
SET  A.MMRCurrentRetailCleanPrice = '13687.33 to 27374.67';

UPDATE `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE MMRCurrentRetailCleanPrice > 13687.33 and MMRCurrentRetailCleanPrice <= 27374.67) AS B
 ON A.RefID = B.RefID 
SET  A.MMRCurrentRetailCleanPrice = '13687.33 to 27374.67';

UPDATE `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE MMRCurrentRetailCleanPrice > 27374.67) AS B
 ON A.RefID = B.RefID 
SET  A.MMRCurrentRetailCleanPrice = '>27374.67';


UPDATE `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE MMRCurrentRetailCleanPrice > 27374.67) AS B
 ON A.RefID = B.RefID 
SET  A.MMRCurrentRetailCleanPrice = '>27374.67';



/* Update Prices - VehBCost */

UPDATE `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE VehBCost <= 5847.5) AS B
 ON A.RefID = B.RefID 
SET  A.VehBCost = '<=5847.5';

UPDATE `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE VehBCost <= 5847.5) AS B
 ON A.RefID = B.RefID 
SET  A.VehBCost = '<=5847.5';

UPDATE `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE VehBCost > 5847.5 and VehBCost <= 7502.5) AS B
 ON A.RefID = B.RefID 
SET  A.VehBCost = '5847.5 to 7502.5';

UPDATE `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE VehBCost > 5847.5 and VehBCost <= 7502.5) AS B
 ON A.RefID = B.RefID 
SET  A.VehBCost = '5847.5 to 7502.5';

UPDATE `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE VehBCost > 7502.5) AS B
 ON A.RefID = B.RefID 
SET  A.VehBCost = '>7502.5';


UPDATE `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE VehBCost > 7502.5) AS B
 ON A.RefID = B.RefID 
SET  A.VehBCost = '>7502.5';




/* Update Prices - WarrantyCost */

UPDATE `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE WarrantyCost <= 926.5) AS B
 ON A.RefID = B.RefID 
SET  A.WarrantyCost = '<=926.5';

UPDATE `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE WarrantyCost <= 926.5) AS B
 ON A.RefID = B.RefID 
SET  A.WarrantyCost = '<=926.5';

UPDATE `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE WarrantyCost > 926.5 and WarrantyCost <= 1412) AS B
 ON A.RefID = B.RefID 
SET  A.WarrantyCost = '926.5 to 1412';

UPDATE `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE WarrantyCost > 926.5 and WarrantyCost <= 1412) AS B
 ON A.RefID = B.RefID 
SET  A.WarrantyCost = '926.5 to 1412';

UPDATE `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE WarrantyCost > 1412) AS B
 ON A.RefID = B.RefID 
SET  A.WarrantyCost = '>1412';


UPDATE `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30_discretized as A
 INNER JOIN ( SELECT RefID from `carvana`.test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30 WHERE WarrantyCost > 1412) AS B
 ON A.RefID = B.RefID 
SET  A.WarrantyCost = '>1412';
