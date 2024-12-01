# 
# Welcome to GDB Online.
# GDB online is an online compiler and debugger tool for C, C++, Python, Java, PHP, Ruby, Perl,
# C#, OCaml, VB, Swift, Pascal, Fortran, Haskell, Objective-C, Assembly, HTML, CSS, JS, SQLite, Prolog.
# Code, Compile, Run and Debug online from anywhere in world.
# 
# 
echo "Customer ID|Customer Name|Address|Email|Mobile" >parcel_unix_file4.txt
echo '1001|Jay|Addr1|abc@gmail.com|7894561230' >>parcel_unix_file4.txt
echo '1002|Prajwal|Addr2|bcd@gmail.com|7892553970' >>parcel_unix_file4.txt
echo '1003|Manoj|Addr3|cde@gmail.com|1236547890' >>parcel_unix_file4.txt
echo '1004|Anita|Addr4|def@gmail.com|9874561230' >>parcel_unix_file4.txt

awk -F'|' '$2 ~ /^An/ {print}' parcel_unix_file4.txt