#!/usr/bin/bash


function fun3
{

expr $1 + $2
}

fun4()
{
echo "this is fun4"
return 100
}

fun5()
{
echo "this is fun5 Line 1"
return 105
echo "this is fun5 Line 2"
}

fun6()
{
echo "this is fun6 Line 1"
exit 106
echo "this is fun6 Line 2"
}

fun7()
{
echo "this is fun7 Line 1"
}


fun3 100 200
fun4
fun5
fun6
fun7
