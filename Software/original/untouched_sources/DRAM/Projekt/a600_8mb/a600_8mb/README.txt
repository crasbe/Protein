
             AMIGA 600 autoconfiguring 8Mb fastRAM board
                         2007 year edition


                                                       (c) lvd/NedoPC 2007



I. Preface

 This project is completely free and open-source, you can use it anyway you
wish.  However, the author does not take any responsibility for any harm or
damage caused by information contained in this project or by any
consequences concerned with using it.  Use it at your own risk.


II. What is it?

 As the title says, this is DIY project for Amiga 600, which adds 8
megabytes of fast RAM.  This RAM autoconfigures early at startup, so you
needn't any software patches.

The RAM board itself contains four DRAM memory chips, altera or atmel CPLD,
several multiplexer TTL chips and several bypass capacitors and pullup
resistors.  Also there can exist JTAG 10pin male connector for in-system
programming of CPLD.  On the bottom side there is PLCC SMD socket to be
mounted over 68000 CPU in your A600.


III. Some technical info

 There is only 16 Mb of addressable space on 68000 CPU, so this board takes
exactly half of that space, residing at $200000-$9FFFFF address range and
the PCMCIA, which occupies normally $600000-$9FFFFF range, becomes
inaccessible.  This process is natural for amiga hardware and software, so
there will be no physical conflicts on amiga bus.  By modifying CPLD
firmware, it is possible to have only 4Mb of RAM being accessible
simultaneously with PCMCIA.

 Note that it is NOT ENOUGH just not to solder extra two chips of DRAM to
get 4 Mb instead of 8, as well as it is NOT ENOUGH to disable this board by
just removing CPLD from its socket.  Former is because default firmware in
CPLD will still autoconfigure as 8 Mb board, which will cause crash when
system tries to access unexistent upper part of 8 Mb space.  When removing
CPLD, DRAM control signals like /RAS or /CAS get floating, so the DRAM will
content CPU bus.  If you want disabling board by removing CPLD from socket,
add pullups to all DRAM control signal.  This all is because there are not
enough CPLD pins available to add some configuring jumpers.

 See FIRMWARE.txt for further information on modifying CPLD behavior.


IV. Building and parts

 See BUILD.txt for further information.

 Also, look photos to get the feeling and in-depth understanding of
all the wisdom within ;)


V. PCBs

 Because of limited configurability of the board, I won't do or sell this
version of fastRAM board.  Instead, I'll design a new one which will be more
configurable.
 However, I can still order extra unpopulated PCBs of this board and send it
to you at a cost approx.  10$+PnP each.  Also I'll send you programmed and
tested CPLD for approx.  6$+PnP each.

 If you are interested, write me an email.  For a new design, check my page
at http://lvd.nedopc.com


VI. Author

 Contact me at lvd@dgap.mipt.ru or lvd.mhm@gmail.com

 Also check my page at http://lvd.nedopc.com as well as NedoPC Group site at
http://nedopc.com
