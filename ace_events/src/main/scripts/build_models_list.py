import os
import re
import itertools as I

MODEL_PREFIX = r"src/main/resources/models/2015.04.19..1_Final20"
#MODEL_FILES_DIR = r"C:\Java\Git\breep\ace_events\src\main\resources\models\2015.04.19..1_Final20"
MODEL_FILES_DIR = r"src/main/resources/models/2015.04.19..1_Final20"
#REQUIRED_ID_RANGES_INCLUSIVE = [(1,10) , (11,20) , (61,70) , (71,80) , (91,100) , (101,110)]
REQUIRED_ID_RANGES_INCLUSIVE = [(1,310)]
#REQUIRED_ID_RANGES_INCLUSIVE = [(1,100)]
#OUTPUT_MODELS_LIST = r"C:\Java\Git\breep\ace_events\src\main\resources\models\models__Final18__6_Sharone_Types.txt"
#OUTPUT_MODELS_LIST = r"C:\Java\Git\breep\ace_events\src\main\resources\models\models__Final18_Full.txt"
#OUTPUT_MODELS_LIST = r"C:\Java\Git\breep\ace_events\src\main\resources\models\models__Final20__10_Sharone10_Types.txt"
OUTPUT_MODELS_LIST = r"src/main/resources/models/models__Final20_Full.txt"
MODEL_FILENAME_PATTERN = r"Model_(\d+)_.*"

def main():
    f = open(OUTPUT_MODELS_LIST, "w")

    ids = list(I.chain(*[range(low,high+1) for low,high in REQUIRED_ID_RANGES_INCLUSIVE]))
    _,_,files = os.walk(MODEL_FILES_DIR).next()
    for fname in files:
        print fname,
        m = re.search(MODEL_FILENAME_PATTERN, fname)
        id = int(m.group(1))
        print "++%s++" % (id,)
        if id in ids:
            f.write("%s/%s\n" % (MODEL_PREFIX, fname))

    f.close()
    print
    print ids
    
if __name__ == "__main__":
    main()