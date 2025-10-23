#!/bin/bash
# Usage: ./check_port.sh IP PORT
ip=${1:-10.0.8.9}
port=${2:-3868}
nc -vz -w2 $ip $port
