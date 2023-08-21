import json
import time

data_file = 'Random\AlertSystemForContamenants\data.json'

# Define alert thresholds for each contaminant - USE DENR standards
alert_thresholds = {
    "CO2": 800,
    "CO": 7,
    "O3": 90,
    "NO2": 40,
    "SO2": 15,
    "VOCs": 180,
    "PM": 40
}

# Read data from the JSON file
with open(data_file, 'r') as file:
    air_quality_data = json.load(file)

# Iterate through each entry in air quality data
for counter, entry in enumerate(air_quality_data, start=1):
    print(f"#{counter}")
    contaminants_on_alert = [contaminant for contaminant, level in entry.items() if contaminant in alert_thresholds and level > alert_thresholds[contaminant]]
    
    if contaminants_on_alert:
        print("At least one contaminant is on alert! Notify the user.")
    
    for contaminant, level in entry.items():
        if contaminant in alert_thresholds:
            alert_message = " - Alert" if contaminant in contaminants_on_alert else ""
            print(f"{contaminant}={level}{alert_message}")
    
    print()
    time.sleep(1)

# print(f"Alert: {contaminant}={le  vel}, exceeds threshold of {alert_thresholds[contaminant]}")