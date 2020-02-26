#include "param.h"
#include "types.h"
#include "defs.h"
#include "x86.h"
#include "memlayout.h"
#include "mmu.h"
#include "proc.h"
#include "spinlock.h"

struct {
  struct spinlock lock;
  struct shm_page {
    uint id;
    char *frame;
    int refcnt;
  } shm_pages[64];
} shm_table;

void shminit() {
  int i;
  initlock(&(shm_table.lock), "SHM lock");
  acquire(&(shm_table.lock));
  for (i = 0; i< 64; i++) {
    shm_table.shm_pages[i].id =0;
    shm_table.shm_pages[i].frame =0;
    shm_table.shm_pages[i].refcnt =0;
  }
  release(&(shm_table.lock));
}

int shm_open(int id, char **pointer) {
  acquire(&(shm_table.lock));
  unsigned int i, idFound, max;
  idFound = 0; //boolean variable to determine whether parameter id is found
  max = 64;
  
  //shm_open looks through the shm_table to see if this segment id already exists
  for(i = 0; i < max; ++i) {
	if (shm_table.shm_pages[i].id == id) {
		idFound = 1;
		break;
	}	
   }
   
   //If it doesn’t then it needs to allocate a page and map it, and store this information in the shm_table
   if (!idFound) {
	   for(i = 0; i < max; ++i) {
		   if(!shm_table.shm_pages[i].id && !shm_table.shm_pages[i].frame && !shm_table.shm_pages[i].refcnt) {
			   break;
		   }
	   }
	   
	   //We find an empty entry in the shm_table, and initialize its id to the id passed to us
	   shm_table.shm_pages[i].id = id;
	   char* mem;
	   
	   //We then kalloc a page and store its address in frame (we got our physical page)
	   mem = kalloc();
	   memset(mem, 0, PGSIZE);
	   shm_table.shm_pages[i].frame = mem;
	   
	   //Finally, we set the refcnt to 1
	   shm_table.shm_pages[i].refcnt = 1;
   }
   //If the segment already exists, increase the refence count
   struct proc *cur = myproc();
   ++shm_table.shm_pages[i].refcnt;
   uint va = PGROUNDUP(cur->sz);
   
   //use mappages to add the mapping between the virtual address and the physical address
   mappages(cur->pgdir, (void *)va, PGSIZE, V2P(shm_table.shm_pages[i].frame), PTE_W | PTE_U);
   
   //Finally, you increment refcnt and return the pointer to the virtual address
   *pointer = (char* )va;
   
   //You should also update sz since your virtual address space expanded
   cur->sz = va + PGSIZE;
   release(&(shm_table.lock));
   return 0; //added to remove compiler warning -- you should decide what to return
}


int shm_close(int id) {
   //you write this too!
   acquire(&(shm_table.lock));
   unsigned int i;
   for (i = 0; i < 64; ++i) {
	   //Find the shared memory page id to close
	   if (shm_table.shm_pages[i].id == id) {
		   //Decrement the count if ther shared memory page has a reference count
		   if (shm_table.shm_pages[i].refcnt >= 0) {
			   --shm_table.shm_pages[i].refcnt;
		   }
		   
		   //If not, reinitalize the shared memory page
		   else {
			   shm_table.shm_pages[i].id = 0;
			   shm_table.shm_pages[i].frame = 0;
			   shm_table.shm_pages[i].refcnt = 0;
		   }
	   }
   }
   release(&(shm_table.lock));
   return 0; //added to remove compiler warning -- you should decide what to return
}
