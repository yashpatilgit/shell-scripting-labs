#!/bin/bash

x=missisippi

grep -o "s" <<<"$x" | wc -l
