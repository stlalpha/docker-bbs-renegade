# ViSiON/2 - The Resurrection

This image runs a telnettable ViSiON/2 - The Resurrection BBS server inside Docker.

![V2 Logo](https://github.com/stlalpha/vision-2-bbs/blob/main/IMAGES/welcome.png?raw=true)

It is based upon:

 - [My DOSEMU environment for Docker](https://github.com/jgoerzen/docker-dosemu)
 - [My general BBS template, jgoerzen/dos-bbs](https://github.com/jgoerzen/docker-dos-bbs) and the dos-bbs-balance
 

This provides the full ViSiON/2 R1.0 setup in Drive G:.

# Install and Run

You can install with:

    docker pull stlalpha/vision2bbsres

And run with:

    docker run -d -p 5901:5901 -p 23:23 --name bbs-v2 stlalpha/vision2bbsres

Or save the following docker-compose.yml:
```

  ---
  version: "2.1"
  services:
   ViSiON-2:
     image: vision2bbsres:V1.0
    container_name: v2
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=America/Chicago
      - VNCPASSWORD=muhbbs
    ports:
      - '23:23'
      - '5901:5901'
    restart: unless-stopped
```
# Accessing and general commands

For details, see the [dos-bbs generic info](https://github.com/jgoerzen/docker-dos-bbs).

# Installed Files

This image is built upon the extensive [collection in jgoerzen/dos-bbs](https://github.com/jgoerzen/docker-dos-bbs).
Please see that page for details on DOS and the underlying configuration.

Renegade itself is installed in `G:\V2`.

See the jgoerzen/dos-bbs documentation for more.

# VNC console and telnet ports

The jgoerzen/dos-bbs will describe this.  Please refer to it.


# More Information

 - [Renegade homepage](http://www.renegadebbs.info/)
 - [Renegade in Ubuntu](http://www.instructables.com/id/Renegade-BBS-in-Ubuntu-Linux-Telnet-Multi-Node/)
 - [Another Renegade site](http://www.redditmirror.cc/cache/websites/geek.phatus.com_9stap/geek.phatus.com/2009/08/renegade-bbs-in-ubuntu-linux-telnetmulti-node/index.html)
 - [Renegade Documentation](http://renegadebbs.info/docs/)

# Source

This is prepared by John Goerzen <jgoerzen@complete.org> and the source
can be found at https://github.com/jgoerzen/docker-bbs-renegade

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


