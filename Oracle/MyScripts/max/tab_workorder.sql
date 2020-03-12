-- Start of DDL Script for Table IFRMAXIMO.WORKORDER
-- Generated 8-dez-2003 14:32:17 from IFRMAXIMO@MAQUINA4.WORLD

CREATE TABLE workorder
    (rowstamp                       VARCHAR2(40) NOT NULL,
    wonum                          VARCHAR2(18) NOT NULL,
    parent                         VARCHAR2(18),
    status                         VARCHAR2(8) NOT NULL,
    statusdate                     DATE NOT NULL,
    worktype                       VARCHAR2(7),
    leadcraft                      VARCHAR2(12),
    description                    VARCHAR2(200),
    eqnum                          VARCHAR2(12),
    location                       VARCHAR2(18),
    jpnum                          VARCHAR2(30),
    faildate                       DATE,
    changeby                       VARCHAR2(18),
    changedate                     DATE,
    estdur                         FLOAT(126) NOT NULL,
    estlabhrs                      FLOAT(126) NOT NULL,
    estmatcost                     NUMBER(10,2) NOT NULL,
    estlabcost                     NUMBER(10,2) NOT NULL,
    esttoolcost                    NUMBER(10,2) NOT NULL,
    pmnum                          VARCHAR2(16),
    actlabhrs                      FLOAT(126) NOT NULL,
    actmatcost                     NUMBER(10,2) NOT NULL,
    actlabcost                     NUMBER(10,2) NOT NULL,
    acttoolcost                    NUMBER(10,2) NOT NULL,
    haschildren                    VARCHAR2(1) NOT NULL,
    outlabcost                     NUMBER(10,2) NOT NULL,
    outmatcost                     NUMBER(10,2) NOT NULL,
    outtoolcost                    NUMBER(10,2) NOT NULL,
    historyflag                    VARCHAR2(1) NOT NULL,
    contract                       VARCHAR2(10),
    wopriority                     NUMBER,
    wopm6                          VARCHAR2(25),
    wopm7                          VARCHAR2(4),
    targcompdate                   DATE,
    targstartdate                  DATE,
    woeq1                          VARCHAR2(1),
    woeq2                          VARCHAR2(50),
    woeq3                          VARCHAR2(1),
    woeq4                          VARCHAR2(1),
    woeq5                          VARCHAR2(1),
    woeq6                          VARCHAR2(1),
    woeq7                          NUMBER(15,2),
    woeq8                          VARCHAR2(3),
    woeq9                          VARCHAR2(10),
    woeq10                         VARCHAR2(3),
    woeq11                         VARCHAR2(3),
    woeq12                         VARCHAR2(3),
    wo1                            VARCHAR2(12),
    wo2                            VARCHAR2(120),
    wo3                            FLOAT(126),
    wo4                            NUMBER(10,2),
    wo5                            NUMBER(10,2),
    wo6                            NUMBER(10,2),
    wo7                            NUMBER(10,2),
    wo8                            NUMBER(10,2),
    wo9                            VARCHAR2(4),
    wo10                           NUMBER(10,2),
    ldkey                          NUMBER,
    reportedby                     VARCHAR2(18),
    reportdate                     DATE,
    phone                          VARCHAR2(20),
    problemcode                    VARCHAR2(8),
    calendar                       VARCHAR2(8),
    interruptable                  VARCHAR2(1) NOT NULL,
    downtime                       VARCHAR2(1) NOT NULL,
    actstart                       DATE,
    actfinish                      DATE,
    schedstart                     DATE,
    schedfinish                    DATE,
    remdur                         FLOAT(126),
    crewid                         VARCHAR2(12),
    supervisor                     VARCHAR2(12),
    woeq13                         DATE,
    woeq14                         NUMBER(15,2),
    wopm1                          VARCHAR2(10),
    wopm2                          VARCHAR2(10),
    wopm3                          VARCHAR2(10),
    wopm4                          NUMBER(10,2),
    wopm5                          VARCHAR2(10),
    wojp1                          VARCHAR2(10),
    wojp2                          VARCHAR2(10),
    wojp3                          VARCHAR2(10),
    wojp4                          NUMBER(10,2),
    wojp5                          VARCHAR2(10),
    wol1                           VARCHAR2(10),
    wol2                           VARCHAR2(10),
    wol3                           NUMBER(10,2),
    wol4                           DATE,
    wolablnk                       VARCHAR2(12),
    respondby                      DATE,
    eqlocpriority                  NUMBER,
    calcpriority                   NUMBER,
    chargestore                    VARCHAR2(1) NOT NULL,
    failurecode                    VARCHAR2(8),
    wolo1                          VARCHAR2(10),
    wolo2                          VARCHAR2(10),
    wolo3                          VARCHAR2(10),
    wolo4                          VARCHAR2(10),
    wolo5                          VARCHAR2(10),
    wolo6                          NUMBER(10,2),
    wolo7                          DATE,
    wolo8                          NUMBER(15,2),
    wolo9                          VARCHAR2(10),
    wolo10                         NUMBER,
    glaccount                      VARCHAR2(20),
    estservcost                    NUMBER(10,2) NOT NULL,
    actservcost                    NUMBER(10,2) NOT NULL,
    disabled                       VARCHAR2(1) NOT NULL,
    estatapprlabhrs                FLOAT(126) NOT NULL,
    estatapprlabcost               NUMBER(10,2) NOT NULL,
    estatapprmatcost               NUMBER(10,2) NOT NULL,
    estatapprtoolcost              NUMBER(10,2) NOT NULL,
    estatapprservcost              NUMBER(10,2) NOT NULL,
    wosequence                     NUMBER,
    hasfollowupwork                VARCHAR2(1) NOT NULL,
    worts1                         VARCHAR2(10),
    worts2                         VARCHAR2(10),
    worts3                         VARCHAR2(10),
    worts4                         DATE,
    worts5                         NUMBER(15,2),
    wfid                           NUMBER,
    wfactive                       VARCHAR2(1) NOT NULL,
    followupfromwonum              VARCHAR2(18),
    pmduedate                      DATE,
    pmextdate                      DATE,
    pmnextduedate                  DATE,
    woassignmntqueueid             VARCHAR2(25),
    worklocation                   VARCHAR2(18),
    wowq1                          VARCHAR2(1),
    wowq2                          VARCHAR2(1),
    wowq3                          VARCHAR2(1),
    wojp6                          VARCHAR2(10),
    wojp7                          VARCHAR2(10),
    wojp8                          VARCHAR2(10),
    wojp9                          NUMBER(10,2),
    wojp10                         DATE,
    wo11                           NUMBER(10,2),
    wo12                           NUMBER(10,2),
    wo13                           VARCHAR2(3),
    wo14                           VARCHAR2(3),
    wo15                           NUMBER(10,2),
    wo16                           NUMBER(10,2),
    wo17                           FLOAT(126),
    wo18                           FLOAT(126),
    wo19                           FLOAT(126),
    wo20                           VARCHAR2(4),
    sourcesysid                    VARCHAR2(10),
    ownersysid                     VARCHAR2(10),
    externalrefid                  VARCHAR2(10),
    apiseq                         VARCHAR2(50),
    interid                        VARCHAR2(50),
    migchangeid                    VARCHAR2(50),
    sendersysid                    VARCHAR2(50),
    expdone                        VARCHAR2(25),
    fincntrlid                     VARCHAR2(8),
    generatedforpo                 VARCHAR2(8),
    genforpolineid                 NUMBER,
    orgid                          VARCHAR2(8) NOT NULL,
    siteid                         VARCHAR2(8) NOT NULL,
    taskid                         NUMBER,
    inspector                      VARCHAR2(12),
    measurementvalue               NUMBER(15,3),
    measuredate                    DATE,
    observation                    VARCHAR2(8),
    pointnum                       VARCHAR2(16),
    wojo1                          VARCHAR2(10),
    wojo2                          VARCHAR2(10),
    wojo3                          VARCHAR2(10),
    wojo4                          NUMBER(15,2),
    wojo5                          VARCHAR2(10),
    wojo6                          VARCHAR2(10),
    wojo7                          VARCHAR2(10),
    wojo8                          VARCHAR2(10),
    changechildstatus              VARCHAR2(1) NOT NULL,
    istask                         VARCHAR2(1) NOT NULL)
  PCTFREE     10
  PCTUSED     40
  INITRANS    1
  MAXTRANS    255
  TABLESPACE  tsd_maximo
  STORAGE   (
    INITIAL     65536
    MINEXTENTS  1
    MAXEXTENTS  2147483645
  )
/

