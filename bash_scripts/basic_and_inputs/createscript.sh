#!/bin/bash
echo
echo "Type script file name:"
read file
echo "#!/bin/bash" > $file
echo "echo 'I am $(whoami)'" >> $file 
chmod u+x $file
vim $file
