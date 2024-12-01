# 
# Welcome to GDB Online.
# GDB online is an online compiler and debugger tool for C, C++, Python, Java, PHP, Ruby, Perl,
# C#, OCaml, VB, Swift, Pascal, Fortran, Haskell, Objective-C, Assembly, HTML, CSS, JS, SQLite, Prolog.
# Code, Compile, Run and Debug online from anywhere in world.
# 
# 
echo "Customer ID|Customer Name|Address|Email|Mobile" > parcel_unix_file5.txt
echo "101|Riya|Add1|a@gmail.com|8765432451" >> parcel_unix_file5.txt
echo "102|Anil|Add2|b@gmail.com|5769700574" >> parcel_unix_file5.txt
echo "103|Eve|Add3|c@gmail.com|8959564535" >> parcel_unix_file5.txt
echo "104|Joe|Add4|d@gmail.com|4556768689" >> parcel_unix_file5.txt

awk -F'|' -v OFS='|' '$2 == "Eve" {$4 = "new_email@gmail.com"} 1' parcel_unix_file5.txt