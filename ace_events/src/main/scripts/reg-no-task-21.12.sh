PROGRESS_PATH=./progress.log
echo reg-no-task-21.12 > $PROGRESS_PATH


. ./env-regular-biutee.sh
RUN=$RUNS/Research/2012.12.21..1__regular_RTE3__no_task
TEST_SET_PATH=$RUN/RTE3_test_no_task.xml

date +"[%D %T] Building train and test config files..." >> $PROGRESS_PATH
python configure_train_test.py $DATASET_NAME $DEV_SET_PATH $TEST_SET_PATH
date +"[%D %T] Done building train and test config files." >> $PROGRESS_PATH

date +"[%D %T] Running preprocess of test..." >> $PROGRESS_PATH
java -server -Xmx20g ac.biu.nlp.nlp.engineml.rteflow.systems.rtepairs.RTEPairsPreProcessor $RUN/biutee_test.xml
date +"[%D %T] Done preprocess of test." >> $PROGRESS_PATH

date +"[%D %T] Running testing..." >> $PROGRESS_PATH
java -server -Xmx20g ac.biu.nlp.nlp.engineml.rteflow.systems.rtepairs.RTEPairsMultiThreadTester $RUN/biutee_test.xml
date +"[%D %T] Done testing." >> $PROGRESS_PATH
