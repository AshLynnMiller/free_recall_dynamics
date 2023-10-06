* Encoding: UTF-8.

* Original code provided by Nash Unsworth
    Annotated and updated by Ashley L. Miller

* note that applies throughout:
    when aggregating sums, don't forget to replace missing usable values with 
    0s prior to calculating proportions

****************************************************************
************************ RAW DATA FILE ************************
** Calculating serial position position curves and recall accuracy **
* DFR paradigm with 5 lists, each containing 10 total TBR words *
****************************************************************

**************************************************
** serial position function aggregated across lists **
**************************************************

*don't need to run if examing serpos as a function of list (see below, lines 107-131)

If serpos=1 AND ACC=1 SerPos1=1.
If serpos=2 AND ACC=1 SerPos2=1.
If serpos=3 AND ACC=1 SerPos3=1.
If serpos=4 AND ACC=1 SerPos4=1.
If serpos=5 AND ACC=1 SerPos5=1.
If serpos=6 AND ACC=1 SerPos6=1.
If serpos=7 AND ACC=1 SerPos7=1.
If serpos=8 AND ACC=1 SerPos8=1.
If serpos=9 AND ACC=1 SerPos9=1.
If serpos=10 AND ACC=1 SerPos10=1.
EXECUTE.

**********************************************************
** serial position function as a function of list (5 total lists) **
***********************************************************

If serpos=1 AND list=1 AND ACC=1 L1SerPos1=1.
If serpos=2 AND list=1 AND ACC=1 L1SerPos2=1.
If serpos=3 AND list=1 AND ACC=1 L1SerPos3=1.
If serpos=4 AND list=1 AND ACC=1 L1SerPos4=1.
If serpos=5 AND list=1 AND ACC=1 L1SerPos5=1.
If serpos=6 AND list=1 AND ACC=1 L1SerPos6=1.
If serpos=7 AND list=1 AND ACC=1 L1SerPos7=1.
If serpos=8 AND list=1 AND ACC=1 L1SerPos8=1.
If serpos=9 AND list=1 AND ACC=1 L1SerPos9=1.
If serpos=10 AND list=1 AND ACC=1 L1SerPos10=1.
EXECUTE.

If serpos=1 AND list=2 AND ACC=1 L2SerPos1=1.
If serpos=2 AND list=2 AND ACC=1 L2SerPos2=1.
If serpos=3 AND list=2 AND ACC=1 L2SerPos3=1.
If serpos=4 AND list=2 AND ACC=1 L2SerPos4=1.
If serpos=5 AND list=2 AND ACC=1 L2SerPos5=1.
If serpos=6 AND list=2 AND ACC=1 L2SerPos6=1.
If serpos=7 AND list=2 AND ACC=1 L2SerPos7=1.
If serpos=8 AND list=2 AND ACC=1 L2SerPos8=1.
If serpos=9 AND list=2 AND ACC=1 L2SerPos9=1.
If serpos=10 AND list=2 AND ACC=1 L2SerPos10=1.
EXECUTE.

If serpos=1 AND list=3 AND ACC=1 L3SerPos1=1.
If serpos=2 AND list=3 AND ACC=1 L3SerPos2=1.
If serpos=3 AND list=3 AND ACC=1 L3SerPos3=1.
If serpos=4 AND list=3 AND ACC=1 L3SerPos4=1.
If serpos=5 AND list=3 AND ACC=1 L3SerPos5=1.
If serpos=6 AND list=3 AND ACC=1 L3SerPos6=1.
If serpos=7 AND list=3 AND ACC=1 L3SerPos7=1.
If serpos=8 AND list=3 AND ACC=1 L3SerPos8=1.
If serpos=9 AND list=3 AND ACC=1 L3SerPos9=1.
If serpos=10 AND list=3 AND ACC=1 L3SerPos10=1.
EXECUTE.

If serpos=1 AND list=4 AND ACC=1 L4SerPos1=1.
If serpos=2 AND list=4 AND ACC=1 L4SerPos2=1.
If serpos=3 AND list=4 AND ACC=1 L4SerPos3=1.
If serpos=4 AND list=4 AND ACC=1 L4SerPos4=1.
If serpos=5 AND list=4 AND ACC=1 L4SerPos5=1.
If serpos=6 AND list=4 AND ACC=1 L4SerPos6=1.
If serpos=7 AND list=4 AND ACC=1 L4SerPos7=1.
If serpos=8 AND list=4 AND ACC=1 L4SerPos8=1.
If serpos=9 AND list=4 AND ACC=1 L4SerPos9=1.
If serpos=10 AND list=4 AND ACC=1 L4SerPos10=1.
EXECUTE.

