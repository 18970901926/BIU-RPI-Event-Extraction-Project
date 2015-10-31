. ./env-regular-biutee.sh

echo Sum-Train
java -server -Xmx20g ac.biu.nlp.nlp.engineml.rteflow.systems.rtesum.RTESumTrainer $RUN/biutee.xml

