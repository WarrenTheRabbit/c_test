#!/bin/bash


assert() {
	compare_output $1 $3
}


# Function to print a section header
print_header() {
    local header=$1
    echo "********* $header **********"
}

# Function to compare output and expected output
compare_output() {
    local expected="$1"
    local actual="$2"

    if [[ "$actual" == "$expected" ]]; then
        echo "Pass."
    else
        echo "Fail."
        print_header "Expected"
        echo "$expected"
        print_header "Output"
        echo "$actual"
    fi
}
