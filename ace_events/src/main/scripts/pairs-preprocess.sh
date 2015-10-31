. ./env-regular-biutee.sh

echo Pairs-Preprocess
java -server -Xmx20g ac.biu.nlp.nlp.engineml.rteflow.systems.rtepairs.RTEPairsPreProcessor $RUN/biutee.xml

