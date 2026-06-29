#!/bin/bash

name="JOHN DOE";
echo "Hello, $name";

output1=`expr 5 + 121`;
output2=$(( 5 + 11 ));

if [ "$output1" -ge "$output2" ] && [ "$output1" -gt 10 ]; then
    echo "$output1 is greater than or equal $output2 and also greater than 10.";
elif [ "$output1" -lt "$output2" ]; then
    echo "$output1 is less than $output2.";
fi
