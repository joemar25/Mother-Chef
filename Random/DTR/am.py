def convertHours(total_hours):
    hours, minutes = divmod(total_hours * 60, 60)
    return f"{int(hours):02d}:{int(minutes):02d}"


am_in = "06:35"
am_out = "12:00"

am_hours = (int(am_out[:2]) - int(am_in[:2])) + (int(am_out[3:]) - int(am_in[3:])) / 60
total_hours = round(am_hours, 2)

print("Your total working hours for AM is:", convertHours(total_hours))
