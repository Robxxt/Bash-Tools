#!/bin/bash

find . | while IFS= read file; do
	if [[ -f $file ]]; then
		sed 's/../inc/libft.h/..\/inc\/libft.h/' $file > tmp.c
		rm $file
		if [ $? -eq 0 ]; then
			mv tmp.c $file
		else
			echo "Failed to modify $file"
		fi
	fi
done
