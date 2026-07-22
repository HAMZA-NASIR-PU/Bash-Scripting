#!/bin/bash

# Concept of Dynamic Scoping in Bash

y="global";

func() {
    echo "y is from: $y";
}

caller_a() {
    local y="caller a";
    func;
}


caller_b() {
    local y="caller b";
    func;
}

caller_a;
caller_b;

echo "y is from: $y";
