. ./env-vars-biutee.sh
echo Vars
killall -9 java
killall -9 python



PREPROCESS_SERVER_PORT=8201
EASYFIRST_PORT=8301
cd /u/ir/bronsho/biutee/wd/wd01

echo starting wd01...
python /usr/lib/nlp/jars/easyfirst/ready/sdparser_server.py $EASYFIRST_PORT &
sleep 7
java -server -Xmx10g ac.biu.nlp.entail_preprocess.PreprocessServer $RUN/excitement_biu.xml "biutee preprocessor" $PREPROCESS_SERVER_PORT &
sleep 4
java -server -Xmx4g ac.biu.nlp.ie_over_entailment.VarExperiment $RUN/excitement_biu.xml "naive biutee" biutee $RUN/test01.xml &
echo started wd01!
echo ==========================================================================================================================


PREPROCESS_SERVER_PORT=8202
EASYFIRST_PORT=8302
cd /u/ir/bronsho/biutee/wd/wd02

echo starting wd02...
python /usr/lib/nlp/jars/easyfirst/ready/sdparser_server.py $EASYFIRST_PORT &
sleep 7
java -server -Xmx10g ac.biu.nlp.entail_preprocess.PreprocessServer $RUN/excitement_biu.xml "biutee preprocessor" $PREPROCESS_SERVER_PORT &
sleep 4
java -server -Xmx4g ac.biu.nlp.ie_over_entailment.VarExperiment $RUN/excitement_biu.xml "naive biutee" biutee $RUN/test02.xml &
echo started wd02!
echo ==========================================================================================================================


PREPROCESS_SERVER_PORT=8203
EASYFIRST_PORT=8303
cd /u/ir/bronsho/biutee/wd/wd03

echo starting wd03...
python /usr/lib/nlp/jars/easyfirst/ready/sdparser_server.py $EASYFIRST_PORT &
sleep 7
java -server -Xmx10g ac.biu.nlp.entail_preprocess.PreprocessServer $RUN/excitement_biu.xml "biutee preprocessor" $PREPROCESS_SERVER_PORT &
sleep 4
java -server -Xmx4g ac.biu.nlp.ie_over_entailment.VarExperiment $RUN/excitement_biu.xml "naive biutee" biutee $RUN/test03.xml &
echo started wd03!
echo ==========================================================================================================================


PREPROCESS_SERVER_PORT=8204
EASYFIRST_PORT=8304
cd /u/ir/bronsho/biutee/wd/wd04

echo starting wd04...
python /usr/lib/nlp/jars/easyfirst/ready/sdparser_server.py $EASYFIRST_PORT &
sleep 7
java -server -Xmx10g ac.biu.nlp.entail_preprocess.PreprocessServer $RUN/excitement_biu.xml "biutee preprocessor" $PREPROCESS_SERVER_PORT &
sleep 4
java -server -Xmx4g ac.biu.nlp.ie_over_entailment.VarExperiment $RUN/excitement_biu.xml "naive biutee" biutee $RUN/test04.xml &
echo started wd04!
echo ==========================================================================================================================


PREPROCESS_SERVER_PORT=8205
EASYFIRST_PORT=8305
cd /u/ir/bronsho/biutee/wd/wd05

echo starting wd05...
python /usr/lib/nlp/jars/easyfirst/ready/sdparser_server.py $EASYFIRST_PORT &
sleep 7
java -server -Xmx10g ac.biu.nlp.entail_preprocess.PreprocessServer $RUN/excitement_biu.xml "biutee preprocessor" $PREPROCESS_SERVER_PORT &
sleep 4
java -server -Xmx4g ac.biu.nlp.ie_over_entailment.VarExperiment $RUN/excitement_biu.xml "naive biutee" biutee $RUN/test05.xml &
echo started wd05!
echo ==========================================================================================================================


PREPROCESS_SERVER_PORT=8206
EASYFIRST_PORT=8306
cd /u/ir/bronsho/biutee/wd/wd06

echo starting wd06...
python /usr/lib/nlp/jars/easyfirst/ready/sdparser_server.py $EASYFIRST_PORT &
sleep 7
java -server -Xmx10g ac.biu.nlp.entail_preprocess.PreprocessServer $RUN/excitement_biu.xml "biutee preprocessor" $PREPROCESS_SERVER_PORT &
sleep 4
java -server -Xmx4g ac.biu.nlp.ie_over_entailment.VarExperiment $RUN/excitement_biu.xml "naive biutee" biutee $RUN/test06.xml &
echo started wd06!
echo ==========================================================================================================================


