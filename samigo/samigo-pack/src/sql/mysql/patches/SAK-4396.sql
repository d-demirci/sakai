alter table SAM_ATTACHMENT_T drop foreign key FK99FA8CB8CAC2365B;
alter table SAM_ATTACHMENT_T drop foreign key FK99FA8CB83288DBBD;
alter table SAM_ATTACHMENT_T drop foreign key FK99FA8CB870CE2BD;
alter table SAM_PUBLISHEDATTACHMENT_T drop foreign key FK270998869482C945;
alter table SAM_PUBLISHEDATTACHMENT_T drop foreign key FK2709988631446627;
alter table SAM_PUBLISHEDATTACHMENT_T drop foreign key FK27099886895D4813;
drop table if exists SAM_ATTACHMENT_T;
drop table if exists SAM_PUBLISHEDATTACHMENT_T;
create table SAM_ATTACHMENT_T (ATTACHMENTID bigint not null auto_increment, ATTACHMENTTYPE varchar(255) not null, RESOURCEID varchar(255), FILENAME varchar(255), MIMETYPE varchar(80), FILESIZE integer, DESCRIPTION varchar(4000), LOCATION varchar(4000), ISLINK integer, STATUS integer not null, CREATEDBY varchar(36) not null, CREATEDDATE datetime not null, LASTMODIFIEDBY varchar(36) not null, LASTMODIFIEDDATE datetime not null, ASSESSMENTID bigint, SECTIONID bigint, ITEMID bigint, primary key (ATTACHMENTID));
create table SAM_PUBLISHEDATTACHMENT_T (ATTACHMENTID bigint not null auto_increment, ATTACHMENTTYPE varchar(255) not null, RESOURCEID varchar(255), FILENAME varchar(255), MIMETYPE varchar(80), FILESIZE integer, DESCRIPTION varchar(4000), LOCATION varchar(4000), ISLINK integer, STATUS integer not null, CREATEDBY varchar(36) not null, CREATEDDATE datetime not null, LASTMODIFIEDBY varchar(36) not null, LASTMODIFIEDDATE datetime not null, ASSESSMENTID bigint, SECTIONID bigint, ITEMID bigint, primary key (ATTACHMENTID));
alter table SAM_ATTACHMENT_T add index FK99FA8CB8CAC2365B (ASSESSMENTID), add constraint FK99FA8CB8CAC2365B foreign key (ASSESSMENTID) references SAM_ASSESSMENTBASE_T (ID);
alter table SAM_ATTACHMENT_T add index FK99FA8CB83288DBBD (ITEMID), add constraint FK99FA8CB83288DBBD foreign key (ITEMID) references SAM_ITEM_T (ITEMID);
alter table SAM_ATTACHMENT_T add index FK99FA8CB870CE2BD (SECTIONID), add constraint FK99FA8CB870CE2BD foreign key (SECTIONID) references SAM_SECTION_T (SECTIONID);
alter table SAM_PUBLISHEDATTACHMENT_T add index FK270998869482C945 (ASSESSMENTID), add constraint FK270998869482C945 foreign key (ASSESSMENTID) references SAM_PUBLISHEDASSESSMENT_T (ID);
alter table SAM_PUBLISHEDATTACHMENT_T add index FK2709988631446627 (ITEMID), add constraint FK2709988631446627 foreign key (ITEMID) references SAM_PUBLISHEDITEM_T (ITEMID);
alter table SAM_PUBLISHEDATTACHMENT_T add index FK27099886895D4813 (SECTIONID), add constraint FK27099886895D4813 foreign key (SECTIONID) references SAM_PUBLISHEDSECTION_T (SECTIONID);
