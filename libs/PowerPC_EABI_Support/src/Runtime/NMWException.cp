#include "PowerPC_EABI_Support/Runtime/NMWException.h"
#include "exception"

extern "C"{
	extern void __dla__FPv();
	extern void abort();
}


namespace std{

	terminate_handler thandler = dthandler;

	void dthandler(){
	  abort();
	}

	//unused
	void set_terminate(void (*func)(void)){
	}

	void terminate(){
		thandler();
	}

	//unused
	void set_unexpected(void (*func)(void)){
	}

	//unused
	void unexpected(){
	}

}


extern "C" asm void __construct_new_array(){
	stwu r1, -0x40(r1)
	mflr r0
	cmpwi r3, 0
	stw r0, 0x44(r1)
	stmw r27, 0x2c(r1)
	mr r30, r3
	mr r27, r4
	mr r28, r6
	mr r29, r7
	beq L_802B9A2C
	cmpwi r4, 0
	stw r6, 0(r3)
	addi r30, r3, 0x10
	stw r7, 4(r3)
	beq L_802B9A2C
	li r0, 0
	stw r30, 8(r1)
	mr r31, r30
	stw r6, 0xc(r1)
	stw r7, 0x10(r1)
	stw r5, 0x14(r1)
	stw r0, 0x18(r1)
	b L_802B99C0
L_802B999C:
	mr r12, r27
	mr r3, r31
	li r4, 1
	mtctr r12
	bctrl 
	lwz r3, 0x18(r1)
	add r31, r31, r28
	addi r0, r3, 1
	stw r0, 0x18(r1)
L_802B99C0:
	lwz r4, 0x18(r1)
	cmplw r4, r29
	blt L_802B999C
	lwz r0, 0x10(r1)
	cmplw r4, r0
	bge L_802B9A2C
	lwz r0, 0x14(r1)
	cmpwi r0, 0
	beq L_802B9A2C
	lwz r0, 0xc(r1)
	lwz r3, 8(r1)
	mullw r0, r0, r4
	add r31, r3, r0
	b L_802B9A20
L_802B99F8:
	lwz r0, 0xc(r1)
	li r4, -1
	lwz r12, 0x14(r1)
	subf r31, r0, r31
	mr r3, r31
	mtctr r12
	bctrl 
	lwz r3, 0x18(r1)
	addi r0, r3, -1
	stw r0, 0x18(r1)
L_802B9A20:
	lwz r0, 0x18(r1)
	cmpwi r0, 0
	bne L_802B99F8
L_802B9A2C:
  	mr r3, r30
  	lmw r27, 0x2c(r1)
  	lwz r0, 0x44(r1)
  	mtlr r0
  	addi r1, r1, 0x40
  	blr
}

class __partial_array_destructor {
private:
  void* p;
  size_t size;
  size_t n;
  void* dtor;

public:
  size_t i;

  __partial_array_destructor(void* array, size_t elementsize, size_t nelements, void* destructor) {
    p = array;
    size = elementsize;
    n = nelements;
    dtor = destructor;
    i = n;
  }

  ~__partial_array_destructor() {
    char* ptr;

    if (i < n && dtor) {
      for (ptr = (char*)p + size * i; i > 0; i--) {
        ptr -= size;
        DTORCALL_COMPLETE(dtor, ptr);
      }
    }
  }
};

extern "C" void __construct_array(void* ptr, void* ctor, void* dtor, size_t size, size_t n) {
	__partial_array_destructor pad(ptr, size, n, dtor);
	char* p;

	for (pad.i = 0, p = (char*)ptr; pad.i < n; pad.i++, p += size)
    	CTORCALL_COMPLETE(ctor, p);
}

extern "C" void __destroy_arr(void* block, void* dtor, size_t size, size_t n) {
	char* p;

	for (p = (char*)block + size * n; n > 0; n--) {
		p -= size;
		DTORCALL_COMPLETE(dtor, p);
  	}
}


extern "C" asm void __destroy_new_array(){
	stwu r1, -0x20(r1)
	mflr r0
	cmpwi r3, 0
	stw r0, 0x24(r1)
	stmw r26, 8(r1)
	mr r26, r3
	mr r27, r4
	beq L_802B9CDC
	cmpwi r4, 0
	beq L_802B9CD4
	lwz r29, -0x10(r3)
	li r31, 0
	lwz r30, -0xc(r3)
	mullw r0, r29, r30
	add r28, r3, r0
	b L_802B9CCC
L_802B9CB0:
	subf r28, r29, r28
	mr r12, r27
	mr r3, r28
	li r4, -1
	mtctr r12
	bctrl 
	addi r31, r31, 1
L_802B9CCC:
	cmplw r31, r30
	blt L_802B9CB0
L_802B9CD4:
	addi r3, r26, -16
	bl __dla__FPv
L_802B9CDC:
	lmw r26, 8(r1)
	lwz r0, 0x24(r1)
	mtlr r0
	addi r1, r1, 0x20
	blr 
}

//unused
void __destroy_new_array2(){
}

//unused
void __destroy_new_array3(){
}