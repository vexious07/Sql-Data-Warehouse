/*
THIS CREATES A STORED PROCEDURE OF A LOAD THAT ADDS DATA TO THE BRONZE DATABASES
IT ALSO CHECKS FOR ANY ERRORS IN THE COAD ASWELL AS HAVING VISUSAL REPRESNTATION OF WHEN EACH LAYER IS BEING LOADED IN	
*/

CREATE OR ALTER PROCEDURE bronze.load_bronze AS
BEGIN
	BEGIN TRY
		print'=================================';
		print 'loading bronze layer';
		print'=================================';
		print'================================='
		print'loading crm layer'
		print'================================='
		TRUNCATE TABLE bronze.crm_cost_info;

		BULK INSERT bronze.crm_cost_info
		from 'C:\Users\asus\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\cust_info.csv'
		with(
			firstrow = 2,
			FIELDTERMINATOR = ',',
			TABLOCK
		);
	
		/*TRUNCATE TABLE bronze.crm_sales_details;

		BULK INSERT bronze.crm_sales_details
		from 'C:\Users\asus\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\sales_details.csv'
		with(
			firstrow = 2,
			FIELDTERMINATOR = ',',
			TABLOCK
		)

		*/
		TRUNCATE TABLE bronze.crm_prd_info;

		BULK INSERT bronze.crm_prd_info
		from 'C:\Users\asus\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
		with(
			firstrow = 2,
			FIELDTERMINATOR = ',',
			TABLOCK
		);
		print'=================================';
		print'loading erp tables';
		print'=================================';

		TRUNCATE TABLE bronze.erp_cust_AZ12;

		BULK INSERT bronze.erp_cust_AZ12
		from 'C:\Users\asus\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\cust_AZ12.csv'
		with(
			firstrow = 2,
			FIELDTERMINATOR = ',',
			TABLOCK
		);

		TRUNCATE TABLE bronze.erp_LOC_A101;

		BULK INSERT bronze.erp_LOC_A101
		from 'C:\Users\asus\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\LOC_A101.csv'
		with(
			firstrow = 2,
			FIELDTERMINATOR = ',',
			TABLOCK
		);

		TRUNCATE TABLE bronze.erp_PX_CAT_G1V2;

		BULK INSERT bronze.erp_PX_CAT_G1V2
		from 'C:\Users\asus\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\PX_CAT_G1V2.csv'
		with(
			firstrow = 2,
			FIELDTERMINATOR = ',',
			TABLOCK
		);
		print'================================='
		print'Tables Loaded!'
		print'================================='
	END TRY
	BEGIN CATCH
	END CATCH
END