-- Grants for Table
GRANT SELECT ON workorder TO max_rel_01
/
GRANT SELECT ON workorder TO i4123837
/
GRANT SELECT ON workorder TO i3940314
/
GRANT SELECT ON workorder TO i9419583
/
GRANT UPDATE ON workorder TO i9419583
/
GRANT SELECT ON workorder TO i9434688
/
GRANT SELECT ON workorder TO i3944989
/
GRANT SELECT ON workorder TO i1414939
/
GRANT SELECT ON workorder TO i9543780
/
GRANT SELECT ON workorder TO i9530106
/
GRANT SELECT ON workorder TO i4221446
/
GRANT SELECT ON workorder TO i9602009
/
GRANT SELECT ON workorder TO i4157715
/
GRANT SELECT ON workorder TO i4258413
/
GRANT SELECT ON workorder TO i4259704
/
GRANT SELECT ON workorder TO i9402803
/
GRANT SELECT ON workorder TO i9085685
/
GRANT SELECT ON workorder TO i1556324
/
GRANT SELECT ON workorder TO i1523443
/
GRANT SELECT ON workorder TO i9507294
/
GRANT SELECT ON workorder TO i1556422
/
GRANT SELECT ON workorder TO i1460833
/
GRANT SELECT ON workorder TO i1558416
/
GRANT SELECT ON workorder TO i9651287
/
GRANT SELECT ON workorder TO i9567760
/
GRANT SELECT ON workorder TO i4719696
/
GRANT SELECT ON workorder TO i4104450
/
GRANT SELECT ON workorder TO i1472921
/
GRANT SELECT ON workorder TO i1073938
/
GRANT SELECT ON workorder TO i1702640
/
GRANT SELECT ON workorder TO i6711315
/
GRANT SELECT ON workorder TO i6660107
/
GRANT SELECT ON workorder TO i9561484
/
GRANT SELECT ON workorder TO i4172036
/
GRANT SELECT ON workorder TO i9700991
/
GRANT SELECT ON workorder TO i0174152
/
GRANT SELECT ON workorder TO i6035722
/
GRANT SELECT ON workorder TO i0208947
/
GRANT SELECT ON workorder TO i4187998
/
GRANT SELECT ON workorder TO i0805436
/
GRANT SELECT ON workorder TO i9472874
/
GRANT SELECT ON workorder TO i9457671
/
GRANT SELECT ON workorder TO i9457573
/
GRANT SELECT ON workorder TO i9102818
/
GRANT SELECT ON workorder TO i1940032
/
GRANT SELECT ON workorder TO i1949496
/
GRANT SELECT ON workorder TO i1943121
/
GRANT SELECT ON workorder TO i1937603
/
GRANT SELECT ON workorder TO i9548569
/
GRANT SELECT ON workorder TO i1939892
/
GRANT SELECT ON workorder TO i1936410
/
GRANT SELECT ON workorder TO i4187115
/
GRANT SELECT ON workorder TO i1951123
/
GRANT SELECT ON workorder TO i1929209
/
GRANT SELECT ON workorder TO i9567270
/
GRANT SELECT ON workorder TO i4182032
/
GRANT SELECT ON workorder TO i4121941
/
GRANT SELECT ON workorder TO i4141737
/
GRANT SELECT ON workorder TO i4110654
/
GRANT SELECT ON workorder TO i9595558
/
GRANT SELECT ON workorder TO i1455724
/
GRANT SELECT ON workorder TO i3943403
/
GRANT SELECT ON workorder TO i9513596
/
GRANT SELECT ON workorder TO i9535582
/
GRANT SELECT ON workorder TO i9512795
/
GRANT SELECT ON workorder TO i9410903
/
GRANT SELECT ON workorder TO i9400221
/
GRANT SELECT ON workorder TO i9400711
/
GRANT SELECT ON workorder TO i9202519
/
GRANT SELECT ON workorder TO i9401708
/
GRANT SELECT ON workorder TO i3943698
/
GRANT SELECT ON workorder TO i9557764
/
GRANT SELECT ON workorder TO i3932018
/
GRANT SELECT ON workorder TO i3930906
/
GRANT SELECT ON workorder TO i3937788
/
GRANT SELECT ON workorder TO i4128626
/
GRANT SELECT ON workorder TO i4199498
/
GRANT SELECT ON workorder TO i4733411
/
GRANT SELECT ON workorder TO i9402901
/
GRANT SELECT ON workorder TO i9400319
/
GRANT SELECT ON workorder TO i9429285
/
GRANT SELECT ON workorder TO i9566763
/
GRANT SELECT ON workorder TO i3947686
/
GRANT SELECT ON workorder TO i9527286
/
GRANT SELECT ON workorder TO i9609675
/
GRANT SELECT ON workorder TO i9402509
/
GRANT SELECT ON workorder TO i9514004
/
GRANT SELECT ON workorder TO i9544875
/
GRANT SELECT ON workorder TO i3317041
/
GRANT SELECT ON workorder TO i9526779
/
GRANT SELECT ON workorder TO i9520404
/
GRANT SELECT ON workorder TO i9527188
/
GRANT SELECT ON workorder TO i9602303
/
GRANT SELECT ON workorder TO i9529182
/
GRANT SELECT ON workorder TO i9553972
/
GRANT SELECT ON workorder TO i9554479
/
GRANT SELECT ON workorder TO i9612692
/
GRANT SELECT ON workorder TO i9706189
/
GRANT SELECT ON workorder TO i6637491
/
GRANT SELECT ON workorder TO i2323251
/
GRANT SELECT ON workorder TO i0169141
/
GRANT SELECT ON workorder TO i9719960
/
GRANT SELECT ON workorder TO i2316736
/
GRANT SELECT ON workorder TO i3294807
/
GRANT SELECT ON workorder TO i3297995
/
GRANT SELECT ON workorder TO i3412639
/
GRANT UPDATE ON workorder TO i3412639
/
GRANT SELECT ON workorder TO i2627028
/
GRANT SELECT ON workorder TO i9578557
/
GRANT SELECT ON workorder TO i3265228
/
GRANT SELECT ON workorder TO i9618968
/
GRANT SELECT ON workorder TO i9619083
/
GRANT SELECT ON workorder TO i4104254
/
GRANT SELECT ON workorder TO i0727427
/
GRANT SELECT ON workorder TO i9431206
/
GRANT SELECT ON workorder TO i2349225
/
GRANT SELECT ON workorder TO i0137551
/
GRANT SELECT ON workorder TO i3299499
/
GRANT SELECT ON workorder TO i3294317
/
GRANT SELECT ON workorder TO i3243830
/
GRANT SELECT ON workorder TO i0173155
/
GRANT SELECT ON workorder TO i2369707
/
GRANT SELECT ON workorder TO i3261044
/
GRANT SELECT ON workorder TO i9532395
/
GRANT SELECT ON workorder TO i1941519
/
GRANT SELECT ON workorder TO i4123543
/
GRANT SELECT ON workorder TO i4261332
/
GRANT SELECT ON workorder TO i9055304
/
GRANT SELECT ON workorder TO i0632835
/
GRANT SELECT ON workorder TO i9607877
/
GRANT SELECT ON workorder TO i3932999
/
GRANT SELECT ON workorder TO i9530204
/
GRANT SELECT ON workorder TO i9637865
/
GRANT SELECT ON workorder TO i4183029
/
GRANT SELECT ON workorder TO i3949386
/
GRANT SELECT ON workorder TO i9661087
/
GRANT SELECT ON workorder TO i9609087
/
GRANT SELECT ON workorder TO i6811997
/
GRANT SELECT ON workorder TO i6634205
/
GRANT UPDATE ON workorder TO i6634205
/
GRANT SELECT ON workorder TO i9524295
/
GRANT UPDATE ON workorder TO i9524295
/
GRANT SELECT ON workorder TO i9647371
/
GRANT SELECT ON workorder TO i4193515
/
GRANT SELECT ON workorder TO i4231736
/
GRANT SELECT ON workorder TO i4223440
/
GRANT SELECT ON workorder TO i4124050
/
GRANT SELECT ON workorder TO i9086094
/
GRANT SELECT ON workorder TO i9447871
/
GRANT SELECT ON workorder TO i9652872
/
GRANT SELECT ON workorder TO i9577266
/
GRANT SELECT ON workorder TO i9544581
/
GRANT SELECT ON workorder TO i3236727
/
GRANT SELECT ON workorder TO i1071748
/
GRANT SELECT ON workorder TO i3273720
/
GRANT SELECT ON workorder TO i9606292
/
GRANT SELECT ON workorder TO i9660776
/
GRANT SELECT ON workorder TO i3264035
/
GRANT SELECT ON workorder TO i9686946
/
GRANT SELECT ON workorder TO i0598602
/
GRANT SELECT ON workorder TO i4256223
/
GRANT SELECT ON workorder TO i4256321
/
GRANT SELECT ON workorder TO i4256811
/
GRANT SELECT ON workorder TO i4259116
/
GRANT SELECT ON workorder TO i4735994
/
GRANT SELECT ON workorder TO i4145823
/
GRANT SELECT ON workorder TO i0669018
/
GRANT SELECT ON workorder TO i0209650
/
GRANT SELECT ON workorder TO i0624441
/
GRANT SELECT ON workorder TO i0608045
/
GRANT SELECT ON workorder TO i0596020
/
GRANT SELECT ON workorder TO i0608339
/
GRANT SELECT ON workorder TO i9025414
/
GRANT SELECT ON workorder TO i9003820
/
GRANT SELECT ON workorder TO i9028896
/
GRANT SELECT ON workorder TO i9028994
/
GRANT SELECT ON workorder TO i9034707
/
GRANT SELECT ON workorder TO i9743770
/
GRANT SELECT ON workorder TO i1553823
/
GRANT SELECT ON workorder TO i0116268
/
GRANT SELECT ON workorder TO i1083836
/
GRANT SELECT ON workorder TO i2356622
/
GRANT SELECT ON workorder TO i2604535
/
GRANT SELECT ON workorder TO i2611050
/
GRANT SELECT ON workorder TO i2617718
/
GRANT SELECT ON workorder TO i2633722
/
GRANT SELECT ON workorder TO i2635128
/
GRANT SELECT ON workorder TO i3412737
/
GRANT SELECT ON workorder TO i3624227
/
GRANT SELECT ON workorder TO i4536314
/
GRANT SELECT ON workorder TO i4543123
/
GRANT SELECT ON workorder TO i6042139
/
GRANT SELECT ON workorder TO i6021640
/
GRANT SELECT ON workorder TO i6024043
/
GRANT SELECT ON workorder TO i6048807
/
GRANT SELECT ON workorder TO i6049510
/
GRANT SELECT ON workorder TO i6051922
/
GRANT SELECT ON workorder TO i6342418
/
GRANT SELECT ON workorder TO i6361413
/
GRANT SELECT ON workorder TO i6705896
/
GRANT SELECT ON workorder TO i6722112
/
GRANT SELECT ON workorder TO i6752689
/
GRANT SELECT ON workorder TO i6768079
/
GRANT SELECT ON workorder TO i9412701
/
GRANT SELECT ON workorder TO i9412898
/
GRANT SELECT ON workorder TO i9413012
/
GRANT SELECT ON workorder TO i9413993
/
GRANT SELECT ON workorder TO i9419681
/
GRANT SELECT ON workorder TO i9455775
/
GRANT SELECT ON workorder TO i9565962
/
GRANT SELECT ON workorder TO i4701331
/
GRANT SELECT ON workorder TO i9758261
/
GRANT SELECT ON workorder TO i9602794
/
GRANT SELECT ON workorder TO i9033514
/
GRANT SELECT ON workorder TO i9425199
/
GRANT SELECT ON workorder TO i9861273
/
GRANT SELECT ON workorder TO i9618674
/
GRANT SELECT ON workorder TO i9006615
/
GRANT SELECT ON workorder TO i6011546
/
GRANT SELECT ON workorder TO i9645965
/
GRANT SELECT ON workorder TO i9453487
/
GRANT SELECT ON workorder TO i0835522
/
GRANT SELECT ON workorder TO deflt
/
GRANT SELECT ON workorder TO i1944118
/
GRANT SELECT ON workorder TO i9413404
/
GRANT SELECT ON workorder TO i9665957
/
GRANT SELECT ON workorder TO i0839020
/
GRANT UPDATE ON workorder TO i0839020
/
GRANT SELECT ON workorder TO i9654866
/
GRANT SELECT ON workorder TO i9528283
/
GRANT SELECT ON workorder TO i9407102
/
GRANT SELECT ON workorder TO i9650192
/
GRANT SELECT ON workorder TO i9415987
/
GRANT SELECT ON workorder TO i9569362
/
GRANT SELECT ON workorder TO i9413699
/
GRANT SELECT ON workorder TO i9414205
/
GRANT SELECT ON workorder TO i2614335
/
GRANT SELECT ON workorder TO i9403506
/
GRANT SELECT ON workorder TO i9676852
/
GRANT SELECT ON workorder TO i9766067
/
GRANT SELECT ON workorder TO i9465379
/
GRANT SELECT ON workorder TO i9689643
/
GRANT SELECT ON workorder TO i9420409
/
GRANT SELECT ON workorder TO maxgrp01
/
GRANT SELECT ON workorder TO maxgrp02
/
GRANT SELECT ON workorder TO i9789736
/
GRANT SELECT ON workorder TO i3939782
/
GRANT SELECT ON workorder TO i9854464
/
GRANT SELECT ON workorder TO i0539917
/
GRANT SELECT ON workorder TO maxdema
/
GRANT SELECT ON workorder TO i9819857
/
GRANT SELECT ON workorder TO i3943109
/
GRANT SELECT ON workorder TO i9072207
/
GRANT SELECT ON workorder TO i9586265
/
GRANT SELECT ON workorder TO i9052803
/
GRANT SELECT ON workorder TO i9029991
/
GRANT SELECT ON workorder TO i9034021
/
GRANT SELECT ON workorder TO i9034805
/
GRANT SELECT ON workorder TO i9036113
/
GRANT SELECT ON workorder TO i9039399
/
GRANT SELECT ON workorder TO i9040323
/
GRANT SELECT ON workorder TO i9041026
/
GRANT SELECT ON workorder TO i9442101
/
GRANT SELECT ON workorder TO i6671983
/
GRANT SELECT ON workorder TO i6697957
/
GRANT SELECT ON workorder TO i6784083
/
GRANT SELECT ON workorder TO i9428974
/
GRANT SELECT ON workorder TO i9605981
/
GRANT SELECT ON workorder TO i9751576
/
GRANT SELECT ON workorder TO i9772761
/
GRANT SELECT ON workorder TO i9759552
/
GRANT SELECT ON workorder TO i9694066
/
GRANT SELECT ON workorder TO i9721490
/
GRANT SELECT ON workorder TO i6368883
/
GRANT SELECT ON workorder TO i9762373
/
GRANT SELECT ON workorder TO i9778743
/
GRANT SELECT ON workorder TO i4158810
/
GRANT SELECT ON workorder TO i4161533
/
GRANT SELECT ON workorder TO i4155231
/
GRANT SELECT ON workorder TO i3298109
/
GRANT SELECT ON workorder TO i9011920
/
GRANT SELECT ON workorder TO i2628417
/
GRANT SELECT ON workorder TO i2632725
/
GRANT SELECT ON workorder TO i9412407
/
GRANT SELECT ON workorder TO i9415693
/
GRANT SELECT ON workorder TO i9531496
/
GRANT SELECT ON workorder TO i9418488
/
GRANT SELECT ON workorder TO i9526681
/
GRANT SELECT ON workorder TO i9765952
/
GRANT SELECT ON workorder TO i9643481
/
GRANT SELECT ON workorder TO i9757950
/
GRANT SELECT ON workorder TO i9415889
/
GRANT SELECT ON workorder TO i1554232
/
GRANT SELECT ON workorder TO i1555719
/
GRANT SELECT ON workorder TO i9569754
/
GRANT SELECT ON workorder TO i9643677
/
GRANT SELECT ON workorder TO i9526975
/
GRANT SELECT ON workorder TO i9746859
/
GRANT SELECT ON workorder TO i4129525
/
GRANT UPDATE ON workorder TO i4129525
/
GRANT SELECT ON workorder TO i0745229
/
GRANT SELECT ON workorder TO i0718428
/
GRANT SELECT ON workorder TO i0515643
/
GRANT SELECT ON workorder TO i0622643
/
GRANT SELECT ON workorder TO i9626480
/
GRANT SELECT ON workorder TO i0619626
/
GRANT SELECT ON workorder TO i0644041
/
GRANT SELECT ON workorder TO i0627726
/
GRANT SELECT ON workorder TO i9655863
/
GRANT SELECT ON workorder TO i9027506
/
GRANT SELECT ON workorder TO i9646864
/
GRANT SELECT ON workorder TO i9624486
/
GRANT SELECT ON workorder TO i0748024
/
GRANT SELECT ON workorder TO i0670629
/
GRANT SELECT ON workorder TO i0809130
/
GRANT SELECT ON workorder TO i0609336
/
GRANT SELECT ON workorder TO i0809326
/
GRANT SELECT ON workorder TO i0643730
/
GRANT SELECT ON workorder TO i0689893
/
GRANT SELECT ON workorder TO i0613448
/
GRANT SELECT ON workorder TO i0808917
/
GRANT SELECT ON workorder TO i0668609
/
GRANT SELECT ON workorder TO i0721347
/
GRANT SELECT ON workorder TO i9624094
/
GRANT SELECT ON workorder TO i9649463
/
GRANT SELECT ON workorder TO i9650486
/
GRANT SELECT ON workorder TO i9650388
/
GRANT SELECT ON workorder TO i0602357
/
GRANT SELECT ON workorder TO i0713835
/
GRANT SELECT ON workorder TO i0580042
/
GRANT SELECT ON workorder TO i0814239
/
GRANT SELECT ON workorder TO i9655765
/
GRANT SELECT ON workorder TO i0805240
/
GRANT SELECT ON workorder TO i4118924
/
GRANT SELECT ON workorder TO i9039889
/
GRANT SELECT ON workorder TO i9495661
/
GRANT SELECT ON workorder TO i9056105
/
GRANT SELECT ON workorder TO i9083102
/
GRANT SELECT ON workorder TO i9581476
/
GRANT SELECT ON workorder TO i9677947
/
GRANT SELECT ON workorder TO i3941703
/
GRANT SELECT ON workorder TO i3942112
/
GRANT SELECT ON workorder TO i9539276
/
GRANT SELECT ON workorder TO i9553874
/
GRANT SELECT ON workorder TO i9557568
/
GRANT SELECT ON workorder TO i9585856
/
GRANT SELECT ON workorder TO i9743182
/
GRANT SELECT ON workorder TO i9743280
/
GRANT SELECT ON workorder TO i9743966
/
GRANT SELECT ON workorder TO i9746369
/
GRANT SELECT ON workorder TO i9756953
/
GRANT SELECT ON workorder TO i9771862
/
GRANT SELECT ON workorder TO i1086729
/
GRANT SELECT ON workorder TO i9698054
/
GRANT SELECT ON workorder TO i9743378
/
GRANT SELECT ON workorder TO i6385982
/
GRANT SELECT ON workorder TO i9751772
/
GRANT SELECT ON workorder TO i9771764
/
GRANT SELECT ON workorder TO i9769254
/
GRANT SELECT ON workorder TO i9771666
/
GRANT SELECT ON workorder TO i9767456
/
GRANT SELECT ON workorder TO i4540230
/
GRANT SELECT ON workorder TO i4540328
/
GRANT SELECT ON workorder TO i4522624
/
GRANT SELECT ON workorder TO i4549988
/
GRANT SELECT ON workorder TO i2371237
/
GRANT SELECT ON workorder TO i4549890
/
GRANT SELECT ON workorder TO i4539109
/
GRANT SELECT ON workorder TO i4526710
/
GRANT SELECT ON workorder TO i4526612
/
GRANT SELECT ON workorder TO i9672178
/
GRANT SELECT ON workorder TO i9776847
/
GRANT SELECT ON workorder TO i9781858
/
GRANT SELECT ON workorder TO i9769156
/
GRANT SELECT ON workorder TO i9010923
/
GRANT SELECT ON workorder TO i9011038
/
GRANT SELECT ON workorder TO i9642974
/
GRANT SELECT ON workorder TO i4540524
/
GRANT UPDATE ON workorder TO i4540524
/
GRANT SELECT ON workorder TO i9775752
/
GRANT SELECT ON workorder TO i9775164
/
GRANT SELECT ON workorder TO i9748755
/
GRANT SELECT ON workorder TO i9775850
/
GRANT SELECT ON workorder TO i9775948
/
GRANT SELECT ON workorder TO i9775066
/
GRANT SELECT ON workorder TO i9776749
/
GRANT SELECT ON workorder TO i9777060
/
GRANT SELECT ON workorder TO i9748951
/
GRANT SELECT ON workorder TO i9773954
/
GRANT SELECT ON workorder TO i4543221
/
GRANT SELECT ON workorder TO i4547013
/
GRANT SELECT ON workorder TO i9769646
/
GRANT SELECT ON workorder TO i4537213
/
GRANT SELECT ON workorder TO i4545607
/
GRANT SELECT ON workorder TO i9768649
/
GRANT SELECT ON workorder TO i9769450
/
GRANT SELECT ON workorder TO i9768747
/
GRANT SELECT ON workorder TO i4538995
/
GRANT SELECT ON workorder TO i4530332
/
GRANT SELECT ON workorder TO i4543907
/
GRANT SELECT ON workorder TO i9774167
/
GRANT SELECT ON workorder TO i4506326
/
GRANT SELECT ON workorder TO i4538897
/
GRANT SELECT ON workorder TO i9679255
/
GRANT SELECT ON workorder TO i9769548
/
GRANT SELECT ON workorder TO i4543711
/
GRANT SELECT ON workorder TO i9769352
/
GRANT SELECT ON workorder TO i4538014
/
GRANT SELECT ON workorder TO i9748853
/
GRANT SELECT ON workorder TO i4548697
/
GRANT SELECT ON workorder TO i9770473
/
GRANT SELECT ON workorder TO i9770277
/
GRANT SELECT ON workorder TO i4508320
/
GRANT SELECT ON workorder TO i9522104
/
GRANT SELECT ON workorder TO i6386685
/
GRANT SELECT ON workorder TO i6385001
/
GRANT SELECT ON workorder TO i9693951
/
GRANT SELECT ON workorder TO i9516783
/
GRANT SELECT ON workorder TO i4738397
/
GRANT SELECT ON workorder TO i9622884
/
GRANT SELECT ON workorder TO i4727109
/
GRANT SELECT ON workorder TO i4717701
/
GRANT SELECT ON workorder TO i2620833
/
GRANT SELECT ON workorder TO i9547866
/
GRANT SELECT ON workorder TO i9762471
/
GRANT SELECT ON workorder TO i0611846
/
GRANT SELECT ON workorder TO i9008511
/
GRANT SELECT ON workorder TO i6037030
/
GRANT SELECT ON workorder TO i9515001
/
GRANT SELECT ON workorder TO i6041338
/
GRANT SELECT ON workorder TO i6052135
/
GRANT SELECT ON workorder TO i6040635
/
GRANT SELECT ON workorder TO i6052429
/
GRANT SELECT ON workorder TO i6050435
/
GRANT SELECT ON workorder TO i6052625
/
GRANT SELECT ON workorder TO i6034921
/
GRANT SELECT ON workorder TO i6042923
/
GRANT SELECT ON workorder TO i9420017
/
GRANT SELECT ON workorder TO i2227636
/
GRANT SELECT ON workorder TO i9669651
/
GRANT SELECT ON workorder TO i6009526
/
GRANT SELECT ON workorder TO i6041142
/
GRANT SELECT ON workorder TO i6013442
/
GRANT SELECT ON workorder TO i9008021
/
GRANT SELECT ON workorder TO i6052527
/
GRANT SELECT ON workorder TO i9416101
/
GRANT SELECT ON workorder TO i9008805
/
GRANT SELECT ON workorder TO i6033336
/
GRANT SELECT ON workorder TO i6003250
/
GRANT SELECT ON workorder TO i6032633
/
GRANT SELECT ON workorder TO i6040439
/
GRANT SELECT ON workorder TO i6012151
/
GRANT SELECT ON workorder TO i9573572
/
GRANT SELECT ON workorder TO i9420311
/
GRANT SELECT ON workorder TO i6020839
/
GRANT SELECT ON workorder TO i6018721
/
GRANT SELECT ON workorder TO i6020447
/
GRANT SELECT ON workorder TO i0160658
/
GRANT SELECT ON workorder TO i9426980
/
GRANT SELECT ON workorder TO i6033532
/
GRANT SELECT ON workorder TO i6011840
/
GRANT SELECT ON workorder TO i9420213
/
GRANT SELECT ON workorder TO i6007336
/
GRANT SELECT ON workorder TO i6011154
/
GRANT SELECT ON workorder TO i6011252
/
GRANT SELECT ON workorder TO i6026527
/
GRANT SELECT ON workorder TO i6029714
/
GRANT SELECT ON workorder TO i6049706
/
GRANT SELECT ON workorder TO i6049412
/
GRANT SELECT ON workorder TO i6050043
/
GRANT SELECT ON workorder TO i9420115
/
GRANT SELECT ON workorder TO i6049608
/
GRANT SELECT ON workorder TO cviatecsp
/
GRANT SELECT ON workorder TO cecolaborsp
/
GRANT SELECT ON workorder TO cmpesp
/
GRANT SELECT ON workorder TO cntksp
/
GRANT SELECT ON workorder TO cmpeeg
/
GRANT SELECT ON workorder TO cmarinseg
/
GRANT SELECT ON workorder TO cteldatact
/
GRANT SELECT ON workorder TO cparanact
/
GRANT SELECT ON workorder TO i9826568
/
GRANT SELECT ON workorder TO i9446580
/
GRANT SELECT ON workorder TO i9563674
/
GRANT SELECT ON workorder TO i9663865
/
GRANT SELECT ON workorder TO i9672276
/
GRANT SELECT ON workorder TO i1930330
/
GRANT SELECT ON workorder TO i1929013
/
GRANT SELECT ON workorder TO i1930232
/
GRANT SELECT ON workorder TO i1940816
/
GRANT SELECT ON workorder TO i1942712
/
GRANT SELECT ON workorder TO i1943611
/
GRANT SELECT ON workorder TO i1944902
/
GRANT SELECT ON workorder TO i1946897
/
GRANT SELECT ON workorder TO i1947698
/
GRANT SELECT ON workorder TO i1947992
/
GRANT SELECT ON workorder TO i1948008
/
GRANT SELECT ON workorder TO i1948695
/
GRANT SELECT ON workorder TO i1949005
/
GRANT SELECT ON workorder TO i4181917
/
GRANT SELECT ON workorder TO i1950518
/
GRANT SELECT ON workorder TO i4105545
/
GRANT SELECT ON workorder TO i4125929
/
GRANT SELECT ON workorder TO i4126044
/
GRANT SELECT ON workorder TO i4128038
/
GRANT SELECT ON workorder TO i4166420
/
GRANT SELECT ON workorder TO i4166714
/
GRANT SELECT ON workorder TO i4166812
/
GRANT SELECT ON workorder TO i4167123
/
GRANT SELECT ON workorder TO i4186412
/
GRANT SELECT ON workorder TO i4191129
/
GRANT SELECT ON workorder TO i4194120
/
GRANT SELECT ON workorder TO i4194414
/
GRANT SELECT ON workorder TO i4711229
/
GRANT SELECT ON workorder TO i9070507
/
GRANT SELECT ON workorder TO i9083691
/
GRANT SELECT ON workorder TO i9085391
/
GRANT SELECT ON workorder TO i9436094
/
GRANT SELECT ON workorder TO i9462682
/
GRANT SELECT ON workorder TO i9520993
/
GRANT SELECT ON workorder TO i9530891
/
GRANT SELECT ON workorder TO i9637179
/
GRANT SELECT ON workorder TO i9611499
/
GRANT SELECT ON workorder TO i9632978
/
GRANT SELECT ON workorder TO i9633093
/
GRANT SELECT ON workorder TO i9635283
/
GRANT SELECT ON workorder TO i9637277
/
GRANT SELECT ON workorder TO i9679549
/
GRANT SELECT ON workorder TO i9682468
/
GRANT SELECT ON workorder TO i9685557
/
GRANT SELECT ON workorder TO cpontualfz
/
GRANT SELECT ON workorder TO cviateccf
/
GRANT SELECT ON workorder TO i0154356
/
GRANT SELECT ON workorder TO i0201478
/
GRANT SELECT ON workorder TO cviatecrf
/
GRANT SELECT ON workorder TO i1038743
/
GRANT SELECT ON workorder TO i1039446
/
GRANT SELECT ON workorder TO i1041466
/
GRANT SELECT ON workorder TO i1043264
/
GRANT SELECT ON workorder TO i1045356
/
GRANT SELECT ON workorder TO i1052655
/
GRANT SELECT ON workorder TO i1053260
/
GRANT SELECT ON workorder TO i1061066
/
GRANT SELECT ON workorder TO i1066541
/
GRANT SELECT ON workorder TO i1067930
/
GRANT SELECT ON workorder TO i1069434
/
GRANT SELECT ON workorder TO i1070163
/
GRANT SELECT ON workorder TO i1071356
/
GRANT SELECT ON workorder TO i1072353
/
GRANT SELECT ON workorder TO i1073840
/
GRANT SELECT ON workorder TO i1077044
/
GRANT SELECT ON workorder TO i1079822
/
GRANT SELECT ON workorder TO i1088429
/
GRANT SELECT ON workorder TO i4128332
/
GRANT SELECT ON workorder TO i4189305
/
GRANT SELECT ON workorder TO i9425591
/
GRANT SELECT ON workorder TO i9447577
/
GRANT SELECT ON workorder TO i9539668
/
GRANT SELECT ON workorder TO i9566175
/
GRANT SELECT ON workorder TO i9566273
/
GRANT SELECT ON workorder TO i9567074
/
GRANT SELECT ON workorder TO i9573082
/
GRANT SELECT ON workorder TO i9573376
/
GRANT SELECT ON workorder TO i9573474
/
GRANT SELECT ON workorder TO i9577854
/
GRANT SELECT ON workorder TO i9740681
/
GRANT SELECT ON workorder TO i9773268
/
GRANT SELECT ON workorder TO i9599154
/
GRANT SELECT ON workorder TO childemarf
/
GRANT SELECT ON workorder TO i1460637
/
GRANT SELECT ON workorder TO i1478217
/
GRANT SELECT ON workorder TO i1479999
/
GRANT SELECT ON workorder TO i1523345
/
GRANT SELECT ON workorder TO i1527137
/
GRANT SELECT ON workorder TO i1529915
/
GRANT SELECT ON workorder TO i1532050
/
GRANT SELECT ON workorder TO i1537231
/
GRANT SELECT ON workorder TO i1555817
/
GRANT SELECT ON workorder TO i4726406
/
GRANT SELECT ON workorder TO i4734506
/
GRANT SELECT ON workorder TO i9556865
/
GRANT SELECT ON workorder TO i9697743
/
GRANT SELECT ON workorder TO i4750804
/
GRANT SELECT ON workorder TO i9570777
/
GRANT SELECT ON workorder TO i9426686
/
GRANT SELECT ON workorder TO i9631393
/
GRANT SELECT ON workorder TO i9743476
/
GRANT SELECT ON workorder TO i2621242
/
GRANT SELECT ON workorder TO i2627126
/
GRANT SELECT ON workorder TO i2627616
/
GRANT SELECT ON workorder TO i2629806
/
GRANT SELECT ON workorder TO i2630731
/
GRANT SELECT ON workorder TO i2631238
/
GRANT SELECT ON workorder TO i2633330
/
GRANT SELECT ON workorder TO i2633820
/
GRANT SELECT ON workorder TO i9408296
/
GRANT SELECT ON workorder TO i9412211
/
GRANT SELECT ON workorder TO i9412505
/
GRANT SELECT ON workorder TO i9415497
/
GRANT SELECT ON workorder TO i9415595
/
GRANT SELECT ON workorder TO i9418684
/
GRANT SELECT ON workorder TO i9422894
/
GRANT SELECT ON workorder TO i9427095
/
GRANT SELECT ON workorder TO i9430111
/
GRANT SELECT ON workorder TO i9689153
/
GRANT SELECT ON workorder TO i9498358
/
GRANT SELECT ON workorder TO i9558663
/
GRANT SELECT ON workorder TO i9558761
/
GRANT SELECT ON workorder TO i9558859
/
GRANT SELECT ON workorder TO i9781270
/
GRANT SELECT ON workorder TO i9781368
/
GRANT SELECT ON workorder TO i9796741
/
GRANT SELECT ON workorder TO i4253722
/
GRANT SELECT ON workorder TO i0608535
/
GRANT SELECT ON workorder TO i3327429
/
GRANT SELECT ON workorder TO i3330446
/
GRANT SELECT ON workorder TO i9569558
/
GRANT SELECT ON workorder TO i9527678
/
GRANT SELECT ON workorder TO i9588455
/
GRANT SELECT ON workorder TO i9602598
/
GRANT SELECT ON workorder TO i4113057
/
GRANT SELECT ON workorder TO i9676754
/
GRANT SELECT ON workorder TO i9696256
/
GRANT SELECT ON workorder TO i9794453
/
GRANT SELECT ON workorder TO i9683759
/
GRANT SELECT ON workorder TO i9847361
/
GRANT SELECT ON workorder TO i9753668
/
GRANT SELECT ON workorder TO i9741776
/
GRANT SELECT ON workorder TO i9747660
/
GRANT SELECT ON workorder TO i9747758
/
GRANT SELECT ON workorder TO i9747856
/
GRANT SELECT ON workorder TO i9747954
/
GRANT SELECT ON workorder TO i9748265
/
GRANT SELECT ON workorder TO i9748559
/
GRANT SELECT ON workorder TO i9749164
/
GRANT SELECT ON workorder TO i9753766
/
GRANT SELECT ON workorder TO i9767750
/
GRANT SELECT ON workorder TO i9795842
/
GRANT SELECT ON workorder TO i9662280
/
GRANT SELECT ON workorder TO i0534638
/
GRANT SELECT ON workorder TO i9808178
/
GRANT UPDATE ON workorder TO i9808178
/
GRANT SELECT ON workorder TO i0566914
/
GRANT SELECT ON workorder TO i9856164
/
GRANT SELECT ON workorder TO i0577613
/
GRANT SELECT ON workorder TO i0583523
/
GRANT SELECT ON workorder TO i0590332
/
GRANT SELECT ON workorder TO i0603648
/
GRANT SELECT ON workorder TO i0605740
/
GRANT SELECT ON workorder TO i0607440
/
GRANT SELECT ON workorder TO i0608241
/
GRANT SELECT ON workorder TO i0608927
/
GRANT SELECT ON workorder TO i0609140
/
GRANT SELECT ON workorder TO i0610065
/
GRANT SELECT ON workorder TO i0618727
/
GRANT SELECT ON workorder TO i0619822
/
GRANT SELECT ON workorder TO i0623346
/
GRANT SELECT ON workorder TO i0623444
/
GRANT SELECT ON workorder TO i0624147
/
GRANT SELECT ON workorder TO i0627138
/
GRANT SELECT ON workorder TO i0645136
/
GRANT SELECT ON workorder TO i0646329
/
GRANT SELECT ON workorder TO i0647620
/
GRANT SELECT ON workorder TO i0655034
/
GRANT SELECT ON workorder TO i0661826
/
GRANT SELECT ON workorder TO i0661924
/
GRANT SELECT ON workorder TO i0677216
/
GRANT SELECT ON workorder TO i0677118
/
GRANT SELECT ON workorder TO i0681524
/
GRANT SELECT ON workorder TO i0687997
/
GRANT SELECT ON workorder TO i0700358
/
GRANT SELECT ON workorder TO i0707925
/
GRANT SELECT ON workorder TO i0720252
/
GRANT SELECT ON workorder TO i0721249
/
GRANT SELECT ON workorder TO i0748808
/
GRANT SELECT ON workorder TO i0751237
/
GRANT SELECT ON workorder TO i0751629
/
GRANT SELECT ON workorder TO i0753525
/
GRANT SELECT ON workorder TO i0757513
/
GRANT SELECT ON workorder TO i0759801
/
GRANT SELECT ON workorder TO i0765123
/
GRANT SELECT ON workorder TO i0797890
/
GRANT SELECT ON workorder TO i0795896
/
GRANT SELECT ON workorder TO i0796108
/
GRANT SELECT ON workorder TO i0799492
/
GRANT SELECT ON workorder TO i0806139
/
GRANT SELECT ON workorder TO i0808819
/
GRANT SELECT ON workorder TO i0809522
/
GRANT SELECT ON workorder TO i0809816
/
GRANT SELECT ON workorder TO i0814337
/
GRANT SELECT ON workorder TO i1558514
/
GRANT SELECT ON workorder TO i4102554
/
GRANT SELECT ON workorder TO i4193319
/
GRANT SELECT ON workorder TO i9006027
/
GRANT SELECT ON workorder TO i9023910
/
GRANT SELECT ON workorder TO i9024809
/
GRANT SELECT ON workorder TO i9025512
/
GRANT SELECT ON workorder TO i9026215
/
GRANT SELECT ON workorder TO i9026509
/
GRANT SELECT ON workorder TO i9794257
/
GRANT SELECT ON workorder TO i9029599
/
GRANT SELECT ON workorder TO i9037012
/
GRANT SELECT ON workorder TO i9035508
/
GRANT SELECT ON workorder TO i9035606
/
GRANT SELECT ON workorder TO i9037306
/
GRANT SELECT ON workorder TO i9038794
/
GRANT SELECT ON workorder TO i9038892
/
GRANT SELECT ON workorder TO i9040421
/
GRANT SELECT ON workorder TO i9040715
/
GRANT SELECT ON workorder TO i9042415
/
GRANT SELECT ON workorder TO i9042709
/
GRANT SELECT ON workorder TO i9042807
/
GRANT SELECT ON workorder TO i9047106
/
GRANT SELECT ON workorder TO i9053899
/
GRANT SELECT ON workorder TO i9055206
/
GRANT SELECT ON workorder TO i9068586
/
GRANT SELECT ON workorder TO i9624192
/
GRANT SELECT ON workorder TO i9624584
/
GRANT SELECT ON workorder TO i9626382
/
GRANT SELECT ON workorder TO i9626676
/
GRANT SELECT ON workorder TO i9649365
/
GRANT SELECT ON workorder TO i9677751
/
GRANT SELECT ON workorder TO i9681471
/
GRANT SELECT ON workorder TO i9421504
/
GRANT SELECT ON workorder TO maxgrp06
/
GRANT SELECT ON workorder TO i4734702
/
GRANT SELECT ON workorder TO i9051708
/
GRANT SELECT ON workorder TO i9055991
/
GRANT SELECT ON workorder TO i9033416
/
GRANT SELECT ON workorder TO i4149811
/
GRANT SELECT ON workorder TO i4155721
/
GRANT SELECT ON workorder TO i6715401
/
GRANT SELECT ON workorder TO i9525880
/
GRANT SELECT ON workorder TO i9607093
/
GRANT SELECT ON workorder TO i9657563
/
GRANT UPDATE ON workorder TO i9657563
/
GRANT SELECT ON workorder TO i9778547
/
GRANT SELECT ON workorder TO i9861175
/
GRANT SELECT ON workorder TO cexcelgl
/
GRANT SELECT ON workorder TO csm21gl
/
GRANT SELECT ON workorder TO cteamgl
/
GRANT SELECT ON workorder TO cviatecgl
/
GRANT SELECT ON workorder TO cthermarbe
/
GRANT SELECT ON workorder TO i6329503
/
GRANT SELECT ON workorder TO i6368589
/
GRANT SELECT ON workorder TO i6379190
/
GRANT SELECT ON workorder TO i9521107
/
GRANT SELECT ON workorder TO i9522987
/
GRANT SELECT ON workorder TO i9525978
/
GRANT SELECT ON workorder TO i6767474
/
GRANT SELECT ON workorder TO i6779170
/
GRANT SELECT ON workorder TO i6768961
/
GRANT SELECT ON workorder TO i6774479
/
GRANT SELECT ON workorder TO i6780585
/
GRANT SELECT ON workorder TO i6782579
/
GRANT SELECT ON workorder TO i9623195
/
GRANT SELECT ON workorder TO ctis304
/
GRANT SELECT ON workorder TO ctis620
/
GRANT SELECT ON workorder TO i9779446
/
GRANT SELECT ON workorder TO i0000000
/
GRANT UPDATE ON workorder TO i0000000
/
GRANT SELECT ON workorder TO cemantpa
/
GRANT SELECT ON workorder TO cengeletricapa
/
GRANT SELECT ON workorder TO cconbraspa
/
GRANT SELECT ON workorder TO i9805187
/
GRANT SELECT ON workorder TO i9819955
/
GRANT SELECT ON workorder TO i9794845
/
GRANT SELECT ON workorder TO i9794943
/
GRANT SELECT ON workorder TO i9792361
/
GRANT SELECT ON workorder TO i9796937
/
GRANT SELECT ON workorder TO i9828268
/
GRANT SELECT ON workorder TO i9830386
/
GRANT SELECT ON workorder TO i9830582
/
GRANT SELECT ON workorder TO i9829167
/
GRANT SELECT ON workorder TO i9824280
/
GRANT SELECT ON workorder TO cmpegl
/
GRANT SELECT ON workorder TO cicsupplygl
/
GRANT SELECT ON workorder TO i9796839
/
GRANT SELECT ON workorder TO ctecnengegl
/
GRANT SELECT ON workorder TO i9804974
/
GRANT SELECT ON workorder TO i9837267
/
GRANT SELECT ON workorder TO i9832282
/
GRANT SELECT ON workorder TO i9788739
/
GRANT SELECT ON workorder TO celshadayct
/
GRANT SELECT ON workorder TO i9581574
/
GRANT SELECT ON workorder TO cengeletricact
/
GRANT SELECT ON workorder TO csociplanct
/
GRANT SELECT ON workorder TO i9834178
/
GRANT SELECT ON workorder TO i9834080
/
GRANT SELECT ON workorder TO cgpcf
/
GRANT SELECT ON workorder TO cthermareg
/
GRANT SELECT ON workorder TO maxgrp03
/
GRANT SELECT ON workorder TO i9797444
/
GRANT SELECT ON workorder TO cviatecmo
/
GRANT SELECT ON workorder TO i9743084
/
GRANT SELECT ON workorder TO i9836368
/
GRANT SELECT ON workorder TO cviatecsv
/
GRANT SELECT ON workorder TO maxgrp07
/
GRANT UPDATE ON workorder TO maxgrp07
/
GRANT SELECT ON workorder TO maxgrp05
/
GRANT UPDATE ON workorder TO maxgrp05
/
GRANT SELECT ON workorder TO maxgrp04
/
GRANT SELECT ON workorder TO i9794355
/
GRANT SELECT ON workorder TO i0765417
/
GRANT SELECT ON workorder TO i9805383
/
GRANT SELECT ON workorder TO i9833965
/
GRANT SELECT ON workorder TO i9834668
/
GRANT SELECT ON workorder TO i9834570
/
GRANT SELECT ON workorder TO i9836662
/
GRANT SELECT ON workorder TO i9806576
/
GRANT SELECT ON workorder TO i9560977
/
GRANT SELECT ON workorder TO i9830484
/
GRANT SELECT ON workorder TO i9809175
/
GRANT SELECT ON workorder TO i9796055
/
GRANT SELECT ON workorder TO i9797640
/
GRANT SELECT ON workorder TO cctmfz
/
GRANT SELECT ON workorder TO i9851473
/
GRANT SELECT ON workorder TO i9847557
/
GRANT SELECT ON workorder TO i9850280
/
GRANT SELECT ON workorder TO c0579202
/
GRANT SELECT ON workorder TO cengeletricafz
/
GRANT SELECT ON workorder TO cproclimasv
/
GRANT SELECT ON workorder TO i9852862
/
GRANT SELECT ON workorder TO i9445965
/
GRANT SELECT ON workorder TO i9793260
/
GRANT SELECT ON workorder TO i9679070
/
GRANT SELECT ON workorder TO i9840382
/
GRANT SELECT ON workorder TO cmperj
/
GRANT SELECT ON workorder TO i9865261
/
GRANT SELECT ON workorder TO i9853173
/
GRANT SELECT ON workorder TO i9859743
/
GRANT SELECT ON workorder TO cmpekp
/
GRANT SELECT ON workorder TO csgekp
/
GRANT SELECT ON workorder TO cviateckp
/
GRANT SELECT ON workorder TO cengeletricakp
/
GRANT SELECT ON workorder TO cgutierrezkp
/
GRANT SELECT ON workorder TO cservteckp
/
GRANT SELECT ON workorder TO cicsupplyrj
/
GRANT SELECT ON workorder TO c768357313
/
GRANT SELECT ON workorder TO c710467203
/
GRANT SELECT ON workorder TO c679098843
/
GRANT SELECT ON workorder TO i4182031
/
GRANT SELECT ON workorder TO c1586799
/
GRANT SELECT ON workorder TO c1666499
/
GRANT SELECT ON workorder TO c5420202
/
GRANT SELECT ON workorder TO c5940702
/
GRANT SELECT ON workorder TO i9864950
/
GRANT SELECT ON workorder TO i9864852
/
GRANT SELECT ON workorder TO i9865065
/
GRANT SELECT ON workorder TO i9864460
/
GRANT SELECT ON workorder TO i9830974
/
GRANT SELECT ON workorder TO i9807475
/
GRANT SELECT ON workorder TO i9855755
/
GRANT SELECT ON workorder TO i9860668
/
GRANT SELECT ON workorder TO i9863463
/
GRANT SELECT ON workorder TO i9873753
/
GRANT SELECT ON workorder TO i0106235
/
GRANT SELECT ON workorder TO i9870468
/
GRANT SELECT ON workorder TO c0303700
/
GRANT UPDATE ON workorder TO c0303700
/
GRANT SELECT ON workorder TO ctranspolixgr
/
GRANT SELECT ON workorder TO i9855363
/
GRANT SELECT ON workorder TO i9879441
/
GRANT SELECT ON workorder TO c43719092
/
GRANT SELECT ON workorder TO cmpegr
/
GRANT SELECT ON workorder TO cntkgr
/
GRANT SELECT ON workorder TO ccascardigr
/
GRANT SELECT ON workorder TO csupplygr
/
GRANT SELECT ON workorder TO cinterwaygr
/
GRANT SELECT ON workorder TO cviatecgr
/
GRANT SELECT ON workorder TO cspreadgr
/
GRANT SELECT ON workorder TO csheffergr
/
GRANT SELECT ON workorder TO cultratecgr
/
GRANT SELECT ON workorder TO ciacitgr
/
GRANT SELECT ON workorder TO csistemagr
/
GRANT SELECT ON workorder TO cempressgr
/
GRANT SELECT ON workorder TO i9881657
/
GRANT SELECT ON workorder TO i9785944
/
GRANT SELECT ON workorder TO i9888146
/
GRANT SELECT ON workorder TO i9862760
/
GRANT SELECT ON workorder TO i9862368
/
GRANT SELECT ON workorder TO cotisgr
/
GRANT SELECT ON workorder TO catlasgr
/
GRANT SELECT ON workorder TO cmpepa
/
GRANT SELECT ON workorder TO i9891555
/
GRANT SELECT ON workorder TO i9900785
/
GRANT SELECT ON workorder TO i9893647
/
GRANT SELECT ON workorder TO i9896540
/
GRANT SELECT ON workorder TO maxgrp08
/
GRANT INSERT ON workorder TO maxsapiospa
/
GRANT SELECT ON workorder TO i9897047
/
GRANT SELECT ON workorder TO i9854954
/
GRANT SELECT ON workorder TO i9883945
/
GRANT SELECT ON workorder TO i9914181
/
GRANT SELECT ON workorder TO c514314960
/
GRANT SELECT ON workorder TO i9928949
/
GRANT SELECT ON workorder TO cjohnsonsv
/
GRANT SELECT ON workorder TO ctecnytsv
/
GRANT SELECT ON workorder TO i9541001
/
GRANT SELECT ON workorder TO i9933470
/
GRANT SELECT ON workorder TO i9900687
/
GRANT SELECT ON workorder TO i9818566
/
GRANT SELECT ON workorder TO i9920875
/
GRANT SELECT ON workorder TO i9823479
/
GRANT SELECT ON workorder TO i9866062
/
GRANT SELECT ON workorder TO i9929554
/
GRANT SELECT ON workorder TO i9923474
/
GRANT SELECT ON workorder TO i9923572
/
GRANT SELECT ON workorder TO i9903482
/
GRANT SELECT ON workorder TO i9934859
/
GRANT SELECT ON workorder TO i9936951
/
GRANT SELECT ON workorder TO sbbe01
/
GRANT SELECT ON workorder TO sbbr01
/
GRANT SELECT ON workorder TO sbcf01
/
GRANT SELECT ON workorder TO sbct01
/
GRANT SELECT ON workorder TO sbeg01
/
GRANT SELECT ON workorder TO sbfz01
/
GRANT SELECT ON workorder TO sbgl01
/
GRANT SELECT ON workorder TO sbgr01
/
GRANT SELECT ON workorder TO sbkp01
/
GRANT SELECT ON workorder TO sbmo01
/
GRANT SELECT ON workorder TO sbnt01
/
GRANT SELECT ON workorder TO sbpa01
/
GRANT SELECT ON workorder TO sbrf01
/
GRANT SELECT ON workorder TO sbrj01
/
GRANT SELECT ON workorder TO sbsp01
/
GRANT SELECT ON workorder TO sbsv01
/
GRANT SELECT ON workorder TO sbbe02
/
GRANT SELECT ON workorder TO sbbr02
/
GRANT SELECT ON workorder TO sbcf02
/
GRANT SELECT ON workorder TO sbct02
/
GRANT SELECT ON workorder TO sbeg02
/
GRANT SELECT ON workorder TO sbfz02
/
GRANT SELECT ON workorder TO sbgl02
/
GRANT SELECT ON workorder TO sbgr02
/
GRANT SELECT ON workorder TO sbkp02
/
GRANT SELECT ON workorder TO sbmo02
/
GRANT SELECT ON workorder TO sbnt02
/
GRANT SELECT ON workorder TO sbpa02
/
GRANT SELECT ON workorder TO sbrf02
/
GRANT SELECT ON workorder TO sbrj02
/
GRANT SELECT ON workorder TO sbsp02
/
GRANT SELECT ON workorder TO sbsv02
/
GRANT SELECT ON workorder TO sbbe03
/
GRANT SELECT ON workorder TO sbbr03
/
GRANT SELECT ON workorder TO sbcf03
/
GRANT SELECT ON workorder TO sbct03
/
GRANT SELECT ON workorder TO sbeg03
/
GRANT SELECT ON workorder TO sbfz03
/
GRANT SELECT ON workorder TO sbgl03
/
GRANT SELECT ON workorder TO sbgr03
/
GRANT SELECT ON workorder TO sbkp03
/
GRANT SELECT ON workorder TO sbmo03
/
GRANT SELECT ON workorder TO sbnt03
/
GRANT SELECT ON workorder TO sbpa03
/
GRANT SELECT ON workorder TO sbrf03
/
GRANT SELECT ON workorder TO sbrj03
/
GRANT SELECT ON workorder TO sbsp03
/
GRANT SELECT ON workorder TO sbsv03
/
GRANT SELECT ON workorder TO sbbe04
/
GRANT SELECT ON workorder TO sbbr04
/
GRANT SELECT ON workorder TO sbcf04
/
GRANT SELECT ON workorder TO sbct04
/
GRANT SELECT ON workorder TO sbeg04
/
GRANT SELECT ON workorder TO sbfz04
/
GRANT SELECT ON workorder TO sbgl04
/
GRANT SELECT ON workorder TO sbgr04
/
GRANT SELECT ON workorder TO sbkp04
/
GRANT SELECT ON workorder TO sbmo04
/
GRANT SELECT ON workorder TO sbnt04
/
GRANT SELECT ON workorder TO sbpa04
/
GRANT SELECT ON workorder TO sbrf04
/
GRANT SELECT ON workorder TO sbrj04
/
GRANT SELECT ON workorder TO sbsp04
/
GRANT SELECT ON workorder TO sbsv04
/
GRANT SELECT ON workorder TO dema02
/
GRANT SELECT ON workorder TO maxconsulta
/
GRANT SELECT ON workorder TO sbgratlas
/
GRANT SELECT ON workorder TO sbgrcascardi
/
GRANT SELECT ON workorder TO sbpaconbras
/
GRANT SELECT ON workorder TO sbfzctm
/
GRANT SELECT ON workorder TO sbspecolabor
/
GRANT SELECT ON workorder TO sbctelshaday
/
GRANT SELECT ON workorder TO sbpaemant
/
GRANT SELECT ON workorder TO sbgrempress
/
GRANT SELECT ON workorder TO sbctengeletrica
/
GRANT SELECT ON workorder TO sbfzengeletrica
/
GRANT SELECT ON workorder TO sbkpengeletrica
/
GRANT SELECT ON workorder TO sbpacengeletrica
/
GRANT SELECT ON workorder TO sbglexcel
/
GRANT SELECT ON workorder TO sbcfgp
/
GRANT SELECT ON workorder TO sbkpgutierrez
/
GRANT SELECT ON workorder TO sbrfhildema
/
GRANT SELECT ON workorder TO sbgriacit
/
GRANT SELECT ON workorder TO sbglicsupply
/
GRANT SELECT ON workorder TO sbrjicsupply
/
GRANT SELECT ON workorder TO sbgrinterway
/
GRANT SELECT ON workorder TO sbsvjohnson
/
GRANT SELECT ON workorder TO sbegmarins
/
GRANT SELECT ON workorder TO sbegmpe
/
GRANT SELECT ON workorder TO sbglmpe
/
GRANT SELECT ON workorder TO sbgrmpe
/
GRANT SELECT ON workorder TO sbkpmpe
/
GRANT SELECT ON workorder TO sbpampe
/
GRANT SELECT ON workorder TO sbrjmpe
/
GRANT SELECT ON workorder TO sbspmpe
/
GRANT SELECT ON workorder TO sbgrntk
/
GRANT SELECT ON workorder TO sbspntk
/
GRANT SELECT ON workorder TO sbgrotis
/
GRANT SELECT ON workorder TO sbctparana
/
GRANT SELECT ON workorder TO sbbepontual
/
GRANT SELECT ON workorder TO sbfzpontual
/
GRANT SELECT ON workorder TO sbsvproclima
/
GRANT SELECT ON workorder TO sbkpservtec
/
GRANT SELECT ON workorder TO sbkpsge
/
GRANT SELECT ON workorder TO sbgrcsistema
/
GRANT SELECT ON workorder TO sbglsm21
/
GRANT SELECT ON workorder TO sbctsociplan
/
GRANT SELECT ON workorder TO sbgrspread
/
GRANT SELECT ON workorder TO sbgrsupply
/
GRANT SELECT ON workorder TO sbglteam
/
GRANT SELECT ON workorder TO sbgltecnenge
/
GRANT SELECT ON workorder TO sbsvtecnyt
/
GRANT SELECT ON workorder TO sbctteldata
/
GRANT SELECT ON workorder TO sbbethermar
/
GRANT SELECT ON workorder TO sbegthermar
/
GRANT SELECT ON workorder TO sbgrtranspolix
/
GRANT SELECT ON workorder TO sbgrultratec
/
GRANT SELECT ON workorder TO sbcfviatec
/
GRANT SELECT ON workorder TO sbglviatec
/
GRANT SELECT ON workorder TO sbgrviatec
/
GRANT SELECT ON workorder TO sbkpviatec
/
GRANT SELECT ON workorder TO sbmoviatec
/
GRANT SELECT ON workorder TO sbrfviatec
/
GRANT SELECT ON workorder TO sbspviatec
/
GRANT SELECT ON workorder TO sbsvviatec
/
GRANT SELECT ON workorder TO dema01
/
GRANT SELECT ON workorder TO dema03
/
GRANT SELECT ON workorder TO dema04
/
GRANT SELECT ON workorder TO cema01
/
GRANT SELECT ON workorder TO cema02
/
GRANT SELECT ON workorder TO cema03
/
GRANT SELECT ON workorder TO cema04
/

