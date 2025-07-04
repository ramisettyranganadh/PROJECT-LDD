-------------------MULTIPASS-------------------
How to recover on Linux :
$ sudo snap install multipass
$ sudo snap stop multipass
$ sudo killall multipass.gui
$ sudo rm /var/snap/multipass/common/data/multipassd/authenticated-certs/multipass_client_certs.pem
$ sudo cp ~/snap/multipass/current/data/multipass-client-certificate/multipass_cert.pem /var/snap/multipass/common/data/multipassd/authenticated-certs/multipass_client_certs.pem
$ sudo snap start multipass

Step 1: multipass launch --name VM
Step 2: multipass shell VM
Step 3: multipass list
Step 4: multipass help
Step 5: sudo apt-get install build-essential linux-headers-$(uname -r)

Step 6: cd CustomKernel; make; ls;
Step 7: sudo insmod ck_gpio.ko; sudo lsmod; sudo dmesg;
Step 8: sudo rmmod ck_gpio.ko; sudo lsmod; sudo dmesg -c;

-----------------------------------------------
How to Build Bootloader in QEMU:
1. https://www.ctyme.com/rbrown.htm
2. sudo apt update; sudo apt install nasm;
3. nasm -V; sudo apt install qemu-system-x86;
4. qemu-system-X86_64; mkdir RamiOS;
5. cd RamiOS; vi boot.asm;
6. nasm -f bin ./boot.asm -o ./boot.bin
7. ndiasm ./boot.bin
8. qemu-system-x86_64 -hda ./boot.bin
-----------------------------------------------

# Linux Device Drivers Development
This is the code repository for [Linux Device Drivers Development](https://www.packtpub.com/networking-and-servers/linux-device-drivers-development?utm_source=github&utm_medium=repository&utm_campaign=9781785280009), published by [Packt](https://www.packtpub.com/?utm_source=github). It contains all the supporting project files necessary to work through the book from start to finish.
## Instructions and Navigation
All of the code is organized into folders. Each folder starts with a number followed by the application name. For example, Chapter02.



The code will look like the following:

struct platform_device_id { 
   char name[PLATFORM_NAME_SIZE]; 
   kernel_ulong_t driver_data; 
};

Linux kernel is a complex, portable, modular and widely used piece of software, running on around 80% of servers and embedded systems in more than half of devices throughout the World. Device drivers play a critical role in how well a Linux system performs. As Linux has turned out to be one of the most popular operating systems used, the interest in developing proprietary device drivers is also increasing steadily.

This book will initially help you understand the basics of drivers as well as prepare for the long journey through the Linux Kernel. This book then covers drivers development based on various Linux subsystems such as memory management, PWM, RTC, IIO, IRQ management, and so on. The book also offers a practical approach on direct memory access and network device drivers.

By the end of this book, you will be comfortable with the concept of device driver development and will be in a position to write any device driver from scratch using the latest kernel version (v4.13 at the time of writing this book).

## Errata

* Page number 75 (Chapter 3): The following code 
```
msleep(2000);
wake_up_interruptible(&my_data->my_wq);
 ``` 
should include an extra line of code in between as shown here:
```
msleep(2000);
sleep = 1;
wake_up_interruptible(&my_data->my_wq);
 ``` 

## Related Products
* [Linux: Embedded Development](https://www.packtpub.com/application-development/linux-embedded-development?utm_source=github&utm_medium=repository&utm_campaign=9781787124202)

* [Embedded Linux Projects Using Yocto Project Cookbook](https://www.packtpub.com/virtualization-and-cloud/embedded-linux-projects-using-yocto-project-cookbook?utm_source=github&utm_medium=repository&utm_campaign=9781784395186)

* [Linux: Powerful Server Administration](https://www.packtpub.com/networking-and-servers/linux-powerful-server-administration?utm_source=github&utm_medium=repository&utm_campaign=9781788293778)
### Download a free PDF

 <i>If you have already purchased a print or Kindle version of this book, you can get a DRM-free PDF version at no cost.<br>Simply click on the link to claim your free PDF.</i>
<p align="center"> <a href="https://packt.link/free-ebook/9781785280009">https://packt.link/free-ebook/9781785280009 </a> </p>
