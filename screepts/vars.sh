#!/bin/bash

# Example: update_config.sh

# Set the value of a parameter in a configuration file using sed
param_name="DEBUG_MODE"
new_value="true"
config_file="/etc/config.properties"

# Replace the parameter's value in the configuration file
sed -i "s/^${param_name}=.*$/${param_name}=${new_value}/" "$config_file"

echo "Configuration updated successfully!"



#!/bin/bash

# Example: extract_info.sh

# Extract specific columns from a CSV file using awk
csv_file="/etc/data.csv"

# Extract the first and third columns (assuming columns are separated by commas)
awk -F ',' '{ print $1, $3 }' "$csv_file"
