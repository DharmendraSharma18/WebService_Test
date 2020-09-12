import datetime
import time
#
# print ("current date",datetime.datetime.now().strftime("%D"+" time "+"%T"))
# print ("current date time", datetime.date.today().strftime("%Y"))
# print ("Current year", time.sleep(2))
# print ("current month", datetime.date.today().strftime("%B"))
# print ("Week number", datetime.date.today().strftime("%W"))
# print ("weekday", datetime.date.today().strftime("%w"))
# print ("day of the year", datetime.date.today().strftime("%j"))
# print ("day of the month", datetime.date.today().strftime("%d"))
# print ("day of the week", datetime.date.today().strftime("%A"))
#@#######################
# date = input("enter date in dd/mm/yyyy \n")
#
# yr = date.split('/')[2]
# if int(yr)%4==0:
#     print ("leap yr")
# else:
#     print ("no")

################################
#
# Sample = "Jan 1 2014 2:43PM"
# print (Sample.find("2014"))
# print (Sample[6:11])
#
# dj = datetime.datetime.strptime(Sample, "%b %d %Y %I:%M%p")


######################
print (datetime.datetime.now().time())

#print(curr_time)
tampstr = "1284105682"

a= datetime.datetime.fromtimestamp(float (tampstr)).strftime("%Y-%m-%d %I:%M")
print (a)
#Expected Output : 2010-09-10 13:31:22


str = "DHARMENDRA"

print (str[-1::-1])
print (str[::-1])
if str[::-1]==str:
    print ("yes")
else:
    print ("no")