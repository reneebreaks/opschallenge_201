#!/bin/bash

# Script Name:                  Functions
# Author Name:                  Renee Stanley
# Date of latest revision:      7/26/2023
# Purpose:                      Write a funtion that prints a history of user logins on this computer, followed by the text "END"

# Declaration of variables

# Declaration of functions
print_local_users() {
    echo "Login history for local users: "
    last
    echo "END"
}
# Main
print_local_users


# End