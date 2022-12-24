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

# HANDLING <a name="handling"></a>

The mouse handler is called when the mouse interrupt is triggered. When the 
interrupt was triggered the mouse send a packet to the computer. The packet 
is compose of three bytes. The first byte contain many information :

- bit 0 : left button
- bit 1 : right button
- bit 2 : middle button
- bit 3 : allways 1 (it permit to know if the mouse is sending a packet)
- bit 4 : x sign
- bit 5 : y sign
- bit 6 : x overflow
- bit 7 : y overflow

The second byte contain the x movement of the mouse. It goes from -256 to 255
and the third byte contain the y movement of the mouse.

Now we have all this information how can get it, assamble it and use it ? 

First of all we need to disable the keyboard interrupt because the two of 
them are sharing the same data port on the pic. 
```c
    disable_entry(33);
```

Then we need to read the three bytes of the packet. Something that i don't 
say it's, the mouse send 3 byte but if we want to use the scroll wheel later 
the mouse will send 4 byte. so we need to create an array of 4 byte to be sure.

### packet creation 

For the packet creation we need to get the byte in diffent position is the 
array we use an switch case in while to do that the switch case switch on an 
number who is incremented each time we get a byte. 
```c
    while ( mouse_data_cycle < 4 && packet_ready == 0) {
        if (packet_ready == 1)
            break;
        switch (mouse_data_cycle) {
            case 0 : {
                uint8_t data = port_byte_in(0x60);
                if ((data & 0b00001000) == 0)
                break;
                mouse_byte[0] = data;
                mouse_data_cycle++;
                break;
            }
            case 1 :
                mouse_byte[1] = port_byte_in(0x60);
                mouse_data_cycle++;
                break;
            case 2 :
                mouse_byte[2] = port_byte_in(0x60);
                mouse_data_cycle = 0;
                packet_ready = 1;
                break;
            }
        }
```
As you can see we verify is the byte number 3 is set to 1. If it's we cut 
the byte aquiring and we start again.

In this way if we want the 4'th byte we juste need to add A case. 

# CURSOR <a name="cursor"></a>

