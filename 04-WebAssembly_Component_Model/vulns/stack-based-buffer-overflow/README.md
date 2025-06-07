# Stack-based buffer overflow

Collection of (failed) attempts to produce a stack-based buffer overflow in a Rust program through a C program, using the component model.

## Fisrt attempt

**Settings:**
- Array to overwrite is mutable
- Use strcpy to insert input
- Pass a list as a parameter to the malicious/vulnerable function

**Result:**
```c
$ wasmtime run final.wasm    

Printing the buffer: [0, 0, 0, 0, 0, 0, 0, 0]
Printing the frame: AAAAAAAA
overflow buffer: 01 01 01 01 01 01 01 01 01 01 01 01 01 01 01 01 
value->ptr buffer: 01 01 01 01 01 01 01 01 01 01 01 01 13 00 01 00 
Printing the after buffer: [0, 0, 0, 0, 0, 0, 0, 0]
Printing the after frame: AAAAAAAA
```
-> The component model does not share memory between components. It only copies values between components. Therefore, the content of the buffer in the Rust program does not change.

## Second attempt

**Settings:**
- Array to overwrite is mutable
- Use strcpy to insert input
- Return a list from a malicious/vulnerable function

**Results:**
```
error[E0308]: mismatched types
  --> src/lib.rs:16:18
   |
13 |         let mut buffer : [u8; 8] = [0; 8];
   |                          ------- expected due to this type
...
16 |         buffer = malicious(); // Call imported function
   |                  ^^^^^^^^^^^ expected `[u8; 8]`, found `Vec<u8>`
   |
   = note: expected array `[u8; 8]`
             found struct `Vec<u8>`
```
-> It forces us to use vectors (can grow in size) instead of arrays.

```
$ wasmtime run final.wasm    

Printing the buffer: [0, 0, 0, 0, 0, 0, 0, 0]
Printing the frame: AAAAAAAA
overflow buffer: 01 01 01 01 01 01 01 01 01 01 01 01 01 01 01 01 

thread '<unnamed>' panicked at src/lib.rs:17:33:
Expected exactly 8 bytes: [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
note: run with `RUST_BACKTRACE=1` environment variable to display a backtrace
Error: failed to run main module `final.wasm`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x2fbcd - legitimate.wasm!__rust_start_panic
           1: 0x2fa44 - legitimate.wasm!rust_panic
           2: 0x2fa17 - legitimate.wasm!std::panicking::rust_panic_with_hook::h79071f5fb265d1d9
           3: 0x2eac5 - legitimate.wasm!std::panicking::begin_panic_handler::{{closure}}::h410c57f452410813
           4: 0x2ea31 - legitimate.wasm!std::sys::backtrace::__rust_end_short_backtrace::h514500abf2a2d0ca
           5: 0x2f3ab - legitimate.wasm!rust_begin_unwind
           6: 0x34388 - legitimate.wasm!core::panicking::panic_fmt::he306018bf71f8e67
           7: 0x353a5 - legitimate.wasm!core::result::unwrap_failed::h270adb30136b6536
           8: 0x2b066 - legitimate.wasm!exploit:legitimate/victim#victim
           9:  0x1ff - <unknown>!<wasm function 5>
          10: 0x42ca3 - command-c12ac97657996a9e.wasm!command::main::h89a941ec457b06b6
          11: 0x429d2 - command-c12ac97657996a9e.wasm!std::sys::backtrace::__rust_begin_short_backtrace::hc0c960be5530130d
          12: 0x429c5 - command-c12ac97657996a9e.wasm!std::rt::lang_start::{{closure}}::h6a80547887d1e466
          13: 0x87fe8 - command-c12ac97657996a9e.wasm!std::rt::lang_start_internal::h40c5de061cd38970
          14: 0x42fb2 - command-c12ac97657996a9e.wasm!__main_void
          15: 0x40b04 - command-c12ac97657996a9e.wasm!_start
          16: 0xaf2b6 - wit-component:adapter:wasi_snapshot_preview1!wasi:cli/run@0.2.3#run
    2: wasm trap: wasm `unreachable` instruction executed
```
-> Rust program panic (classic behavior).

## Third attempt


**Settings:**
- Can't pass around pointers, but possible to cast pointer into integer.
- Pass an integer (casted pointer) as a parameter to malicious function.

**Results:**

```
$ wasmtime run final.wasm                                                                      
Buffer address as usize = 0xfffb0
Printing the buffer: [0, 0, 0, 0, 0, 0, 0, 0]
Printing the first string: I'm a string
Printing the second string: I'm another string
Injecting input in the buffer...
Received buffer address = 0xfffb0
Error: failed to run main module `final.wasm`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x23b5 - evil.wasm!exports_exploit_evil_malicious_malicious
           1: 0x2511 - evil.wasm!__wasm_export_exports_exploit_evil_malicious_malicious
           2:   0x8c - <unknown>!<wasm function 1>
           3: 0x2add1 - legitimate.wasm!exploit:legitimate/victim#victim
           4:   0x89 - <unknown>!<wasm function 1>
           5: 0x429fd - command-f6b4cb8ef65d0aff.wasm!command::main::h13a14da833edd9a2
           6: 0x4272c - command-f6b4cb8ef65d0aff.wasm!std::sys::backtrace::__rust_begin_short_backtrace::hc04819276cc039a5
           7: 0x4271f - command-f6b4cb8ef65d0aff.wasm!std::rt::lang_start::{{closure}}::hbc74711e3dde616c
           8: 0x87718 - command-f6b4cb8ef65d0aff.wasm!std::rt::lang_start_internal::h40c5de061cd38970
           9: 0x42d0c - command-f6b4cb8ef65d0aff.wasm!__main_void
          10: 0x4085e - command-f6b4cb8ef65d0aff.wasm!_start
          11: 0xae9fd - wit-component:adapter:wasi_snapshot_preview1!wasi:cli/run@0.2.3#run
       note: using the `WASMTIME_BACKTRACE_DETAILS=1` environment variable may show more debugging information
    2: memory fault at wasm address 0xfffb0 in linear memory of size 0x40000
    3: wasm trap: out of bounds memory access
```
-> Pointers addresses are offsets, not true addresses. Therefore, in order to use them, we would first have to leak the base address of the linear memory and potentially compute the real address. But even then, we might encounter problems (bound checks notably).