#!/usr/bin/awk -f

{
    if (match($0, /([0-9]{1,3}\.){3}[0-9]{1,3}/, ip)) {
        split(ip[0], o, ".")
        valid = 1
        for (i = 1; i <= 4; i++) {
            if (o[i] < 0 || o[i] > 255) {
                valid = 0
                break
            }
        }
        if (valid)
            print ip[0], "=> VALID"
        else
            print ip[0], "=> INVALID"
    }
}
