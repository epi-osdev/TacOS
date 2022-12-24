# INTRODUCTION <a name="introduction"></a>

This files explains the working of the mouse driver, it's also explaining 
all the theory behind it.

# TABLE OF CONTENTS

- [INTRODUCTION](#introduction)
- [INITIALIZATION](#initialization)
- [HANDLING](#handling)
- [CURSOR](#cursor)

# INITIALIZATION <a name="initialization"></a>

The mouse driver is initialized by the `mouse_init` function.

This is usually an interrupt acitvation like the keyboard. The mouse is 
associated to the IRQ12.

## Mouse routine

The mouse also needs to enable the mouse and configure the mouse with an 
routine before being able to activate it. 
First of all we need to enable the mouse by sending the `0xA8` command to 
0x64 port (the command port) of the pic.
```c
    port_byte_out(0x64, 0xA8);
    mouse_wait();
```
Now we have to configure the mouse with the '0x20' command to get the status 
byte of the mouse.
```c
    port_byte_out(0x64, 0x20);
    mouse_wait();
```

after that we have to read the status byte and activate the second bit 
before resend him to the pic
```c
    uint8_t status = port_byte_in(0x60);
    status |= 0b10;
    mouse_wait();

    port_byte_out(0x64, 0x60);
    mouse_wait();

    port_byte_out(0x60, status);
```

### Mouse configuration

Hereafter we need to send the mouse configuration byte to the mouse. For 
that we use the 'mouse_write' function. This function starts by sending the 
0xD4 command to the command port of the pic. That tell to the pic we want to 
send data to the mouse. Then we send the configuration byte to the data port 
'0x60' of the pic.
```c
void mouse_write(uint8_t mouse_param)
{
    mouse_wait();
    port_byte_out(0x64, 0xD4);
    mouse_wait();
    port_byte_out(0x60, mouse_param);
}
```

### default settings

with this function we can sand the default mouse configuration byte to the 
mouse.
```c
    mouse_write(0xF6);
    mouse_read();
```
and finally we can activate the mouse by sending the '0xF4' command to the
mouse.
```c
    mouse_write(0xF4);
    mouse_read();
```
Now we have set the mouse routine we can activate the mouse interrupt. 
```c
    set_callback(44, mouse_handler);
    enable_entry(44);
```

### configuration mouse function

Let's see the configuration function in details. you have tree function for 
the mouse configuration : 'set_sample_rate', 'set_resolution' and 'set_scaling'.

#### set_sample_rate

set_sample_rate is used to set the sample rate of the mouse. The sample rate 
is the number of packets per second the mouse will send to the computer. To 
do that we need to send the '0xF3' command to the mouse and then the new sample.
```c
void set_sample_rate(uint8_t rate)
{
    port_byte_out(0x60, 0xF3);
    mouse_read();
    port_byte_out(0x60, rate);
    mouse_read();
}
```

#### set_resolution

set_resolution is used to set the resolution of the mouse. The resolution is 
the distance between two pixels. To do that we need to send the '0xE8' 
command to the mouse and then the new resolution.
```c
void set_resolution(uint8_t resolution)
{
    port_byte_out(0x60, 0xE8);
    mouse_read();
    port_byte_out(0x60, resolution);
    mouse_read();
}
```

#### set_scaling

set_scaling is used to set the scaling of the mouse. The scaling is the 
non-linear distance to the mouse movement. To do that we need to send the 
'0xE6' command to the mouse and then the new scaling.
```c
void set_scaling(uint8_t scaling)
{
    port_byte_out(0x60, 0xE6);
    mouse_read();
    port_byte_out(0x60, scaling);
    mouse_read();
}
```