-- Indexes for WORKORDER

CREATE INDEX workorder_ndx18 ON workorder
  (
    ldkey                           ASC
  )
  PCTFREE     10
  INITRANS    2
  MAXTRANS    255
  TABLESPACE  tsd_indice
  STORAGE   (
    INITIAL     65536
    MINEXTENTS  1
    MAXEXTENTS  2147483645
  )
/
CREATE INDEX workorder_ndx11 ON workorder
  (
    wopm7                           ASC,
    siteid                          ASC
  )
  PCTFREE     10
  INITRANS    2
  MAXTRANS    255
  TABLESPACE  tsd_indice
  STORAGE   (
    INITIAL     65536
    MINEXTENTS  1
    MAXEXTENTS  2147483645
  )
PARALLEL (DEGREE DEFAULT)
/
CREATE UNIQUE INDEX workorder_ndx12 ON workorder
  (
    wonum                           ASC,
    istask                          ASC,
    historyflag                     ASC
  )
  PCTFREE     10
  INITRANS    2
  MAXTRANS    255
  TABLESPACE  tsd_indice
  STORAGE   (
    INITIAL     65536
    MINEXTENTS  1
    MAXEXTENTS  2147483645
  )
PARALLEL (DEGREE DEFAULT)
/
CREATE INDEX workorder_ndx13 ON workorder
  (
    siteid                          ASC,
    istask                          ASC,
    historyflag                     ASC
  )
  PCTFREE     10
  INITRANS    2
  MAXTRANS    255
  TABLESPACE  tsd_indice
  STORAGE   (
    INITIAL     65536
    MINEXTENTS  1
    MAXEXTENTS  2147483645
  )
