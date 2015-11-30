/* Discretization SQL Queries */

/* Update Nationality */

UPDATE `carvana`.training_dataset_1 
SET  Nationality = 'ASIAN'
WHERE Nationality in ('OTHER ASIAN', 'TOP LINE ASIAN');

UPDATE `carvana`.training_dataset_2 
SET  Nationality = 'ASIAN'
WHERE Nationality in ('OTHER ASIAN', 'TOP LINE ASIAN');


/* Update Size */

UPDATE `carvana`.training_dataset_1 
SET  Size = 'LARGE'
WHERE Size in ('LARGE TRUCK', 'LARGE SUV');

UPDATE `carvana`.training_dataset_2 
SET  Size = 'LARGE'
WHERE Size in ('LARGE TRUCK', 'LARGE SUV');


UPDATE `carvana`.training_dataset_1 
SET  Size = 'MEDIUM'
WHERE Size in ('MEDIUM SUV', 'CROSSOVER');

UPDATE `carvana`.training_dataset_2 
SET  Size = 'MEDIUM'
WHERE Size in ('MEDIUM SUV', 'CROSSOVER');

UPDATE `carvana`.training_dataset_1 
SET  Size = 'SMALL'
WHERE Size in ('COMPACT', 'SMALL TRUCK', 'SMALL SUV');

UPDATE `carvana`.training_dataset_2 
SET  Size = 'SMALL'
WHERE Size in ('COMPACT', 'SMALL TRUCK', 'SMALL SUV');

UPDATE `carvana`.training_dataset_1 
SET  Size = 'SPECIAL'
WHERE Size in ('VAN', 'SPECIALTY', 'SPORTS');

UPDATE `carvana`.training_dataset_2 
SET  Size = 'SPECIAL'
WHERE Size in ('VAN', 'SPECIALTY', 'SPORTS');


/* Update VehicleAge */
UPDATE `carvana`.training_dataset_1 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_1_bkp WHERE VehicleAge <= 3) AS B
 ON A.id = B.id 
SET  A.VehicleAge = '(-inf-3]';

UPDATE `carvana`.training_dataset_2 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_2_bkp WHERE VehicleAge <= 3) AS B
 ON A.id = B.id 
SET  A.VehicleAge = '(-inf-3]';

UPDATE `carvana`.training_dataset_1 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_1_bkp WHERE VehicleAge > 3 and VehicleAge <= 6) AS B
 ON A.id = B.id 
SET  A.VehicleAge = '(3-6]';

UPDATE `carvana`.training_dataset_2 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_2_bkp WHERE VehicleAge > 3 and VehicleAge <= 6) AS B
 ON A.id = B.id 
SET  A.VehicleAge = '(3-6]';

UPDATE `carvana`.training_dataset_1 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_1_bkp WHERE VehicleAge > 6) AS B
 ON A.id = B.id 
SET  A.VehicleAge = '(6-inf)';

UPDATE `carvana`.training_dataset_2 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_2_bkp WHERE VehicleAge > 6) AS B
 ON A.id = B.id 
SET  A.VehicleAge = '(6-inf)';


/* Update VehOdo */
UPDATE `carvana`.training_dataset_1 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_1_bkp WHERE VehOdo <= 41789) AS B
 ON A.id = B.id 
SET  A.VehOdo = '(-inf-41789]';

UPDATE `carvana`.training_dataset_2 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_2_bkp WHERE VehOdo <= 41789) AS B
 ON A.id = B.id 
SET  A.VehOdo = '(-inf-41789]';

UPDATE `carvana`.training_dataset_1 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_1_bkp WHERE VehOdo > 41789 and VehOdo <= 78753) AS B
 ON A.id = B.id 
SET  A.VehOdo = '(41789-78753]';

UPDATE `carvana`.training_dataset_2 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_2_bkp WHERE VehOdo > 41789 and VehOdo <= 78753) AS B
 ON A.id = B.id 
SET  A.VehOdo = '(41789-78753]';

UPDATE `carvana`.training_dataset_1 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_1_bkp WHERE VehOdo > 78753) AS B
 ON A.id = B.id 
SET  A.VehOdo = '(78753-inf)';


UPDATE `carvana`.training_dataset_2 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_2_bkp WHERE VehOdo > 78753) AS B
 ON A.id = B.id 
SET  A.VehOdo = '(78753-inf)';

