#!/bin/zsh
echo "Enabling turbo boost for all cores..."
echo 0 > /sys/devices/system/cpu/intel_pstate/no_turbo
