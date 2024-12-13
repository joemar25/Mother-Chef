import json
import time

"""
MAR: Change this to DENR Standards
"""

# indoors
ALERT_THRESHOLDS = {
    "Temperature": 63,
    "Humidity": 63,

    "CO": 6.11,   # Carbon Monoxide (CO) -ppm
    "CO2": 5000, # Carbon Dioxide (CO2) -ppm
    "O3": 0.005,  # Ozone (O3) -ppm
    "SO2": 1,  # Sulfur Dioxide (SO2) -ppm
    "NO2": 0.11, # Nitrogen Dioxide (NO2) -ppm
    "PM": 0.00001,  # Particulate Matter (PM) -ppm 
    "VOCs":  0.25 # Volatile Organic Compounds (VOCs)-ppm
}

def read_air_quality_data(data_file):
    with open(data_file, 'r') as file:
        return json.load(file)

def generate_alert_message(contaminants_on_alert):
    if len(contaminants_on_alert) == len(ALERT_THRESHOLDS):
        return "All contaminants are on alert!"
    elif contaminants_on_alert:
        if len(contaminants_on_alert) == 1:
            return f"Alert: {contaminants_on_alert[0]} is on alert."
        else:
            contaminants_string = ', '.join(contaminants_on_alert)
            return f"Alert: {contaminants_string} are on alert."
    else:
        return ""

def check_contaminants():

    """
    MAR: Change this location or use the firebase
    """
    data_file = 'Random\AlertSystemForContamenants\data.json'
    
    air_quality_data = read_air_quality_data(data_file)

    for entry_index, entry in enumerate(air_quality_data, start=1):
        print(f"#{entry_index}")
        contaminants_on_alert = [contaminant for contaminant, level in entry.items() if contaminant in ALERT_THRESHOLDS and level > ALERT_THRESHOLDS[contaminant]]

        for contaminant, level in entry.items():
            if contaminant in ALERT_THRESHOLDS:
                alert_message = " - Alert" if contaminant in contaminants_on_alert else ""
                print(f"{contaminant}={level}{alert_message}")

        print(generate_alert_message(contaminants_on_alert))
        time.sleep(1)

if __name__ == "__main__":
    check_contaminants()
