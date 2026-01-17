#!/usr/bin/awk -f

function rev(s) {
    r = "";
    for (i = length(s); i > 0; i--) {
        r = r substr(s, i, 1);
    }
    return r
}

{
    if (length($0) == 5 && $0 == rev($0)) {
        print $0;
    }
}