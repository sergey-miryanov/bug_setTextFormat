bug_setTextFormat
=================

Demonstrates bug in setTextFormat for cpp(linux -64) and android targets

==
Compiled for flash, cpp(linux -64) and android targets. For Flash all works fine, for cpp it produce following segfault:

```
Program received signal SIGSEGV, Segmentation fault.
0x00007ffff68218dd in nme::TextField::setTextFormat(nme::TextFormat*, int, int) ()
   from /home/zerg/src/NME/ndll/Linux64/./nme.ndll
```

For android - it hangs and android manager kill it.
