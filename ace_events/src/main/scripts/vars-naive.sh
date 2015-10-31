. ./env-vars-biutee.sh
echo Vars

java -server -Xmx20g ac.biu.nlp.ie_over_entailment.VarExperiment $RUN/excitement_biu.xml "naive biutee" biutee $RUN/test.xml