PARALLEL (DEGREE DEFAULT)
/
CREATE INDEX workorder_ndx10 ON workorder
  (
    parent                          ASC,
    siteid                          ASC
  )
  PCTFREE     10
  INITRANS    2
  MAXTRANS    255
  TABLESPACE  tsd_indice
  STORAGE   (
    INITIAL     65536
    MINEXTENTS  1
    MAXEXTENTS  2147483645
  )
/
CREATE INDEX workorder_ndx14 ON workorder
  (
    historyflag                     ASC,
    istask                          ASC,
    wopm7                           ASC,
    siteid                          ASC
  )
  PCTFREE     10
  INITRANS    2
  MAXTRANS    255
  TABLESPACE  tsd_indice
  STORAGE   (
    INITIAL     65536
    MINEXTENTS  1
    MAXEXTENTS  2147483645
  )
PARALLEL (DEGREE DEFAULT)
/
CREATE INDEX workorder_ndx15 ON workorder
  (
    wopm6                           ASC,
    siteid                          ASC
  )
  PCTFREE     10
  INITRANS    2
  MAXTRANS    255
  TABLESPACE  tsd_indice
  STORAGE   (
    INITIAL     65536
    MINEXTENTS  1
    MAXEXTENTS  2147483645
  )
/
CREATE INDEX workorder_ndx16 ON workorder
  (
    siteid                          ASC,
    crewid                          ASC
  )
  PCTFREE     10
  INITRANS    2
  MAXTRANS    255
  TABLESPACE  tsd_indice
  STORAGE   (
    INITIAL     65536
    MINEXTENTS  1
    MAXEXTENTS  2147483645
  )
