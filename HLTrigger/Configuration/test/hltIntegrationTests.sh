#! /bin/tcsh

cmsenv

rehash

set InputFile = file:/tmp/fwyzard/B814262C-EE97-E011-94FB-003048F118AA.root

hltIntegrationTests /dev/CMSSW_4_2_0/GRun -d hltIntegrationTests -i $InputFile -n 100 -j 2      -x "--l1-emulator" -x "--l1 L1GtTriggerMenu_L1Menu_Collisions2011_v4_mc,sqlite_file:/afs/cern.ch/user/g/ghete/public/L1Menu/L1Menu_Collisions2011_v4/sqlFile/L1Menu_Collisions2011_v4_mc.db"

set InputFile =  file:../RelVal_DigiL1Raw_GRun.root

hltIntegrationTests /dev/CMSSW_4_2_0/GRun -d hltIntegrationTests -i $InputFile -n 100 -j 2 --mc -x "--l1-emulator" -x "--l1 L1GtTriggerMenu_L1Menu_Collisions2011_v4_mc,sqlite_file:/afs/cern.ch/user/g/ghete/public/L1Menu/L1Menu_Collisions2011_v4/sqlFile/L1Menu_Collisions2011_v4_mc.db"
