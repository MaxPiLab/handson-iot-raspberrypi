from mq import *
import sys, time

try:
    print("Press CTRL+C to abort.")
    
    mq = MQ();
    while True:
        perc = mq.MQPercentage()
        print("Smoke: %g ppm" % perc["SMOKE"])
        time.sleep(1)
        if perc["SMOKE"] < 0.01:
            print("\nSmoke Detected")
except:
    print("\nAbort by user")
