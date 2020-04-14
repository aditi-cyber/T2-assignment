#!/bin/bash

#ping to Google DNS server
ping -c 2 8.8.8.8

#check if code is 0 i.e packets are  successfully transmitted 
if [ $? -eq 0 ]  
then
      echo "INTERNET CONNECTION IS UP"
else
      echo "INTERNET CONNECTION IS DOWN"
fi
