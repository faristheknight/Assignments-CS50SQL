
-- *** The Lost Letter ***

-- To  find out the id of the address

SELECT * FROM "addresses" WHERE "address" = "900 Somerville Avenue";

-- To find out the details of the package and the package_id

SELECT * FROM "packages" WHERE "from_address_id" = "432";

-- To find out the status or action of the package

SELECT * FROM "scans" WHERE "package_id" = "384";

-- *** The Devious Delivery ***

-- To find the package id

SELECT * FROM "packages" WHERE "from_address_id" IS NULL;

-- To find out the details about the package and current location

SELECT * FROM "scans" WHERE "package_id" = "5098";

-- To find out the current address of the package

SELECT * FROM "addresses" WHERE "id" = "348";

-- *** The Forgotten Gift ***

-- To find the address id

SELECT * FROM "addresses" WHERE "address" = "109 Tileston Street";

-- To find the package id and more information about the package

SELECT * FROM "packages" WHERE "from_address_id" = "9873";

-- To find out about the action and details

SELECT * FROM "scans" WHERE "package_id" = "9523";

-- To find out about the driver

SELECT * FROM "drivers" WHERE "id" = "17";
