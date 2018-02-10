#! /bin/bash
if [ $# -ge 1 ] && [ $1 -eq 2 ]
then
    ssh -p 22 thorpah@student2.cs.appstate.edu
else
    ssh -p 22 thorpah@student.cs.appstate.edu
fi

