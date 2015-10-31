PROGRESS_PATH=./progress.log
echo reg0then-vars-18.12 > $PROGRESS_PATH


. ./env-regular-biutee.sh
RUN=$RUNS/Research/2012.12.18__regular_RTE3_with_var_features_merged_from_erel
DEV_SET_PATH=$BIUTEE/data/Datasets/RTE/3/Dev/dev-tiny.xml
TEST_SET_PATH=$BIUTEE/data/Datasets/RTE/3/Test/test-tiny.xml

date +"[%D %T] Building train and test config files..." >> $PROGRESS_PATH
python configure_train_test.py $DATASET_NAME $DEV_SET_PATH $TEST_SET_PATH
date +"[%D %T] Done building train and test config files." >> $PROGRESS_PATH

date +"[%D %T] Running preprocess of train..." >> $PROGRESS_PATH
java -server -Xmx20g ac.biu.nlp.nlp.engineml.rteflow.systems.rtepairs.RTEPairsPreProcessor $RUN/biutee_train.xml
date +"[%D %T] Done preprocess of train." >> $PROGRESS_PATH

date +"[%D %T] Running preprocess of test..." >> $PROGRESS_PATH
java -server -Xmx20g ac.biu.nlp.nlp.engineml.rteflow.systems.rtepairs.RTEPairsPreProcessor $RUN/biutee_test.xml
date +"[%D %T] Done preprocess of test." >> $PROGRESS_PATH

date +"[%D %T] Running training..." >> $PROGRESS_PATH
java -server -Xmx20g ac.biu.nlp.nlp.engineml.rteflow.systems.rtepairs.RTEPairsMultiThreadTrainer $RUN/biutee_train.xml
date +"[%D %T] Done training." >> $PROGRESS_PATH

date +"[%D %T] Running testing..." >> $PROGRESS_PATH
java -server -Xmx20g ac.biu.nlp.nlp.engineml.rteflow.systems.rtepairs.RTEPairsMultiThreadTester $RUN/biutee_test.xml
date +"[%D %T] Done testing." >> $PROGRESS_PATH


. ./env-vars-biutee.sh
RUN=$RUNS/Research/2012.12.09__entailer_RTE3_no_vars__config_like_biutee
MODEL_FOLDER=.

date +"[%D %T] Running vars on RTE3_test___no_vars_mini.xml..." >> $PROGRESS_PATH
java -server -Xmx20g ac.biu.nlp.ie_over_entailment.VarExperiment $RUN/excitement_biu.xml "biutee" $RUN/RTE3_test___no_vars_mini.xml
date +"[%D %T] Done vars." >> $PROGRESS_PATH
