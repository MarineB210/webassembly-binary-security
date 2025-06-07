
**Composing the final component:**
```
wac plug resource-caller/caller.component.wasm --plug resource-creator/target/wasm32-wasip1/release/resource_creator.wasm -o composed.wasm
                                                                                                                    
wac plug command/target/wasm32-wasip1/release/command.wasm --plug composed.wasm -o final.wasm
```

**Executing the component:**
```
wasmtime run final.wasm 
```

**Output:**
```
[B] Pointer to real_data in B: 0x114a0
BEFORE: []
[A] Before write, buffer ptr: 0x1
AFTER: [72, 69, 76, 76, 79, 33]
[A] After write, buffer ptr: 0x122420
```
-> The buffer was added to component A's memory (Rust-based component).