#!/usr/bin/awk -f

{
    if (match($0, /(GET|POST|PUT|DELETE) (\/[^ ]+) ([0-9]{3})/, arr)) {
        print "Method:", arr[1]
        print "Endpoint:", arr[2]
        print "Status:", arr[3]
    }
    print "\n-----";
}

