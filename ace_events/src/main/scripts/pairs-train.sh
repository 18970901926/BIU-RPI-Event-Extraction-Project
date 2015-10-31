. ./env-regular-biutee.sh

echo Pairs-Train
java -server -Xmx20g ac.biu.nlp.nlp.engineml.rteflow.systems.rtepairs.RTEPairsMultiThreadTrainer $RUN/biutee.xml

