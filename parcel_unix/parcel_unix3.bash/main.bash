# 
# Welcome to GDB Online.
# GDB online is an online compiler and debugger tool for C, C++, Python, Java, PHP, Ruby, Perl,
# C#, OCaml, VB, Swift, Pascal, Fortran, Haskell, Objective-C, Assembly, HTML, CSS, JS, SQLite, Prolog.
# Code, Compile, Run and Debug online from anywhere in world.

echo "Booking ID|Customer Name|Address|Rec_Name|Rec_Address|Date of Booking|Par_status" > parcel_unix_file3.txt
echo "101|Riya|J&K|Eve|Rajasthan|12-08-2024|Delivered" >> parcel_unix_file3.txt
echo "102|Riya|UP|Joe|UK|09-08-2024|Pending" >> parcel_unix_file3.txt
echo "103|Alice|London|Saumya|Add1|15-10-2025|Delivered" >> parcel_unix_file3.txt
echo "104|Alice|Add2|Rec1|Add3|20-10-2024|Delivered" >> parcel_unix_file3.txt

awk -v start_date="12-09-2024" -v end_date="15-05-2025" '
BEGIN {
    FS="|";
    OFS="|";
    print "Booking ID", "Customer Name", "No of bookings"
}
NR > 1 {
    # gsub(/^[ \t]+|[ \t]+$/, "", $0)
    if($6 >= start_date && $6 <= end_date){
        count[$2]++
        booking_ids[$2] = booking_ids[$2] ? booking_ids[$2] ", " $1 : $1
    }
}
END {
    for(customer in count){
        print booking_ids[customer], customer, count[customer]
    }
}
' parcel_unix_file3.txt