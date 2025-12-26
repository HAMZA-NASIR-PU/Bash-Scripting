# Regex Learning in awk command

(GAWK String Functions)[https://www.gnu.org/software/gawk/manual/html_node/String-Functions.html]


(GAWK Computed Regex)[https://www.gnu.org/software/gawk/manual/html_node/Computed-Regexps.html]

---

# ✅ **Part A — Intermediate Regex + AWK Tasks**

## **Task 1 — Extract Only Valid Email Addresses**

Given a file `users.txt`:

```
John Doe <john.doe@example.com>
Invalid User <john..doe@@example..com>
mary-jane99@test.org
admin@mailserver
```

### **Goal**

Use AWK + regex to print **only valid emails** using a regex similar to:

```
[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}
```

---

## **Task 2 — Extract Only Pakistani Mobile Numbers**

Given:

```
0345-1234567
+92-300-8899001
3001234567
abc
```

### **Goal**

Print only valid cellphone numbers matching:

* `03xx-xxxxxxx`
* `+92-3xx-xxxxxxx`
* `3xxxxxxxxx`

Only AWK regex allowed.

---

## **Task 3 — Print Only Lines That Contain Exactly 3 Digits Anywhere**

Example input:

```
Order no: 123
ID: 77
Code: 4901
```

Output:

```
Order no: 123
```

**Pattern to master**: `(^|[^0-9])[0-9]{3}([^0-9]|$)`

---

## **Task 4 — Extract IP Addresses (IPv4)**

Input:

```
Login from 192.168.0.1 successful
Ping 8.8.8.8
Invalid IP: 999.88.0.0
```

Task:

Print only valid IPv4 addresses
Regex to master:

```
\b([0-9]{1,3}\.){3}[0-9]{1,3}\b
```

Then apply logic inside AWK to filter >255 numbers.

---

## **Task 5 — Extract Text Between Parentheses**

Input:

```
ERROR (disk full)
WARNING (low memory) more text
(This is a long message)
```

Result:

```
disk full
low memory
This is a long message
```

Regex practice:

```
\([^)]*\)
```

---

# ✅ **Part B — Intermediate → Advanced Data Analysis Tasks**

## **Task 6 — Extract Column Based on Regex Match**

CSV:

```
id,name,email,salary
1,Hamza,hamza@gmail.com,55000
2,John,john@mail,50000
3,Mary,mary@hotmail.com,60000
```

Print only rows where **email matches a valid pattern**, and only show:

```
name,email
```

---

## **Task 7 — Summation Based on Regex Filter**

Input log:

```
Apple: 120
Banana: 90
Orange: 200
Grapes: 85
```

Task:

Only sum fruits that start with vowel using regex:

```
^[AEIOUaeiou]
```

Expected:

```
410
```

---

# ✅ **Part C — Date-Based AWK + Regex Tasks (Intermediate → Complex)**

These build actual **muscle memory** for data engineering tasks.

---

## **Task 8 — Extract Valid Dates (DD-MM-YYYY)**

Input:

```
Date: 12-05-2024
Invalid: 99-99-9999
05/06/2024
```

Task:

Print only valid DD-MM-YYYY.

Regex to train:

```
\b(0[1-9]|[12][0-9]|3[01])-(0[1-9]|1[0-2])-[0-9]{4}\b
```

---

## **Task 9 — Convert Date Format (DD-MM-YYYY → YYYY/MM/DD)**

Input:

```
12-05-2024
01-11-2025
```

Output:

```
2024/05/12
2025/11/01
```

Use capture groups:

```
([0-9]{2})-([0-9]{2})-([0-9]{4})
```

---

## **Task 10 — Extract All Dates in ANY of These Formats**

* `YYYY-MM-DD`
* `DD/MM/YYYY`
* `Month DD, YYYY` (e.g., January 05, 2024)

Given input:

```
Report generated on 2025-11-15
Next run: 15/01/2026
Last update: March 01, 2024
```

You must extract **every date**, even if multiple appear on same line.

---

## **Task 11 — Filter Rows Where Date Is in 2024**

Input:

```
2023-12-31 Completed
2024-01-01 Completed
2024-05-11 Pending
2025-01-05 Completed
```

Expected:

```
2024-01-01 Completed
2024-05-11 Pending
```

Regex: `^2024-`

---

## **Task 12 — Sort Based on Date Using AWK (Complex)**

File contains random formats:

```
2024/05/12
12-04-2023
2023-11-01
01/03/2025
```

Your task:

1. Normalize all dates into `YYYY-MM-DD`
2. Pipe them to `sort`

This is real-world data-cleaning muscle memory.

---

## **Task 13 — Extract Logs Between Two Dates**

Log:

```
2024-01-01 Start
2024-02-01 Processing
2024-03-01 Completed
2024-04-01 Archived
```

Task:

Extract logs **from 2024-02-01 to 2024-03-15**.

Regex + date comparison in AWK.

---

## **Task 14 — Detect Invalid Dates Using Regex + Logic**

Input:

```
30-02-2024 Invalid
29-02-2024 Valid (Leap year)
31-04-2024 Invalid (April has 30 days)
```

Task:

1. First match with regex
2. Then validate using logic
3. Print only invalid ones

This is advanced.

---

# ✅ **Part D — Advanced Real-World Data Analysis Tasks**

## **Task 15 — Parse Apache/Nginx Logs Using Regex**

Example:

```
127.0.0.1 - - [12/May/2024:15:05:33 +0500] "GET /home HTTP/1.1" 200 1234
```

Extract:

* IP
* Date
* Requested URL
* Status code

---

## **Task 16 — Detect Fraudulent Transactions Based on Regex + Amount Rules**

CSV:

```
id,date,amount,description
1,2024-01-01,5000,ATM cash withdrawal
2,2024-01-01,950000,Online transfer
3,2024-01-02,200,Bill payment
```

Task:

Print suspicious items where:

* Description matches `online|transfer`
* Amount > 500000

---

## **Task 17 — Extract Records With Fuzzy Matching (Regex)**

Given:

```
Johnathan
John
Jon
J0hn
Johann
```

Extract only names that look similar to “John” using regex:

```
J[o0]h[nm]?
```
