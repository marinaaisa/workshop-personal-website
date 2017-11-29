#!/bin/bash

echo "Now, we will run the middleman server ;)"

export RUBYOPT="-KU -E utf-8:utf-8"

bundle exec middleman server