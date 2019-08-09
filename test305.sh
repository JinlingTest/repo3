#!/usr/bin/bash
#
#


fun1()
{
echo 'test fun1'
}

fun2()
{
echo `expr $1 + $2`
}

fun3 ()
{
return 
echo `expr $1 + $2`
}

fun4 ()
{
echo `expr $1 + $2`
exit
}

fun5 ()
{
echo `expr $1 + $2`
}


#fun1
#fun2 100 200
#fun3 200 300
#fun4 300 400
#fun3 500 600

