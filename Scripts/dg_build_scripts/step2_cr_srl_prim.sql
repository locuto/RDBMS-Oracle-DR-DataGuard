spool step2_cr_srl_prim.log
set lines 180
set pages 100

--number of SRLs is: (number of online redo logs per primary instance + 1) * number of instances. Therefore a 2 node RAC database will have 4 redo groups per instance, hence number of SRLs needed (4 + 1 ) X 2 = 10
--Create SRLs the same size as redo log members.

SELECT STATUS from V$INSTANCE;
SELECT GROUP#,THREAD#,SEQUENCE#,ARCHIVED,STATUS
FROM V$STANDBY_LOG;

--For Standby Site: ODEVX3DB01 , add standby redo logs
ALTER DATABASE ADD STANDBY LOGFILE THREAD 1 ‘+RECO_ODEVX2’ size 4096M;
ALTER DATABASE ADD STANDBY LOGFILE THREAD 1 ‘+RECO_ODEVX2’ size 4096M;
ALTER DATABASE ADD STANDBY LOGFILE THREAD 1 ‘+RECO_ODEVX2’ size 4096M;
ALTER DATABASE ADD STANDBY LOGFILE THREAD 1 ‘+RECO_ODEVX2’ size 4096M;
ALTER DATABASE ADD STANDBY LOGFILE THREAD 1 ‘+RECO_ODEVX2’ size 4096M;

--For Standby Site: ODEVX3DB02 , add standby redo logs

ALTER DATABASE ADD STANDBY LOGFILE THREAD 2 ‘+RECO_ODEVX2’ size 4096M;
ALTER DATABASE ADD STANDBY LOGFILE THREAD 2 ‘+RECO_ODEVX2’ size 4096M;
ALTER DATABASE ADD STANDBY LOGFILE THREAD 2 ‘+RECO_ODEVX2’ size 4096M;
ALTER DATABASE ADD STANDBY LOGFILE THREAD 2 ‘+RECO_ODEVX2’ size 4096M;
ALTER DATABASE ADD STANDBY LOGFILE THREAD 2 ‘+RECO_ODEVX2’ size 4096M;

spool off
