# 
# Welcome to GDB Online.
# GDB online is an online compiler and debugger tool for C, C++, Python, Java, PHP, Ruby, Perl,
# C#, OCaml, VB, Swift, Pascal, Fortran, Haskell, Objective-C, Assembly, HTML, CSS, JS, SQLite, Prolog.
# Code, Compile, Run and Debug online from anywhere in world.
# 
echo 'Booking ID | Customer Name | Address | Rec_Name | Rec_Address | Date of booking | Par_Status' >parcel_unix_file2.txt
echo '1010 | Charan |Coimbator | Ann | TamilNadu | 05-01-2025 | Pending' >>parcel_unix_file2.txt
echo '1021 |Juhi | Bangalore| Jay | Karnataka | 12-12-2024 | Delivered' >>parcel_unix_file2.txt
echo '1032 | Nikki | Mumbai | Mitti | Maharashtra | 19-08-2025 | Delivered' >>parcel_unix_file2.txt
echo '1043 | Vishnu| Hyderabad | Paul | AP | 30-11-2024 | Pending' >>parcel_unix_file2.txt

awk -F '|' -v id="103" '
$1 ==id {
    print $1, $2, "[" $7 "]"
    found=1
    }
    END {
        if(!found) print "Booking details Not Found"
        }
        ' parcel_unix_file2.txt
        