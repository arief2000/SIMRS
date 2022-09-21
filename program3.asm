BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.LayoutPemeriksaan ADD
	Memo text NULL
GO
ALTER TABLE dbo.LayoutPemeriksaan SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.LayoutPemeriksaan', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.LayoutPemeriksaan', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.LayoutPemeriksaan', 'Object', 'CONTROL') as Contr_Per 
GO

SELECT * FROM GrupLayout

select * from ruang where JenisRuang='PENUNJANGMEDIS'

