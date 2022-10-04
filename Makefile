ifneq ($(KERNELRELEASE),)
	obj-m := md.o
else
	CURRENT = $(shell uname -r)
	KDIR = /lib/modules/$(CURRENT)/build
	PWD = $(shell pwd)

default:
	gcc -o crypto crypto.c
	$(MAKE) -C $(KDIR) M=$(PWD) modules

clean:
	rm -rf .tmp_versions
	rm *.ko
	rm *.o
	rm *.mod.c
	rm *.mod
	rm *.symvers
	rm *.order
	rm crypto
	rm .md.ko.cmd
	rm .md.mod.cmd
	rm .md.mod.o.cmd
	rm .md.o.cmd

endif
