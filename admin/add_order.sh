#!/bin/bash
CUST_ID=$(echo "select max(id+1) from customers;" | sqlite3 orders.db)

echo
echo "Adding new customer($CUST_ID) order"
echo
read -p "First Name: " fname
read -p "Last Name:  " lname
read -p "Email addr: " email
read -p "Addr ln 1:  " addr1
read -p "Addr ln 2:  " addr2
read -p "City:       " city
read -p "State:      " state
read -p "Zip code:   " zip

echo
read -p "Chassis count: " chassis_cnt
[[ -z "$chassis_cnt" ]] && chassis_cnt=0
read -p "blank_bezel_cnt: " blank_bezel_cnt 
[[ -z "$blank_bezel_cnt" ]] && blank_bezel_cnt=0
read -p "fpMini_bezel_cnt: " fpMini_bezel_cnt
[[ -z "$fpMini_bezel_cnt" ]] && fpMini_bezel_cnt=0
read -p "imsai_Bezel_cnt:  " imsai_Bezel_cnt
[[ -z "$imsai_Bezel_cnt" ]] && imsai_Bezel_cnt=0
read -p "nineslot_pcb_cnt: " nineslot_pcb_cnt
[[ -z "$nineslot_pcb_cnt" ]] && nineslot_pcb_cnt=0
read -p "fpmini_pcb_cnt: " fpmini_pcb_cnt
[[ -z "$fpmini_pcb_cnt" ]] && fpmini_pcb_cnt=0
read -p "imsai_cpa_pcb_cnt:  " imsai_cpa_pcb_cnt
[[ -z "$imsai_cpa_pcb_cnt" ]] && imsai_cpa_pcb_cnt=0
read -p "imsai_switch_set_cnt: " imsai_switch_set_cnt
[[ -z "$imsai_switch_set_cnt" ]] && imsai_switch_set_cnt=0
echo

echo  "$CUST_ID"
echo  "  $fname $lname  $email"
echo  "  $addr1"
echo  "  $addr2"
echo  "  $city, $state   $zip"

read -p "Add new user (y/n): "
echo
cat <<EOF > cust.sql
INSERT INTO customers (id,fname,lname,email) values($CUST_ID,'$fname','$lname','$email');
UPDATE customers SET street_addr1='$addr1', 
street_addr2='$addr2', 
city='$city', 
state='$state', 
zip='$zip', 
chassis_cnt=$chassis_cnt, 
blank_bezel_cnt=$blank_bezel_cnt, 
fpMini_bezel_cnt=$fpMini_bezel_cnt, 
imsai_Bezel_cnt=$imsai_Bezel_cnt, 
nineslot_pcb_cnt=$nineslot_pcb_cnt, 
fpmini_pcb_cnt=$fpmini_pcb_cnt, 
imsai_cpa_pcb_cnt=$imsai_cpa_pcb_cnt, 
imsai_switch_set_cnt=$imsai_switch_set_cnt WHERE id=$CUST_ID;
EOF

cat cust.sql | sqlite3 orders.db
echo "SELECT * from customers WHERE ID=$CUST_ID" | sqlite3 orders.db
if [ $? -eq 0 ]; then
   echo "Customer added successfully"
   /bin/rm -f cust.sql
else
   echo "ERROR: Couldn't add customer!"
fi