PARALLEL (DEGREE DEFAULT)
/
CREATE INDEX workorder_ndx17 ON workorder
  (
    siteid                          ASC,
    crewid                          ASC,
    status                          ASC
  )
  PCTFREE     10
  INITRANS    2
  MAXTRANS    255
  TABLESPACE  tsd_indice
  STORAGE   (
    INITIAL     65536
    MINEXTENTS  1
    MAXEXTENTS  2147483645
  )
PARALLEL (DEGREE DEFAULT)
/
CREATE UNIQUE INDEX workorder_ndx1 ON workorder
  (
    siteid                          ASC,
    wonum                           ASC
  )
  PCTFREE     10
  INITRANS    2
  MAXTRANS    255
  TABLESPACE  tsd_indice
  STORAGE   (
    INITIAL     65536
    MINEXTENTS  1
    MAXEXTENTS  2147483645
  )
/
CREATE INDEX workorder_ndx2 ON workorder
  (
    siteid                          ASC,
    status                          ASC
  )
  PCTFREE     10
  INITRANS    2
  MAXTRANS    255
  TABLESPACE  tsd_indice
  STORAGE   (
    INITIAL     65536
    MINEXTENTS  1
    MAXEXTENTS  2147483645
  )
/
CREATE INDEX workorder_ndx3 ON workorder
  (
    siteid                          ASC,
    historyflag                     ASC
  )
  PCTFREE     10
  INITRANS    2
  MAXTRANS    255
  TABLESPACE  tsd_indice
  STORAGE   (
    INITIAL     65536
    MINEXTENTS  1
    MAXEXTENTS  2147483645
  )
