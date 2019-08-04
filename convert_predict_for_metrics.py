#!/usr/bin/env python3
# coding: utf-8

from pathlib import Path
import sys
import argparse

def isnum(s):
    try:
        float(s)
    except:
        return False
    return True

def convert_predict_for_metrics(args):
    for file_path in Path(args.input_dir).glob('*.txt'):
        out_file_path = Path(args.output_dir) / file_path.name
        with file_path.open('r') as f_in, out_file_path.open('w') as f_out:
            for line in f_in:
                row = [float(c) if isnum(c) else c for c in line.strip().split(',')]
                left = int(min(row[0], row[6]))
                top = int(min(row[1], row[3]))
                right = int(max(row[2], row[4]))
                bottom = int(max(row[5], row[7]))
                if not args.ref:
                    f_out.write(' '.join([str(c) for c in ['char', row[8], left, top, right, bottom]]) + '\n')
                else:
                    f_out.write(' '.join([str(c) for c in ['char', left, top, right, bottom]]) + '\n')


def arg_parse():
    parser = argparse.ArgumentParser()
    parser.add_argument('input_dir')
    parser.add_argument('output_dir')
    parser.add_argument('-r', '--ref', dest='ref', action='store_true')

    return parser.parse_args()

def main():
    args = arg_parse()
    convert_predict_for_metrics(args)

if __name__ == '__main__':
    main()
