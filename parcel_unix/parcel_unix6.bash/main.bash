# 
# Welcome to GDB Online.
# GDB online is an online compiler and debugger tool for C, C++, Python, Java, PHP, Ruby, Perl,
# C#, OCaml, VB, Swift, Pascal, Fortran, Haskell, Objective-C, Assembly, HTML, CSS, JS, SQLite, Prolog.
# Code, Compile, Run and Debug online from anywhere in world.
# 
# 
echo "Booking ID|Customer Name|Address|Rec_Name|Rec_Address|Date of Booking|Par_status" >parcel_unix_file06.txt
echo "101|Jiya|MP|Even|Rajasthan|12-09-2024|Delivered" >>parcel_unix_file6.txt
echo "102|Jiya|UP|Joe|UK|09-09-2024|Pending" >>parcel_unix_file6.txt
echo "104|Alice|London|Saumya|Add1|15-10-2024|Delivered" >>parcel_unix_file6.txt
echo "103|Alice|Add2|Rec1|Add3|20-10-2024|Delivered" >>parcel_unix_file6.txt

awk -F '|' '{print $1, $2, $6}' parcel_unix_file6.txt | sort -nr 