Here are some script files to use with a base debian 11.5.0 install that will download and install all the needed things to compile TRS-IO as of Feb-8-2026.


I based these off of the guide by Retro Computing Blog located here.

[Retro Computing Blog TRS-IO for System/80 ](https://www.realtime.com.au/retro/index.php/trs-io-for-system-80/#ESP32-firmware-compilation)

You need to install debian 11.5, login as root and then issue the following commands.

"apt install sudo"
"adduser (yourusername you made) sudo"

I've just gone ahead and made them install everything and compile the desired destination in one go.

Just pick the version you want and wget it, then set it as executable with the chmod +x command.

[TRS-IO Model 3] (https://github.com/dabonetn/TRS-IO-Compile-Script-Feb-2026-/raw/refs/heads/main/TRS-IO-m3.sh)

[TRS-IO Model 1] (https://github.com/dabonetn/TRS-IO-Compile-Script-Feb-2026-/raw/refs/heads/main/TRS-IO-m1.sh)

[TRS-IO Model ++] (https://github.com/dabonetn/TRS-IO-Compile-Script-Feb-2026-/raw/refs/heads/main/TRS-IO-plusplus.sh)