/* Update Prices - MMRAcquisitionAuctionAveragePrice */
UPDATE `carvana`.training_dataset_1 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_1_bkp WHERE MMRAcquisitionAuctionAveragePrice <= 12496.67) AS B
 ON A.id = B.id 
SET  A.MMRAcquisitionAuctionAveragePrice = '(-inf-12496.67]';

UPDATE `carvana`.training_dataset_2 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_2_bkp WHERE MMRAcquisitionAuctionAveragePrice <= 12496.67) AS B
 ON A.id = B.id 
SET  A.MMRAcquisitionAuctionAveragePrice = '(-inf-12496.67]';

UPDATE `carvana`.training_dataset_1 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_1_bkp WHERE MMRAcquisitionAuctionAveragePrice > 12496.67 and MMRAcquisitionAuctionAveragePrice <= 24109.33) AS B
 ON A.id = B.id 
SET  A.MMRAcquisitionAuctionAveragePrice = '(12496.67-24109.33]';

UPDATE `carvana`.training_dataset_2 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_2_bkp WHERE MMRAcquisitionAuctionAveragePrice > 12496.67 and MMRAcquisitionAuctionAveragePrice <= 24109.33) AS B
 ON A.id = B.id 
SET  A.MMRAcquisitionAuctionAveragePrice = '(12496.67-24109.33]';

UPDATE `carvana`.training_dataset_1 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_1_bkp WHERE MMRAcquisitionAuctionAveragePrice > 24109.33) AS B
 ON A.id = B.id 
SET  A.MMRAcquisitionAuctionAveragePrice = '(24109.33-inf)';

UPDATE `carvana`.training_dataset_2 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_2_bkp WHERE MMRAcquisitionAuctionAveragePrice > 24109.33) AS B
 ON A.id = B.id 
SET  A.MMRAcquisitionAuctionAveragePrice = '(24109.33-inf)';


/* Update Prices - MMRAcquisitionAuctionCleanPrice */
UPDATE `carvana`.training_dataset_1 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_1_bkp WHERE MMRAcquisitionAuctionCleanPrice <= 13003.67) AS B
 ON A.id = B.id 
SET  A.MMRAcquisitionAuctionCleanPrice = '(-inf-13003.67]';

UPDATE `carvana`.training_dataset_2 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_2_bkp WHERE MMRAcquisitionAuctionCleanPrice <= 13003.67) AS B
 ON A.id = B.id 
SET  A.MMRAcquisitionAuctionCleanPrice = '(-inf-13003.67]';

UPDATE `carvana`.training_dataset_1 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_1_bkp WHERE MMRAcquisitionAuctionCleanPrice > 13003.67 and MMRAcquisitionAuctionCleanPrice <= 24931.33) AS B
 ON A.id = B.id 
SET  A.MMRAcquisitionAuctionCleanPrice = '(13003.67-24931.33]';

UPDATE `carvana`.training_dataset_2 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_2_bkp WHERE MMRAcquisitionAuctionCleanPrice > 13003.67 and MMRAcquisitionAuctionCleanPrice <= 24931.33) AS B
 ON A.id = B.id 
SET  A.MMRAcquisitionAuctionCleanPrice = '(13003.67-24931.33]';

UPDATE `carvana`.training_dataset_1 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_1_bkp WHERE MMRAcquisitionAuctionCleanPrice > 24931.33) AS B
 ON A.id = B.id 
SET  A.MMRAcquisitionAuctionCleanPrice = '(24931.33-inf)';


UPDATE `carvana`.training_dataset_2 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_2_bkp WHERE MMRAcquisitionAuctionCleanPrice > 24931.33) AS B
 ON A.id = B.id 
SET  A.MMRAcquisitionAuctionCleanPrice = '(24931.33-inf)';



/* Update Prices - MMRAcquisitionRetailAveragePrice */
UPDATE `carvana`.training_dataset_1 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_1_bkp WHERE MMRAcquisitionRetailAveragePrice <= 13996.67) AS B
 ON A.id = B.id 
SET  A.MMRAcquisitionRetailAveragePrice = '(-inf-13996.67]';

UPDATE `carvana`.training_dataset_2 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_2_bkp WHERE MMRAcquisitionRetailAveragePrice <= 13996.67) AS B
 ON A.id = B.id 
