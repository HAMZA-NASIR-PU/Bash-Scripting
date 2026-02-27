#!/bin/bash

func() {
    count=22
}

func2() {
    local count2=52
}

echo "Before calling func: $count"
func
echo "After calling func: $count"

echo -e "\n\n"

echo "Before calling func2: $count2"
func2
echo "After calling func2: $count2"

