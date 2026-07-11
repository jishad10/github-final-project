#!/bin/bash

echo "Enter principal amount:"
read principal
echo "Enter rate of interest:"
read rate
echo "Enter time period (in years):"
read time

# Input validation
if ! [[ "$principal" =~ ^[0-9]+([.][0-9]+)?$ ]] || \
   ! [[ "$rate" =~ ^[0-9]+([.][0-9]+)?$ ]] || \
   ! [[ "$time" =~ ^[0-9]+([.][0-9]+)?$ ]]; then
  echo "Error: Please enter valid numeric values."
  exit 1
fi

si=$(echo "$principal * $rate * $time / 100" | bc)
echo "Simple Interest = $si"
