
BIUTEE=/u/ir/bronsho/biutee
export BIUTEE

BIUTEE_WORKDIR=$BIUTEE/workdir
export BIUTEE_WORKDIR

DATA=$BIUTEE/data
export DATA


QASRV_DATA=/media/qa-srv/D/Data
export QASRV_DATA

DATASETS=$QASRV_DATA/Datasets
export DATASETS

JARS=/usr/lib/nlp/jars
export JARS

CLASSPATH=../biu_legacy/biu_legacy.jar:$JARS/named-regexp-0.1.8.jar:$JARS/arkref/stanford-parser-2008-10-26.jar:$JARS/arkref/commons-lang-2.4.jar:$JARS/mysql-connector-java-5.1.12-bin.jar:$JARS/Jama-1.0.2.jar:$JARS/weka.jar:$JARS/log4j-1.2.15.jar:$JARS/lp_solve_5.5.0.15_dev_win32/lp_solve_5.5_java/lib/lpsolve55j.jar:$JARS/gate.jar:$JARS/jwsdp-2.2.1/lib/jaxb-api.jar:$JARS/jwsdp-2.2.1/lib/jaxb-impl.jar:$JARS/jwsdp-2.2.1/lib/jaxb-xjc.jar:$JARS/jwsdp-2.2.1/lib/jaxb1-impl.jar:$JARS/mxpost/mxpost.jar:$JARS/opennlp-tools-1.3.0.jar:$JARS/lingpipe-3.1.1.jar:$JARS/htmlparser.jar:$JARS/opennlp-tools-1.3.0/lib/ant.jar:$JARS/opennlp-tools-1.3.0/lib/jakarta-ant-optional.jar:$JARS/opennlp-tools-1.3.0/lib/jwnl-1.3.3.jar:$JARS/opennlp-tools-1.3.0/lib/maxent-2.4.0.jar:$JARS/opennlp-tools-1.3.0/lib/trove.jar:$JARS/stanford-ner/stanford-ner-2008-05-07.jar:$JARS/stanford-postagger-full-2008-06-06/stanford-postagger-2008-06-06.jar:$JARS/mysql-connector-java-3.1.12/mysql-connector-java-3.1.12-bin.jar:$JARS/lucene_3.1.0/lucene-core-3.1.0.jar:$JARS/JNI_SVM-light-6.01/jnisvmlight.jar:$JARS/BiuNormalizer/biu-normalizer_v0.6.1.jar:$JARS/BiuNormalizer/biu-normalizer_v0.6.jar:$JARS/jwnl14-rc2/lib/commons-logging.jar:$JARS/jwnl14-rc2/lib/junit-4.1.jar:$JARS/jwnl14-rc2/jwnl.jar:$JARS/javamail-1.4.1/mail.jar:$JARS/activation.jar:$JARS/stanford-postagger-full-2008-09-28/stanford-postagger-2008-09-28.jar:$JARS/arkref/arkref.jar:$JARS/arkref/supersense-tagger.jar:$JARS/JUNG/jung2-2_0_1/collections-generic-4.01.jar:$JARS/JUNG/jung2-2_0_1/colt-1.2.0.jar:$JARS/JUNG/jung2-2_0_1/concurrent-1.3.4.jar:$JARS/JUNG/jung2-2_0_1/j3d-core-1.3.1.jar:$JARS/JUNG/jung2-2_0_1/jai_core.jar:$JARS/JUNG/jung2-2_0_1/stax-api-1.0.1.jar:$JARS/JUNG/jung2-2_0_1/vecmath-1.3.1.jar:$JARS/JUNG/jung2-2_0_1/wstx-asl-3.2.6.jar:$JARS/javamail-1.4.1/lib/mailapi.jar:$JARS/jsr173_1.0_api.jar:$JARS/extjwnl-1.6.3/lib/extjwnl-1.6.3.jar:$JARS/extjwnl-1.6.3/lib/concurrentlinkedhashmap-lru-1.2.jar
export CLASSPATH

MYSQL=qa-srv:3308
export MYSQL

EASYFIRST_HOST=te-srv1
export EASYFIRST_HOST

EASYFIRST_PORT=8081
export EASYFIRST_PORT

PREPROCESS_SERVER_HOST=te-srv1
export PREPROCESS_SERVER_HOST

PREPROCESS_SERVER_PORT=8800
export PREPROCESS_SERVER_PORT

RUNS=/u/ir/bronsho/runs
export RUNS

RUN=$RUNS/Research/2013.01.13..3__regular_RTE3_few_resources_git
export RUN

DATASET_NAME=RTE3
export DATASET_NAME

DEV_SET_PATH=$DATASETS/RTE/3/dev/dev.xml
export DEV_SET_PATH

TEST_SET_PATH=$DATASETS/RTE/3/test/test.xml
export TEST_SET_PATH

MODEL_FOLDER=$RUNS/Research/2013.01.13..3__regular_RTE3_few_resources_git
export MODEL_FOLDER

#######################
MYSQL__LOCAL=localhost:3306

PROJECTS=/u/ir/bronsho/projects
QASRV_DATA=/u/ir/bronsho/projects/kbp2012/Data
#######################