PREPROCESS_SERVER_PORT=8207
EASYFIRST_PORT=8307
cd /u/ir/bronsho/biutee/wd/wd07

echo starting wd07...
python /usr/lib/nlp/jars/easyfirst/ready/sdparser_server.py $EASYFIRST_PORT &
sleep 7
java -server -Xmx10g ac.biu.nlp.entail_preprocess.PreprocessServer $RUN/excitement_biu.xml "biutee preprocessor" $PREPROCESS_SERVER_PORT &
sleep 4
java -server -Xmx4g ac.biu.nlp.ie_over_entailment.VarExperiment $RUN/excitement_biu.xml "naive biutee" biutee $RUN/test07.xml &
echo started wd07!
echo ==========================================================================================================================


PREPROCESS_SERVER_PORT=8208
EASYFIRST_PORT=8308
cd /u/ir/bronsho/biutee/wd/wd08

echo starting wd08...
python /usr/lib/nlp/jars/easyfirst/ready/sdparser_server.py $EASYFIRST_PORT &
sleep 7
java -server -Xmx10g ac.biu.nlp.entail_preprocess.PreprocessServer $RUN/excitement_biu.xml "biutee preprocessor" $PREPROCESS_SERVER_PORT &
sleep 4
java -server -Xmx4g ac.biu.nlp.ie_over_entailment.VarExperiment $RUN/excitement_biu.xml "naive biutee" biutee $RUN/test08.xml &
echo started wd08!
echo ==========================================================================================================================


PREPROCESS_SERVER_PORT=8209
EASYFIRST_PORT=8309
cd /u/ir/bronsho/biutee/wd/wd09

echo starting wd09...
python /usr/lib/nlp/jars/easyfirst/ready/sdparser_server.py $EASYFIRST_PORT &
sleep 7
java -server -Xmx10g ac.biu.nlp.entail_preprocess.PreprocessServer $RUN/excitement_biu.xml "biutee preprocessor" $PREPROCESS_SERVER_PORT &
sleep 4
java -server -Xmx4g ac.biu.nlp.ie_over_entailment.VarExperiment $RUN/excitement_biu.xml "naive biutee" biutee $RUN/test09.xml &
echo started wd09!
echo ==========================================================================================================================


PREPROCESS_SERVER_PORT=8210
EASYFIRST_PORT=8310
cd /u/ir/bronsho/biutee/wd/wd10

echo starting wd10...
python /usr/lib/nlp/jars/easyfirst/ready/sdparser_server.py $EASYFIRST_PORT &
sleep 7
java -server -Xmx10g ac.biu.nlp.entail_preprocess.PreprocessServer $RUN/excitement_biu.xml "biutee preprocessor" $PREPROCESS_SERVER_PORT &
sleep 4
java -server -Xmx4g ac.biu.nlp.ie_over_entailment.VarExperiment $RUN/excitement_biu.xml "naive biutee" biutee $RUN/test10.xml &
echo started wd10!
echo ==========================================================================================================================


PREPROCESS_SERVER_PORT=8211
EASYFIRST_PORT=8311
cd /u/ir/bronsho/biutee/wd/wd11

echo starting wd11...
python /usr/lib/nlp/jars/easyfirst/ready/sdparser_server.py $EASYFIRST_PORT &
sleep 7
java -server -Xmx10g ac.biu.nlp.entail_preprocess.PreprocessServer $RUN/excitement_biu.xml "biutee preprocessor" $PREPROCESS_SERVER_PORT &
sleep 4
java -server -Xmx4g ac.biu.nlp.ie_over_entailment.VarExperiment $RUN/excitement_biu.xml "naive biutee" biutee $RUN/test11.xml &
echo started wd11!
echo ==========================================================================================================================


PREPROCESS_SERVER_PORT=8212
EASYFIRST_PORT=8312
cd /u/ir/bronsho/biutee/wd/wd12

echo starting wd12...
python /usr/lib/nlp/jars/easyfirst/ready/sdparser_server.py $EASYFIRST_PORT &
sleep 7
java -server -Xmx10g ac.biu.nlp.entail_preprocess.PreprocessServer $RUN/excitement_biu.xml "biutee preprocessor" $PREPROCESS_SERVER_PORT &
sleep 4
java -server -Xmx4g ac.biu.nlp.ie_over_entailment.VarExperiment $RUN/excitement_biu.xml "naive biutee" biutee $RUN/test12.xml &
echo started wd12!
echo ==========================================================================================================================


