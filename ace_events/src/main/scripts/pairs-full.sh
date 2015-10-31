. ./env-regular-biutee.sh

echo Pairs-Full
PROGRESS_PATH=$RUN/progress.log
echo Pairs-Full > $PROGRESS_PATH

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

