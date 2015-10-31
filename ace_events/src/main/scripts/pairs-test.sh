. ./env-regular-biutee.sh

echo Pairs-Test
java -server -Xmx20g ac.biu.nlp.nlp.engineml.rteflow.systems.rtepairs.RTEPairsMultiThreadTester $RUN/biutee.xml