/
CREATE INDEX workorder_ndx4 ON workorder
  (
    siteid                          ASC,
    interid                         ASC
  )
  PCTFREE     10
  INITRANS    2
  MAXTRANS    255
  TABLESPACE  tsd_indice
  STORAGE   (
    INITIAL     65536
    MINEXTENTS  1
    MAXEXTENTS  2147483645
  )
/
CREATE INDEX workorder_ndx5 ON workorder
  (
    siteid                          ASC,
    wfid                            ASC
  )
  PCTFREE     10
  INITRANS    2
  MAXTRANS    255
  TABLESPACE  tsd_indice
  STORAGE   (
    INITIAL     65536
    MINEXTENTS  1
    MAXEXTENTS  2147483645
  )
/
CREATE INDEX workorder_ndx6 ON workorder
  (
    siteid                          ASC,
    respondby                       ASC
  )
  PCTFREE     10
  INITRANS    2
  MAXTRANS    255
  TABLESPACE  tsd_indice
  STORAGE   (
    INITIAL     65536
    MINEXTENTS  1
    MAXEXTENTS  2147483645
  )
/
CREATE INDEX workorder_ndx7 ON workorder
  (
    siteid                          ASC,
    eqnum                           ASC,
    problemcode                     ASC,
    status                          ASC
  )
  PCTFREE     10
  INITRANS    2
  MAXTRANS    255
  TABLESPACE  tsd_indice
  STORAGE   (
    INITIAL     65536
    MINEXTENTS  1
    MAXEXTENTS  2147483645
  )
