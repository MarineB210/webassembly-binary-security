# Use-after-take
## Reading/writing in the MAX:u64 handle to provoke memory corruption ❌
**Output:**
```
┌──(kali㉿kali)-[~/…/study/resources/vulns/use-after-take]
└─$ wasmtime run final.wasm                                                                         
READ: []
READ: []
BEFORE: []
AFTER: [1, 2, 3, 4]
Error: failed to run main module `final.wasm`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0:  0x192 - <unknown>!<wasm function 9>
           1: 0x1add7 - wit-component:shim!indirect-resources:creator/create-resource@0.1.0-[method]buffer.read
           2: 0x174b5 - resource_caller.wasm!resources:caller/operate-buffer@0.1.0#check-buffer
           3:  0x366 - <unknown>!<wasm function 11>
           4: 0x1c095 - command-6a53ec30c108f397.wasm!command::main::h59fedba80955bf37
           5: 0x1c074 - command-6a53ec30c108f397.wasm!std::sys::backtrace::__rust_begin_short_backtrace::hd4a464724e8d9ffd
           6: 0x1c067 - command-6a53ec30c108f397.wasm!std::rt::lang_start::{{closure}}::h8cd3ea8373cd271a
           7: 0x1d4a3 - command-6a53ec30c108f397.wasm!std::rt::lang_start_internal::h40c5de061cd38970
           8: 0x1c0cd - command-6a53ec30c108f397.wasm!__main_void
           9: 0x1c040 - command-6a53ec30c108f397.wasm!_start
          10: 0x28fd0 - wit-component:adapter:wasi_snapshot_preview1!wasi:cli/run@0.2.3#run
    2: unknown handle index 4294967295
```
