

#### Question 1
To obtain the day of the week of your birthday, which function would you use?

* date()
* weekday()
* day_week()
* CORRECT: wday()


#### Question 2
To obtain the date of the month of your birthday, which function could you use?

* CORRECT: mday()
* day_month()
* month_day()
* day_m()


#### Question  3
What information does year("1985-05-04") - year("1988-09-29") give you?

* the number of seconds difference between the two dates
* the number of minutes difference between the two dates
* the number of days difference between the two dates
* CORRECT: the number of years difference between the two dates


#### Question 4
What code would you use to tell you what day of the week December 28th, 1992 was?

* CORRECT: wday(ymd("1992-12-28"))
* mday(ymd("1992-12-28"))
* mday(ydm("1992-28-12"))
* wday(ydm("1992-12-28"))


#### Question 5
What code would you use to tell you what day of the week May 4th, 1985 was?

* CORRECT: wday(ydm("1985-05-04"))
* wday(ydm("1985-04-05"))
* mday(ymd("1985-04-05"))
* mday(ydm("1985-04-05")


#### Question 6
What day of the week was December 28th, 1992?
wday(ymd("1992-05-04"))
recall that the values from wday() start with Sunday as 1


#### Question 7
What day of the week was May 4th, 1985?
wday(ymd("1985-05-04"))
The days of the week start numerically on Sunday for the output of wday()
