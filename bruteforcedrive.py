# just leaving this here because you might want to try automatin' the tweakin' n adjustin'
import os
import random

while True:
        print("-----------------------")
        arg1 = random.randint(180,250)
        arg2 = random.randint(40,80)
        arg3 = random.randint(10, 20)
        arg4 = random.randint(30,70)
        arg5 = random.randint(30,70)
        print("Executing: ./bruteforcehandle {} {} {} {} {}".format(arg1, arg2, arg3, arg4, arg5))
        os.system('./bruteforcehandle {} {} {} {} {}'.format(arg1, arg2, arg3, arg4, arg5))
