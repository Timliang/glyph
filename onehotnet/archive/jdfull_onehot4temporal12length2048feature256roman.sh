#!/bin/bash

# Archived program command-line for experiment
# Copyright 2016 Xiang Zhang
#
# Usage: bash {this_file} [additional_options]

set -x;
set -e;

qlua main.lua -train_data_file data/jd/sentiment/full_train_pinyin.t7b -test_data_file data/jd/sentiment/full_test_pinyin.t7b -driver_location models/jdfull/onehot4temporal12length2048feature256roman "$@";
