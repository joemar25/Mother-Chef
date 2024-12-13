time_in_str = "01:00"
time_out_str = "05:00"

if not ("12:00" <= time_in_str <= "12:59"):
    hours, minutes = time_in_str.split(":")
    pm_hours = int(hours) + 12
    pm_time_in_str = f"{pm_hours:02d}:{minutes}"
    pm_in = pm_time_in_str
else:
    pm_in = time_in_str

hours, minutes = time_out_str.split(":")
pm_hours = int(hours) + 12
pm_time_out_str = f"{pm_hours:02d}:{minutes}"
pm_out = pm_time_out_str

pm_hours = (int(pm_out[:2]) - int(pm_in[:2])) + (int(pm_out[3:]) - int(pm_in[3:])) / 60
total_hours = round(pm_hours, 2)

print("Your total working hours for PM is:", total_hours)
