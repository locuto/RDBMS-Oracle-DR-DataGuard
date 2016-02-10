spool step15_add_srls_2_standby_DGEPRODSB.log
set lines 180
set pages 100

SELECT STATUS from GV$INSTANCE;
SELECT GROUP#,THREAD#,SEQUENCE#,ARCHIVED,STATUS FROM GV$STANDBY_LOG;

ALTER DATABASE ADD STANDBY LOGFILE THREAD 1 '+RECO_ODEVX3' size 4096M;
ALTER DATABASE ADD STANDBY LOGFILE THREAD 1 '+RECO_ODEVX3' size 4096M;
ALTER DATABASE ADD STANDBY LOGFILE THREAD 1 '+RECO_ODEVX3' size 4096M;
ALTER DATABASE ADD STANDBY LOGFILE THREAD 1 '+RECO_ODEVX3' size 4096M;
ALTER DATABASE ADD STANDBY LOGFILE THREAD 1 '+RECO_ODEVX3' size 4096M;

--For Standby Site: ODEVX3DB02 , add standby redo logs

ALTER DATABASE ADD STANDBY LOGFILE THREAD 2 '+RECO_ODEVX3' size 4096M;
ALTER DATABASE ADD STANDBY LOGFILE THREAD 2 '+RECO_ODEVX3' size 4096M;
ALTER DATABASE ADD STANDBY LOGFILE THREAD 2 '+RECO_ODEVX3' size 4096M;
ALTER DATABASE ADD STANDBY LOGFILE THREAD 2 '+RECO_ODEVX3' size 4096M;
ALTER DATABASE ADD STANDBY LOGFILE THREAD 2 '+RECO_ODEVX3' size 4096M;

SELECT GROUP#,THREAD#,SEQUENCE#,ARCHIVED,STATUS GV$STANDBY_LOG;
