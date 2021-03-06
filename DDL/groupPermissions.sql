CREATE TABLE "DB2ADMIN"."GROUP_PERMISSIONS" (
		"GP_GROUP_TYPE" INTEGER NOT NULL, 
		"GP_PERMISSION" INTEGER NOT NULL, 
		"GP_RRN" BIGINT NOT NULL GENERATED ALWAYS AS IDENTITY ( START WITH 1 INCREMENT BY 1 MINVALUE -9223372036854775808 MAXVALUE 9223372036854775807 NO CYCLE CACHE 20 NO ORDER )
	)
	ORGANIZE BY ROW
	DATA CAPTURE NONE 
	IN "USERSPACE1"
	COMPRESS NO;

CREATE INDEX "DB2ADMIN"."GROUP_PERMISSIONS_BY_GROUP_TYPE"
	ON "DB2ADMIN"."GROUP_PERMISSIONS"
	("GP_GROUP_TYPE"		ASC)
	MINPCTUSED 0
	ALLOW REVERSE SCANS
	PAGE SPLIT SYMMETRIC
	COLLECT SAMPLED DETAILED STATISTICS
	COMPRESS NO;

ALTER TABLE "DB2ADMIN"."GROUP_PERMISSIONS" ADD CONSTRAINT "SQL171121175251040" PRIMARY KEY
	("GP_RRN");

COMMENT ON TABLE "DB2ADMIN"."GROUP_PERMISSIONS" IS
'Permissions that each group can have';