If serpos=1 AND list=5 AND ACC=1 L5SerPos1=1.
If serpos=2 AND list=5 AND ACC=1 L5SerPos2=1.
If serpos=3 AND list=5 AND ACC=1 L5SerPos3=1.
If serpos=4 AND list=5 AND ACC=1 L5SerPos4=1.
If serpos=5 AND list=5 AND ACC=1 L5SerPos5=1.
If serpos=6 AND list=5 AND ACC=1 L5SerPos6=1.
If serpos=7 AND list=5 AND ACC=1 L5SerPos7=1.
If serpos=8 AND list=5 AND ACC=1 L5SerPos8=1.
If serpos=9 AND list=5 AND ACC=1 L5SerPos9=1.
If serpos=10 AND list=5 AND ACC=1 L5SerPos10=1.
EXECUTE.

*****************************************************************************
** In aggregate file:
** Data -> Aggregate 
** Break Variable = Subject
** Summaries of Vars = newly created variables listed above (calculate sums)
*****************************************************************************

******* SERIAL POSITION *******

COMPUTE SerPos1Tot = SUM(L1SerPos1_sum, L2SerPos1_sum, L3SerPos1_sum, L4SerPos1_sum, L5SerPos1_sum).
COMPUTE SerPos2Tot = SUM(L1SerPos2_sum, L2SerPos2_sum, L3SerPos2_sum, L4SerPos2_sum, L5SerPos2_sum).
COMPUTE SerPos3Tot = SUM(L1SerPos3_sum, L2SerPos3_sum, L3SerPos3_sum, L4SerPos3_sum, L5SerPos3_sum).
COMPUTE SerPos4Tot = SUM(L1SerPos4_sum, L2SerPos4_sum, L3SerPos4_sum, L4SerPos4_sum, L5SerPos4_sum).
COMPUTE SerPos5Tot = SUM(L1SerPos5_sum, L2SerPos5_sum, L3SerPos5_sum, L4SerPos5_sum, L5SerPos5_sum).
COMPUTE SerPos6Tot = SUM(L1SerPos6_sum, L2SerPos6_sum, L3SerPos6_sum, L4SerPos6_sum, L5SerPos6_sum).
COMPUTE SerPos7Tot = SUM(L1SerPos7_sum, L2SerPos7_sum, L3SerPos7_sum, L4SerPos7_sum, L5SerPos7_sum).
COMPUTE SerPos8Tot = SUM(L1SerPos8_sum, L2SerPos8_sum, L3SerPos8_sum, L4SerPos8_sum, L5SerPos8_sum).
COMPUTE SerPos9Tot = SUM(L1SerPos9_sum, L2SerPos9_sum, L3SerPos9_sum, L4SerPos9_sum, L5SerPos9_sum).
COMPUTE SerPos10Tot = SUM(L1SerPos10_sum, L2SerPos10_sum, L3SerPos10_sum, L4SerPos10_sum, L5SerPos10_sum).
EXECUTE.

