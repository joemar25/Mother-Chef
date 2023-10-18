import json
from tabulate import tabulate


class DTR:
    def __init__(self, file_path):
        self.file_path = file_path
        self.regular_hours = 8
        self.total_work_hours = 0
        self.day_count = 1

    def convert_hours(self, total_hours):
        hours, minutes = divmod(int(total_hours * 60), 60)
        return f"{hours:02d}:{minutes:02d}"

    def calculate_work_hours(self):
        with open(self.file_path) as f:
            data = json.load(f)

        for day in data['days']:
            half_day = False
            total_hours = 0

            total_hours = self.calculate_am_hours(day, total_hours, half_day)
            total_hours = self.calculate_pm_hours(day, total_hours, half_day)

            self.print_work_hours(day, total_hours, half_day)
            self.total_work_hours += total_hours
            self.day_count += 1

        print(
            f"\nTotal Work Hours = {self.convert_hours(self.total_work_hours)}")

    def calculate_am_hours(self, day, total_hours, half_day):
        for period in day['am']:
            in_time = period['in']
            out_time = period['out']
            am_hours = (int(out_time[:2]) - int(in_time[:2])) + \
                (int(out_time[3:]) - int(in_time[3:])) / 60
            total_hours += round(am_hours, 2)
            if in_time == "00:00":
                half_day = True
        return total_hours

    def calculate_pm_hours(self, day, total_hours, half_day):
        for period in day['pm']:
            time_in_str = period['in']
            time_out_str = period['out']

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

            pm_hours = (int(pm_out[:2]) - int(pm_in[:2])) + \
                (int(pm_out[3:]) - int(pm_in[3:])) / 60
            total_hours += round(pm_hours, 2)
            if time_in_str == "00:00":
                half_day = True
        return total_hours

    def print_work_hours(self, day, total_hours, half_day):
        data = [
            [day['date'], f"day {self.day_count}", self.convert_hours(round(abs(total_hours), 2)), ""]
        ]
        if total_hours > self.regular_hours and not half_day:
            overtime_hours = total_hours - self.regular_hours
            data[0][3] = f"Overtime with {self.convert_hours(round(overtime_hours, 2))} hh:mm."
        if not data[0][3]:
            data[0][3] = "None"
        print("\n" + tabulate(data, headers=["Date", "Day", "Work Hours", "Remarks"], tablefmt="fancy_grid") + "\n")


dtr = DTR('dtr.json')
dtr.calculate_work_hours()

# Remember, every second counts! Use this code to calculate your work hours and make the most out of your time. Check out https://www.calculatorsoup.com/calculators/time/hours.php for more inspiration!