SET  A.MMRAcquisitionRetailAveragePrice = '(-inf-13996.67]';

UPDATE `carvana`.training_dataset_1 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_1_bkp WHERE MMRAcquisitionRetailAveragePrice > 13996.67 and MMRAcquisitionRetailAveragePrice <= 26538.33) AS B
 ON A.id = B.id 
SET  A.MMRAcquisitionRetailAveragePrice = '(13996.667-26538.33]';

UPDATE `carvana`.training_dataset_2 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_2_bkp WHERE MMRAcquisitionRetailAveragePrice > 13996.67 and MMRAcquisitionRetailAveragePrice <= 26538.33) AS B
 ON A.id = B.id 
SET  A.MMRAcquisitionRetailAveragePrice = '(13996.667-26538.33]';

UPDATE `carvana`.training_dataset_1 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_1_bkp WHERE MMRAcquisitionRetailAveragePrice > 26538.33) AS B
 ON A.id = B.id 
SET  A.MMRAcquisitionRetailAveragePrice = '(26538.33-inf)';

UPDATE `carvana`.training_dataset_2 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_2_bkp WHERE MMRAcquisitionRetailAveragePrice > 26538.33) AS B
 ON A.id = B.id 
SET  A.MMRAcquisitionRetailAveragePrice = '(26538.33-inf)';





/* Update Prices - MMRAcquisitonRetailCleanPrice */
UPDATE `carvana`.training_dataset_1 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_1_bkp WHERE MMRAcquisitonRetailCleanPrice <= 14935.33) AS B
 ON A.id = B.id 
SET  A.MMRAcquisitonRetailCleanPrice = '(-inf-14935.33]';

UPDATE `carvana`.training_dataset_2 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_2_bkp WHERE MMRAcquisitonRetailCleanPrice <= 14935.33) AS B
 ON A.id = B.id 
SET  A.MMRAcquisitonRetailCleanPrice = '(-inf-14935.33]';

UPDATE `carvana`.training_dataset_1 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_1_bkp WHERE MMRAcquisitonRetailCleanPrice > 14935.33 and MMRAcquisitonRetailCleanPrice <= 28208.67) AS B
 ON A.id = B.id 
SET  A.MMRAcquisitonRetailCleanPrice = '(14935.33-28208.67]';

UPDATE `carvana`.training_dataset_2 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_2_bkp WHERE MMRAcquisitonRetailCleanPrice > 14935.33 and MMRAcquisitonRetailCleanPrice <= 28208.67) AS B
 ON A.id = B.id 
SET  A.MMRAcquisitonRetailCleanPrice = '(14935.33-28208.67]';

UPDATE `carvana`.training_dataset_1 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_1_bkp WHERE MMRAcquisitonRetailCleanPrice > 28208.67) AS B
 ON A.id = B.id 
SET  A.MMRAcquisitonRetailCleanPrice = '(28208.67-inf)';

UPDATE `carvana`.training_dataset_2 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_2_bkp WHERE MMRAcquisitonRetailCleanPrice > 28208.67) AS B
 ON A.id = B.id 
SET  A.MMRAcquisitonRetailCleanPrice = '(28208.67-inf)';



/* Update Prices - MMRCurrentAuctionAveragePrice */
UPDATE `carvana`.training_dataset_1 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_1_bkp WHERE MMRCurrentAuctionAveragePrice <= 12153.33) AS B
 ON A.id = B.id 
SET  A.MMRCurrentAuctionAveragePrice = '(-inf-12153.33]';

UPDATE `carvana`.training_dataset_2 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_2_bkp WHERE MMRCurrentAuctionAveragePrice <= 12153.33) AS B
 ON A.id = B.id 
SET  A.MMRCurrentAuctionAveragePrice = '(-inf-12153.33]';

UPDATE `carvana`.training_dataset_1 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_1_bkp WHERE MMRCurrentAuctionAveragePrice > 12153.33 and MMRCurrentAuctionAveragePrice <= 23937.67) AS B
 ON A.id = B.id 
SET  A.MMRCurrentAuctionAveragePrice = '(12153.33-23937.67]';

UPDATE `carvana`.training_dataset_2 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_2_bkp WHERE MMRCurrentAuctionAveragePrice > 12153.33 and MMRCurrentAuctionAveragePrice <= 23937.67) AS B
 ON A.id = B.id 
SET  A.MMRCurrentAuctionAveragePrice = '(12153.33-23937.67]';