** dividing by 5 b/c there were 5 total lists (each serpos only occurs once per list 

COMPUTE SerPos1Prop = SerPos1Tot/5.
COMPUTE SerPos2Prop = SerPos2Tot/5.
COMPUTE SerPos3Prop = SerPos3Tot/5.
COMPUTE SerPos4Prop = SerPos4Tot/5.
COMPUTE SerPos5Prop = SerPos5Tot/5.
COMPUTE SerPos6Prop = SerPos6Tot/5.
COMPUTE SerPos7Prop = SerPos7Tot/5.
COMPUTE SerPos8Prop = SerPos8Tot/5.
COMPUTE SerPos9Prop = SerPos9Tot/5.
COMPUTE SerPos10Prop = SerPos10Tot/5.
EXECUTE.

** OVERALL RECALL ACCURACY **

COMPUTE RecallTotalL1=SUM(L1SerPos1_sum, L1SerPos2_sum, L1SerPos3_sum, L1SerPos4_sum, L1SerPos5_sum, L1SerPos6_sum, 
    L1SerPos7_sum, L1SerPos8_sum, L1SerPos9_sum, L1SerPos10_sum).
EXECUTE.

COMPUTE RecallTotalL2=SUM(L2SerPos1_sum, L2SerPos2_sum, L2SerPos3_sum, L2SerPos4_sum, L2SerPos5_sum, L2SerPos6_sum, 
    L2SerPos7_sum, L2SerPos8_sum, L2SerPos9_sum, L2SerPos10_sum).
EXECUTE.

COMPUTE RecallTotalL3=SUM(L3SerPos1_sum, L3SerPos2_sum, L3SerPos3_sum, L3SerPos4_sum, L3SerPos5_sum, L3SerPos6_sum, 
    L3SerPos7_sum, L3SerPos8_sum, L3SerPos9_sum, L3SerPos10_sum).
EXECUTE.

COMPUTE RecallTotalL4=SUM(L4SerPos1_sum, L4SerPos2_sum, L4SerPos3_sum, L4SerPos4_sum, L4SerPos5_sum, L4SerPos6_sum, 
    L4SerPos7_sum, L4SerPos8_sum, L4SerPos9_sum, L4SerPos10_sum).
EXECUTE.

COMPUTE RecallTotalL5=SUM(L5SerPos1_sum, L5SerPos2_sum, L5SerPos3_sum, L5SerPos4_sum, L5SerPos5_sum, L5SerPos6_sum, 
    L5SerPos7_sum, L5SerPos8_sum, L5SerPos9_sum, L5SerPos10_sum).
EXECUTE.

** dividing by 10 b/c there were 10 words per list

COMPUTE L1PropCorr = RecallTotalL1/10.
COMPUTE L2PropCorr = RecallTotalL2/10.
COMPUTE L3PropCorr = RecallTotalL3/10.
COMPUTE L4PropCorr = RecallTotalL4/10.
COMPUTE L5PropCorr = RecallTotalL5/10.
EXECUTE.

COMPUTE MeanPropCorr = Mean(L1PropCorr, L2PropCorr, L3PropCorr, L4PropCorr, L5PropCorr).
EXECUTE.

**************************************************************************
***************************** RAW DATA FILE *****************************
* Calculating conditional response probability as a function of lag (lag CRPs) *
***************************************************************************

* Lag CRPs illustrate the probability that an item from serial position i + lag is recalled immediately 
    following an item from serial position i

CREATE
  /serpos2=LEAD(serpos 1).

CREATE
  /listsreal2=LEAD(list 1).

*ACC is our code for whether the item was recalled or not

If ACC = 1 & list = listsreal2 CRP = serpos - serpos2.
EXECUTE.

COMPUTE CRP = CRP * -1.
EXECUTE.

* positive (forward direction)

If crp = 1 crp1 = 1.
If crp = 2 crp2 = 1.
If crp = 3 crp3 = 1.
If crp = 4 crp4 = 1.
If crp = 5 crp5 = 1.
If crp = 6 crp6 = 1.
If crp = 7 crp7 = 1.
If crp = 8 crp8 = 1.
If crp = 9 crp9 = 1.
If crp = 10 crp10 = 1.
EXECUTE.

* negative (backward direction)

If crp = -1 crp1n = 1.
If crp = -2 crp2n = 1.
If crp = -3 crp3n = 1.
If crp = -4 crp4n = 1.
If crp = -5 crp5n = 1.
If crp = -6 crp6n = 1.
If crp = -7 crp7n = 1.
If crp = -8 crp8n = 1.
If crp = -9 crp9n = 1.
If crp = -10 crp10n = 1.
EXECUTE.


*CRPd serpos 1.
*no backward transitions possible.
If serpos = 1 crpd9 = 1.
If serpos = 1 crpd8 = 1.
If serpos = 1 crpd7 = 1.
If serpos = 1 crpd6 = 1.
If serpos = 1 crpd5 = 1.
If serpos = 1 crpd4 = 1.
If serpos = 1 crpd3 = 1.
If serpos = 1 crpd2 = 1.
If serpos = 1 crpd1 = 1.
EXECUTE.

*CRPd serpos 2.
*1 backward transition possible.
*8 forward transitions possible.
If serpos = 2 crpd1n = 1.
If serpos = 2 crpd8 = 1.
If serpos = 2 crpd7 = 1.
If serpos = 2 crpd6 = 1.
If serpos = 2 crpd5 = 1.
If serpos = 2 crpd4 = 1.
If serpos = 2 crpd3 = 1.
If serpos = 2 crpd2 = 1.
If serpos = 2 crpd1 = 1.
EXECUTE.

*CRPd serpos 3.
*2 backward transitions possible.
*7 forward transitions possible.
If serpos = 3 crpd1n = 1.
If serpos = 3 crpd2n = 1.
If serpos = 3 crpd7 = 1.
If serpos = 3 crpd6 = 1.
If serpos = 3 crpd5 = 1.
If serpos = 3 crpd4 = 1.
If serpos = 3 crpd3 = 1.
If serpos = 3 crpd2 = 1.
If serpos = 3 crpd1 = 1.
EXECUTE.

*CRPd serpos 4.
*3 backward transitions possible.
*6 forward transitions possible.
If serpos = 4 crpd1n = 1.
If serpos = 4 crpd2n = 1.
If serpos = 4 crpd3n = 1.
If serpos = 4 crpd6 = 1.
If serpos = 4 crpd5 = 1.
If serpos = 4 crpd4 = 1.
If serpos = 4 crpd3 = 1.
If serpos = 4 crpd2 = 1.
If serpos = 4 crpd1 = 1.
EXECUTE.

*CRPd serpos 5.
*4 backward transitions possible.
*5 forward transitions possible.
If serpos = 5 crpd1n = 1.
If serpos = 5 crpd2n = 1.
If serpos = 5 crpd3n = 1.
If serpos = 5 crpd4n = 1.
If serpos = 5 crpd5 = 1.
If serpos = 5 crpd4 = 1.
If serpos = 5 crpd3 = 1.
If serpos = 5 crpd2 = 1.
If serpos = 5 crpd1 = 1.
EXECUTE.

*CRPd serpos 6.
*5 backward transitions possible.
*4 forward transitions possible.
If serpos = 6 crpd1n = 1.
If serpos = 6 crpd2n = 1.
If serpos = 6 crpd3n = 1.
If serpos = 6 crpd4n = 1.
If serpos = 6 crpd5n = 1.
If serpos = 6 crpd4 = 1.
If serpos = 6 crpd3 = 1.
If serpos = 6 crpd2 = 1.
If serpos = 6 crpd1 = 1.
EXECUTE.

*CRPd serpos 7.
*6 backward transitions possible.
*3 forward transitions possible.
If serpos = 7 crpd1n = 1.
If serpos = 7 crpd2n = 1.
If serpos = 7 crpd3n = 1.
If serpos = 7 crpd4n = 1.
If serpos = 7 crpd5n = 1.
If serpos = 7 crpd6n = 1.
If serpos = 7 crpd3 = 1.
If serpos = 7 crpd2 = 1.
If serpos = 7 crpd1 = 1.
EXECUTE.

*CRPd serpos 8.
*7 backward transitions possible.
*2 forward transitions possible.
If serpos = 8 crpd1n = 1.
If serpos = 8 crpd2n = 1.
If serpos = 8 crpd3n = 1.
If serpos = 8 crpd4n = 1.
If serpos = 8 crpd5n = 1.
If serpos = 8 crpd6n = 1.
If serpos = 8 crpd7n = 1.
If serpos = 8 crpd2 = 1.
If serpos = 8 crpd1 = 1.
EXECUTE.

*CRPd serpos 9.
*8 backward transitions possible.
*1 forward transitions possible.
If serpos = 9 crpd1n = 1.
If serpos = 9 crpd2n = 1.
If serpos = 9 crpd3n = 1.
If serpos = 9 crpd4n = 1.
If serpos = 9 crpd5n = 1.
If serpos = 9 crpd6n = 1.
If serpos = 9 crpd7n = 1.
If serpos = 9 crpd8n = 1.
If serpos = 9 crpd1 = 1.
EXECUTE.

*CRPd serpos 10.
*no forwardd transitions possible.
If serpos = 10 crpd1n = 1.
If serpos = 10 crpd2n = 1.
If serpos = 10 crpd3n = 1.
If serpos = 10 crpd4n = 1.
If serpos = 10 crpd5n = 1.
If serpos = 10 crpd6n = 1.
If serpos = 10 crpd7n = 1.
If serpos = 10 crpd8n = 1.
If serpos = 10 crpd9n = 1.
EXECUTE.

*****************************************************************************
** In aggregate file:
** Data -> Aggregate 
** Break Variable = Subject
** Summaries of Vars = newly created variables listed above (calculate SUMS)
*****************************************************************************

*Converting to proportions
*These are the variables you will be running your analyses on!

COMPUTE crpdp1 = crp1_sum / crpd1_sum.
COMPUTE crpdp2 = crp2_sum / crpd2_sum.
COMPUTE crpdp3 = crp3_sum / crpd3_sum.
COMPUTE crpdp4 = crp4_sum / crpd4_sum.
COMPUTE crpdp5 = crp5_sum / crpd5_sum.
COMPUTE crpdp6 = crp6_sum / crpd6_sum.
COMPUTE crpdp7 = crp7_sum / crpd7_sum.
COMPUTE crpdp8 = crp8_sum / crpd8_sum.
COMPUTE crpdp9 = crp9_sum / crpd9_sum.
COMPUTE crpdp1n = crp1n_sum / crpd1n_sum.
COMPUTE crpdp2n = crp2n_sum / crpd2n_sum.
COMPUTE crpdp3n = crp3n_sum / crpd3n_sum.
COMPUTE crpdp4n = crp4n_sum / crpd4n_sum.
COMPUTE crpdp5n = crp5n_sum / crpd5n_sum.
COMPUTE crpdp6n = crp6n_sum / crpd6n_sum.
COMPUTE crpdp7n = crp7n_sum / crpd7n_sum.
COMPUTE crpdp8n = crp8n_sum / crpd8n_sum.
COMPUTE crpdp9n = crp9n_sum / crpd9n_sum.
EXECUTE.

************************************************************************
**************************** RAW DATA FILE ****************************
******* Calculating recall latencies and inter-response times (IRTs)  ******* 
*************************************************************************

* Recall latency refers to the time point during the recall period when any given item is recalled, 
    and mean recall latency is simply the average time it takes to recall items
* IRTs are defined as the time between consecutive retrievals. 

* RTs are measured with respect to when participants press enter after each word is typed

* create var indicating start time (when participants began recalling items) for each list 

If subtrial = 1 start = Recall.OnsetTime.
EXECUTE.

* ensure start time is the same for all outputted items per list

If missing(start) start = lag(start).
EXECUTE.

*filter out any blanks (we want to keep correct and incorrect responses)

select If ACC > -1.
EXECUTE.

*******************************************************
*******************************************************
******************* NASH'S METHOD *******************
could simplify by not creating new var and
rely on subtrial instead--but subtrial is coded by the
experimenter while coding data, so subtrial is more 
prone to errors; safest to create new vars 
*******************************************************
*******************************************************

* create vars that indicate when change in list occured
    (i.e, when a mismatch occurs between list and list2)

compute list2 = lag(list).
EXECUTE.

If list ne list2 subtrial2 = 1.
EXECUTE.

* note, because of the lag, the program has not coded the start of list 1 for the first subject; 
    need to manually enter 1 here

* create vars that indicate when change in subtrial occured
    within a given list

If subtrial2 = 1 recode = 1.
EXECUTE.

do If missing(recode) .
compute recode = lag(recode) + 1.
end If.
EXECUTE.

* All rts in one column.
* rtime is simply Recall.RTTime renamed
    
* in terms of the number of subtrials/recodes to include, most ss (99.3%)
    in the present dataset enter 15 or fewer responses (this is the value typically used for Nash)
* in the present dataset,  there are a few instances in which a participant entered up to 20 responses
    (examine frequencies of subtrial)
* there is someone who entered up to 25 responses...

IF recode = 1 & rtime > 0  rt = rtime - start.
IF recode = 2 & rtime > 0  rt = rtime - start.
IF recode = 3 & rtime > 0  rt = rtime - start.
IF recode = 4 & rtime > 0  rt = rtime - start.
IF recode = 5 & rtime > 0  rt = rtime - start.
IF recode = 6 & rtime > 0  rt = rtime - start.
IF recode = 7 & rtime > 0  rt = rtime - start.
IF recode = 8 & rtime > 0  rt = rtime - start.
IF recode = 9 & rtime > 0  rt = rtime - start.
IF recode = 10 & rtime > 0  rt = rtime - start.
IF recode = 11 & rtime > 0  rt = rtime - start.
IF recode = 12 & rtime > 0  rt = rtime - start.
IF recode = 13 & rtime > 0  rt = rtime - start.
IF recode = 14 & rtime > 0  rt = rtime - start.
IF recode = 15 & rtime > 0  rt = rtime - start.
IF recode = 16 & rtime > 0  rt = rtime - start.
IF recode = 17 & rtime > 0  rt = rtime - start.
IF recode = 18 & rtime > 0  rt = rtime - start.
IF recode = 19 & rtime > 0  rt = rtime - start.
IF recode = 20 & rtime > 0  rt = rtime - start.
IF recode = 21 & rtime > 0  rt = rtime - start.
IF recode = 22 & rtime > 0  rt = rtime - start.
IF recode = 23 & rtime > 0  rt = rtime - start.
IF recode = 24 & rtime > 0  rt = rtime - start.
IF recode = 25 & rtime > 0  rt = rtime - start.
EXECUTE.

* latency to the first response is merely rt when recode = 1

* mean recall latency is mean rt

* calculate overall IRT based on RT (time between consecutive retrievals)

If recode ~= 1 IRT = rt -lag(rt).
EXECUTE.

*****************************************************************************
** In aggregate file:
** Data -> Aggregate 
** Break Variable = Subject and recode (which is really output position within a list)
    drop recode if merely wanting mean IRTs! (need to convert to s)
** Summaries of Vars = newly created IRT variable (calculate mean)
*****************************************************************************

* examine whether IRTs become slower with each successive retrieval (only need first few
    trials b/c most people cannot remember all 10 words)

If recode = 2 IRTs_w1w2 = IRT_mean/1000.
If recode = 3 IRTs_w2w3 = IRT_mean/1000.
If recode = 4 IRTs_w3w4 = IRT_mean/1000.
If recode = 5 IRTs_w4w5 = IRT_mean/1000.
If recode = 6 IRTs_w5w6 = IRT_mean/1000.
EXECUTE.

*****************************************************************************
** Create another aggregate file:
** Data -> Aggregate 
** Break Variable = Subject
** Summaries of Vars = the five newly created IRT variables (calculate mean)
*****************************************************************************

* that's it for IRTs and recall latency!!

**************************************************************
*********************** RAW DATA FILE ***********************
******* Calculating the probabability of first recall (PFR)  ******* 
**************************************************************

* PFR refers to the number of times the first word recalled comes from a given serial position divided 
    by the number of times the first recalled word could have come from that serial position.

If serpos = 1 S1 = 1.
If serpos = 2 S2 = 1.
If serpos = 3 S3 = 1.
If serpos = 4 S4 = 1.
If serpos = 5 S5 = 1.
If serpos = 6 S6 = 1.
If serpos = 7 S7 = 1.
If serpos = 8 S8 = 1.
If serpos = 9 S9 = 1.
If serpos = 10 S10 = 1.
EXECUTE.


If recode = 1 & serpos = 1 PFR1 = 1.
If recode = 1 & serpos = 2 PFR2 = 1.
If recode = 1 & serpos = 3 PFR3 = 1.
If recode = 1 & serpos = 4 PFR4 = 1.
If recode = 1 & serpos = 5 PFR5 = 1.
If recode = 1 & serpos = 6 PFR6 = 1.
If recode = 1 & serpos = 7 PFR7 = 1.
If recode = 1 & serpos = 8 PFR8 = 1.
If recode = 1 & serpos = 9 PFR9 = 1.
If recode = 1 & serpos = 10 PFR10 = 1.
EXECUTE.

*****************************************************************************
** In aggregate file:
** Data -> Aggregate 
** Break Variable = Subject
** Summaries of Vars = ten newly created PFR variables (calculate SUM)
*****************************************************************************

*convert to proportions (dividing by 5 b/c there are 5 total lists)

COMPUTE PFR1_prop=PFR1_sum / 5.
COMPUTE PFR2_prop=PFR2_sum / 5.
COMPUTE PFR3_prop=PFR3_sum / 5.
COMPUTE PFR4_prop=PFR4_sum / 5.
COMPUTE PFR5_prop=PFR5_sum / 5.
COMPUTE PFR6_prop=PFR6_sum / 5.
COMPUTE PFR7_prop=PFR7_sum / 5.
COMPUTE PFR8_prop=PFR8_sum / 5.
COMPUTE PFR9_prop=PFR9_sum / 5.
COMPUTE PFR10_prop=PFR10_sum / 5.
EXECUTE.
