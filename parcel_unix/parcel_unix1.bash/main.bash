# 
# Welcome to GDB Online.
# GDB online is an online compiler and debugger tool for C, C++, Python, Java, PHP, Ruby, Perl,
# C#, OCaml, VB, Swift, Pascal, Fortran, Haskell, Objective-C, Assembly, HTML, CSS, JS, SQLite, Prolog.
# Code, Compile, Run and Debug online from anywhere in world.
# 
# 
echo "Customer ID | Booking ID | Receiver Name | Delivered Address | Amount | Status" > parcel_unix_file1.txt
echo "1001 | 21 | Charan | Coimbator | 1000 | Pending" >> parcel_unix_file1.txt
echo "1002 | 22 | Juhi | Bangalore | 2000 | Delivered" >> parcel_unix_file1.txt
echo "1003 | 23 | Nikki | Mumbai | 3000 | Pending" >> parcel_unix_file1.txt
echo "1004 | 24 | Vishnu|Hyderabad | 5000 | Pending" >> parcel_unix_file1.txt

grep -i '| delivered$' parcel_unix_file1.txt | wc -l