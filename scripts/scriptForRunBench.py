import os
import argparse
import pandas as pd
import numpy as np

from os import listdir
from os.path import isfile, join



def execute(diretorios, cbench_path, output):

    #Compile
    for i in range(len(diretorios)):
        for j in range(5):
            os.system("cd " + cbench_path + diretorios[i] + "/src/ && " + "./__compile")

    #Execute
    for i in range(len(diretorios)):
        for j in range(5):
            if (j == 0):
                j = 1/5
            k = int(j*5)
            os.system("cd " + cbench_path + diretorios[i] + "/src/ && " + "(time ./__run " + str(k) + ")")
            #print("cd " + cbench_path + diretorios[i] + "/src/ && " + "(time ./__run " + str(k) + ") >>" + diretorios[i] + " 2>&1")

def Main():
    parser = argparse.ArgumentParser()
    parser.add_argument("cbench_path", metavar='p0', nargs='?', const=1,
                        help='', type=str,
                        default='/home/luiz/cBench/')
    parser.add_argument("path_output", metavar='p0', nargs='?', const=1,
                        help='', type=str,
                        default='/home/luiz/output/')
    args = parser.parse_args()

    #_data
    diretorios = [d for d in listdir(args.cbench_path)]

    remove_data_idx = []
    for i in range(len(diretorios)):
        if (diretorios[i][-5:] == '_data'):
            remove_data_idx.append(i)

    for j in range(len(remove_data_idx)):
        diretorios.pop(j)

    print(diretorios)


    execute(diretorios, args.cbench_path, args.path_output)

if __name__ == '__main__':
    Main()
