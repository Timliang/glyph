#!/bin/bash

# Archived program command-line for experiment
# Copyright 2016 Xiang Zhang
#
# Usage: bash {this_file} [additional_options]

set -x;
set -e;

qlua main.lua -driver_variation small -driver_location models/dianping/temporal8length486feature256roman -driver_dimension 257 -train_data_file data/dianping/train_pinyin_string_code.t7b -train_data_replace 257 -train_data_shift 1 -test_data_file data/dianping/test_pinyin_string_code.t7b -test_data_replace 257 -test_data_shift 1 "$@";
