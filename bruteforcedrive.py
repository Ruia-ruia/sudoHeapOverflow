import os
import random

while True:
        print("-----------------------")
        arg1 = random.randint(180,250)
        arg2 = random.randint(40,80)
        arg3 = 11
        arg4 = random.randint(30,70)
        arg5 = random.randint(30,70)
        print("Executing: ./bruteforcehandle {} {} {} {} {}".format(arg1, arg2, arg3, arg4, arg5))
        os.system('./bruteforcehandle {} {} {} {} {}'.format(arg1, arg2, arg3, arg4, arg5))
