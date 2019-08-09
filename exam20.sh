#!/usr/bin/bash

fun1()
{
echo "this is fun1"
}

fun2()
{
expr 1 + 2
}

function fun3
{

expr $1 + $2
}

fun4()
{
echo "this is fun4"
return 100
}
fun1
fun2
fun3 100 200
fun4