PREPROCESS_SERVER_PORT=8213
EASYFIRST_PORT=8313
cd /u/ir/bronsho/biutee/wd/wd13

echo starting wd13...
python /usr/lib/nlp/jars/easyfirst/ready/sdparser_server.py $EASYFIRST_PORT &
sleep 7
java -server -Xmx10g ac.biu.nlp.entail_preprocess.PreprocessServer $RUN/excitement_biu.xml "biutee preprocessor" $PREPROCESS_SERVER_PORT &
sleep 4
java -server -Xmx4g ac.biu.nlp.ie_over_entailment.VarExperiment $RUN/excitement_biu.xml "naive biutee" biutee $RUN/test13.xml &
echo started wd13!
echo ==========================================================================================================================


PREPROCESS_SERVER_PORT=8214
EASYFIRST_PORT=8314
cd /u/ir/bronsho/biutee/wd/wd14

echo starting wd14...
python /usr/lib/nlp/jars/easyfirst/ready/sdparser_server.py $EASYFIRST_PORT &
sleep 7
java -server -Xmx10g ac.biu.nlp.entail_preprocess.PreprocessServer $RUN/excitement_biu.xml "biutee preprocessor" $PREPROCESS_SERVER_PORT &
sleep 4
java -server -Xmx4g ac.biu.nlp.ie_over_entailment.VarExperiment $RUN/excitement_biu.xml "naive biutee" biutee $RUN/test14.xml &
echo started wd14!
echo ==========================================================================================================================


PREPROCESS_SERVER_PORT=8215
EASYFIRST_PORT=8315
cd /u/ir/bronsho/biutee/wd/wd15

echo starting wd15...
python /usr/lib/nlp/jars/easyfirst/ready/sdparser_server.py $EASYFIRST_PORT &
sleep 7
java -server -Xmx10g ac.biu.nlp.entail_preprocess.PreprocessServer $RUN/excitement_biu.xml "biutee preprocessor" $PREPROCESS_SERVER_PORT &
sleep 4
java -server -Xmx4g ac.biu.nlp.ie_over_entailment.VarExperiment $RUN/excitement_biu.xml "naive biutee" biutee $RUN/test15.xml &
echo started wd15!
echo ==========================================================================================================================


PREPROCESS_SERVER_PORT=8216
EASYFIRST_PORT=8316
cd /u/ir/bronsho/biutee/wd/wd16

echo starting wd16...
python /usr/lib/nlp/jars/easyfirst/ready/sdparser_server.py $EASYFIRST_PORT &
sleep 7
java -server -Xmx10g ac.biu.nlp.entail_preprocess.PreprocessServer $RUN/excitement_biu.xml "biutee preprocessor" $PREPROCESS_SERVER_PORT &
sleep 4
java -server -Xmx4g ac.biu.nlp.ie_over_entailment.VarExperiment $RUN/excitement_biu.xml "naive biutee" biutee $RUN/test16.xml &
echo started wd16!
echo ==========================================================================================================================


PREPROCESS_SERVER_PORT=8217
EASYFIRST_PORT=8317
cd /u/ir/bronsho/biutee/wd/wd17

echo starting wd17...
python /usr/lib/nlp/jars/easyfirst/ready/sdparser_server.py $EASYFIRST_PORT &
sleep 7
java -server -Xmx10g ac.biu.nlp.entail_preprocess.PreprocessServer $RUN/excitement_biu.xml "biutee preprocessor" $PREPROCESS_SERVER_PORT &
sleep 4
java -server -Xmx4g ac.biu.nlp.ie_over_entailment.VarExperiment $RUN/excitement_biu.xml "naive biutee" biutee $RUN/test17.xml &
echo started wd17!
echo ==========================================================================================================================


PREPROCESS_SERVER_PORT=8218
EASYFIRST_PORT=8318
cd /u/ir/bronsho/biutee/wd/wd18

echo starting wd18...
python /usr/lib/nlp/jars/easyfirst/ready/sdparser_server.py $EASYFIRST_PORT &
sleep 7
java -server -Xmx10g ac.biu.nlp.entail_preprocess.PreprocessServer $RUN/excitement_biu.xml "biutee preprocessor" $PREPROCESS_SERVER_PORT &
sleep 4
java -server -Xmx4g ac.biu.nlp.ie_over_entailment.VarExperiment $RUN/excitement_biu.xml "naive biutee" biutee $RUN/test18.xml &
echo started wd18!
echo ==========================================================================================================================