/
CREATE INDEX workorder_ndx8 ON workorder
  (
    siteid                          ASC,
    jpnum                           ASC
  )
  PCTFREE     10
  INITRANS    2
  MAXTRANS    255
  TABLESPACE  tsd_indice
  STORAGE   (
    INITIAL     65536
    MINEXTENTS  1
    MAXEXTENTS  2147483645
  )
/
CREATE INDEX workorder_ndx9 ON workorder
  (
    siteid                          ASC,
    location                        ASC,
    problemcode                     ASC,
    status                          ASC
  )
  PCTFREE     10
  INITRANS    2
  MAXTRANS    255
  TABLESPACE  tsd_indice
  STORAGE   (
    INITIAL     65536
    MINEXTENTS  1
    MAXEXTENTS  2147483645
  )
/


-- Triggers for WORKORDER

CREATE OR REPLACE TRIGGER workorder_t
BEFORE INSERT  OR UPDATE 
ON workorder
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
DECLARE 
NEXTVAL INTEGER; BEGIN SELECT MAXSEQ.NEXTVAL INTO NEXTVAL FROM DUAL; 
:NEW.ROWSTAMP := NEXTVAL; END;
/
CREATE OR REPLACE TRIGGER tr_depe_workorder
BEFORE INSERT 
ON workorder
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
BEGIN
  IF :NEW.CHANGEBY <>'IFRMAXIMO' THEN
     IF SUBSTR(:NEW.CHANGEBY,1,1) = 'I' THEN
        SELECT SUBSTR(USER01,1,4), NULL
        INTO :NEW.WOPM7, :NEW.WOPM6
        FROM IFRMAXIMO.USUARIO
        WHERE USERNUM=:NEW.CHANGEBY;
     END IF;
     IF SUBSTR(:NEW.CHANGEBY,1,1) = 'C' THEN
        SELECT SUBSTR(USER01,1,4), USER01
        INTO :NEW.WOPM7, :NEW.WOPM6
        FROM IFRMAXIMO.USUARIO
        WHERE USERNUM=:NEW.CHANGEBY;
     END IF;
  END IF;
