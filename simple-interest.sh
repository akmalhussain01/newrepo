#!/bin/bash

# Simple Interest Calculator Script
# Formula: SI = (P * R * T) / 100

echo "------------------------------------------------"
echo "           Simple Interest Calculator           "
echo "------------------------------------------------"

# Prompt user for input fields
read -p "Enter the principal amount (P): " principal
read -p "Enter the annual rate of interest in % (R): " rate
read -p "Enter the time period in years (T): " time

# Validate that inputs are not empty
if [ -z "$principal" ] || [ -z "$rate" ] || [ -z "$time" ]; then
    echo "Error: All fields are required."
    exit 1
fi

# Calculate simple interest using 'bc' for decimal math precision
interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Calculate the total final balance (Principal + Interest)
total_balance=$(echo "scale=2; $principal + $interest" | bc)

echo "------------------------------------------------"
echo "Calculation Results:"
echo "------------------------------------------------"
echo "Principal Amount:  $principal"
echo "Interest Rate:     $rate%"
echo "Time Period:       $time year(s)"
echo "------------------------------------------------"
echo "Total Interest:    $interest"
echo "Final Balance:     $total_balance"
echo "------------------------------------------------"
