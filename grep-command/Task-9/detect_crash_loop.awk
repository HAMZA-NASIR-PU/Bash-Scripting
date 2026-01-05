#!/usr/bin/awk -f

/INFO Application started/ {
    count++;
    if (count >=2 ) {
        print "Possible CRASH loop at line",NR;
    }
    next;
}

{
    count=0;
}