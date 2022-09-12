#!/bin/bash

function  mafonction { 
echo Hello world !
}


#######

mafonction2() {
echo Hello world 2 !
}

monecho() {
echo $@
}

mafonction
mafonction2
monecho salut ça ca ?
