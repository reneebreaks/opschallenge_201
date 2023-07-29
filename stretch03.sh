#!/bin/bash

# Script Name:                  Functions
# Author Name:                  Renee Stanley
# Date of latest revision:      7/26/2023
# Purpose:                      Write a funtion that prints a history of user logins on this computer, followed by the text "END"

#Edited to add an argument for stretch goal

name=$1
# Declaration of function
print_local_users() {
echo "Hello $name, The local user login history is: "
last
echo "END"
}
          
# Main
print_local_users


# End