UPDATE `carvana`.training_dataset_1 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_1_bkp WHERE MMRCurrentAuctionAveragePrice > 23937.67) AS B
 ON A.id = B.id 
SET  A.MMRCurrentAuctionAveragePrice = '(23937.67-inf)';


UPDATE `carvana`.training_dataset_2 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_2_bkp WHERE MMRCurrentAuctionAveragePrice > 23937.67) AS B
 ON A.id = B.id 
SET  A.MMRCurrentAuctionAveragePrice = '(23937.67-inf)';



/* Update Prices - MMRCurrentAuctionCleanPrice */

UPDATE `carvana`.training_dataset_1 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_1_bkp WHERE MMRCurrentAuctionCleanPrice <= 12615.67) AS B
 ON A.id = B.id 
SET  A.MMRCurrentAuctionCleanPrice = '(-inf-12615.67]';

UPDATE `carvana`.training_dataset_2 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_2_bkp WHERE MMRCurrentAuctionCleanPrice <= 12615.67) AS B
 ON A.id = B.id 
SET  A.MMRCurrentAuctionCleanPrice = '(-inf-12615.67]';

UPDATE `carvana`.training_dataset_1 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_1_bkp WHERE MMRCurrentAuctionCleanPrice > 12615.67 and MMRCurrentAuctionCleanPrice <= 24737.33) AS B
 ON A.id = B.id 
SET  A.MMRCurrentAuctionCleanPrice = '(12615.67-24737.33]';

UPDATE `carvana`.training_dataset_2 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_2_bkp WHERE MMRCurrentAuctionCleanPrice > 12615.67 and MMRCurrentAuctionCleanPrice <= 24737.33) AS B
 ON A.id = B.id 
SET  A.MMRCurrentAuctionCleanPrice = '(12615.67-24737.33]';

UPDATE `carvana`.training_dataset_1 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_1_bkp WHERE MMRCurrentAuctionCleanPrice > 24737.33) AS B
 ON A.id = B.id 
SET  A.MMRCurrentAuctionCleanPrice = '(24737.33-inf)';


UPDATE `carvana`.training_dataset_2 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_2_bkp WHERE MMRCurrentAuctionCleanPrice > 24737.33) AS B
 ON A.id = B.id 
SET  A.MMRCurrentAuctionCleanPrice = '(24737.33-inf)';




/* Update Prices - MMRCurrentRetailAveragePrice */
UPDATE `carvana`.training_dataset_1 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_1_bkp WHERE MMRCurrentRetailAveragePrice <= 13626) AS B
 ON A.id = B.id 
SET  A.MMRCurrentRetailAveragePrice = '(-inf-13626]';

UPDATE `carvana`.training_dataset_2 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_2_bkp WHERE MMRCurrentRetailAveragePrice <= 13626) AS B
 ON A.id = B.id 
SET  A.MMRCurrentRetailAveragePrice = '(-inf-13626]';

UPDATE `carvana`.training_dataset_1 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_1_bkp WHERE MMRCurrentRetailAveragePrice > 13626 and MMRCurrentRetailAveragePrice <= 26353) AS B
 ON A.id = B.id 
SET  A.MMRCurrentRetailAveragePrice = '(13626-26353]';

UPDATE `carvana`.training_dataset_2 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_2_bkp WHERE MMRCurrentRetailAveragePrice > 13626 and MMRCurrentRetailAveragePrice <= 26353) AS B
 ON A.id = B.id 
SET  A.MMRCurrentRetailAveragePrice = '(13626-26353]';

UPDATE `carvana`.training_dataset_1 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_1_bkp WHERE MMRCurrentRetailAveragePrice > 26353) AS B
 ON A.id = B.id 
SET  A.MMRCurrentRetailAveragePrice = '(26353-inf)';


UPDATE `carvana`.training_dataset_2 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_2_bkp WHERE MMRCurrentRetailAveragePrice > 26353) AS B
 ON A.id = B.id 
SET  A.MMRCurrentRetailAveragePrice = '(26353-inf)';




/* Update Prices - MMRCurrentRetailCleanPrice */

UPDATE `carvana`.training_dataset_1 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_1_bkp WHERE MMRCurrentRetailCleanPrice <= 14376.67) AS B
 ON A.id = B.id 
