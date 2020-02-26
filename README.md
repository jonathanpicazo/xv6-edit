# xv6-edit
Made edits to the xv6 operating system by
- adding system calls
- converting the default round robin scheduler into a priority scheduler
- rerranged the address space to grow the heap and stack at opposite directions
- enabled two processes to share a memory page
To run xv6, run the command ``make clean && make qemu-nox``
