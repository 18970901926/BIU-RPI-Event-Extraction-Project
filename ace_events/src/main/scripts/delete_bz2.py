import os
import sys

def main():
    if len(sys.argv) != 2:
        print "Usage: <prog> <root folder>"
        return

    root = sys.argv[1]
    for path, _, files in os.walk(root):
        for f in files:
            if f.endswith(".bz2"):
                p = os.path.join(path, f)
                print "Deleting %s" % (p,)
                os.remove(p)
    print "Done"

if __name__=="__main__":
    main()