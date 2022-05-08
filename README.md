# programming with MADS on Atari 8bit with Altirra emulator

> configuration is based on [Playlist Roquelike Game in 6502](https://youtube.com/playlist?list=PL7IgmhqRiwzEIVAOhZWnby6WPsQ8alFSI); it is assumed that `MADS` and `Altirra` are installed to `C:\Program Files` (and configured with the proper ROMs).

## links

- [Emulator](https://virtualdub.org/altirra.html)
- [MADS over WUDSN](http://www.wudsn.com/index.php/ide/installation)
- [MADS direct](https://www.wudsn.com/productions/java/ide/downloads/compilers.zip)
- [Memory map](https://www.atariarchives.org/mapping/memorymap.php)
- [Graphics modes](https://gury.atari8.info/refs/graphics_modes.php)
- [Playlist Roquelike Game in 6502](https://youtube.com/playlist?list=PL7IgmhqRiwzEIVAOhZWnby6WPsQ8alFSI)
- [Repo Roquelike Game in 6502](https://github.com/EdSalisbury/edventure)

## build and execute

````powershell
$prog="helloworld"
& "C:\Program Files\MADS\mads.exe" -l -t .\$($prog).asm
& "C:\Program Files\Altirra\Altirra64.exe" .\$($prog).obx
```
