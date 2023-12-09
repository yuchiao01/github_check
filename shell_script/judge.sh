#!/bin/bash
read -p 'plaese input hello or other: ' answer
if [ "$answer" == "hello" ]; then
	echo "hello"
else
	echo "Your input is $answer is not my answer."
fi
