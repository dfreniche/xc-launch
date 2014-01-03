#xc-launch

This is a small script to launch Xcode using a RAM disk to store intermediate build products files, normally found in `DerivedData`.

#Motivation

After some time using Xcode, the DerivedData folder tends to grow. In my secondary development machine takes now 1.8 GB. Creating all these files in a RAM Disk destroys everything after switching off your machine (or ejecting the drive). Also, if you have enough memory, it speeds up compiling (everything happens in RAM)

This problem is shown here:
[https://twitter.com/mindbrix/status/412929707727159296]()

Also, in [this StackOverflow](http://stackoverflow.com/questions/18933321/deleting-contents-from-xcode-derived-data-folder) discussion

#Installation

1. Just copy this script somewhere in your PATH, for instance to `/usr/local/bin` (using for example `cp xc-launch.sh /usr/local/bin`)
2. Grant it executable permissions: `chmod a+x xc-launch.sh`

To make use of it, you __need__ to change your Xcode preferences 

1. Go to Xcode > Preferences > Locations
2. Point Derived Data to /Volumes/ramdisk

[![](https://raw.github.com/dfreniche/xc-launch/master/img/locations.png)](https://raw.github.com/dfreniche/xc-launch/master/img/locations.png)

You don't need to be root to run this :-)

When you finish, eject your ramdisk using the Finder.


#Licenses

Distributed under the [MIT](http://en.wikipedia.org/wiki/MIT_License) & [Anyone but Richard Stallman](https://github.com/landondyer/kasm/blob/master/LICENSE) licenses ;-)

##MIT - Licence

Copyright (c) 2013 Diego Freniche

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

