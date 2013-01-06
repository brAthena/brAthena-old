#!/bin/bash                                                                 
# @Author: Protimus                                                        
# @Date: 01/05/2013                                                           
# @File: brainstall.sh - Script to compile emulator with brAthena Installer interaction                                                                      
#####################################################################################

cd brathena
make clean
sh ./configure
make sql