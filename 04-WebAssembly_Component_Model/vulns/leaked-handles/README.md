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
## Double-drop to cause memory corruption ❌
**Output:**
```
└─$ wasmtime run final.wasm                                                                      
READ: []
READ: []
BEFORE: []
AFTER: [1, 2, 3, 4]
Error: failed to run main module `final.wasm`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x17492 - resource_caller.wasm!resources:caller/operate-buffer@0.1.0#check-buffer
           1:  0x366 - <unknown>!<wasm function 11>
           2: 0x1c029 - command-6a53ec30c108f397.wasm!command::main::h59fedba80955bf37
           3: 0x1c008 - command-6a53ec30c108f397.wasm!std::sys::backtrace::__rust_begin_short_backtrace::hd4a464724e8d9ffd
           4: 0x1bffb - command-6a53ec30c108f397.wasm!std::rt::lang_start::{{closure}}::h8cd3ea8373cd271a
           5: 0x1d437 - command-6a53ec30c108f397.wasm!std::rt::lang_start_internal::h40c5de061cd38970
           6: 0x1c061 - command-6a53ec30c108f397.wasm!__main_void
           7: 0x1bfd4 - command-6a53ec30c108f397.wasm!_start
           8: 0x28f64 - wit-component:adapter:wasi_snapshot_preview1!wasi:cli/run@0.2.3#run
    2: unknown handle index 1
```
