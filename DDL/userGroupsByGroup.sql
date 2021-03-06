CREATE INDEX "DB2ADMIN"."USER_GROUPS_BY_GROUP"
	ON "DB2ADMIN"."USER_GROUPS"
	("UG_GROUP"		ASC)
	MINPCTUSED 0
	ALLOW REVERSE SCANS
	PAGE SPLIT SYMMETRIC
	COLLECT SAMPLED DETAILED STATISTICS
	COMPRESS NO;

