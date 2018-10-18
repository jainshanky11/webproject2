#!/bin/bash
cont_count=$1
echo "creating $cont_count containers.."
sleep 2;
for i in `seq $cont_count`
do
	echo "=============================="
    echo "Creating webproject1 $i container.."
    sleep 1
    docker run --name webproject$i -d -it jainshanky11/webproject2 /bin/bash
    echo "webproject1 $i container has been created!"
	echo "=============================="
done
