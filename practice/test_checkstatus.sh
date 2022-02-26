#!/bin/bash -x
try{
	ls=`ls`
	hello=`hello`
	echo $hello;
}catch{"$hello"}
