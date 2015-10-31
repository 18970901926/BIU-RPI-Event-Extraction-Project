"""
    configure_train_test.py
    Creates copies of biutee.xml. one for training (with dev set) and one for testing (with test set).
    Command line args: <DATASET_NAME> <DEV_SET_PATH> <TEST_SET_PATH>
"""

import os
import re
import sys
import pdb

INPUT_FILE =      os.path.join(os.environ["RUN"], "biutee.xml")
OUT_TRAIN_FILE =  os.path.join(os.environ["RUN"], "biutee_train.xml")
OUT_TEST_FILE =   os.path.join(os.environ["RUN"], "biutee_test.xml")


PREPROCESSED_PATTERN = r"%s_%s-preprocessed.ser" # Parameters are: DATASET_NAME, train/test

DATASET_PATTERNS = {
    r'<module name\s*=\s*"rte_pairs_preprocess">(\s+)<param name\s*=\s*"dataset">.*?</param>':      r'<module name = "rte_pairs_preprocess">\1<param name = "dataset">%s</param>',
    r'<module name\s*=\s*"rte_sum_preprocess">(\s+)<param name\s*=\s*"dataset">.*?</param>':        r'<module name = "rte_sum_preprocess">\1<param name = "dataset">%s</param>',
    r'<module name\s*=\s*"rte_pairs_train_and_test">(\s+)<param name\s*=\s*"dataset">.*?</param>':  r'<module name = "rte_pairs_train_and_test">\1<param name = "dataset">%s</param>',
    r'<module name\s*=\s*"rte_sum_train_and_test">(\s+)<param name\s*=\s*"dataset">.*?</param>':    r'<module name = "rte_sum_train_and_test">\1<param name = "dataset">%s</param>',
    }

PREPROCESSED_SER_PATTERNS = {
    r'<param name\s*=\s*"serialization_filename">.*?</param>': r'<param name = "serialization_filename">%s</param>' % (PREPROCESSED_PATTERN,)
    }


def replace(text, dataset_path, dataset_name, step_name):
    for k,v in DATASET_PATTERNS.iteritems():
        v = v % (dataset_path,)
        text = re.sub(k, v, text)
    for k,v in PREPROCESSED_SER_PATTERNS.iteritems():
        v = v % (dataset_name, step_name)
        text = re.sub(k, v, text)
    return text
    

def main():
    if len(sys.argv) != 4:
        print "Usage: %s <DATASET_NAME> <DEV_SET_PATH> <TEST_SET_PATH>" % (sys.argv[0],)
        return

    dataset_name, dev_set_path, test_set_path = sys.argv[1:]
    
    f = open(INPUT_FILE)
    d = f.read()
    f.close()

    d_train = replace(d, dev_set_path,  dataset_name, "dev")
    d_test  = replace(d, test_set_path, dataset_name, "test")

    f = open(OUT_TRAIN_FILE, "w")
    f.write(d_train)
    f.close()
    print "Wrote %s" % (OUT_TRAIN_FILE,)
    
    f = open(OUT_TEST_FILE, "w")
    f.write(d_test)
    f.close()
    print "Wrote %s" % (OUT_TEST_FILE,)

    
if __name__ == "__main__":
    main()