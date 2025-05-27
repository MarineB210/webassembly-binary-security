# Leaked Handles
## Sharing ownership of a same handle between different functions/components ✅ 
**Output:**
```
┌──(kali㉿kali)-[~/…/study/resources/vulns/leaked-handles]
└─$ wasmtime run final.wasm                                                                      
READ: []
READ: []
BEFORE: []
AFTER: [1, 2, 3, 4]
READ: [1, 2, 3, 4]
BEFORE: [1, 2, 3, 4]
AFTER: [4, 4, 4, 4]
```
-> potential race condition in multi-threading scenarios.
