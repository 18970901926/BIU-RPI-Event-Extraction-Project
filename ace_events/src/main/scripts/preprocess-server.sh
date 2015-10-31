. ./env-vars-biutee.sh
echo Preprocess-Server

java -server -Xmx20g ac.biu.nlp.entail_preprocess.PreprocessServer $RUN/excitement_biu.xml "biutee preprocessor" 8800
