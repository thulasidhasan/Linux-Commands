#!/bin/bash
disk=` df -h|head -2|tail -1|awk '{print $5}'|cut -d% -f1`

[ $disk -gt 30 ] && echo -e "file system:,\tfile %" && echo `df -h|head -2|tail -1|awk '{print $1,$5}'`


