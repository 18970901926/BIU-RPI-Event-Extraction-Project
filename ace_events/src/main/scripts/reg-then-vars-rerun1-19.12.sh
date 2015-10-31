PROGRESS_PATH=./progress.log
echo reg-then-vars-rerun1-19.12 > $PROGRESS_PATH


. ./env-regular-biutee.sh
RUN=$RUNS/Research/2012.12.19..3__regular_RTE3__rerun1

date +"[%D %T] Building train and test config files..." >> $PROGRESS_PATH
python configure_train_test.py $DATASET_NAME $DEV_SET_PATH $TEST_SET_PATH
date +"[%D %T] Done building train and test config files." >> $PROGRESS_PATH

date +"[%D %T] Running preprocess of test..." >> $PROGRESS_PATH
java -server -Xmx20g ac.biu.nlp.nlp.engineml.rteflow.systems.rtepairs.RTEPairsPreProcessor $RUN/biutee_test.xml
date +"[%D %T] Done preprocess of test." >> $PROGRESS_PATH

date +"[%D %T] Running testing..." >> $PROGRESS_PATH
java -server -Xmx20g ac.biu.nlp.nlp.engineml.rteflow.systems.rtepairs.RTEPairsMultiThreadTester $RUN/biutee_test.xml
date +"[%D %T] Done testing." >> $PROGRESS_PATH


. ./env-vars-biutee.sh
RUN=$RUNS/Research/2012.12.19..4__vars_RTE3__no_vars_rerun1
MODEL_FOLDER=.

date +"[%D %T] Running vars on RTE3_test___no_vars.xml..." >> $PROGRESS_PATH
java -server -Xmx20g ac.biu.nlp.ie_over_entailment.VarExperiment $RUN/excitement_biu.xml "biutee" $RUN/RTE3_test___no_vars.xml
date +"[%D %T] Done vars." >> $PROGRESS_PATH
