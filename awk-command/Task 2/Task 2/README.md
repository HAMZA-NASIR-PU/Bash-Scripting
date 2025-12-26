# Learn awk word anchors regex......................................

# Extracting Date part from a string.

---

# ✅ **1. Extract the full timestamp inside brackets**

Example output:
`02/Dec/2025:10:30:12 +0500`

```sh
awk '{match($0, /\[([^]]+)\]/,m); print m[1];}' access.log
awk '{match($0, "\\[([^]]+)\\]",m); print substr($0, RSTART, RLENGTH)}' access.log
awk '{gsub(/\[|\]/,""); print $4}' access.log 
grep -oP '\[\K[^\]]+' access.log
```

---

# ✅ **2. Extract ONLY the date (day/month/year)**

Example output:
`02/Dec/2025`

### Option A — Split at `:`

```sh
awk '{
    match($0, "\\[[^]]+\\]");
    date = substr($0, RSTART+1, RLENGTH-2); # remove brackets
    split(date, a, ":");
    print a[1]
}' access.log

```

---

# ✅ **3. Extract ONLY the date part using regex groups**

Cleaner method:

```sh
awk '{
    if (match($0, /\[([0-9]{2}\/[A-Za-z]{3}\/[0-9]{4})/, m))
        print m[1]
}' access.log
```

Output:

```
02/Dec/2025
02/Dec/2025
02/Dec/2025
...
```

---

# ✅ **4. Extract ONLY the time (HH:MM:SS)**

```sh
awk '{
    if (match($0, /[0-9]{2}\/[A-Za-z]{3}\/[0-9]{4}:([0-9]{2}:[0-9]{2}:[0-9]{2})/, m))
        print m[1]
}' access.log
```

---

# ✅ **5. Extract date + time separately in columns**

```
DATE           TIME
02/Dec/2025    10:30:12
02/Dec/2025    10:30:55
...
```

```sh
awk '{
    if (match($0, /\[([0-9]{2}\/[A-Za-z]{3}\/[0-9]{4}):([0-9]{2}:[0-9]{2}:[0-9]{2})/, m))
        printf "%s %s\n", m[1], m[2]
}' access.log
```

---

---

# ✅ **6. Some interesting commands for understanding the working of regex in different scenarios.**

```sh
echo -e "01-05-2025\n2025-05-01\n01/May/2025\nABC 01/May/2025" > file.txt
```

Example output:
`01/May/2025`

### Solution

```sh
awk '$0 ~ /^[0-9]{2}\/[A-Za-z]{3}\/[0-9]{4}$/' file.txt
```

Example output:
```sh
01/May/2025
ABC 01/May/2025
```

### Solution

```sh
awk '$0 ~ /[0-9]{2}\/[A-Za-z]{3}\/[0-9]{4}/' file.txt 
```

---


# ⭐ Best & Easiest Method

If your log format is consistent (Apache/Nginx common log), this is the cleanest:

```sh
awk -F'[][]' '{ print $2 }' access.log
```

Explanation:
`-F'[][]'` → field separator is `[` or `]`
`$2` → content inside the brackets.

Output:

```
02/Dec/2025:10:30:12 +0500
02/Dec/2025:10:30:55 +0500
...
```

---
