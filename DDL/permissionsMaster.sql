
CREATE TABLE "DB2ADMIN"."PERMISSIONS_MASTER" (
		"PM_TYPE" INTEGER NOT NULL, 
		"PM_DESCRIPTION" VARCHAR(256 OCTETS) NOT NULL, 
		"PM_RRN" BIGINT NOT NULL GENERATED ALWAYS AS IDENTITY ( START WITH 1 INCREMENT BY 1 MINVALUE -9223372036854775808 MAXVALUE 9223372036854775807 NO CYCLE CACHE 20 NO ORDER )
	)
	ORGANIZE BY ROW
	DATA CAPTURE NONE 
	IN "USERSPACE1"
	COMPRESS NO;

ALTER TABLE "DB2ADMIN"."PERMISSIONS_MASTER" ADD CONSTRAINT "SQL171121175249720" PRIMARY KEY
	("PM_TYPE");
