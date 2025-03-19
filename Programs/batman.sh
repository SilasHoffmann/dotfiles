#!/bin/bash

#Execute this and give it the name of a man page, and it wwill open that page in bat.
#Useful for aliases.

man $1 && man $1 | bat -l man