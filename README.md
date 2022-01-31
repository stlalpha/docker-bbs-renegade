# ViSiON/2 - The Resurrection

This image runs a telnettable ViSiON/2 - The Resurrection BBS server inside Docker.

![V2 Logo](https://raw.githubusercontent.com/stlalpha/docker-bbs-vision2/master/setup/v2logo.png?raw=true)

It is based upon these really excellent works by [JGoerzen](https://github.com/jgoerzen):

 - [DOSEMU environment for Docker](https://github.com/jgoerzen/docker-dosemu)
 - [general BBS template](https://github.com/jgoerzen/docker-dos-bbs) and  dos-bbs-balance
 

This provides the full ViSiON/2 R1.0 setup in Drive G:

# Install and Run (docker)

You can install with:

    docker pull stlalpha/vision2bbsres

And run with:

    docker run -d -p 5901:5901 -p 23:23 --name bbs-v2 stlalpha/vision2bbsres


# Install and Run (docker-compose)

Save the following docker-compose.yml:
```

  ---
  version: "2.1"
  services:
   ViSiON-2:
     image: vision2bbsres
    container_name: bbs-v2
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=America/Chicago
      - VNCPASSWORD=muhbbspassword
    ports:
      - '23:23'
      - '5901:5901'
    restart: unless-stopped
```
And then...
```
bash$ docker-compose up -d
```

# Accessing and general commands

The image runs a VNC console on port 5901/tcp.  You can connect to this console with any VNC client, on the mac you can use "Screen Sharing" and point it at hostname:5901. 

By default, each invocation will generate a new VNC password.  To retrieve the current password, execute:

```
$ docker logs bbs-v2|grep password
```

You can set an environment variable "VNCPASSWORD" to otherwise set a static value, as above in the docker-compose.yml.

```
bash% export VNCPASSWORD=mypassword
bashg% docker run -d -p 5901:5901 -p 23:23 --name bbs-v2 stlalpha/vision2bbsres
```

After you enter the VNC password, upon connecting to the vnc server, youd will get dumped to an xterm.  

![Xconsole](https://github.com/stlalpha/docker-bbs-vision2/blob/master/images/vnc-console.png?raw=true)


To get to the dos instance, execute:

```
root@eb1e5b696efe:/# dosconsole <enter>
```

This will launch the dos-emulator console and you should see the following screen:

![dosconsole](https://github.com/stlalpha/docker-bbs-vision2/blob/master/images/dosconsole.png?raw=true)

Now you can configure your V2 instance....Change to drive "G" and go into the v2r directory, and run config:

```
C:\> G:
G:\> cd V2R <enter>
G:\V2R\> config <enter>
```
![v2 config](https://github.com/stlalpha/docker-bbs-vision2/blob/master/images/config.png?raw=true)

When you are done there hit ESCape until you are back to the prompt. You don't need to do anything to make it work, it comes preconfigured - but its fun to look around.  ***NOTE: The software generally saves on enter - without confirmation.***

Want to customize your text strings?  Run strings.exe in the same directory.

![v2 strings](https://github.com/stlalpha/docker-bbs-vision2/blob/master/images/strings.png?raw=true)

Hit F-10 to save and exit, F-1 to edit an entry as-is or "Enter" on an entry to start with a blank line.

Want to fire up the local bbs console?  You just need to set DSZLOG and run vision /L in the same directory:

```
C:\V2R\> SET DSZLOG=G:\V2R\XFER <enter>
C:\V2R\> VISION /L <enter>
```
This will start the Waiting For Caller (WFC) screen - and you should see the following:

![v2 wfc](https://github.com/stlalpha/docker-bbs-vision2/blob/master/images/WFC.png?raw=true)

This screen is what would run local to the computer, as you waited for a called to dial your phone number and connect.

To log on locally, hit F1 at the WFC screen and you will be greeted with the sysop menu:

![v2 local logon](https://github.com/stlalpha/docker-bbs-vision2/blob/master/images/SYSOPLOGON.png?raw=true)

You can use the arrow keys to navigate up and down.  Hit "Enter" on "Login to BBS" - arrow to "No" and hit "Enter" when asked if you want to go off-hook and you will be greeted with the matrix logon screen:

![v2 matrix logon](https://github.com/stlalpha/docker-bbs-vision2/blob/master/images/matrixlogon.png?raw=true)

Hit "Enter" on "journey onward", sit through some ansis and you will get to the login box:

![v2 matrix logon](https://github.com/stlalpha/docker-bbs-vision2/blob/master/images/loginscreen.png?raw=true)

Enter "1" as your username and "password" for your password - and then you will be in.

![v2 user stats](https://github.com/stlalpha/docker-bbs-vision2/blob/master/images/userstat.png?raw=true)


For more details, see the [dos-bbs generic info](https://github.com/jgoerzen/docker-dos-bbs)

# Installed Files

This image is built upon the extensive [collection in jgoerzen/dos-bbs](https://github.com/jgoerzen/docker-dos-bbs).
Please see that page for details on DOS and the underlying configuration.

ViSiON2 itself is installed in `G:\V2`.

See the jgoerzen/dos-bbs documentation for more.

# VNC console and telnet ports

Using a capable terminal package (I recommend [netrunner](http://mysticbbs.com/downloads.html) or [syncterm](https://syncterm.bbsdev.net)) - connect to your host on port 23. 

The jgoerzen/dos-bbs docs describe all of the underlying mechanisms in detail.  Please refer to it if you are looking to understand how it all functions.


 
# Source

This is prepared by stlalpha <stlalpha@vision2bbs.com> and the source
can be found at https://github.com/stlalpha/docker-bbs-vision2


# Copyright

Docker scripts, etc. are
Copyright (c) 2017 John Goerzen 
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions
are met:
1. Redistributions of source code must retain the above copyright
   notice, this list of conditions and the following disclaimer.
2. Redistributions in binary form must reproduce the above copyright
   notice, this list of conditions and the following disclaimer in the
   documentation and/or other materials provided with the distribution.
3. Neither the name of the University nor the names of its contributors
   may be used to endorse or promote products derived from this software
   without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE AUTHORS AND CONTRIBUTORS ``AS IS'' AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
ARE DISCLAIMED.  IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS BE LIABLE
FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
SUCH DAMAGE.

Additional software copyrights as noted.


