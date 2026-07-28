/* THIS CREATES ALL THE TABLES FOR THE  BRONZE LAYER */


IF OBJECT_ID ('bronze.crm_prd_info', 'U') IS NOT NULL
	DROP TABLE	bronze.crm_prd_info	

CREATE TABLE bronze.crm_prd_info(
prd_id int,
prd_key nvarchar(50),
prd_nm nvarchar(50),
prd_cost int,
prd_line nvarchar(50),
prd_start_dt date,
prd_end_dt date
);

IF OBJECT_ID ('bronze.crm_sales_details', 'U') IS NOT NULL
	DROP TABLE	bronze.crm_sales_details	

CREATE TABLE bronze.crm_sales_details(
sls_ord_num int,
sls_prd_key nvarchar(50),
sls_cust_id int,
sls_order_dt int,
sls_ship_dt int,
sls_due_dt int,
sls_sales int,
sls_quantity int,
sls_price int
);

IF OBJECT_ID ('bronze.erp_cust_AZ12', 'U') IS NOT NULL
	DROP TABLE	bronze.erp_cust_AZ12	

CREATE TABLE bronze.erp_cust_AZ12(
CID nvarchar(50),
BDATE nvarchar(50),
GEN nvarchar(50)
);

IF OBJECT_ID ('bronze.erp_LOC_A101', 'U') IS NOT NULL
	DROP TABLE	bronze.erp_LOC_A101	

CREATE TABLE bronze.erp_LOC_A101(
CID nvarchar(50),
CNTRY nvarchar(50)
);

IF OBJECT_ID ('bronze.erp_PX_CAT_G1V2', 'U') IS NOT NULL
	DROP TABLE	bronze.erp_PX_CAT_G1V2	

CREATE TABLE bronze.erp_PX_CAT_G1V2(
ID nvarchar(50),
Cat nvarchar(50),
SUBCAT nvarchar(50),
MAINTENANCE nvarchar(50)
);
