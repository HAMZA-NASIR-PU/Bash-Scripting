#!/usr/bin/awk -f

# Initialize counters
BEGIN {
    print "Starting log analysis...";
    totalRequests=0;
    totalBytes=0;
}

{
    totalRequests++;
    ip=$1;
    url=$7;
    status=$9;
    bytes=$10;

    # Count per ip 
    ipCount[ip]++;

    # Count per status code 
    statusCount[status]++;

    # Count per URL 
    urlCount[url]++;

    # Total Bytes 
    if (bytes ~ /^[0-9]+$/) {
        totalBytes += bytes;
    }
}

END  {
    print "\n==== LOG SUMMARY ====";
    print "Total Requests:", totalRequests;
    print "Total Bytes sent:", totalBytes, "bytes";

    print "\nRequests per IP:";
    for (i in ipCount) {
        print i, ipCount[i];
    }

    print "\nRequests per status code:";
    for (s in statusCount) {
        print s, statusCount[s];
    }

    print "\nAnalysis Complete."
}



