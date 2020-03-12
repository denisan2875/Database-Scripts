CREATE OR REPLACE VIEW ifrmaximo.viw_os_fechada (
   rowstamp,
   wonum,
   parent,
   status,
   statusdate,
   worktype,
   leadcraft,
   description,
   eqnum,
   location,
   jpnum,
   faildate,
   changeby,
   changedate,
   estdur,
   estlabhrs,
   estmatcost,
   estlabcost,
   esttoolcost,
   pmnum,
   actlabhrs,
   actmatcost,
   actlabcost,
   acttoolcost,
   haschildren,
   outlabcost,
   outmatcost,
   outtoolcost,
   historyflag,
   contract,
   wopriority,
   wopm6,
   wopm7,
   targcompdate,
   targstartdate,
   woeq1,
   woeq2,
   woeq3,
   woeq4,
   woeq5,
   woeq6,
   woeq7,
   woeq8,
   woeq9,
   woeq10,
   woeq11,
   woeq12,
   wo1,
   wo2,
   wo3,
   wo4,
   wo5,
   wo6,
   wo7,
   wo8,
   wo9,
   wo10,
   ldkey,
   reportedby,
   reportdate,
   phone,
   problemcode,
   calendar,
   interruptable,
   downtime,
   actstart,
   actfinish,
   schedstart,
   schedfinish,
   remdur,
   crewid,
   supervisor,
   woeq13,
   woeq14,
   wopm1,
   wopm2,
   wopm3,
   wopm4,
   wopm5,
   wojp1,
   wojp2,
   wojp3,
   wojp4,
   wojp5,
   wol1,
   wol2,
   wol3,
   wol4,
   wolablnk,
   respondby,
   eqlocpriority,
   calcpriority,
   chargestore,
   failurecode,
   wolo1,
   wolo2,
   wolo3,
   wolo4,
   wolo5,
   wolo6,
   wolo7,
   wolo8,
   wolo9,
   wolo10,
   glaccount,
   estservcost,
   actservcost,
   disabled,
   estatapprlabhrs,
   estatapprlabcost,
   estatapprmatcost,
   estatapprtoolcost,
   estatapprservcost,
   wosequence,
   hasfollowupwork,
   worts1,
   worts2,
   worts3,
   worts4,
   worts5,
   wfid,
   wfactive,
   followupfromwonum,
   pmduedate,
   pmextdate,
   pmnextduedate,
   woassignmntqueueid,
   worklocation,
   wowq1,
   wowq2,
   wowq3,
   wojp6,
   wojp7,
   wojp8,
   wojp9,
   wojp10,
   wo11,
   wo12,
   wo13,
   wo14,
   wo15,
   wo16,
   wo17,
   wo18,
   wo19,
   wo20,
   sourcesysid,
   ownersysid,
   externalrefid,
   apiseq,
   interid,
   migchangeid,
   sendersysid,
   expdone,
   fincntrlid,
   generatedforpo,
   genforpolineid,
   orgid,
   siteid,
   taskid,
   inspector,
   measurementvalue,
   measuredate,
   observation,
   pointnum,
   wojo1,
   wojo2,
   wojo3,
   wojo4,
   wojo5,
   wojo6,
   wojo7,
   wojo8,
   changechildstatus,
   istask )
AS
SELECT rowstamp,
       wonum,
       PARENT,
       status,
       statusdate,
       worktype,
       leadcraft,
       description,
       eqnum,
       location,
       jpnum,
       faildate,
       changeby,
       changedate,
       estdur,
       estlabhrs,
       estmatcost,
       estlabcost,
       esttoolcost,
       pmnum,
       actlabhrs,
       actmatcost,
       actlabcost,
       acttoolcost,
       haschildren,
       outlabcost,
       outmatcost,
       outtoolcost,
       historyflag,
       contract,
       wopriority,
       wopm6,
       wopm7,
       targcompdate,
       targstartdate,
       woeq1,
       woeq2,
       woeq3,
       woeq4,
       woeq5,
       woeq6,
       woeq7,
       woeq8,
       woeq9,
       woeq10,
       woeq11,
       woeq12,
       wo1,
       wo2,
       wo3,
       wo4,
       wo5,
       wo6,
       wo7,
       wo8,
       wo9,
       wo10,
       ldkey,
       reportedby,
       reportdate,
       phone,
       problemcode,
       calendar,
       interruptable,
       downtime,
       actstart,
       actfinish,
       schedstart,
       schedfinish,
       remdur,
       crewid,
       supervisor,
       woeq13,
       woeq14,
       wopm1,
       wopm2,
       wopm3,
       wopm4,
       wopm5,
       wojp1,
       wojp2,
       wojp3,
       wojp4,
       wojp5,
       wol1,
       wol2,
       wol3,
       wol4,
       wolablnk,
       respondby,
       eqlocpriority,
       calcpriority,
       chargestore,
       failurecode,
       wolo1,
       wolo2,
       wolo3,
       wolo4,
       wolo5,
       wolo6,
       wolo7,
       wolo8,
       wolo9,
       wolo10,
       glaccount,
       estservcost,
       actservcost,
       disabled,
       estatapprlabhrs,
       estatapprlabcost,
       estatapprmatcost,
       estatapprtoolcost,
       estatapprservcost,
       wosequence,
       hasfollowupwork,
       worts1,
       worts2,
       worts3,
       worts4,
       worts5,
       wfid,
       wfactive,
       followupfromwonum,
       pmduedate,
       pmextdate,
       pmnextduedate,
       woassignmntqueueid,
       worklocation,
       wowq1,
       wowq2,
       wowq3,
       wojp6,
       wojp7,
       wojp8,
       wojp9,
       wojp10,
       wo11,
       wo12,
       wo13,
       wo14,
       wo15,
       wo16,
       wo17,
       wo18,
       wo19,
       wo20,
       sourcesysid,
       ownersysid,
       externalrefid,
       apiseq,
       interid,
       migchangeid,
       sendersysid,
       expdone,
       fincntrlid,
       generatedforpo,
       genforpolineid,
       orgid,
       siteid,
       taskid,
       inspector,
       measurementvalue,
       measuredate,
       observation,
       pointnum,
       wojo1,
       wojo2,
       wojo3,
       wojo4,
       wojo5,
       wojo6,
       wojo7,
       wojo8,
       changechildstatus,
       istask
  FROM ifrmaximo.workorder
 WHERE status = 'FECHADA'
   AND istask = 'N'
   AND siteid = 'INFRAERO'
   AND orgid = 'INFRAERO'
/


-- End of DDL Script for View IFRMAXIMO.VIW_OS_FECHADA