END;
/
CREATE OR REPLACE TRIGGER tr_sismat1
BEFORE UPDATE 
ON workorder
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
DECLARE
   V_STATUS ORDEM_SERVICO.IN_ABERTA%TYPE :='';
   V_COUNT   NUMBER(5)  :=0;
   CURSOR CAN_OS
        (P_WONUM ORDEM_SERVICO.OS_MAXIMO%TYPE) IS
      SELECT NR_ORDEM_SERVICO,AA_ORDEM_SERVICO, IN_ABERTA
      FROM ORDEM_SERVICO
      WHERE OS_MAXIMO = P_WONUM;
BEGIN
   IF :NEW.STATUS = 'CAN' THEN
      BEGIN
      FOR CANCELAMENTO IN CAN_OS (:NEW.WONUM) LOOP
         IF CANCELAMENTO.IN_ABERTA <> 4 THEN
            BEGIN
               RAISE_APPLICATION_ERROR(-20777,'FAVOR FECHAR A RM VINCULADA A ESTA ORDEM DE SERVICO.');
            END;
         END IF;
      END LOOP;
      END;
   END IF;
END;
/
CREATE OR REPLACE TRIGGER tr_tarefas
BEFORE INSERT 
ON workorder
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
BEGIN
  IF :NEW.ISTASK='S' THEN
    :NEW.STATUS:='APRV';
  END IF;
END;
/
CREATE OR REPLACE TRIGGER tr_calc_os2
AFTER UPDATE 
ON workorder
REFERENCING NEW AS NEW OLD AS OLD
DECLARE
CURSOR CS IS SELECT DISTINCT ANCESTOR,WONUM FROM WOANCESTOR WHERE WONUM IN (SELECT WONUM FROM WORKORDER_TEMP);
HORAS1 NUMBER;
CUSTO1 NUMBER;
CUSTO2 NUMBER;
CUSTO3 NUMBER;
CUSTO4 NUMBER;
BEGIN
  FOR RS IN CS LOOP
     SELECT SUM(actlabhrs),SUM(actlabcost),SUM(actmatcost),SUM(acttoolcost),SUM(actservcost)
     INTO   HORAS1,CUSTO1,CUSTO2,CUSTO3,CUSTO4
     FROM   WORKORDER
     WHERE  WONUM IN (SELECT WONUM FROM WOANCESTOR WHERE ANCESTOR = RS.ANCESTOR AND SITEID='INFRAERO') AND
            SITEID='INFRAERO';
     DELETE FROM WORKORDER_TEMP WHERE WONUM = RS.WONUM;
     UPDATE WORKORDER
     SET    wo3=HORAS1,
            wo4=CUSTO1,
            wo5=CUSTO2,
            wo6=CUSTO3,
            wo7=CUSTO4,
            WO8=CUSTO1+CUSTO2+CUSTO3+CUSTO4+WO10+WO11+WO12+WO15+WO16
    WHERE  WONUM = RS.ANCESTOR;

  END LOOP;
END;
/
CREATE OR REPLACE TRIGGER tr_calc_os1
BEFORE INSERT  OR UPDATE 
ON workorder
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
DECLARE
begin
  if (nvl(:old.actlabhrs,0)  <> nvl(:new.actlabhrs,0) or 
      nvl(:old.actlabcost,0) <> nvl(:new.actlabcost,0) or
      nvl(:old.actmatcost,0) <> nvl(:new.actmatcost,0) or
      nvl(:old.acttoolcost,0)<> nvl(:new.acttoolcost,0) or
      nvl(:old.actservcost,0)<> nvl(:new.actservcost,0)) then
      INSERT INTO WORKORDER_TEMP VALUES (:NEW.WONUM);  
  end if;    
-- Copiando valores j� contabilizados pelo MAXIMO
--   :new.wo3:=:new.actlabhrs;
--   :new.wo4:=:new.actlabcost;
--   :new.wo5:=:new.actmatcost;
--   :new.wo6:=:new.acttoolcost;
--   :new.wo7:=:new.actservcost;
-- Tratando valores extras nulos
  if :new.wo10 is null then
     :new.wo10:=0;
   end if;
   if :new.wo11 is null then
      :new.wo11:=0;
   end if;
   if :new.wo12 is null then
      :new.wo12:=0;
   end if;
   if :new.wo15 is null then
      :new.wo15:=0;
   end if;
   if :new.wo16 is null then
      :new.wo16:=0;
   end if;
-- Calculando total geral (WO8)
 :new.wo8:=:new.wo4+:new.wo5+:new.wo6+:new.wo7+:new.wo10+:new.wo11+:new.wo12+:new.wo15+:new.wo16;
end;
/

-- End of DDL Script for Table IFRMAXIMO.WORKORDER