SET  A.MMRCurrentRetailCleanPrice = '(-inf-14376.67]';

UPDATE `carvana`.training_dataset_2 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_2_bkp WHERE MMRCurrentRetailCleanPrice <= 14376.67) AS B
 ON A.id = B.id 
SET  A.MMRCurrentRetailCleanPrice = '(-inf-14376.67]';

UPDATE `carvana`.training_dataset_1 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_1_bkp WHERE MMRCurrentRetailCleanPrice > 14376.67 and MMRCurrentRetailCleanPrice <= 27719.33) AS B
 ON A.id = B.id 
SET  A.MMRCurrentRetailCleanPrice = '(14376.67-27719.33]';

UPDATE `carvana`.training_dataset_2 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_2_bkp WHERE MMRCurrentRetailCleanPrice > 14376.67 and MMRCurrentRetailCleanPrice <= 27719.33) AS B
 ON A.id = B.id 
SET  A.MMRCurrentRetailCleanPrice = '(14376.67-27719.33]';

UPDATE `carvana`.training_dataset_1 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_1_bkp WHERE MMRCurrentRetailCleanPrice > 27719.33) AS B
 ON A.id = B.id 
SET  A.MMRCurrentRetailCleanPrice = '(27719.33-inf)';

UPDATE `carvana`.training_dataset_2 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_2_bkp WHERE MMRCurrentRetailCleanPrice > 27719.33) AS B
 ON A.id = B.id 
SET  A.MMRCurrentRetailCleanPrice = '(27719.33-inf)';



/* Update Prices - VehBCost */

UPDATE `carvana`.training_dataset_1 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_1_bkp WHERE VehBCost <= 15306.33) AS B
 ON A.id = B.id 
SET  A.VehBCost = '(-inf-15306.33]';

UPDATE `carvana`.training_dataset_2 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_2_bkp WHERE VehBCost <= 15306.33) AS B
 ON A.id = B.id 
SET  A.VehBCost = '(-inf-15306.33]';

UPDATE `carvana`.training_dataset_1 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_1_bkp WHERE VehBCost > 15306.33 and VehBCost <= 30387.67) AS B
 ON A.id = B.id 
SET  A.VehBCost = '(15306.33-30387.67]';

UPDATE `carvana`.training_dataset_2 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_2_bkp WHERE VehBCost > 15306.33 and VehBCost <= 30387.67) AS B
 ON A.id = B.id 
SET  A.VehBCost = '(15306.33-30387.67]';

UPDATE `carvana`.training_dataset_1 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_1_bkp WHERE VehBCost > 30387.67) AS B
 ON A.id = B.id 
SET  A.VehBCost = '(30387.67-inf)';


UPDATE `carvana`.training_dataset_2 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_2_bkp WHERE VehBCost > 30387.67) AS B
 ON A.id = B.id 
SET  A.VehBCost = '(30387.67-inf)';




/* Update Prices - WarrantyCost */
UPDATE `carvana`.training_dataset_1 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_1_bkp WHERE WarrantyCost <= 2807.33) AS B
 ON A.id = B.id 
SET  A.WarrantyCost = '(-inf-2807.33]';

UPDATE `carvana`.training_dataset_2 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_2_bkp WHERE WarrantyCost <= 2807.33) AS B
 ON A.id = B.id 
SET  A.WarrantyCost = '(-inf-2807.33]';

UPDATE `carvana`.training_dataset_1 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_1_bkp WHERE WarrantyCost > 2807.33 and WarrantyCost <= 5152.67) AS B
 ON A.id = B.id 
SET  A.WarrantyCost = '(2807.33-5152.67]';

UPDATE `carvana`.training_dataset_2 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_2_bkp WHERE WarrantyCost > 2807.33 and WarrantyCost <= 5152.67) AS B
 ON A.id = B.id 
SET  A.WarrantyCost = '(2807.33-5152.67]';

UPDATE `carvana`.training_dataset_1 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_1_bkp WHERE WarrantyCost > 5152.67) AS B
 ON A.id = B.id 
SET  A.WarrantyCost = '(5152.67-inf)';

UPDATE `carvana`.training_dataset_2 as A
 INNER JOIN ( SELECT id from `carvana`.training_dataset_2_bkp WHERE WarrantyCost > 5152.67) AS B
 ON A.id = B.id 
SET  A.WarrantyCost = '(5152.67-inf)';
