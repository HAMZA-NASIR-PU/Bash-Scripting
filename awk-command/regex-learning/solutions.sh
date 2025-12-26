
# Task 5

```sh
awk '{                               
    start = index($0, "(")
    if (start > 0) {
        rest = substr($0, start+1)
        end = index(rest, ")")
        if (end > 0)
            print substr(rest, 1, end-1)
    }
}' file.txt
```