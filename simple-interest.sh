#!/bin/bash
# Simple Interest Calculator Script

echo "Enter Principal Amount:"
read principal
echo "Enter Rate of Interest:"
read rate
echo "Enter Time (in years):"
read time

# Validate inputs (basic)
re='^[0-9]+([.][0-9]+)?$'
if ! [[ $principal =~ $re && $rate =~ $re && $time =~ $re ]]; then
  echo "Please enter valid numeric values."
  exit 1
fi

interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

echo "--------------------------------"
echo "Simple Interest = ₹$interest"
echo "--------------------------------"
