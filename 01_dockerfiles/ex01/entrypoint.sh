#!/bin/bash

set -e

for i in logs/* do 
	cat <> ${i} 1>&2 &  
done

exec "$@"