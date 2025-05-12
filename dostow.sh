#!/bin/bash

app=$1

stow -v -R -t ${HOME} ${app}
