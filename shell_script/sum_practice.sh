#請用shell script，計算出50+到101的總數：

#!/bin/bash

sum=0
for i in {50..101};
do
        let sum+=i
done

echo "sum=$sum"
