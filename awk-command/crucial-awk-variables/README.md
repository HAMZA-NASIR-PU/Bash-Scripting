# Poweful `awk` variables


[Main Article Link: The Geek Stuff](https://www.thegeekstuff.com/2010/01/8-powerful-awk-built-in-variables-fs-ofs-rs-ors-nr-nf-filename-fnr/)


### Awk FS Example: Input field separator variable.

```sh
cat /etc/passwd | awk 'BEGIN {FS=":";OFS="\t"; print "Name\tUserID\tGroupID\tHomeDirectory";} {print $1,$3,$4,$6} END {OFS=" ";print NR, "Records Processed."}'
```

### Awk OFS Example: Output Field Separator Variable

```sh
cat /etc/passwd | awk 'BEGIN {FS=":";OFS="\t"; print "Name\tUserID\tGroupID\tHomeDirectory";} {print $1,$3,$4,$6} END {OFS=" ";print NR, "Records Processed."}'
```

### Awk RS Example: Record Separator variable

```sh
cat <<EOF > students.txt
Jones
2143
78
84
77


Gondrol
2321
56
58
45


RinRao
2122
38
37
65


Edwin
2537
78
67
45


Dayan
2415
30
47
20
EOF

awk 'BEGIN {FS="\n";RS="\n\n";OFS=" ";ORS="\n"} {print NR, $1,$2,$3,$4,$5}' student.txt
```

### Awk ORS Example: Output Record Separator Variable

```sh
cat <<EOF > students.txt
Jones
2143
78
84
77


Gondrol
2321
56
58
45


RinRao
2122
38
37
65


Edwin
2537
78
67
45


Dayan
2415
30
47
20
EOF


awk 'BEGIN {FS="\n";RS="\n\n";OFS=" ";ORS="\n"} {print NR, $1,$2,$3,$4,$5}' student.txt
```

### Awk NR Example: Number of Records Variable

```sh
awk '{print "Processing Record - ",NR;}END {print NR, "Students Records are processed";}' student-marks
```

### Awk NF Example: Number of Fields in a record

Note: Awk NF will be very useful for validating whether all the fields are exist in a specific record.

```sh
awk '{print NR,"->",NF}' student-marks
```

### Awk FILENAME Example: Name of the current input file

```sh
awk '{print FILENAME}' student-marks
```

### Awk FNR Example: Number of Records relative to the current input file

```sh
awk '{print FILENAME, FNR;}' student-marks bookdetails
```

