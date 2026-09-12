#!/usr/bin/awk -f

# https://www.markhneedham.com/blog/2013/06/26/unixawk-extracting-substring-using-a-regular-expression-with-capture-groups/
# https://www.markhneedham.com/blog/2011/09/12/gawk-getting-story-numbers-from-git-commit-messages/

{
    if (match($0, /response_time=([0-9]+)ms/, arr)) {
        # print "\n---------------------------------------------------\n";
        # print "Output:", match($0, /response_time=([0-9]+)ms/, arr);
        # print "Position:", RSTART
        # print "Length:", RLENGTH
        # print "Full match:", arr[0]
        # print "Number:", arr[1]
        response_time = arr[1];

        if (response_time > 1000) {
            match($0, /(\/api\/[^ ]+)/, endpoint)
            print endpoint[1], response_time "ms";
        }
        # print "\n---------------------------------------------------\n";
    }
}

# sed -E 's/.*response_time=([0-9]+ms).*/\1/' access.log



