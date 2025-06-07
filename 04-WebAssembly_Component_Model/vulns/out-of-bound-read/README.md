# Out-of-bounds Read
## Leaking data from the linear memory (stack and data) ✅
**Output:**
```
┌──(kali㉿kali)-[~/…/resources/vulns/memory-corruption/out-of-bound-write]
└─$ wasmtime run final.wasm                                                                                  
BEFORE: []
AFTER: [83, 69, 67, 82, 69, 84, 95, 68, 65, 84, 65, 95, 49, 50, 51, 52]
READ: [83, 69, 67, 82, 69, 84, 95, 68, 65, 84, 65, 95, 49, 50, 51, 52]
READ: []
BEFORE: []
AFTER: [72, 65, 67, 75, 69, 68, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 240, 5, 1, 0, 16, 0, 0, 0, 83, 69, 67, 82, 69, 84, 95, 68, 65, 84, 65, 95, 49, 50, 51, 52, 2, 0, 0, 0, 2, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
READ: [83, 69, 67, 82, 69, 84, 95, 68, 65, 84, 65, 95, 49, 50, 51, 52]
READ: [72, 65, 67, 75, 69, 68, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 240, 5, 1, 0, 16, 0, 0, 0, 83, 69, 67, 82, 69, 84, 95, 68, 65, 84, 65, 95, 49, 50, 51, 52, 2, 0, 0, 0, 2, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
```

## Leaking data outside the sandbox ❌
Use max possible len.

**Output:**
```
┌──(kali㉿kali)-[~/…/resources/vulns/memory-corruption/out-of-bound-read]
└─$ wasmtime run final.wasm WASMTIME_BACKTRACE_DETAILS=1
BEFORE: []
AFTER: [83, 69, 67, 82, 69, 84, 95, 68, 65, 84, 65, 95, 49, 50, 51, 52]
Error: failed to run main module `final.wasm`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x2668 - resource_creator.wasm!wit_bindgen_rt::cabi_realloc::h882a35da396c79b1
           1: 0x2699 - resource_creator.wasm!cabi_realloc
           2:  0x15c - <unknown>!<wasm function 6>
           3: 0x2479f - wit-component:shim!indirect-resources:creator/create-resource@0.1.0-[method]buffer.write
           4: 0x17640 - caller.wasm!resources_creator_create_resource_method_buffer_write
           5: 0x17460 - caller.wasm!exports_resources_creator_operate_buffer_modify_buffer
           6: 0x1765d - caller.wasm!__wasm_export_exports_resources_creator_operate_buffer_modify_buffer
           7:  0x215 - <unknown>!<wasm function 7>
           8: 0x258bd - command-6a53ec30c108f397.wasm!command::main::h59fedba80955bf37
           9: 0x2589c - command-6a53ec30c108f397.wasm!std::sys::backtrace::__rust_begin_short_backtrace::hd4a464724e8d9ffd
          10: 0x2588f - command-6a53ec30c108f397.wasm!std::rt::lang_start::{{closure}}::h8cd3ea8373cd271a
          11: 0x26ccb - command-6a53ec30c108f397.wasm!std::rt::lang_start_internal::h40c5de061cd38970
          12: 0x258f5 - command-6a53ec30c108f397.wasm!__main_void
          13: 0x25868 - command-6a53ec30c108f397.wasm!_start
          14: 0x327fa - wit-component:adapter:wasi_snapshot_preview1!wasi:cli/run@0.2.3#run
       note: using the `WASMTIME_BACKTRACE_DETAILS=1` environment variable may show more debugging information
    2: wasm trap: wasm `unreachable` instruction executed
```
