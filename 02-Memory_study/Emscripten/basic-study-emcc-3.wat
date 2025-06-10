(module $basic-study-emcc-3.wasm
  (type (;0;) (func))
  (type (;1;) (func (param i32 i32 i32) (result i32)))
  (type (;2;) (func (param i32 i64 i32) (result i64)))
  (type (;3;) (func (param i32 f64 i32 i32 i32 i32) (result i32)))
  (type (;4;) (func (param i32 i32)))
  (type (;5;) (func (param i32)))
  (type (;6;) (func (param i32) (result i32)))
  (type (;7;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;8;) (func (param i32 i64 i32 i32) (result i32)))
  (type (;9;) (func (result i32)))
  (type (;10;) (func (param i32 i32) (result i32)))
  (type (;11;) (func (param f64 i32) (result f64)))
  (type (;12;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (type (;13;) (func (param i32 i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;14;) (func (param i32 i32 i32)))
  (type (;15;) (func (param i32 i32 i32 i32)))
  (type (;16;) (func (param i64 i32 i32) (result i32)))
  (type (;17;) (func (param i64 i32) (result i32)))
  (type (;18;) (func (param i32 i32 i32 i32 i32)))
  (type (;19;) (func (param f64) (result i64)))
  (type (;20;) (func (param i32 i64 i64 i32)))
  (type (;21;) (func (param i64 i64) (result f64)))
  (import "wasi_snapshot_preview1" "proc_exit" (func $__wasi_proc_exit (type 5)))
  (import "wasi_snapshot_preview1" "fd_close" (func $__wasi_fd_close (type 6)))
  (import "wasi_snapshot_preview1" "fd_write" (func $__wasi_fd_write (type 7)))
  (import "wasi_snapshot_preview1" "fd_seek" (func $__wasi_fd_seek (type 8)))
  (func $__wasm_call_ctors (type 0)
    call $init_pthread_self)
  (func $allocate_memory (type 0)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 0
    i32.const 16
    local.set 1
    local.get 0
    local.get 1
    i32.sub
    local.set 2
    local.get 2
    global.set $__stack_pointer
    i32.const 64
    local.set 3
    local.get 3
    call $emscripten_builtin_malloc
    local.set 4
    local.get 2
    local.get 4
    i32.store offset=12
    local.get 2
    i32.load offset=12
    local.set 5
    i32.const 0
    local.set 6
    local.get 5
    local.get 6
    i32.eq
    local.set 7
    i32.const 1
    local.set 8
    local.get 7
    local.get 8
    i32.and
    local.set 9
    block  ;; label = @1
      block  ;; label = @2
        local.get 9
        i32.eqz
        br_if 0 (;@2;)
        i32.const 65573
        local.set 10
        local.get 10
        call $perror
        br 1 (;@1;)
      end
      local.get 2
      i32.load offset=12
      local.set 11
      i32.const 65595
      local.set 12
      local.get 11
      local.get 12
      call $strcpy
      drop
      i32.const 65756
      local.set 13
      i32.const 0
      local.set 14
      local.get 13
      local.get 14
      call $printf
      drop
      i32.const 65861
      local.set 15
      i32.const 0
      local.set 16
      local.get 15
      local.get 16
      call $printf
      drop
      local.get 2
      i32.load offset=12
      local.set 17
      local.get 17
      call $emscripten_builtin_free
    end
    i32.const 16
    local.set 18
    local.get 2
    local.get 18
    i32.add
    local.set 19
    local.get 19
    global.set $__stack_pointer
    return)
  (func $function_with_stack_variable (type 0)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 0
    i32.const 16
    local.set 1
    local.get 0
    local.get 1
    i32.sub
    local.set 2
    local.get 2
    global.set $__stack_pointer
    i32.const 100
    local.set 3
    local.get 2
    local.get 3
    i32.store offset=12
    i32.const 65808
    local.set 4
    i32.const 0
    local.set 5
    local.get 4
    local.get 5
    call $printf
    drop
    i32.const 65884
    local.set 6
    i32.const 0
    local.set 7
    local.get 6
    local.get 7
    call $printf
    drop
    i32.const 16
    local.set 8
    local.get 2
    local.get 8
    i32.add
    local.set 9
    local.get 9
    global.set $__stack_pointer
    return)
  (func $__original_main (type 9) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 f32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 0
    i32.const 32
    local.set 1
    local.get 0
    local.get 1
    i32.sub
    local.set 2
    local.get 2
    global.set $__stack_pointer
    i32.const 0
    local.set 3
    local.get 2
    local.get 3
    i32.store offset=28
    i32.const 65635
    local.set 4
    i32.const 0
    local.set 5
    local.get 4
    local.get 5
    call $printf
    drop
    i32.const 24
    local.set 6
    local.get 2
    local.get 6
    i32.store offset=24
    i32.const 0
    local.set 7
    local.get 7
    i32.load offset=65917 align=1
    local.set 8
    i32.const 16
    local.set 9
    local.get 2
    local.get 9
    i32.add
    local.set 10
    local.get 10
    local.get 8
    i32.store
    local.get 7
    i64.load offset=65909 align=1
    local.set 11
    local.get 2
    local.get 11
    i64.store offset=8
    f32.const 0x1.4p+1 (;=2.5;)
    local.set 12
    local.get 2
    local.get 12
    f32.store offset=4
    i32.const 65781
    local.set 13
    i32.const 0
    local.set 14
    local.get 13
    local.get 14
    call $printf
    drop
    i32.const 65669
    local.set 15
    i32.const 0
    local.set 16
    local.get 15
    local.get 16
    call $printf
    drop
    i32.const 65694
    local.set 17
    i32.const 0
    local.set 18
    local.get 17
    local.get 18
    call $printf
    drop
    i32.const 65645
    local.set 19
    i32.const 0
    local.set 20
    local.get 19
    local.get 20
    call $printf
    drop
    i32.const 65724
    local.set 21
    i32.const 0
    local.set 22
    local.get 21
    local.get 22
    call $printf
    drop
    i32.const 65834
    local.set 23
    i32.const 0
    local.set 24
    local.get 23
    local.get 24
    call $printf
    drop
    call $function_with_stack_variable
    call $allocate_memory
    i32.const 0
    local.set 25
    i32.const 32
    local.set 26
    local.get 2
    local.get 26
    i32.add
    local.set 27
    local.get 27
    global.set $__stack_pointer
    local.get 25
    return)
  (func $_start (type 0)
    block  ;; label = @1
      i32.const 1
      i32.eqz
      br_if 0 (;@1;)
      call $__wasm_call_ctors
    end
    call $__original_main
    call $exit
    unreachable)
  (func $dummy (type 0))
  (func $libc_exit_fini (type 0)
    (local i32)
    i32.const 0
    local.set 0
    block  ;; label = @1
      i32.const 0
      i32.const 0
      i32.le_u
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 0
        i32.const -4
        i32.add
        local.tee 0
        i32.load
        call_indirect (type 0)
        local.get 0
        i32.const 0
        i32.gt_u
        br_if 0 (;@2;)
      end
    end
    call $dummy)
  (func $exit (type 5) (param i32)
    call $dummy
    call $libc_exit_fini
    call $__stdio_exit
    local.get 0
    call $_Exit
    unreachable)
  (func $_Exit (type 5) (param i32)
    local.get 0
    call $__wasi_proc_exit
    unreachable)
  (func $__errno_location (type 9) (result i32)
    i32.const 68944)
  (func $__lockfile (type 6) (param i32) (result i32)
    i32.const 1)
  (func $__unlockfile (type 5) (param i32))
  (func $emscripten_get_heap_size (type 9) (result i32)
    memory.size
    i32.const 16
    i32.shl)
  (func $emscripten_resize_heap (type 6) (param i32) (result i32)
    i32.const 0)
  (func $emscripten_futex_wake (type 10) (param i32 i32) (result i32)
    i32.const 0)
  (func $__lock (type 5) (param i32))
  (func $__ofl_lock (type 9) (result i32)
    i32.const 68948
    call $__lock
    i32.const 68952)
  (func $__stdio_exit (type 0)
    (local i32)
    block  ;; label = @1
      call $__ofl_lock
      i32.load
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 0
        call $close_file
        local.get 0
        i32.load offset=56
        local.tee 0
        br_if 0 (;@2;)
      end
    end
    i32.const 0
    i32.load offset=68956
    call $close_file
    i32.const 0
    i32.load offset=68936
    call $close_file
    i32.const 0
    i32.load offset=68784
    call $close_file)
  (func $close_file (type 5) (param i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 0
        i32.load offset=76
        i32.const 0
        i32.lt_s
        br_if 0 (;@2;)
        local.get 0
        call $__lockfile
        drop
      end
      block  ;; label = @2
        local.get 0
        i32.load offset=20
        local.get 0
        i32.load offset=28
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        i32.const 0
        i32.const 0
        local.get 0
        i32.load offset=36
        call_indirect (type 1)
        drop
      end
      local.get 0
      i32.load offset=4
      local.tee 1
      local.get 0
      i32.load offset=8
      local.tee 2
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      local.get 2
      i32.sub
      i64.extend_i32_s
      i32.const 1
      local.get 0
      i32.load offset=40
      call_indirect (type 2)
      drop
    end)
  (func $__towrite (type 6) (param i32) (result i32)
    (local i32)
    local.get 0
    local.get 0
    i32.load offset=72
    local.tee 1
    i32.const -1
    i32.add
    local.get 1
    i32.or
    i32.store offset=72
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 1
      i32.const 8
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.const 32
      i32.or
      i32.store
      i32.const -1
      return
    end
    local.get 0
    i64.const 0
    i64.store offset=4 align=4
    local.get 0
    local.get 0
    i32.load offset=44
    local.tee 1
    i32.store offset=28
    local.get 0
    local.get 1
    i32.store offset=20
    local.get 0
    local.get 1
    local.get 0
    i32.load offset=48
    i32.add
    i32.store offset=16
    i32.const 0)
  (func $_emscripten_memcpy_bulkmem (type 1) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    memory.copy
    local.get 0)
  (func $__memcpy (type 1) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $_emscripten_memcpy_bulkmem)
  (func $__fwritex (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.load offset=16
        local.tee 3
        br_if 0 (;@2;)
        i32.const 0
        local.set 4
        local.get 2
        call $__towrite
        br_if 1 (;@1;)
        local.get 2
        i32.load offset=16
        local.set 3
      end
      block  ;; label = @2
        local.get 1
        local.get 3
        local.get 2
        i32.load offset=20
        local.tee 4
        i32.sub
        i32.le_u
        br_if 0 (;@2;)
        local.get 2
        local.get 0
        local.get 1
        local.get 2
        i32.load offset=36
        call_indirect (type 1)
        return
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.load offset=80
          i32.const 0
          i32.lt_s
          br_if 0 (;@3;)
          local.get 1
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          local.set 3
          block  ;; label = @4
            loop  ;; label = @5
              local.get 0
              local.get 3
              i32.add
              local.tee 5
              i32.const -1
              i32.add
              i32.load8_u
              i32.const 10
              i32.eq
              br_if 1 (;@4;)
              local.get 3
              i32.const -1
              i32.add
              local.tee 3
              i32.eqz
              br_if 2 (;@3;)
              br 0 (;@5;)
            end
          end
          local.get 2
          local.get 0
          local.get 3
          local.get 2
          i32.load offset=36
          call_indirect (type 1)
          local.tee 4
          local.get 3
          i32.lt_u
          br_if 2 (;@1;)
          local.get 1
          local.get 3
          i32.sub
          local.set 1
          local.get 2
          i32.load offset=20
          local.set 4
          br 1 (;@2;)
        end
        local.get 0
        local.set 5
        i32.const 0
        local.set 3
      end
      local.get 4
      local.get 5
      local.get 1
      call $__memcpy
      drop
      local.get 2
      local.get 2
      i32.load offset=20
      local.get 1
      i32.add
      i32.store offset=20
      local.get 3
      local.get 1
      i32.add
      local.set 4
    end
    local.get 4)
  (func $fwrite (type 7) (param i32 i32 i32 i32) (result i32)
    (local i32 i32)
    local.get 2
    local.get 1
    i32.mul
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.load offset=76
        i32.const -1
        i32.gt_s
        br_if 0 (;@2;)
        local.get 0
        local.get 4
        local.get 3
        call $__fwritex
        local.set 0
        br 1 (;@1;)
      end
      local.get 3
      call $__lockfile
      local.set 5
      local.get 0
      local.get 4
      local.get 3
      call $__fwritex
      local.set 0
      local.get 5
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      call $__unlockfile
    end
    block  ;; label = @1
      local.get 0
      local.get 4
      i32.ne
      br_if 0 (;@1;)
      local.get 2
      i32.const 0
      local.get 1
      select
      return
    end
    local.get 0
    local.get 1
    i32.div_u)
  (func $__overflow (type 10) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    i32.store8 offset=15
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=16
        local.tee 3
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 0
          call $__towrite
          i32.eqz
          br_if 0 (;@3;)
          i32.const -1
          local.set 3
          br 2 (;@1;)
        end
        local.get 0
        i32.load offset=16
        local.set 3
      end
      block  ;; label = @2
        local.get 0
        i32.load offset=20
        local.tee 4
        local.get 3
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        i32.load offset=80
        local.get 1
        i32.const 255
        i32.and
        local.tee 3
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        local.get 4
        i32.const 1
        i32.add
        i32.store offset=20
        local.get 4
        local.get 1
        i32.store8
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 0
        local.get 2
        i32.const 15
        i32.add
        i32.const 1
        local.get 0
        i32.load offset=36
        call_indirect (type 1)
        i32.const 1
        i32.eq
        br_if 0 (;@2;)
        i32.const -1
        local.set 3
        br 1 (;@1;)
      end
      local.get 2
      i32.load8_u offset=15
      local.set 3
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 3)
  (func $fputc (type 10) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $do_putc)
  (func $do_putc (type 10) (param i32 i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.load offset=76
        local.tee 2
        i32.const 0
        i32.lt_s
        br_if 0 (;@2;)
        local.get 2
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        i32.const 1073741823
        i32.and
        call $__get_tp
        i32.load offset=24
        i32.ne
        br_if 1 (;@1;)
      end
      block  ;; label = @2
        local.get 0
        i32.const 255
        i32.and
        local.tee 2
        local.get 1
        i32.load offset=80
        i32.eq
        br_if 0 (;@2;)
        local.get 1
        i32.load offset=20
        local.tee 3
        local.get 1
        i32.load offset=16
        i32.eq
        br_if 0 (;@2;)
        local.get 1
        local.get 3
        i32.const 1
        i32.add
        i32.store offset=20
        local.get 3
        local.get 0
        i32.store8
        local.get 2
        return
      end
      local.get 1
      local.get 2
      call $__overflow
      return
    end
    local.get 0
    local.get 1
    call $locking_putc)
  (func $locking_putc (type 10) (param i32 i32) (result i32)
    (local i32 i32 i32)
    block  ;; label = @1
      local.get 1
      i32.const 76
      i32.add
      local.tee 2
      call $a_cas
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      call $__lockfile
      drop
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 255
        i32.and
        local.tee 3
        local.get 1
        i32.load offset=80
        i32.eq
        br_if 0 (;@2;)
        local.get 1
        i32.load offset=20
        local.tee 4
        local.get 1
        i32.load offset=16
        i32.eq
        br_if 0 (;@2;)
        local.get 1
        local.get 4
        i32.const 1
        i32.add
        i32.store offset=20
        local.get 4
        local.get 0
        i32.store8
        br 1 (;@1;)
      end
      local.get 1
      local.get 3
      call $__overflow
      local.set 3
    end
    block  ;; label = @1
      local.get 2
      call $a_swap
      i32.const 1073741824
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      call $__wake
    end
    local.get 3)
  (func $a_cas (type 6) (param i32) (result i32)
    (local i32)
    local.get 0
    local.get 0
    i32.load
    local.tee 1
    i32.const 1073741823
    local.get 1
    select
    i32.store
    local.get 1)
  (func $a_swap (type 6) (param i32) (result i32)
    (local i32)
    local.get 0
    i32.load
    local.set 1
    local.get 0
    i32.const 0
    i32.store
    local.get 1)
  (func $__wake (type 5) (param i32)
    local.get 0
    i32.const 1
    call $emscripten_futex_wake
    drop)
  (func $perror (type 5) (param i32)
    (local i32 i32 i32 i32)
    call $__errno_location
    i32.load
    call $strerror
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        i32.load offset=68716
        i32.const 0
        i32.ge_s
        br_if 0 (;@2;)
        i32.const 1
        local.set 2
        br 1 (;@1;)
      end
      i32.const 68640
      call $__lockfile
      i32.eqz
      local.set 2
    end
    i32.const 0
    i32.load offset=68712
    local.set 3
    i32.const 0
    i32.load offset=68776
    local.set 4
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load8_u
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 0
      call $strlen
      i32.const 1
      i32.const 68640
      call $fwrite
      drop
      i32.const 58
      i32.const 68640
      call $fputc
      drop
      i32.const 32
      i32.const 68640
      call $fputc
      drop
    end
    local.get 1
    local.get 1
    call $strlen
    i32.const 1
    i32.const 68640
    call $fwrite
    drop
    i32.const 10
    i32.const 68640
    call $fputc
    drop
    i32.const 0
    local.get 4
    i32.store offset=68776
    i32.const 0
    local.get 3
    i32.store offset=68712
    block  ;; label = @1
      local.get 2
      br_if 0 (;@1;)
      i32.const 68640
      call $__unlockfile
    end)
  (func $printf (type 10) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    i32.store offset=12
    i32.const 68792
    local.get 0
    local.get 1
    call $vfprintf
    local.set 1
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_emscripten_memset_bulkmem (type 1) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    memory.fill
    local.get 0)
  (func $__memset (type 1) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    i32.extend8_s
    local.get 2
    call $_emscripten_memset_bulkmem)
  (func $__syscall_getpid (type 9) (result i32)
    i32.const 42)
  (func $getpid (type 9) (result i32)
    call $__syscall_getpid)
  (func $__get_tp (type 9) (result i32)
    i32.const 69016)
  (func $init_pthread_self (type 0)
    i32.const 0
    i32.const 68992
    i32.store offset=69112
    i32.const 0
    call $getpid
    i32.store offset=69040)
  (func $dummy.1 (type 6) (param i32) (result i32)
    local.get 0)
  (func $__stdio_close (type 6) (param i32) (result i32)
    local.get 0
    i32.load offset=60
    call $dummy.1
    call $__wasi_fd_close
    call $__wasi_syscall_ret)
  (func $__stdio_write (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.load offset=28
    local.tee 4
    i32.store offset=16
    local.get 0
    i32.load offset=20
    local.set 5
    local.get 3
    local.get 2
    i32.store offset=28
    local.get 3
    local.get 1
    i32.store offset=24
    local.get 3
    local.get 5
    local.get 4
    i32.sub
    local.tee 1
    i32.store offset=20
    local.get 1
    local.get 2
    i32.add
    local.set 6
    local.get 3
    i32.const 16
    i32.add
    local.set 4
    i32.const 2
    local.set 7
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.load offset=60
              local.get 3
              i32.const 16
              i32.add
              i32.const 2
              local.get 3
              i32.const 12
              i32.add
              call $__wasi_fd_write
              call $__wasi_syscall_ret
              i32.eqz
              br_if 0 (;@5;)
              local.get 4
              local.set 5
              br 1 (;@4;)
            end
            loop  ;; label = @5
              local.get 6
              local.get 3
              i32.load offset=12
              local.tee 1
              i32.eq
              br_if 2 (;@3;)
              block  ;; label = @6
                local.get 1
                i32.const -1
                i32.gt_s
                br_if 0 (;@6;)
                local.get 4
                local.set 5
                br 4 (;@2;)
              end
              local.get 4
              local.get 1
              local.get 4
              i32.load offset=4
              local.tee 8
              i32.gt_u
              local.tee 9
              i32.const 3
              i32.shl
              i32.add
              local.tee 5
              local.get 5
              i32.load
              local.get 1
              local.get 8
              i32.const 0
              local.get 9
              select
              i32.sub
              local.tee 8
              i32.add
              i32.store
              local.get 4
              i32.const 12
              i32.const 4
              local.get 9
              select
              i32.add
              local.tee 4
              local.get 4
              i32.load
              local.get 8
              i32.sub
              i32.store
              local.get 6
              local.get 1
              i32.sub
              local.set 6
              local.get 5
              local.set 4
              local.get 0
              i32.load offset=60
              local.get 5
              local.get 7
              local.get 9
              i32.sub
              local.tee 7
              local.get 3
              i32.const 12
              i32.add
              call $__wasi_fd_write
              call $__wasi_syscall_ret
              i32.eqz
              br_if 0 (;@5;)
            end
          end
          local.get 6
          i32.const -1
          i32.ne
          br_if 1 (;@2;)
        end
        local.get 0
        local.get 0
        i32.load offset=44
        local.tee 1
        i32.store offset=28
        local.get 0
        local.get 1
        i32.store offset=20
        local.get 0
        local.get 1
        local.get 0
        i32.load offset=48
        i32.add
        i32.store offset=16
        local.get 2
        local.set 1
        br 1 (;@1;)
      end
      i32.const 0
      local.set 1
      local.get 0
      i32.const 0
      i32.store offset=28
      local.get 0
      i64.const 0
      i64.store offset=16
      local.get 0
      local.get 0
      i32.load
      i32.const 32
      i32.or
      i32.store
      local.get 7
      i32.const 2
      i32.eq
      br_if 0 (;@1;)
      local.get 2
      local.get 5
      i32.load offset=4
      i32.sub
      local.set 1
    end
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $__lseek (type 2) (param i32 i64 i32) (result i64)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 0
    local.get 1
    local.get 2
    i32.const 255
    i32.and
    local.get 3
    i32.const 8
    i32.add
    call $__wasi_fd_seek
    call $__wasi_syscall_ret
    local.set 2
    local.get 3
    i64.load offset=8
    local.set 1
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
    i64.const -1
    local.get 1
    local.get 2
    select)
  (func $__stdio_seek (type 2) (param i32 i64 i32) (result i64)
    local.get 0
    i32.load offset=60
    local.get 1
    local.get 2
    call $__lseek)
  (func $__emscripten_stdout_close (type 6) (param i32) (result i32)
    i32.const 0)
  (func $__emscripten_stdout_seek (type 2) (param i32 i64 i32) (result i64)
    i64.const 0)
  (func $__stpcpy (type 10) (param i32 i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          local.get 0
          i32.xor
          i32.const 3
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          i32.load8_u
          local.set 2
          br 1 (;@2;)
        end
        block  ;; label = @3
          local.get 1
          i32.const 3
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 0
            local.get 1
            i32.load8_u
            local.tee 2
            i32.store8
            local.get 2
            i32.eqz
            br_if 3 (;@1;)
            local.get 0
            i32.const 1
            i32.add
            local.set 0
            local.get 1
            i32.const 1
            i32.add
            local.tee 1
            i32.const 3
            i32.and
            br_if 0 (;@4;)
          end
        end
        i32.const 16843008
        local.get 1
        i32.load
        local.tee 2
        i32.sub
        local.get 2
        i32.or
        i32.const -2139062144
        i32.and
        i32.const -2139062144
        i32.ne
        br_if 0 (;@2;)
        loop  ;; label = @3
          local.get 0
          local.get 2
          i32.store
          local.get 0
          i32.const 4
          i32.add
          local.set 0
          local.get 1
          i32.load offset=4
          local.set 2
          local.get 1
          i32.const 4
          i32.add
          local.tee 3
          local.set 1
          local.get 2
          i32.const 16843008
          local.get 2
          i32.sub
          i32.or
          i32.const -2139062144
          i32.and
          i32.const -2139062144
          i32.eq
          br_if 0 (;@3;)
        end
        local.get 3
        local.set 1
      end
      local.get 0
      local.get 2
      i32.store8
      local.get 2
      i32.const 255
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 0
        local.get 1
        i32.load8_u offset=1
        local.tee 2
        i32.store8 offset=1
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 2
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func $strcpy (type 10) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $__stpcpy
    drop
    local.get 0)
  (func $__strerror_l (type 10) (param i32 i32) (result i32)
    i32.const 0
    local.get 0
    local.get 0
    i32.const 153
    i32.gt_u
    select
    i32.const 1
    i32.shl
    i32.const 67840
    i32.add
    i32.load16_u
    i32.const 65921
    i32.add)
  (func $strerror (type 6) (param i32) (result i32)
    local.get 0
    local.get 0
    call $__strerror_l)
  (func $strlen (type 6) (param i32) (result i32)
    (local i32 i32 i32)
    local.get 0
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 0
          i32.load8_u
          br_if 0 (;@3;)
          local.get 0
          local.get 0
          i32.sub
          return
        end
        local.get 0
        local.set 1
        loop  ;; label = @3
          local.get 1
          i32.const 1
          i32.add
          local.tee 1
          i32.const 3
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          local.get 1
          i32.load8_u
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      loop  ;; label = @2
        local.get 1
        local.tee 2
        i32.const 4
        i32.add
        local.set 1
        i32.const 16843008
        local.get 2
        i32.load
        local.tee 3
        i32.sub
        local.get 3
        i32.or
        i32.const -2139062144
        i32.and
        i32.const -2139062144
        i32.eq
        br_if 0 (;@2;)
      end
      loop  ;; label = @2
        local.get 2
        local.tee 1
        i32.const 1
        i32.add
        local.set 2
        local.get 1
        i32.load8_u
        br_if 0 (;@2;)
      end
    end
    local.get 1
    local.get 0
    i32.sub)
  (func $memchr (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32)
    local.get 2
    i32.const 0
    i32.ne
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.const 3
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          i32.const 255
          i32.and
          local.set 4
          loop  ;; label = @4
            local.get 0
            i32.load8_u
            local.get 4
            i32.eq
            br_if 2 (;@2;)
            local.get 2
            i32.const -1
            i32.add
            local.tee 2
            i32.const 0
            i32.ne
            local.set 3
            local.get 0
            i32.const 1
            i32.add
            local.tee 0
            i32.const 3
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            local.get 2
            br_if 0 (;@4;)
          end
        end
        local.get 3
        i32.eqz
        br_if 1 (;@1;)
        block  ;; label = @3
          local.get 0
          i32.load8_u
          local.get 1
          i32.const 255
          i32.and
          i32.eq
          br_if 0 (;@3;)
          local.get 2
          i32.const 4
          i32.lt_u
          br_if 0 (;@3;)
          local.get 1
          i32.const 255
          i32.and
          i32.const 16843009
          i32.mul
          local.set 4
          loop  ;; label = @4
            i32.const 16843008
            local.get 0
            i32.load
            local.get 4
            i32.xor
            local.tee 3
            i32.sub
            local.get 3
            i32.or
            i32.const -2139062144
            i32.and
            i32.const -2139062144
            i32.ne
            br_if 2 (;@2;)
            local.get 0
            i32.const 4
            i32.add
            local.set 0
            local.get 2
            i32.const -4
            i32.add
            local.tee 2
            i32.const 3
            i32.gt_u
            br_if 0 (;@4;)
          end
        end
        local.get 2
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 1
      i32.const 255
      i32.and
      local.set 3
      loop  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load8_u
          local.get 3
          i32.ne
          br_if 0 (;@3;)
          local.get 0
          return
        end
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 2
        i32.const -1
        i32.add
        local.tee 2
        br_if 0 (;@2;)
      end
    end
    i32.const 0)
  (func $strnlen (type 10) (param i32 i32) (result i32)
    (local i32)
    local.get 0
    i32.const 0
    local.get 1
    call $memchr
    local.tee 2
    local.get 0
    i32.sub
    local.get 1
    local.get 2
    select)
  (func $frexp (type 11) (param f64 i32) (result f64)
    (local i64 i32)
    block  ;; label = @1
      local.get 0
      i64.reinterpret_f64
      local.tee 2
      i64.const 52
      i64.shr_u
      i32.wrap_i64
      i32.const 2047
      i32.and
      local.tee 3
      i32.const 2047
      i32.eq
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 3
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            f64.const 0x0p+0 (;=0;)
            f64.ne
            br_if 0 (;@4;)
            i32.const 0
            local.set 3
            br 1 (;@3;)
          end
          local.get 0
          f64.const 0x1p+64 (;=1.84467e+19;)
          f64.mul
          local.get 1
          call $frexp
          local.set 0
          local.get 1
          i32.load
          i32.const -64
          i32.add
          local.set 3
        end
        local.get 1
        local.get 3
        i32.store
        local.get 0
        return
      end
      local.get 1
      local.get 3
      i32.const -1022
      i32.add
      i32.store
      local.get 2
      i64.const -9218868437227405313
      i64.and
      i64.const 4602678819172646912
      i64.or
      f64.reinterpret_i64
      local.set 0
    end
    local.get 0)
  (func $__vfprintf_internal (type 12) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 208
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    local.get 2
    i32.store offset=204
    local.get 5
    i32.const 160
    i32.add
    i32.const 0
    i32.const 40
    call $__memset
    drop
    local.get 5
    local.get 5
    i32.load offset=204
    i32.store offset=200
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        local.get 1
        local.get 5
        i32.const 200
        i32.add
        local.get 5
        i32.const 80
        i32.add
        local.get 5
        i32.const 160
        i32.add
        local.get 3
        local.get 4
        call $printf_core
        i32.const 0
        i32.ge_s
        br_if 0 (;@2;)
        i32.const -1
        local.set 4
        br 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load offset=76
          i32.const 0
          i32.ge_s
          br_if 0 (;@3;)
          i32.const 1
          local.set 6
          br 1 (;@2;)
        end
        local.get 0
        call $__lockfile
        i32.eqz
        local.set 6
      end
      local.get 0
      local.get 0
      i32.load
      local.tee 7
      i32.const -33
      i32.and
      i32.store
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.load offset=48
              br_if 0 (;@5;)
              local.get 0
              i32.const 80
              i32.store offset=48
              local.get 0
              i32.const 0
              i32.store offset=28
              local.get 0
              i64.const 0
              i64.store offset=16
              local.get 0
              i32.load offset=44
              local.set 8
              local.get 0
              local.get 5
              i32.store offset=44
              br 1 (;@4;)
            end
            i32.const 0
            local.set 8
            local.get 0
            i32.load offset=16
            br_if 1 (;@3;)
          end
          i32.const -1
          local.set 2
          local.get 0
          call $__towrite
          br_if 1 (;@2;)
        end
        local.get 0
        local.get 1
        local.get 5
        i32.const 200
        i32.add
        local.get 5
        i32.const 80
        i32.add
        local.get 5
        i32.const 160
        i32.add
        local.get 3
        local.get 4
        call $printf_core
        local.set 2
      end
      local.get 7
      i32.const 32
      i32.and
      local.set 4
      block  ;; label = @2
        local.get 8
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.const 0
        i32.const 0
        local.get 0
        i32.load offset=36
        call_indirect (type 1)
        drop
        local.get 0
        i32.const 0
        i32.store offset=48
        local.get 0
        local.get 8
        i32.store offset=44
        local.get 0
        i32.const 0
        i32.store offset=28
        local.get 0
        i32.load offset=20
        local.set 3
        local.get 0
        i64.const 0
        i64.store offset=16
        local.get 2
        i32.const -1
        local.get 3
        select
        local.set 2
      end
      local.get 0
      local.get 0
      i32.load
      local.tee 3
      local.get 4
      i32.or
      i32.store
      i32.const -1
      local.get 2
      local.get 3
      i32.const 32
      i32.and
      select
      local.set 4
      local.get 6
      br_if 0 (;@1;)
      local.get 0
      call $__unlockfile
    end
    local.get 5
    i32.const 208
    i32.add
    global.set $__stack_pointer
    local.get 4)
  (func $printf_core (type 13) (param i32 i32 i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 7
    global.set $__stack_pointer
    local.get 7
    local.get 1
    i32.store offset=60
    local.get 7
    i32.const 39
    i32.add
    local.set 8
    local.get 7
    i32.const 40
    i32.add
    local.set 9
    i32.const 0
    local.set 10
    i32.const 0
    local.set 11
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            loop  ;; label = @5
              i32.const 0
              local.set 12
              loop  ;; label = @6
                local.get 1
                local.set 13
                local.get 12
                local.get 11
                i32.const 2147483647
                i32.xor
                i32.gt_s
                br_if 2 (;@4;)
                local.get 12
                local.get 11
                i32.add
                local.set 11
                local.get 13
                local.set 12
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 13
                            i32.load8_u
                            local.tee 14
                            i32.eqz
                            br_if 0 (;@12;)
                            loop  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    local.get 14
                                    i32.const 255
                                    i32.and
                                    local.tee 14
                                    br_if 0 (;@16;)
                                    local.get 12
                                    local.set 1
                                    br 1 (;@15;)
                                  end
                                  local.get 14
                                  i32.const 37
                                  i32.ne
                                  br_if 1 (;@14;)
                                  local.get 12
                                  local.set 14
                                  loop  ;; label = @16
                                    block  ;; label = @17
                                      local.get 14
                                      i32.load8_u offset=1
                                      i32.const 37
                                      i32.eq
                                      br_if 0 (;@17;)
                                      local.get 14
                                      local.set 1
                                      br 2 (;@15;)
                                    end
                                    local.get 12
                                    i32.const 1
                                    i32.add
                                    local.set 12
                                    local.get 14
                                    i32.load8_u offset=2
                                    local.set 15
                                    local.get 14
                                    i32.const 2
                                    i32.add
                                    local.tee 1
                                    local.set 14
                                    local.get 15
                                    i32.const 37
                                    i32.eq
                                    br_if 0 (;@16;)
                                  end
                                end
                                local.get 12
                                local.get 13
                                i32.sub
                                local.tee 12
                                local.get 11
                                i32.const 2147483647
                                i32.xor
                                local.tee 14
                                i32.gt_s
                                br_if 10 (;@4;)
                                block  ;; label = @15
                                  local.get 0
                                  i32.eqz
                                  br_if 0 (;@15;)
                                  local.get 0
                                  local.get 13
                                  local.get 12
                                  call $out
                                end
                                local.get 12
                                br_if 8 (;@6;)
                                local.get 7
                                local.get 1
                                i32.store offset=60
                                local.get 1
                                i32.const 1
                                i32.add
                                local.set 12
                                i32.const -1
                                local.set 16
                                block  ;; label = @15
                                  local.get 1
                                  i32.load8_s offset=1
                                  i32.const -48
                                  i32.add
                                  local.tee 15
                                  i32.const 9
                                  i32.gt_u
                                  br_if 0 (;@15;)
                                  local.get 1
                                  i32.load8_u offset=2
                                  i32.const 36
                                  i32.ne
                                  br_if 0 (;@15;)
                                  local.get 1
                                  i32.const 3
                                  i32.add
                                  local.set 12
                                  i32.const 1
                                  local.set 10
                                  local.get 15
                                  local.set 16
                                end
                                local.get 7
                                local.get 12
                                i32.store offset=60
                                i32.const 0
                                local.set 17
                                block  ;; label = @15
                                  block  ;; label = @16
                                    local.get 12
                                    i32.load8_s
                                    local.tee 18
                                    i32.const -32
                                    i32.add
                                    local.tee 1
                                    i32.const 31
                                    i32.le_u
                                    br_if 0 (;@16;)
                                    local.get 12
                                    local.set 15
                                    br 1 (;@15;)
                                  end
                                  i32.const 0
                                  local.set 17
                                  local.get 12
                                  local.set 15
                                  i32.const 1
                                  local.get 1
                                  i32.shl
                                  local.tee 1
                                  i32.const 75913
                                  i32.and
                                  i32.eqz
                                  br_if 0 (;@15;)
                                  loop  ;; label = @16
                                    local.get 7
                                    local.get 12
                                    i32.const 1
                                    i32.add
                                    local.tee 15
                                    i32.store offset=60
                                    local.get 1
                                    local.get 17
                                    i32.or
                                    local.set 17
                                    local.get 12
                                    i32.load8_s offset=1
                                    local.tee 18
                                    i32.const -32
                                    i32.add
                                    local.tee 1
                                    i32.const 32
                                    i32.ge_u
                                    br_if 1 (;@15;)
                                    local.get 15
                                    local.set 12
                                    i32.const 1
                                    local.get 1
                                    i32.shl
                                    local.tee 1
                                    i32.const 75913
                                    i32.and
                                    br_if 0 (;@16;)
                                  end
                                end
                                block  ;; label = @15
                                  block  ;; label = @16
                                    local.get 18
                                    i32.const 42
                                    i32.ne
                                    br_if 0 (;@16;)
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        local.get 15
                                        i32.load8_s offset=1
                                        i32.const -48
                                        i32.add
                                        local.tee 12
                                        i32.const 9
                                        i32.gt_u
                                        br_if 0 (;@18;)
                                        local.get 15
                                        i32.load8_u offset=2
                                        i32.const 36
                                        i32.ne
                                        br_if 0 (;@18;)
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            local.get 0
                                            br_if 0 (;@20;)
                                            local.get 4
                                            local.get 12
                                            i32.const 2
                                            i32.shl
                                            i32.add
                                            i32.const 10
                                            i32.store
                                            i32.const 0
                                            local.set 19
                                            br 1 (;@19;)
                                          end
                                          local.get 3
                                          local.get 12
                                          i32.const 3
                                          i32.shl
                                          i32.add
                                          i32.load
                                          local.set 19
                                        end
                                        local.get 15
                                        i32.const 3
                                        i32.add
                                        local.set 1
                                        i32.const 1
                                        local.set 10
                                        br 1 (;@17;)
                                      end
                                      local.get 10
                                      br_if 6 (;@11;)
                                      local.get 15
                                      i32.const 1
                                      i32.add
                                      local.set 1
                                      block  ;; label = @18
                                        local.get 0
                                        br_if 0 (;@18;)
                                        local.get 7
                                        local.get 1
                                        i32.store offset=60
                                        i32.const 0
                                        local.set 10
                                        i32.const 0
                                        local.set 19
                                        br 3 (;@15;)
                                      end
                                      local.get 2
                                      local.get 2
                                      i32.load
                                      local.tee 12
                                      i32.const 4
                                      i32.add
                                      i32.store
                                      local.get 12
                                      i32.load
                                      local.set 19
                                      i32.const 0
                                      local.set 10
                                    end
                                    local.get 7
                                    local.get 1
                                    i32.store offset=60
                                    local.get 19
                                    i32.const -1
                                    i32.gt_s
                                    br_if 1 (;@15;)
                                    i32.const 0
                                    local.get 19
                                    i32.sub
                                    local.set 19
                                    local.get 17
                                    i32.const 8192
                                    i32.or
                                    local.set 17
                                    br 1 (;@15;)
                                  end
                                  local.get 7
                                  i32.const 60
                                  i32.add
                                  call $getint
                                  local.tee 19
                                  i32.const 0
                                  i32.lt_s
                                  br_if 11 (;@4;)
                                  local.get 7
                                  i32.load offset=60
                                  local.set 1
                                end
                                i32.const 0
                                local.set 12
                                i32.const -1
                                local.set 20
                                block  ;; label = @15
                                  block  ;; label = @16
                                    local.get 1
                                    i32.load8_u
                                    i32.const 46
                                    i32.eq
                                    br_if 0 (;@16;)
                                    i32.const 0
                                    local.set 21
                                    br 1 (;@15;)
                                  end
                                  block  ;; label = @16
                                    local.get 1
                                    i32.load8_u offset=1
                                    i32.const 42
                                    i32.ne
                                    br_if 0 (;@16;)
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        local.get 1
                                        i32.load8_s offset=2
                                        i32.const -48
                                        i32.add
                                        local.tee 15
                                        i32.const 9
                                        i32.gt_u
                                        br_if 0 (;@18;)
                                        local.get 1
                                        i32.load8_u offset=3
                                        i32.const 36
                                        i32.ne
                                        br_if 0 (;@18;)
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            local.get 0
                                            br_if 0 (;@20;)
                                            local.get 4
                                            local.get 15
                                            i32.const 2
                                            i32.shl
                                            i32.add
                                            i32.const 10
                                            i32.store
                                            i32.const 0
                                            local.set 20
                                            br 1 (;@19;)
                                          end
                                          local.get 3
                                          local.get 15
                                          i32.const 3
                                          i32.shl
                                          i32.add
                                          i32.load
                                          local.set 20
                                        end
                                        local.get 1
                                        i32.const 4
                                        i32.add
                                        local.set 1
                                        br 1 (;@17;)
                                      end
                                      local.get 10
                                      br_if 6 (;@11;)
                                      local.get 1
                                      i32.const 2
                                      i32.add
                                      local.set 1
                                      block  ;; label = @18
                                        local.get 0
                                        br_if 0 (;@18;)
                                        i32.const 0
                                        local.set 20
                                        br 1 (;@17;)
                                      end
                                      local.get 2
                                      local.get 2
                                      i32.load
                                      local.tee 15
                                      i32.const 4
                                      i32.add
                                      i32.store
                                      local.get 15
                                      i32.load
                                      local.set 20
                                    end
                                    local.get 7
                                    local.get 1
                                    i32.store offset=60
                                    local.get 20
                                    i32.const -1
                                    i32.gt_s
                                    local.set 21
                                    br 1 (;@15;)
                                  end
                                  local.get 7
                                  local.get 1
                                  i32.const 1
                                  i32.add
                                  i32.store offset=60
                                  i32.const 1
                                  local.set 21
                                  local.get 7
                                  i32.const 60
                                  i32.add
                                  call $getint
                                  local.set 20
                                  local.get 7
                                  i32.load offset=60
                                  local.set 1
                                end
                                loop  ;; label = @15
                                  local.get 12
                                  local.set 15
                                  i32.const 28
                                  local.set 22
                                  local.get 1
                                  local.tee 18
                                  i32.load8_s
                                  local.tee 12
                                  i32.const -123
                                  i32.add
                                  i32.const -58
                                  i32.lt_u
                                  br_if 12 (;@3;)
                                  local.get 18
                                  i32.const 1
                                  i32.add
                                  local.set 1
                                  local.get 12
                                  local.get 15
                                  i32.const 58
                                  i32.mul
                                  i32.add
                                  i32.const 68095
                                  i32.add
                                  i32.load8_u
                                  local.tee 12
                                  i32.const -1
                                  i32.add
                                  i32.const 8
                                  i32.lt_u
                                  br_if 0 (;@15;)
                                end
                                local.get 7
                                local.get 1
                                i32.store offset=60
                                block  ;; label = @15
                                  block  ;; label = @16
                                    local.get 12
                                    i32.const 27
                                    i32.eq
                                    br_if 0 (;@16;)
                                    local.get 12
                                    i32.eqz
                                    br_if 13 (;@3;)
                                    block  ;; label = @17
                                      local.get 16
                                      i32.const 0
                                      i32.lt_s
                                      br_if 0 (;@17;)
                                      block  ;; label = @18
                                        local.get 0
                                        br_if 0 (;@18;)
                                        local.get 4
                                        local.get 16
                                        i32.const 2
                                        i32.shl
                                        i32.add
                                        local.get 12
                                        i32.store
                                        br 13 (;@5;)
                                      end
                                      local.get 7
                                      local.get 3
                                      local.get 16
                                      i32.const 3
                                      i32.shl
                                      i32.add
                                      i64.load
                                      i64.store offset=48
                                      br 2 (;@15;)
                                    end
                                    local.get 0
                                    i32.eqz
                                    br_if 9 (;@7;)
                                    local.get 7
                                    i32.const 48
                                    i32.add
                                    local.get 12
                                    local.get 2
                                    local.get 6
                                    call $pop_arg
                                    br 1 (;@15;)
                                  end
                                  local.get 16
                                  i32.const -1
                                  i32.gt_s
                                  br_if 12 (;@3;)
                                  i32.const 0
                                  local.set 12
                                  local.get 0
                                  i32.eqz
                                  br_if 9 (;@6;)
                                end
                                local.get 0
                                i32.load8_u
                                i32.const 32
                                i32.and
                                br_if 12 (;@2;)
                                local.get 17
                                i32.const -65537
                                i32.and
                                local.tee 23
                                local.get 17
                                local.get 17
                                i32.const 8192
                                i32.and
                                select
                                local.set 17
                                i32.const 0
                                local.set 16
                                i32.const 65536
                                local.set 24
                                local.get 9
                                local.set 22
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            block  ;; label = @29
                                                              block  ;; label = @30
                                                                block  ;; label = @31
                                                                  local.get 18
                                                                  i32.load8_s
                                                                  local.tee 12
                                                                  i32.const -45
                                                                  i32.and
                                                                  local.get 12
                                                                  local.get 12
                                                                  i32.const 15
                                                                  i32.and
                                                                  i32.const 3
                                                                  i32.eq
                                                                  select
                                                                  local.get 12
                                                                  local.get 15
                                                                  select
                                                                  local.tee 12
                                                                  i32.const -88
                                                                  i32.add
                                                                  br_table 4 (;@27;) 23 (;@8;) 23 (;@8;) 23 (;@8;) 23 (;@8;) 23 (;@8;) 23 (;@8;) 23 (;@8;) 23 (;@8;) 16 (;@15;) 23 (;@8;) 9 (;@22;) 6 (;@25;) 16 (;@15;) 16 (;@15;) 16 (;@15;) 23 (;@8;) 6 (;@25;) 23 (;@8;) 23 (;@8;) 23 (;@8;) 23 (;@8;) 2 (;@29;) 5 (;@26;) 3 (;@28;) 23 (;@8;) 23 (;@8;) 10 (;@21;) 23 (;@8;) 1 (;@30;) 23 (;@8;) 23 (;@8;) 4 (;@27;) 0 (;@31;)
                                                                end
                                                                local.get 9
                                                                local.set 22
                                                                block  ;; label = @31
                                                                  local.get 12
                                                                  i32.const -65
                                                                  i32.add
                                                                  br_table 16 (;@15;) 23 (;@8;) 11 (;@20;) 23 (;@8;) 16 (;@15;) 16 (;@15;) 16 (;@15;) 0 (;@31;)
                                                                end
                                                                local.get 12
                                                                i32.const 83
                                                                i32.eq
                                                                br_if 11 (;@19;)
                                                                br 21 (;@9;)
                                                              end
                                                              i32.const 0
                                                              local.set 16
                                                              i32.const 65536
                                                              local.set 24
                                                              local.get 7
                                                              i64.load offset=48
                                                              local.set 25
                                                              br 5 (;@24;)
                                                            end
                                                            i32.const 0
                                                            local.set 12
                                                            block  ;; label = @29
                                                              block  ;; label = @30
                                                                block  ;; label = @31
                                                                  block  ;; label = @32
                                                                    block  ;; label = @33
                                                                      block  ;; label = @34
                                                                        block  ;; label = @35
                                                                          local.get 15
                                                                          i32.const 255
                                                                          i32.and
                                                                          br_table 0 (;@35;) 1 (;@34;) 2 (;@33;) 3 (;@32;) 4 (;@31;) 29 (;@6;) 5 (;@30;) 6 (;@29;) 29 (;@6;)
                                                                        end
                                                                        local.get 7
                                                                        i32.load offset=48
                                                                        local.get 11
                                                                        i32.store
                                                                        br 28 (;@6;)
                                                                      end
                                                                      local.get 7
                                                                      i32.load offset=48
                                                                      local.get 11
                                                                      i32.store
                                                                      br 27 (;@6;)
                                                                    end
                                                                    local.get 7
                                                                    i32.load offset=48
                                                                    local.get 11
                                                                    i64.extend_i32_s
                                                                    i64.store
                                                                    br 26 (;@6;)
                                                                  end
                                                                  local.get 7
                                                                  i32.load offset=48
                                                                  local.get 11
                                                                  i32.store16
                                                                  br 25 (;@6;)
                                                                end
                                                                local.get 7
                                                                i32.load offset=48
                                                                local.get 11
                                                                i32.store8
                                                                br 24 (;@6;)
                                                              end
                                                              local.get 7
                                                              i32.load offset=48
                                                              local.get 11
                                                              i32.store
                                                              br 23 (;@6;)
                                                            end
                                                            local.get 7
                                                            i32.load offset=48
                                                            local.get 11
                                                            i64.extend_i32_s
                                                            i64.store
                                                            br 22 (;@6;)
                                                          end
                                                          local.get 20
                                                          i32.const 8
                                                          local.get 20
                                                          i32.const 8
                                                          i32.gt_u
                                                          select
                                                          local.set 20
                                                          local.get 17
                                                          i32.const 8
                                                          i32.or
                                                          local.set 17
                                                          i32.const 120
                                                          local.set 12
                                                        end
                                                        i32.const 0
                                                        local.set 16
                                                        i32.const 65536
                                                        local.set 24
                                                        local.get 7
                                                        i64.load offset=48
                                                        local.tee 25
                                                        local.get 9
                                                        local.get 12
                                                        i32.const 32
                                                        i32.and
                                                        call $fmt_x
                                                        local.set 13
                                                        local.get 25
                                                        i64.eqz
                                                        br_if 3 (;@23;)
                                                        local.get 17
                                                        i32.const 8
                                                        i32.and
                                                        i32.eqz
                                                        br_if 3 (;@23;)
                                                        local.get 12
                                                        i32.const 4
                                                        i32.shr_u
                                                        i32.const 65536
                                                        i32.add
                                                        local.set 24
                                                        i32.const 2
                                                        local.set 16
                                                        br 3 (;@23;)
                                                      end
                                                      i32.const 0
                                                      local.set 16
                                                      i32.const 65536
                                                      local.set 24
                                                      local.get 7
                                                      i64.load offset=48
                                                      local.tee 25
                                                      local.get 9
                                                      call $fmt_o
                                                      local.set 13
                                                      local.get 17
                                                      i32.const 8
                                                      i32.and
                                                      i32.eqz
                                                      br_if 2 (;@23;)
                                                      local.get 20
                                                      local.get 9
                                                      local.get 13
                                                      i32.sub
                                                      local.tee 12
                                                      i32.const 1
                                                      i32.add
                                                      local.get 20
                                                      local.get 12
                                                      i32.gt_s
                                                      select
                                                      local.set 20
                                                      br 2 (;@23;)
                                                    end
                                                    block  ;; label = @25
                                                      local.get 7
                                                      i64.load offset=48
                                                      local.tee 25
                                                      i64.const -1
                                                      i64.gt_s
                                                      br_if 0 (;@25;)
                                                      local.get 7
                                                      i64.const 0
                                                      local.get 25
                                                      i64.sub
                                                      local.tee 25
                                                      i64.store offset=48
                                                      i32.const 1
                                                      local.set 16
                                                      i32.const 65536
                                                      local.set 24
                                                      br 1 (;@24;)
                                                    end
                                                    block  ;; label = @25
                                                      local.get 17
                                                      i32.const 2048
                                                      i32.and
                                                      i32.eqz
                                                      br_if 0 (;@25;)
                                                      i32.const 1
                                                      local.set 16
                                                      i32.const 65537
                                                      local.set 24
                                                      br 1 (;@24;)
                                                    end
                                                    i32.const 65538
                                                    i32.const 65536
                                                    local.get 17
                                                    i32.const 1
                                                    i32.and
                                                    local.tee 16
                                                    select
                                                    local.set 24
                                                  end
                                                  local.get 25
                                                  local.get 9
                                                  call $fmt_u
                                                  local.set 13
                                                end
                                                local.get 21
                                                local.get 20
                                                i32.const 0
                                                i32.lt_s
                                                i32.and
                                                br_if 18 (;@4;)
                                                local.get 17
                                                i32.const -65537
                                                i32.and
                                                local.get 17
                                                local.get 21
                                                select
                                                local.set 17
                                                block  ;; label = @23
                                                  local.get 25
                                                  i64.const 0
                                                  i64.ne
                                                  br_if 0 (;@23;)
                                                  local.get 20
                                                  br_if 0 (;@23;)
                                                  local.get 9
                                                  local.set 13
                                                  local.get 9
                                                  local.set 22
                                                  i32.const 0
                                                  local.set 20
                                                  br 15 (;@8;)
                                                end
                                                local.get 20
                                                local.get 9
                                                local.get 13
                                                i32.sub
                                                local.get 25
                                                i64.eqz
                                                i32.add
                                                local.tee 12
                                                local.get 20
                                                local.get 12
                                                i32.gt_s
                                                select
                                                local.set 20
                                                br 13 (;@9;)
                                              end
                                              local.get 7
                                              i32.load8_u offset=48
                                              local.set 12
                                              br 11 (;@10;)
                                            end
                                            local.get 7
                                            i32.load offset=48
                                            local.tee 12
                                            i32.const 65628
                                            local.get 12
                                            select
                                            local.set 13
                                            local.get 13
                                            local.get 13
                                            local.get 20
                                            i32.const 2147483647
                                            local.get 20
                                            i32.const 2147483647
                                            i32.lt_u
                                            select
                                            call $strnlen
                                            local.tee 12
                                            i32.add
                                            local.set 22
                                            block  ;; label = @21
                                              local.get 20
                                              i32.const -1
                                              i32.le_s
                                              br_if 0 (;@21;)
                                              local.get 23
                                              local.set 17
                                              local.get 12
                                              local.set 20
                                              br 13 (;@8;)
                                            end
                                            local.get 23
                                            local.set 17
                                            local.get 12
                                            local.set 20
                                            local.get 22
                                            i32.load8_u
                                            br_if 16 (;@4;)
                                            br 12 (;@8;)
                                          end
                                          local.get 7
                                          i64.load offset=48
                                          local.tee 25
                                          i64.eqz
                                          i32.eqz
                                          br_if 1 (;@18;)
                                          i32.const 0
                                          local.set 12
                                          br 9 (;@10;)
                                        end
                                        block  ;; label = @19
                                          local.get 20
                                          i32.eqz
                                          br_if 0 (;@19;)
                                          local.get 7
                                          i32.load offset=48
                                          local.set 14
                                          br 2 (;@17;)
                                        end
                                        i32.const 0
                                        local.set 12
                                        local.get 0
                                        i32.const 32
                                        local.get 19
                                        i32.const 0
                                        local.get 17
                                        call $pad
                                        br 2 (;@16;)
                                      end
                                      local.get 7
                                      i32.const 0
                                      i32.store offset=12
                                      local.get 7
                                      local.get 25
                                      i64.store32 offset=8
                                      local.get 7
                                      local.get 7
                                      i32.const 8
                                      i32.add
                                      i32.store offset=48
                                      local.get 7
                                      i32.const 8
                                      i32.add
                                      local.set 14
                                      i32.const -1
                                      local.set 20
                                    end
                                    i32.const 0
                                    local.set 12
                                    block  ;; label = @17
                                      loop  ;; label = @18
                                        local.get 14
                                        i32.load
                                        local.tee 15
                                        i32.eqz
                                        br_if 1 (;@17;)
                                        local.get 7
                                        i32.const 4
                                        i32.add
                                        local.get 15
                                        call $wctomb
                                        local.tee 15
                                        i32.const 0
                                        i32.lt_s
                                        br_if 16 (;@2;)
                                        local.get 15
                                        local.get 20
                                        local.get 12
                                        i32.sub
                                        i32.gt_u
                                        br_if 1 (;@17;)
                                        local.get 14
                                        i32.const 4
                                        i32.add
                                        local.set 14
                                        local.get 15
                                        local.get 12
                                        i32.add
                                        local.tee 12
                                        local.get 20
                                        i32.lt_u
                                        br_if 0 (;@18;)
                                      end
                                    end
                                    i32.const 61
                                    local.set 22
                                    local.get 12
                                    i32.const 0
                                    i32.lt_s
                                    br_if 13 (;@3;)
                                    local.get 0
                                    i32.const 32
                                    local.get 19
                                    local.get 12
                                    local.get 17
                                    call $pad
                                    block  ;; label = @17
                                      local.get 12
                                      br_if 0 (;@17;)
                                      i32.const 0
                                      local.set 12
                                      br 1 (;@16;)
                                    end
                                    i32.const 0
                                    local.set 15
                                    local.get 7
                                    i32.load offset=48
                                    local.set 14
                                    loop  ;; label = @17
                                      local.get 14
                                      i32.load
                                      local.tee 13
                                      i32.eqz
                                      br_if 1 (;@16;)
                                      local.get 7
                                      i32.const 4
                                      i32.add
                                      local.get 13
                                      call $wctomb
                                      local.tee 13
                                      local.get 15
                                      i32.add
                                      local.tee 15
                                      local.get 12
                                      i32.gt_u
                                      br_if 1 (;@16;)
                                      local.get 0
                                      local.get 7
                                      i32.const 4
                                      i32.add
                                      local.get 13
                                      call $out
                                      local.get 14
                                      i32.const 4
                                      i32.add
                                      local.set 14
                                      local.get 15
                                      local.get 12
                                      i32.lt_u
                                      br_if 0 (;@17;)
                                    end
                                  end
                                  local.get 0
                                  i32.const 32
                                  local.get 19
                                  local.get 12
                                  local.get 17
                                  i32.const 8192
                                  i32.xor
                                  call $pad
                                  local.get 19
                                  local.get 12
                                  local.get 19
                                  local.get 12
                                  i32.gt_s
                                  select
                                  local.set 12
                                  br 9 (;@6;)
                                end
                                local.get 21
                                local.get 20
                                i32.const 0
                                i32.lt_s
                                i32.and
                                br_if 10 (;@4;)
                                i32.const 61
                                local.set 22
                                local.get 0
                                local.get 7
                                f64.load offset=48
                                local.get 19
                                local.get 20
                                local.get 17
                                local.get 12
                                local.get 5
                                call_indirect (type 3)
                                local.tee 12
                                i32.const 0
                                i32.ge_s
                                br_if 8 (;@6;)
                                br 11 (;@3;)
                              end
                              local.get 12
                              i32.load8_u offset=1
                              local.set 14
                              local.get 12
                              i32.const 1
                              i32.add
                              local.set 12
                              br 0 (;@13;)
                            end
                          end
                          local.get 0
                          br_if 10 (;@1;)
                          local.get 10
                          i32.eqz
                          br_if 4 (;@7;)
                          i32.const 1
                          local.set 12
                          block  ;; label = @12
                            loop  ;; label = @13
                              local.get 4
                              local.get 12
                              i32.const 2
                              i32.shl
                              i32.add
                              i32.load
                              local.tee 14
                              i32.eqz
                              br_if 1 (;@12;)
                              local.get 3
                              local.get 12
                              i32.const 3
                              i32.shl
                              i32.add
                              local.get 14
                              local.get 2
                              local.get 6
                              call $pop_arg
                              i32.const 1
                              local.set 11
                              local.get 12
                              i32.const 1
                              i32.add
                              local.tee 12
                              i32.const 10
                              i32.ne
                              br_if 0 (;@13;)
                              br 12 (;@1;)
                            end
                          end
                          block  ;; label = @12
                            local.get 12
                            i32.const 10
                            i32.lt_u
                            br_if 0 (;@12;)
                            i32.const 1
                            local.set 11
                            br 11 (;@1;)
                          end
                          loop  ;; label = @12
                            local.get 4
                            local.get 12
                            i32.const 2
                            i32.shl
                            i32.add
                            i32.load
                            br_if 1 (;@11;)
                            i32.const 1
                            local.set 11
                            local.get 12
                            i32.const 1
                            i32.add
                            local.tee 12
                            i32.const 10
                            i32.eq
                            br_if 11 (;@1;)
                            br 0 (;@12;)
                          end
                        end
                        i32.const 28
                        local.set 22
                        br 7 (;@3;)
                      end
                      local.get 7
                      local.get 12
                      i32.store8 offset=39
                      i32.const 1
                      local.set 20
                      local.get 8
                      local.set 13
                      local.get 9
                      local.set 22
                      local.get 23
                      local.set 17
                      br 1 (;@8;)
                    end
                    local.get 9
                    local.set 22
                  end
                  local.get 20
                  local.get 22
                  local.get 13
                  i32.sub
                  local.tee 1
                  local.get 20
                  local.get 1
                  i32.gt_s
                  select
                  local.tee 18
                  local.get 16
                  i32.const 2147483647
                  i32.xor
                  i32.gt_s
                  br_if 3 (;@4;)
                  i32.const 61
                  local.set 22
                  local.get 19
                  local.get 16
                  local.get 18
                  i32.add
                  local.tee 15
                  local.get 19
                  local.get 15
                  i32.gt_s
                  select
                  local.tee 12
                  local.get 14
                  i32.gt_s
                  br_if 4 (;@3;)
                  local.get 0
                  i32.const 32
                  local.get 12
                  local.get 15
                  local.get 17
                  call $pad
                  local.get 0
                  local.get 24
                  local.get 16
                  call $out
                  local.get 0
                  i32.const 48
                  local.get 12
                  local.get 15
                  local.get 17
                  i32.const 65536
                  i32.xor
                  call $pad
                  local.get 0
                  i32.const 48
                  local.get 18
                  local.get 1
                  i32.const 0
                  call $pad
                  local.get 0
                  local.get 13
                  local.get 1
                  call $out
                  local.get 0
                  i32.const 32
                  local.get 12
                  local.get 15
                  local.get 17
                  i32.const 8192
                  i32.xor
                  call $pad
                  local.get 7
                  i32.load offset=60
                  local.set 1
                  br 1 (;@6;)
                end
              end
            end
            i32.const 0
            local.set 11
            br 3 (;@1;)
          end
          i32.const 61
          local.set 22
        end
        call $__errno_location
        local.get 22
        i32.store
      end
      i32.const -1
      local.set 11
    end
    local.get 7
    i32.const 64
    i32.add
    global.set $__stack_pointer
    local.get 11)
  (func $out (type 14) (param i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.load8_u
      i32.const 32
      i32.and
      br_if 0 (;@1;)
      local.get 1
      local.get 2
      local.get 0
      call $__fwritex
      drop
    end)
  (func $getint (type 6) (param i32) (result i32)
    (local i32 i32 i32 i32 i32)
    i32.const 0
    local.set 1
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 2
      i32.load8_s
      i32.const -48
      i32.add
      local.tee 3
      i32.const 9
      i32.le_u
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    loop  ;; label = @1
      i32.const -1
      local.set 4
      block  ;; label = @2
        local.get 1
        i32.const 214748364
        i32.gt_u
        br_if 0 (;@2;)
        i32.const -1
        local.get 3
        local.get 1
        i32.const 10
        i32.mul
        local.tee 1
        i32.add
        local.get 3
        local.get 1
        i32.const 2147483647
        i32.xor
        i32.gt_u
        select
        local.set 4
      end
      local.get 0
      local.get 2
      i32.const 1
      i32.add
      local.tee 3
      i32.store
      local.get 2
      i32.load8_s offset=1
      local.set 5
      local.get 4
      local.set 1
      local.get 3
      local.set 2
      local.get 5
      i32.const -48
      i32.add
      local.tee 3
      i32.const 10
      i32.lt_u
      br_if 0 (;@1;)
    end
    local.get 4)
  (func $pop_arg (type 15) (param i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          local.get 1
                                          i32.const -9
                                          i32.add
                                          br_table 0 (;@19;) 1 (;@18;) 2 (;@17;) 5 (;@14;) 3 (;@16;) 4 (;@15;) 6 (;@13;) 7 (;@12;) 8 (;@11;) 9 (;@10;) 10 (;@9;) 11 (;@8;) 12 (;@7;) 13 (;@6;) 14 (;@5;) 15 (;@4;) 16 (;@3;) 17 (;@2;) 18 (;@1;)
                                        end
                                        local.get 2
                                        local.get 2
                                        i32.load
                                        local.tee 1
                                        i32.const 4
                                        i32.add
                                        i32.store
                                        local.get 0
                                        local.get 1
                                        i32.load
                                        i32.store
                                        return
                                      end
                                      local.get 2
                                      local.get 2
                                      i32.load
                                      local.tee 1
                                      i32.const 4
                                      i32.add
                                      i32.store
                                      local.get 0
                                      local.get 1
                                      i64.load32_s
                                      i64.store
                                      return
                                    end
                                    local.get 2
                                    local.get 2
                                    i32.load
                                    local.tee 1
                                    i32.const 4
                                    i32.add
                                    i32.store
                                    local.get 0
                                    local.get 1
                                    i64.load32_u
                                    i64.store
                                    return
                                  end
                                  local.get 2
                                  local.get 2
                                  i32.load
                                  local.tee 1
                                  i32.const 4
                                  i32.add
                                  i32.store
                                  local.get 0
                                  local.get 1
                                  i64.load32_s
                                  i64.store
                                  return
                                end
                                local.get 2
                                local.get 2
                                i32.load
                                local.tee 1
                                i32.const 4
                                i32.add
                                i32.store
                                local.get 0
                                local.get 1
                                i64.load32_u
                                i64.store
                                return
                              end
                              local.get 2
                              local.get 2
                              i32.load
                              i32.const 7
                              i32.add
                              i32.const -8
                              i32.and
                              local.tee 1
                              i32.const 8
                              i32.add
                              i32.store
                              local.get 0
                              local.get 1
                              i64.load
                              i64.store
                              return
                            end
                            local.get 2
                            local.get 2
                            i32.load
                            local.tee 1
                            i32.const 4
                            i32.add
                            i32.store
                            local.get 0
                            local.get 1
                            i64.load16_s
                            i64.store
                            return
                          end
                          local.get 2
                          local.get 2
                          i32.load
                          local.tee 1
                          i32.const 4
                          i32.add
                          i32.store
                          local.get 0
                          local.get 1
                          i64.load16_u
                          i64.store
                          return
                        end
                        local.get 2
                        local.get 2
                        i32.load
                        local.tee 1
                        i32.const 4
                        i32.add
                        i32.store
                        local.get 0
                        local.get 1
                        i64.load8_s
                        i64.store
                        return
                      end
                      local.get 2
                      local.get 2
                      i32.load
                      local.tee 1
                      i32.const 4
                      i32.add
                      i32.store
                      local.get 0
                      local.get 1
                      i64.load8_u
                      i64.store
                      return
                    end
                    local.get 2
                    local.get 2
                    i32.load
                    i32.const 7
                    i32.add
                    i32.const -8
                    i32.and
                    local.tee 1
                    i32.const 8
                    i32.add
                    i32.store
                    local.get 0
                    local.get 1
                    i64.load
                    i64.store
                    return
                  end
                  local.get 2
                  local.get 2
                  i32.load
                  local.tee 1
                  i32.const 4
                  i32.add
                  i32.store
                  local.get 0
                  local.get 1
                  i64.load32_u
                  i64.store
                  return
                end
                local.get 2
                local.get 2
                i32.load
                i32.const 7
                i32.add
                i32.const -8
                i32.and
                local.tee 1
                i32.const 8
                i32.add
                i32.store
                local.get 0
                local.get 1
                i64.load
                i64.store
                return
              end
              local.get 2
              local.get 2
              i32.load
              i32.const 7
              i32.add
              i32.const -8
              i32.and
              local.tee 1
              i32.const 8
              i32.add
              i32.store
              local.get 0
              local.get 1
              i64.load
              i64.store
              return
            end
            local.get 2
            local.get 2
            i32.load
            local.tee 1
            i32.const 4
            i32.add
            i32.store
            local.get 0
            local.get 1
            i64.load32_s
            i64.store
            return
          end
          local.get 2
          local.get 2
          i32.load
          local.tee 1
          i32.const 4
          i32.add
          i32.store
          local.get 0
          local.get 1
          i64.load32_u
          i64.store
          return
        end
        local.get 2
        local.get 2
        i32.load
        i32.const 7
        i32.add
        i32.const -8
        i32.and
        local.tee 1
        i32.const 8
        i32.add
        i32.store
        local.get 0
        local.get 1
        f64.load
        f64.store
        return
      end
      local.get 0
      local.get 2
      local.get 3
      call_indirect (type 4)
    end)
  (func $fmt_x (type 16) (param i64 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i64.eqz
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 1
        i32.const -1
        i32.add
        local.tee 1
        local.get 0
        i32.wrap_i64
        i32.const 15
        i32.and
        i32.const 68624
        i32.add
        i32.load8_u
        local.get 2
        i32.or
        i32.store8
        local.get 0
        i64.const 15
        i64.gt_u
        local.set 3
        local.get 0
        i64.const 4
        i64.shr_u
        local.set 0
        local.get 3
        br_if 0 (;@2;)
      end
    end
    local.get 1)
  (func $fmt_o (type 17) (param i64 i32) (result i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i64.eqz
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 1
        i32.const -1
        i32.add
        local.tee 1
        local.get 0
        i32.wrap_i64
        i32.const 7
        i32.and
        i32.const 48
        i32.or
        i32.store8
        local.get 0
        i64.const 7
        i64.gt_u
        local.set 2
        local.get 0
        i64.const 3
        i64.shr_u
        local.set 0
        local.get 2
        br_if 0 (;@2;)
      end
    end
    local.get 1)
  (func $fmt_u (type 17) (param i64 i32) (result i32)
    (local i64 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i64.const 4294967296
        i64.ge_u
        br_if 0 (;@2;)
        local.get 0
        local.set 2
        br 1 (;@1;)
      end
      loop  ;; label = @2
        local.get 1
        i32.const -1
        i32.add
        local.tee 1
        local.get 0
        local.get 0
        i64.const 10
        i64.div_u
        local.tee 2
        i64.const 10
        i64.mul
        i64.sub
        i32.wrap_i64
        i32.const 48
        i32.or
        i32.store8
        local.get 0
        i64.const 42949672959
        i64.gt_u
        local.set 3
        local.get 2
        local.set 0
        local.get 3
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      local.get 2
      i64.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.wrap_i64
      local.set 3
      loop  ;; label = @2
        local.get 1
        i32.const -1
        i32.add
        local.tee 1
        local.get 3
        local.get 3
        i32.const 10
        i32.div_u
        local.tee 4
        i32.const 10
        i32.mul
        i32.sub
        i32.const 48
        i32.or
        i32.store8
        local.get 3
        i32.const 9
        i32.gt_u
        local.set 5
        local.get 4
        local.set 3
        local.get 5
        br_if 0 (;@2;)
      end
    end
    local.get 1)
  (func $pad (type 18) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 256
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    block  ;; label = @1
      local.get 2
      local.get 3
      i32.le_s
      br_if 0 (;@1;)
      local.get 4
      i32.const 73728
      i32.and
      br_if 0 (;@1;)
      local.get 5
      local.get 1
      local.get 2
      local.get 3
      i32.sub
      local.tee 3
      i32.const 256
      local.get 3
      i32.const 256
      i32.lt_u
      local.tee 2
      select
      call $__memset
      drop
      block  ;; label = @2
        local.get 2
        br_if 0 (;@2;)
        loop  ;; label = @3
          local.get 0
          local.get 5
          i32.const 256
          call $out
          local.get 3
          i32.const -256
          i32.add
          local.tee 3
          i32.const 255
          i32.gt_u
          br_if 0 (;@3;)
        end
      end
      local.get 0
      local.get 5
      local.get 3
      call $out
    end
    local.get 5
    i32.const 256
    i32.add
    global.set $__stack_pointer)
  (func $vfprintf (type 1) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    i32.const 7
    i32.const 8
    call $__vfprintf_internal)
  (func $fmt_fp (type 3) (param i32 f64 i32 i32 i32 i32) (result i32)
    (local i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i32 i32 i32 i32 f64)
    global.get $__stack_pointer
    i32.const 560
    i32.sub
    local.tee 6
    global.set $__stack_pointer
    i32.const 0
    local.set 7
    local.get 6
    i32.const 0
    i32.store offset=44
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        call $__DOUBLE_BITS
        local.tee 8
        i64.const -1
        i64.gt_s
        br_if 0 (;@2;)
        i32.const 1
        local.set 9
        i32.const 65546
        local.set 10
        local.get 1
        f64.neg
        local.tee 1
        call $__DOUBLE_BITS
        local.set 8
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 4
        i32.const 2048
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        i32.const 1
        local.set 9
        i32.const 65549
        local.set 10
        br 1 (;@1;)
      end
      i32.const 65552
      i32.const 65547
      local.get 4
      i32.const 1
      i32.and
      local.tee 9
      select
      local.set 10
      local.get 9
      i32.eqz
      local.set 7
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 8
        i64.const 9218868437227405312
        i64.and
        i64.const 9218868437227405312
        i64.ne
        br_if 0 (;@2;)
        local.get 0
        i32.const 32
        local.get 2
        local.get 9
        i32.const 3
        i32.add
        local.tee 11
        local.get 4
        i32.const -65537
        i32.and
        call $pad
        local.get 0
        local.get 10
        local.get 9
        call $out
        local.get 0
        i32.const 65565
        i32.const 65587
        local.get 5
        i32.const 32
        i32.and
        local.tee 12
        select
        i32.const 65569
        i32.const 65591
        local.get 12
        select
        local.get 1
        local.get 1
        f64.ne
        select
        i32.const 3
        call $out
        local.get 0
        i32.const 32
        local.get 2
        local.get 11
        local.get 4
        i32.const 8192
        i32.xor
        call $pad
        local.get 2
        local.get 11
        local.get 2
        local.get 11
        i32.gt_s
        select
        local.set 13
        br 1 (;@1;)
      end
      local.get 6
      i32.const 16
      i32.add
      local.set 14
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              local.get 6
              i32.const 44
              i32.add
              call $frexp
              local.tee 1
              local.get 1
              f64.add
              local.tee 1
              f64.const 0x0p+0 (;=0;)
              f64.eq
              br_if 0 (;@5;)
              local.get 6
              local.get 6
              i32.load offset=44
              local.tee 11
              i32.const -1
              i32.add
              i32.store offset=44
              local.get 5
              i32.const 32
              i32.or
              local.tee 15
              i32.const 97
              i32.ne
              br_if 1 (;@4;)
              br 3 (;@2;)
            end
            local.get 5
            i32.const 32
            i32.or
            local.tee 15
            i32.const 97
            i32.eq
            br_if 2 (;@2;)
            i32.const 6
            local.get 3
            local.get 3
            i32.const 0
            i32.lt_s
            select
            local.set 16
            local.get 6
            i32.load offset=44
            local.set 17
            br 1 (;@3;)
          end
          local.get 6
          local.get 11
          i32.const -29
          i32.add
          local.tee 17
          i32.store offset=44
          i32.const 6
          local.get 3
          local.get 3
          i32.const 0
          i32.lt_s
          select
          local.set 16
          local.get 1
          f64.const 0x1p+28 (;=2.68435e+08;)
          f64.mul
          local.set 1
        end
        local.get 6
        i32.const 48
        i32.add
        i32.const 0
        i32.const 288
        local.get 17
        i32.const 0
        i32.lt_s
        select
        i32.add
        local.tee 18
        local.set 12
        loop  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              f64.const 0x1p+32 (;=4.29497e+09;)
              f64.lt
              local.get 1
              f64.const 0x0p+0 (;=0;)
              f64.ge
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              local.get 1
              i32.trunc_f64_u
              local.set 11
              br 1 (;@4;)
            end
            i32.const 0
            local.set 11
          end
          local.get 12
          local.get 11
          i32.store
          local.get 12
          i32.const 4
          i32.add
          local.set 12
          local.get 1
          local.get 11
          f64.convert_i32_u
          f64.sub
          f64.const 0x1.dcd65p+29 (;=1e+09;)
          f64.mul
          local.tee 1
          f64.const 0x0p+0 (;=0;)
          f64.ne
          br_if 0 (;@3;)
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 17
            i32.const 1
            i32.ge_s
            br_if 0 (;@4;)
            local.get 17
            local.set 19
            local.get 12
            local.set 11
            local.get 18
            local.set 20
            br 1 (;@3;)
          end
          local.get 18
          local.set 20
          local.get 17
          local.set 19
          loop  ;; label = @4
            local.get 19
            i32.const 29
            local.get 19
            i32.const 29
            i32.lt_u
            select
            local.set 19
            block  ;; label = @5
              local.get 12
              i32.const -4
              i32.add
              local.tee 11
              local.get 20
              i32.lt_u
              br_if 0 (;@5;)
              local.get 19
              i64.extend_i32_u
              local.set 21
              i64.const 0
              local.set 8
              loop  ;; label = @6
                local.get 11
                local.get 11
                i64.load32_u
                local.get 21
                i64.shl
                local.get 8
                i64.const 4294967295
                i64.and
                i64.add
                local.tee 22
                local.get 22
                i64.const 1000000000
                i64.div_u
                local.tee 8
                i64.const 1000000000
                i64.mul
                i64.sub
                i64.store32
                local.get 11
                i32.const -4
                i32.add
                local.tee 11
                local.get 20
                i32.ge_u
                br_if 0 (;@6;)
              end
              local.get 22
              i64.const 1000000000
              i64.lt_u
              br_if 0 (;@5;)
              local.get 20
              i32.const -4
              i32.add
              local.tee 20
              local.get 8
              i64.store32
            end
            block  ;; label = @5
              loop  ;; label = @6
                local.get 12
                local.tee 11
                local.get 20
                i32.le_u
                br_if 1 (;@5;)
                local.get 11
                i32.const -4
                i32.add
                local.tee 12
                i32.load
                i32.eqz
                br_if 0 (;@6;)
              end
            end
            local.get 6
            local.get 6
            i32.load offset=44
            local.get 19
            i32.sub
            local.tee 19
            i32.store offset=44
            local.get 11
            local.set 12
            local.get 19
            i32.const 0
            i32.gt_s
            br_if 0 (;@4;)
          end
        end
        block  ;; label = @3
          local.get 19
          i32.const -1
          i32.gt_s
          br_if 0 (;@3;)
          local.get 16
          i32.const 25
          i32.add
          i32.const 9
          i32.div_u
          i32.const 1
          i32.add
          local.set 23
          local.get 15
          i32.const 102
          i32.eq
          local.set 24
          loop  ;; label = @4
            i32.const 0
            local.get 19
            i32.sub
            local.tee 12
            i32.const 9
            local.get 12
            i32.const 9
            i32.lt_u
            select
            local.set 13
            block  ;; label = @5
              block  ;; label = @6
                local.get 20
                local.get 11
                i32.lt_u
                br_if 0 (;@6;)
                local.get 20
                i32.load
                i32.eqz
                i32.const 2
                i32.shl
                local.set 12
                br 1 (;@5;)
              end
              i32.const 1000000000
              local.get 13
              i32.shr_u
              local.set 25
              i32.const -1
              local.get 13
              i32.shl
              i32.const -1
              i32.xor
              local.set 26
              i32.const 0
              local.set 19
              local.get 20
              local.set 12
              loop  ;; label = @6
                local.get 12
                local.get 12
                i32.load
                local.tee 3
                local.get 13
                i32.shr_u
                local.get 19
                i32.add
                i32.store
                local.get 3
                local.get 26
                i32.and
                local.get 25
                i32.mul
                local.set 19
                local.get 12
                i32.const 4
                i32.add
                local.tee 12
                local.get 11
                i32.lt_u
                br_if 0 (;@6;)
              end
              local.get 20
              i32.load
              i32.eqz
              i32.const 2
              i32.shl
              local.set 12
              local.get 19
              i32.eqz
              br_if 0 (;@5;)
              local.get 11
              local.get 19
              i32.store
              local.get 11
              i32.const 4
              i32.add
              local.set 11
            end
            local.get 6
            local.get 6
            i32.load offset=44
            local.get 13
            i32.add
            local.tee 19
            i32.store offset=44
            local.get 18
            local.get 20
            local.get 12
            i32.add
            local.tee 20
            local.get 24
            select
            local.tee 12
            local.get 23
            i32.const 2
            i32.shl
            i32.add
            local.get 11
            local.get 11
            local.get 12
            i32.sub
            i32.const 2
            i32.shr_s
            local.get 23
            i32.gt_s
            select
            local.set 11
            local.get 19
            i32.const 0
            i32.lt_s
            br_if 0 (;@4;)
          end
        end
        i32.const 0
        local.set 19
        block  ;; label = @3
          local.get 20
          local.get 11
          i32.ge_u
          br_if 0 (;@3;)
          local.get 18
          local.get 20
          i32.sub
          i32.const 2
          i32.shr_s
          i32.const 9
          i32.mul
          local.set 19
          i32.const 10
          local.set 12
          local.get 20
          i32.load
          local.tee 3
          i32.const 10
          i32.lt_u
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 19
            i32.const 1
            i32.add
            local.set 19
            local.get 3
            local.get 12
            i32.const 10
            i32.mul
            local.tee 12
            i32.ge_u
            br_if 0 (;@4;)
          end
        end
        block  ;; label = @3
          local.get 16
          i32.const 0
          local.get 19
          local.get 15
          i32.const 102
          i32.eq
          select
          i32.sub
          local.get 16
          i32.const 0
          i32.ne
          local.get 15
          i32.const 103
          i32.eq
          i32.and
          i32.sub
          local.tee 12
          local.get 11
          local.get 18
          i32.sub
          i32.const 2
          i32.shr_s
          i32.const 9
          i32.mul
          i32.const -9
          i32.add
          i32.ge_s
          br_if 0 (;@3;)
          local.get 6
          i32.const 48
          i32.add
          i32.const -4092
          i32.const -3804
          local.get 17
          i32.const 0
          i32.lt_s
          select
          i32.add
          local.get 12
          i32.const 9216
          i32.add
          local.tee 3
          i32.const 9
          i32.div_s
          local.tee 25
          i32.const 2
          i32.shl
          i32.add
          local.set 13
          i32.const 10
          local.set 12
          block  ;; label = @4
            local.get 3
            local.get 25
            i32.const 9
            i32.mul
            i32.sub
            local.tee 3
            i32.const 7
            i32.gt_s
            br_if 0 (;@4;)
            loop  ;; label = @5
              local.get 12
              i32.const 10
              i32.mul
              local.set 12
              local.get 3
              i32.const 1
              i32.add
              local.tee 3
              i32.const 8
              i32.ne
              br_if 0 (;@5;)
            end
          end
          local.get 13
          i32.const 4
          i32.add
          local.set 26
          block  ;; label = @4
            block  ;; label = @5
              local.get 13
              i32.load
              local.tee 3
              local.get 3
              local.get 12
              i32.div_u
              local.tee 23
              local.get 12
              i32.mul
              i32.sub
              local.tee 25
              br_if 0 (;@5;)
              local.get 26
              local.get 11
              i32.eq
              br_if 1 (;@4;)
            end
            block  ;; label = @5
              block  ;; label = @6
                local.get 23
                i32.const 1
                i32.and
                br_if 0 (;@6;)
                f64.const 0x1p+53 (;=9.0072e+15;)
                local.set 1
                local.get 12
                i32.const 1000000000
                i32.ne
                br_if 1 (;@5;)
                local.get 13
                local.get 20
                i32.le_u
                br_if 1 (;@5;)
                local.get 13
                i32.const -4
                i32.add
                i32.load8_u
                i32.const 1
                i32.and
                i32.eqz
                br_if 1 (;@5;)
              end
              f64.const 0x1.0000000000001p+53 (;=9.0072e+15;)
              local.set 1
            end
            f64.const 0x1p-1 (;=0.5;)
            f64.const 0x1p+0 (;=1;)
            f64.const 0x1.8p+0 (;=1.5;)
            local.get 26
            local.get 11
            i32.eq
            select
            f64.const 0x1.8p+0 (;=1.5;)
            local.get 25
            local.get 12
            i32.const 1
            i32.shr_u
            local.tee 26
            i32.eq
            select
            local.get 25
            local.get 26
            i32.lt_u
            select
            local.set 27
            block  ;; label = @5
              local.get 7
              br_if 0 (;@5;)
              local.get 10
              i32.load8_u
              i32.const 45
              i32.ne
              br_if 0 (;@5;)
              local.get 27
              f64.neg
              local.set 27
              local.get 1
              f64.neg
              local.set 1
            end
            local.get 13
            local.get 3
            local.get 25
            i32.sub
            local.tee 3
            i32.store
            local.get 1
            local.get 27
            f64.add
            local.get 1
            f64.eq
            br_if 0 (;@4;)
            local.get 13
            local.get 3
            local.get 12
            i32.add
            local.tee 12
            i32.store
            block  ;; label = @5
              local.get 12
              i32.const 1000000000
              i32.lt_u
              br_if 0 (;@5;)
              loop  ;; label = @6
                local.get 13
                i32.const 0
                i32.store
                block  ;; label = @7
                  local.get 13
                  i32.const -4
                  i32.add
                  local.tee 13
                  local.get 20
                  i32.ge_u
                  br_if 0 (;@7;)
                  local.get 20
                  i32.const -4
                  i32.add
                  local.tee 20
                  i32.const 0
                  i32.store
                end
                local.get 13
                local.get 13
                i32.load
                i32.const 1
                i32.add
                local.tee 12
                i32.store
                local.get 12
                i32.const 999999999
                i32.gt_u
                br_if 0 (;@6;)
              end
            end
            local.get 18
            local.get 20
            i32.sub
            i32.const 2
            i32.shr_s
            i32.const 9
            i32.mul
            local.set 19
            i32.const 10
            local.set 12
            local.get 20
            i32.load
            local.tee 3
            i32.const 10
            i32.lt_u
            br_if 0 (;@4;)
            loop  ;; label = @5
              local.get 19
              i32.const 1
              i32.add
              local.set 19
              local.get 3
              local.get 12
              i32.const 10
              i32.mul
              local.tee 12
              i32.ge_u
              br_if 0 (;@5;)
            end
          end
          local.get 13
          i32.const 4
          i32.add
          local.tee 12
          local.get 11
          local.get 11
          local.get 12
          i32.gt_u
          select
          local.set 11
        end
        block  ;; label = @3
          loop  ;; label = @4
            local.get 11
            local.tee 12
            local.get 20
            i32.le_u
            local.tee 3
            br_if 1 (;@3;)
            local.get 12
            i32.const -4
            i32.add
            local.tee 11
            i32.load
            i32.eqz
            br_if 0 (;@4;)
          end
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 15
            i32.const 103
            i32.eq
            br_if 0 (;@4;)
            local.get 4
            i32.const 8
            i32.and
            local.set 25
            br 1 (;@3;)
          end
          local.get 19
          i32.const -1
          i32.xor
          i32.const -1
          local.get 16
          i32.const 1
          local.get 16
          select
          local.tee 11
          local.get 19
          i32.gt_s
          local.get 19
          i32.const -5
          i32.gt_s
          i32.and
          local.tee 13
          select
          local.get 11
          i32.add
          local.set 16
          i32.const -1
          i32.const -2
          local.get 13
          select
          local.get 5
          i32.add
          local.set 5
          local.get 4
          i32.const 8
          i32.and
          local.tee 25
          br_if 0 (;@3;)
          i32.const -9
          local.set 11
          block  ;; label = @4
            local.get 3
            br_if 0 (;@4;)
            local.get 12
            i32.const -4
            i32.add
            i32.load
            local.tee 13
            i32.eqz
            br_if 0 (;@4;)
            i32.const 10
            local.set 3
            i32.const 0
            local.set 11
            local.get 13
            i32.const 10
            i32.rem_u
            br_if 0 (;@4;)
            loop  ;; label = @5
              local.get 11
              local.tee 25
              i32.const 1
              i32.add
              local.set 11
              local.get 13
              local.get 3
              i32.const 10
              i32.mul
              local.tee 3
              i32.rem_u
              i32.eqz
              br_if 0 (;@5;)
            end
            local.get 25
            i32.const -1
            i32.xor
            local.set 11
          end
          local.get 12
          local.get 18
          i32.sub
          i32.const 2
          i32.shr_s
          i32.const 9
          i32.mul
          local.set 3
          block  ;; label = @4
            local.get 5
            i32.const -33
            i32.and
            i32.const 70
            i32.ne
            br_if 0 (;@4;)
            i32.const 0
            local.set 25
            local.get 16
            local.get 3
            local.get 11
            i32.add
            i32.const -9
            i32.add
            local.tee 11
            i32.const 0
            local.get 11
            i32.const 0
            i32.gt_s
            select
            local.tee 11
            local.get 16
            local.get 11
            i32.lt_s
            select
            local.set 16
            br 1 (;@3;)
          end
          i32.const 0
          local.set 25
          local.get 16
          local.get 19
          local.get 3
          i32.add
          local.get 11
          i32.add
          i32.const -9
          i32.add
          local.tee 11
          i32.const 0
          local.get 11
          i32.const 0
          i32.gt_s
          select
          local.tee 11
          local.get 16
          local.get 11
          i32.lt_s
          select
          local.set 16
        end
        i32.const -1
        local.set 13
        local.get 16
        i32.const 2147483645
        i32.const 2147483646
        local.get 16
        local.get 25
        i32.or
        local.tee 26
        select
        i32.gt_s
        br_if 1 (;@1;)
        local.get 16
        local.get 26
        i32.const 0
        i32.ne
        i32.add
        i32.const 1
        i32.add
        local.set 3
        block  ;; label = @3
          block  ;; label = @4
            local.get 5
            i32.const -33
            i32.and
            local.tee 24
            i32.const 70
            i32.ne
            br_if 0 (;@4;)
            local.get 19
            local.get 3
            i32.const 2147483647
            i32.xor
            i32.gt_s
            br_if 3 (;@1;)
            local.get 19
            i32.const 0
            local.get 19
            i32.const 0
            i32.gt_s
            select
            local.set 11
            br 1 (;@3;)
          end
          block  ;; label = @4
            local.get 14
            local.get 19
            local.get 19
            i32.const 31
            i32.shr_s
            local.tee 11
            i32.xor
            local.get 11
            i32.sub
            i64.extend_i32_u
            local.get 14
            call $fmt_u
            local.tee 11
            i32.sub
            i32.const 1
            i32.gt_s
            br_if 0 (;@4;)
            loop  ;; label = @5
              local.get 11
              i32.const -1
              i32.add
              local.tee 11
              i32.const 48
              i32.store8
              local.get 14
              local.get 11
              i32.sub
              i32.const 2
              i32.lt_s
              br_if 0 (;@5;)
            end
          end
          local.get 11
          i32.const -2
          i32.add
          local.tee 23
          local.get 5
          i32.store8
          i32.const -1
          local.set 13
          local.get 11
          i32.const -1
          i32.add
          i32.const 45
          i32.const 43
          local.get 19
          i32.const 0
          i32.lt_s
          select
          i32.store8
          local.get 14
          local.get 23
          i32.sub
          local.tee 11
          local.get 3
          i32.const 2147483647
          i32.xor
          i32.gt_s
          br_if 2 (;@1;)
        end
        i32.const -1
        local.set 13
        local.get 11
        local.get 3
        i32.add
        local.tee 11
        local.get 9
        i32.const 2147483647
        i32.xor
        i32.gt_s
        br_if 1 (;@1;)
        local.get 0
        i32.const 32
        local.get 2
        local.get 11
        local.get 9
        i32.add
        local.tee 5
        local.get 4
        call $pad
        local.get 0
        local.get 10
        local.get 9
        call $out
        local.get 0
        i32.const 48
        local.get 2
        local.get 5
        local.get 4
        i32.const 65536
        i32.xor
        call $pad
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 24
                i32.const 70
                i32.ne
                br_if 0 (;@6;)
                local.get 6
                i32.const 16
                i32.add
                i32.const 9
                i32.or
                local.set 19
                local.get 18
                local.get 20
                local.get 20
                local.get 18
                i32.gt_u
                select
                local.tee 3
                local.set 20
                loop  ;; label = @7
                  local.get 20
                  i64.load32_u
                  local.get 19
                  call $fmt_u
                  local.set 11
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 20
                      local.get 3
                      i32.eq
                      br_if 0 (;@9;)
                      local.get 11
                      local.get 6
                      i32.const 16
                      i32.add
                      i32.le_u
                      br_if 1 (;@8;)
                      loop  ;; label = @10
                        local.get 11
                        i32.const -1
                        i32.add
                        local.tee 11
                        i32.const 48
                        i32.store8
                        local.get 11
                        local.get 6
                        i32.const 16
                        i32.add
                        i32.gt_u
                        br_if 0 (;@10;)
                        br 2 (;@8;)
                      end
                    end
                    local.get 11
                    local.get 19
                    i32.ne
                    br_if 0 (;@8;)
                    local.get 11
                    i32.const -1
                    i32.add
                    local.tee 11
                    i32.const 48
                    i32.store8
                  end
                  local.get 0
                  local.get 11
                  local.get 19
                  local.get 11
                  i32.sub
                  call $out
                  local.get 20
                  i32.const 4
                  i32.add
                  local.tee 20
                  local.get 18
                  i32.le_u
                  br_if 0 (;@7;)
                end
                block  ;; label = @7
                  local.get 26
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 0
                  i32.const 65626
                  i32.const 1
                  call $out
                end
                local.get 20
                local.get 12
                i32.ge_u
                br_if 1 (;@5;)
                local.get 16
                i32.const 1
                i32.lt_s
                br_if 1 (;@5;)
                loop  ;; label = @7
                  block  ;; label = @8
                    local.get 20
                    i64.load32_u
                    local.get 19
                    call $fmt_u
                    local.tee 11
                    local.get 6
                    i32.const 16
                    i32.add
                    i32.le_u
                    br_if 0 (;@8;)
                    loop  ;; label = @9
                      local.get 11
                      i32.const -1
                      i32.add
                      local.tee 11
                      i32.const 48
                      i32.store8
                      local.get 11
                      local.get 6
                      i32.const 16
                      i32.add
                      i32.gt_u
                      br_if 0 (;@9;)
                    end
                  end
                  local.get 0
                  local.get 11
                  local.get 16
                  i32.const 9
                  local.get 16
                  i32.const 9
                  i32.lt_s
                  select
                  call $out
                  local.get 16
                  i32.const -9
                  i32.add
                  local.set 11
                  local.get 20
                  i32.const 4
                  i32.add
                  local.tee 20
                  local.get 12
                  i32.ge_u
                  br_if 3 (;@4;)
                  local.get 16
                  i32.const 9
                  i32.gt_s
                  local.set 3
                  local.get 11
                  local.set 16
                  local.get 3
                  br_if 0 (;@7;)
                  br 3 (;@4;)
                end
              end
              block  ;; label = @6
                local.get 16
                i32.const 0
                i32.lt_s
                br_if 0 (;@6;)
                local.get 12
                local.get 20
                i32.const 4
                i32.add
                local.get 12
                local.get 20
                i32.gt_u
                select
                local.set 13
                local.get 6
                i32.const 16
                i32.add
                i32.const 9
                i32.or
                local.set 19
                local.get 20
                local.set 12
                loop  ;; label = @7
                  block  ;; label = @8
                    local.get 12
                    i64.load32_u
                    local.get 19
                    call $fmt_u
                    local.tee 11
                    local.get 19
                    i32.ne
                    br_if 0 (;@8;)
                    local.get 11
                    i32.const -1
                    i32.add
                    local.tee 11
                    i32.const 48
                    i32.store8
                  end
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 12
                      local.get 20
                      i32.eq
                      br_if 0 (;@9;)
                      local.get 11
                      local.get 6
                      i32.const 16
                      i32.add
                      i32.le_u
                      br_if 1 (;@8;)
                      loop  ;; label = @10
                        local.get 11
                        i32.const -1
                        i32.add
                        local.tee 11
                        i32.const 48
                        i32.store8
                        local.get 11
                        local.get 6
                        i32.const 16
                        i32.add
                        i32.gt_u
                        br_if 0 (;@10;)
                        br 2 (;@8;)
                      end
                    end
                    local.get 0
                    local.get 11
                    i32.const 1
                    call $out
                    local.get 11
                    i32.const 1
                    i32.add
                    local.set 11
                    local.get 16
                    local.get 25
                    i32.or
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 0
                    i32.const 65626
                    i32.const 1
                    call $out
                  end
                  local.get 0
                  local.get 11
                  local.get 19
                  local.get 11
                  i32.sub
                  local.tee 3
                  local.get 16
                  local.get 16
                  local.get 3
                  i32.gt_s
                  select
                  call $out
                  local.get 16
                  local.get 3
                  i32.sub
                  local.set 16
                  local.get 12
                  i32.const 4
                  i32.add
                  local.tee 12
                  local.get 13
                  i32.ge_u
                  br_if 1 (;@6;)
                  local.get 16
                  i32.const -1
                  i32.gt_s
                  br_if 0 (;@7;)
                end
              end
              local.get 0
              i32.const 48
              local.get 16
              i32.const 18
              i32.add
              i32.const 18
              i32.const 0
              call $pad
              local.get 0
              local.get 23
              local.get 14
              local.get 23
              i32.sub
              call $out
              br 2 (;@3;)
            end
            local.get 16
            local.set 11
          end
          local.get 0
          i32.const 48
          local.get 11
          i32.const 9
          i32.add
          i32.const 9
          i32.const 0
          call $pad
        end
        local.get 0
        i32.const 32
        local.get 2
        local.get 5
        local.get 4
        i32.const 8192
        i32.xor
        call $pad
        local.get 2
        local.get 5
        local.get 2
        local.get 5
        i32.gt_s
        select
        local.set 13
        br 1 (;@1;)
      end
      local.get 10
      local.get 5
      i32.const 26
      i32.shl
      i32.const 31
      i32.shr_s
      i32.const 9
      i32.and
      i32.add
      local.set 23
      block  ;; label = @2
        local.get 3
        i32.const 11
        i32.gt_u
        br_if 0 (;@2;)
        i32.const 12
        local.get 3
        i32.sub
        local.set 11
        f64.const 0x1p+4 (;=16;)
        local.set 27
        loop  ;; label = @3
          local.get 27
          f64.const 0x1p+4 (;=16;)
          f64.mul
          local.set 27
          local.get 11
          i32.const -1
          i32.add
          local.tee 11
          br_if 0 (;@3;)
        end
        block  ;; label = @3
          local.get 23
          i32.load8_u
          i32.const 45
          i32.ne
          br_if 0 (;@3;)
          local.get 27
          local.get 1
          f64.neg
          local.get 27
          f64.sub
          f64.add
          f64.neg
          local.set 1
          br 1 (;@2;)
        end
        local.get 1
        local.get 27
        f64.add
        local.get 27
        f64.sub
        local.set 1
      end
      block  ;; label = @2
        local.get 6
        i32.load offset=44
        local.tee 12
        local.get 12
        i32.const 31
        i32.shr_s
        local.tee 11
        i32.xor
        local.get 11
        i32.sub
        i64.extend_i32_u
        local.get 14
        call $fmt_u
        local.tee 11
        local.get 14
        i32.ne
        br_if 0 (;@2;)
        local.get 11
        i32.const -1
        i32.add
        local.tee 11
        i32.const 48
        i32.store8
        local.get 6
        i32.load offset=44
        local.set 12
      end
      local.get 9
      i32.const 2
      i32.or
      local.set 25
      local.get 5
      i32.const 32
      i32.and
      local.set 20
      local.get 11
      i32.const -2
      i32.add
      local.tee 26
      local.get 5
      i32.const 15
      i32.add
      i32.store8
      local.get 11
      i32.const -1
      i32.add
      i32.const 45
      i32.const 43
      local.get 12
      i32.const 0
      i32.lt_s
      select
      i32.store8
      local.get 3
      i32.const 1
      i32.lt_s
      local.get 4
      i32.const 8
      i32.and
      i32.eqz
      i32.and
      local.set 19
      local.get 6
      i32.const 16
      i32.add
      local.set 12
      loop  ;; label = @2
        local.get 12
        local.set 11
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            f64.abs
            f64.const 0x1p+31 (;=2.14748e+09;)
            f64.lt
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            i32.trunc_f64_s
            local.set 12
            br 1 (;@3;)
          end
          i32.const -2147483648
          local.set 12
        end
        local.get 11
        local.get 12
        i32.const 68624
        i32.add
        i32.load8_u
        local.get 20
        i32.or
        i32.store8
        local.get 1
        local.get 12
        f64.convert_i32_s
        f64.sub
        f64.const 0x1p+4 (;=16;)
        f64.mul
        local.set 1
        block  ;; label = @3
          local.get 11
          i32.const 1
          i32.add
          local.tee 12
          local.get 6
          i32.const 16
          i32.add
          i32.sub
          i32.const 1
          i32.ne
          br_if 0 (;@3;)
          local.get 1
          f64.const 0x0p+0 (;=0;)
          f64.eq
          local.get 19
          i32.and
          br_if 0 (;@3;)
          local.get 11
          i32.const 46
          i32.store8 offset=1
          local.get 11
          i32.const 2
          i32.add
          local.set 12
        end
        local.get 1
        f64.const 0x0p+0 (;=0;)
        f64.ne
        br_if 0 (;@2;)
      end
      i32.const -1
      local.set 13
      local.get 3
      i32.const 2147483645
      local.get 25
      local.get 14
      local.get 26
      i32.sub
      local.tee 20
      i32.add
      local.tee 19
      i32.sub
      i32.gt_s
      br_if 0 (;@1;)
      local.get 0
      i32.const 32
      local.get 2
      local.get 19
      local.get 3
      i32.const 2
      i32.add
      local.get 12
      local.get 6
      i32.const 16
      i32.add
      i32.sub
      local.tee 11
      local.get 11
      i32.const -2
      i32.add
      local.get 3
      i32.lt_s
      select
      local.get 11
      local.get 3
      select
      local.tee 3
      i32.add
      local.tee 12
      local.get 4
      call $pad
      local.get 0
      local.get 23
      local.get 25
      call $out
      local.get 0
      i32.const 48
      local.get 2
      local.get 12
      local.get 4
      i32.const 65536
      i32.xor
      call $pad
      local.get 0
      local.get 6
      i32.const 16
      i32.add
      local.get 11
      call $out
      local.get 0
      i32.const 48
      local.get 3
      local.get 11
      i32.sub
      i32.const 0
      i32.const 0
      call $pad
      local.get 0
      local.get 26
      local.get 20
      call $out
      local.get 0
      i32.const 32
      local.get 2
      local.get 12
      local.get 4
      i32.const 8192
      i32.xor
      call $pad
      local.get 2
      local.get 12
      local.get 2
      local.get 12
      i32.gt_s
      select
      local.set 13
    end
    local.get 6
    i32.const 560
    i32.add
    global.set $__stack_pointer
    local.get 13)
  (func $pop_arg_long_double (type 4) (param i32 i32)
    (local i32)
    local.get 1
    local.get 1
    i32.load
    i32.const 7
    i32.add
    i32.const -8
    i32.and
    local.tee 2
    i32.const 16
    i32.add
    i32.store
    local.get 0
    local.get 2
    i64.load
    local.get 2
    i32.const 8
    i32.add
    i64.load
    call $__trunctfdf2
    f64.store)
  (func $__DOUBLE_BITS (type 19) (param f64) (result i64)
    local.get 0
    i64.reinterpret_f64)
  (func $__wasi_syscall_ret (type 6) (param i32) (result i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    call $__errno_location
    local.get 0
    i32.store
    i32.const -1)
  (func $wcrtomb (type 1) (param i32 i32 i32) (result i32)
    (local i32)
    i32.const 1
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.const 127
        i32.le_u
        br_if 1 (;@1;)
        block  ;; label = @3
          block  ;; label = @4
            call $__get_tp
            i32.load offset=96
            i32.load
            br_if 0 (;@4;)
            local.get 1
            i32.const -128
            i32.and
            i32.const 57216
            i32.eq
            br_if 3 (;@1;)
            call $__errno_location
            i32.const 25
            i32.store
            br 1 (;@3;)
          end
          block  ;; label = @4
            local.get 1
            i32.const 2047
            i32.gt_u
            br_if 0 (;@4;)
            local.get 0
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=1
            local.get 0
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 192
            i32.or
            i32.store8
            i32.const 2
            return
          end
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.const 55296
              i32.lt_u
              br_if 0 (;@5;)
              local.get 1
              i32.const -8192
              i32.and
              i32.const 57344
              i32.ne
              br_if 1 (;@4;)
            end
            local.get 0
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=2
            local.get 0
            local.get 1
            i32.const 12
            i32.shr_u
            i32.const 224
            i32.or
            i32.store8
            local.get 0
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=1
            i32.const 3
            return
          end
          block  ;; label = @4
            local.get 1
            i32.const -65536
            i32.add
            i32.const 1048575
            i32.gt_u
            br_if 0 (;@4;)
            local.get 0
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=3
            local.get 0
            local.get 1
            i32.const 18
            i32.shr_u
            i32.const 240
            i32.or
            i32.store8
            local.get 0
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=2
            local.get 0
            local.get 1
            i32.const 12
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=1
            i32.const 4
            return
          end
          call $__errno_location
          i32.const 25
          i32.store
        end
        i32.const -1
        local.set 3
      end
      local.get 3
      return
    end
    local.get 0
    local.get 1
    i32.store8
    i32.const 1)
  (func $wctomb (type 10) (param i32 i32) (result i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    local.get 0
    local.get 1
    i32.const 0
    call $wcrtomb)
  (func $sbrk (type 6) (param i32) (result i32)
    (local i32 i32)
    i32.const 0
    i32.load offset=68940
    local.tee 1
    local.get 0
    i32.const 7
    i32.add
    i32.const -8
    i32.and
    local.tee 2
    i32.add
    local.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          local.get 1
          i32.le_u
          br_if 1 (;@2;)
        end
        local.get 0
        call $emscripten_get_heap_size
        i32.le_u
        br_if 1 (;@1;)
        local.get 0
        call $emscripten_resize_heap
        br_if 1 (;@1;)
      end
      call $__errno_location
      i32.const 48
      i32.store
      i32.const -1
      return
    end
    i32.const 0
    local.get 0
    i32.store offset=68940
    local.get 1)
  (func $emscripten_builtin_malloc (type 6) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 0
                          i32.const 244
                          i32.gt_u
                          br_if 0 (;@11;)
                          block  ;; label = @12
                            i32.const 0
                            i32.load offset=70200
                            local.tee 2
                            i32.const 16
                            local.get 0
                            i32.const 11
                            i32.add
                            i32.const 504
                            i32.and
                            local.get 0
                            i32.const 11
                            i32.lt_u
                            select
                            local.tee 3
                            i32.const 3
                            i32.shr_u
                            local.tee 4
                            i32.shr_u
                            local.tee 0
                            i32.const 3
                            i32.and
                            i32.eqz
                            br_if 0 (;@12;)
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 0
                                i32.const -1
                                i32.xor
                                i32.const 1
                                i32.and
                                local.get 4
                                i32.add
                                local.tee 3
                                i32.const 3
                                i32.shl
                                local.tee 4
                                i32.const 70240
                                i32.add
                                local.tee 0
                                local.get 4
                                i32.const 70248
                                i32.add
                                i32.load
                                local.tee 4
                                i32.load offset=8
                                local.tee 5
                                i32.ne
                                br_if 0 (;@14;)
                                i32.const 0
                                local.get 2
                                i32.const -2
                                local.get 3
                                i32.rotl
                                i32.and
                                i32.store offset=70200
                                br 1 (;@13;)
                              end
                              local.get 5
                              local.get 0
                              i32.store offset=12
                              local.get 0
                              local.get 5
                              i32.store offset=8
                            end
                            local.get 4
                            i32.const 8
                            i32.add
                            local.set 0
                            local.get 4
                            local.get 3
                            i32.const 3
                            i32.shl
                            local.tee 3
                            i32.const 3
                            i32.or
                            i32.store offset=4
                            local.get 4
                            local.get 3
                            i32.add
                            local.tee 4
                            local.get 4
                            i32.load offset=4
                            i32.const 1
                            i32.or
                            i32.store offset=4
                            br 11 (;@1;)
                          end
                          local.get 3
                          i32.const 0
                          i32.load offset=70208
                          local.tee 6
                          i32.le_u
                          br_if 1 (;@10;)
                          block  ;; label = @12
                            local.get 0
                            i32.eqz
                            br_if 0 (;@12;)
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 0
                                local.get 4
                                i32.shl
                                i32.const 2
                                local.get 4
                                i32.shl
                                local.tee 0
                                i32.const 0
                                local.get 0
                                i32.sub
                                i32.or
                                i32.and
                                i32.ctz
                                local.tee 4
                                i32.const 3
                                i32.shl
                                local.tee 0
                                i32.const 70240
                                i32.add
                                local.tee 5
                                local.get 0
                                i32.const 70248
                                i32.add
                                i32.load
                                local.tee 0
                                i32.load offset=8
                                local.tee 7
                                i32.ne
                                br_if 0 (;@14;)
                                i32.const 0
                                local.get 2
                                i32.const -2
                                local.get 4
                                i32.rotl
                                i32.and
                                local.tee 2
                                i32.store offset=70200
                                br 1 (;@13;)
                              end
                              local.get 7
                              local.get 5
                              i32.store offset=12
                              local.get 5
                              local.get 7
                              i32.store offset=8
                            end
                            local.get 0
                            local.get 3
                            i32.const 3
                            i32.or
                            i32.store offset=4
                            local.get 0
                            local.get 3
                            i32.add
                            local.tee 7
                            local.get 4
                            i32.const 3
                            i32.shl
                            local.tee 4
                            local.get 3
                            i32.sub
                            local.tee 3
                            i32.const 1
                            i32.or
                            i32.store offset=4
                            local.get 0
                            local.get 4
                            i32.add
                            local.get 3
                            i32.store
                            block  ;; label = @13
                              local.get 6
                              i32.eqz
                              br_if 0 (;@13;)
                              local.get 6
                              i32.const -8
                              i32.and
                              i32.const 70240
                              i32.add
                              local.set 5
                              i32.const 0
                              i32.load offset=70220
                              local.set 4
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 2
                                  i32.const 1
                                  local.get 6
                                  i32.const 3
                                  i32.shr_u
                                  i32.shl
                                  local.tee 8
                                  i32.and
                                  br_if 0 (;@15;)
                                  i32.const 0
                                  local.get 2
                                  local.get 8
                                  i32.or
                                  i32.store offset=70200
                                  local.get 5
                                  local.set 8
                                  br 1 (;@14;)
                                end
                                local.get 5
                                i32.load offset=8
                                local.set 8
                              end
                              local.get 5
                              local.get 4
                              i32.store offset=8
                              local.get 8
                              local.get 4
                              i32.store offset=12
                              local.get 4
                              local.get 5
                              i32.store offset=12
                              local.get 4
                              local.get 8
                              i32.store offset=8
                            end
                            local.get 0
                            i32.const 8
                            i32.add
                            local.set 0
                            i32.const 0
                            local.get 7
                            i32.store offset=70220
                            i32.const 0
                            local.get 3
                            i32.store offset=70208
                            br 11 (;@1;)
                          end
                          i32.const 0
                          i32.load offset=70204
                          local.tee 9
                          i32.eqz
                          br_if 1 (;@10;)
                          local.get 9
                          i32.ctz
                          i32.const 2
                          i32.shl
                          i32.const 70504
                          i32.add
                          i32.load
                          local.tee 7
                          i32.load offset=4
                          i32.const -8
                          i32.and
                          local.get 3
                          i32.sub
                          local.set 4
                          local.get 7
                          local.set 5
                          block  ;; label = @12
                            loop  ;; label = @13
                              block  ;; label = @14
                                local.get 5
                                i32.load offset=16
                                local.tee 0
                                br_if 0 (;@14;)
                                local.get 5
                                i32.load offset=20
                                local.tee 0
                                i32.eqz
                                br_if 2 (;@12;)
                              end
                              local.get 0
                              i32.load offset=4
                              i32.const -8
                              i32.and
                              local.get 3
                              i32.sub
                              local.tee 5
                              local.get 4
                              local.get 5
                              local.get 4
                              i32.lt_u
                              local.tee 5
                              select
                              local.set 4
                              local.get 0
                              local.get 7
                              local.get 5
                              select
                              local.set 7
                              local.get 0
                              local.set 5
                              br 0 (;@13;)
                            end
                          end
                          local.get 7
                          i32.load offset=24
                          local.set 10
                          block  ;; label = @12
                            local.get 7
                            i32.load offset=12
                            local.tee 0
                            local.get 7
                            i32.eq
                            br_if 0 (;@12;)
                            local.get 7
                            i32.load offset=8
                            local.tee 5
                            local.get 0
                            i32.store offset=12
                            local.get 0
                            local.get 5
                            i32.store offset=8
                            br 10 (;@2;)
                          end
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 7
                              i32.load offset=20
                              local.tee 5
                              i32.eqz
                              br_if 0 (;@13;)
                              local.get 7
                              i32.const 20
                              i32.add
                              local.set 8
                              br 1 (;@12;)
                            end
                            local.get 7
                            i32.load offset=16
                            local.tee 5
                            i32.eqz
                            br_if 3 (;@9;)
                            local.get 7
                            i32.const 16
                            i32.add
                            local.set 8
                          end
                          loop  ;; label = @12
                            local.get 8
                            local.set 11
                            local.get 5
                            local.tee 0
                            i32.const 20
                            i32.add
                            local.set 8
                            local.get 0
                            i32.load offset=20
                            local.tee 5
                            br_if 0 (;@12;)
                            local.get 0
                            i32.const 16
                            i32.add
                            local.set 8
                            local.get 0
                            i32.load offset=16
                            local.tee 5
                            br_if 0 (;@12;)
                          end
                          local.get 11
                          i32.const 0
                          i32.store
                          br 9 (;@2;)
                        end
                        i32.const -1
                        local.set 3
                        local.get 0
                        i32.const -65
                        i32.gt_u
                        br_if 0 (;@10;)
                        local.get 0
                        i32.const 11
                        i32.add
                        local.tee 4
                        i32.const -8
                        i32.and
                        local.set 3
                        i32.const 0
                        i32.load offset=70204
                        local.tee 10
                        i32.eqz
                        br_if 0 (;@10;)
                        i32.const 31
                        local.set 6
                        block  ;; label = @11
                          local.get 0
                          i32.const 16777204
                          i32.gt_u
                          br_if 0 (;@11;)
                          local.get 3
                          i32.const 38
                          local.get 4
                          i32.const 8
                          i32.shr_u
                          i32.clz
                          local.tee 0
                          i32.sub
                          i32.shr_u
                          i32.const 1
                          i32.and
                          local.get 0
                          i32.const 1
                          i32.shl
                          i32.sub
                          i32.const 62
                          i32.add
                          local.set 6
                        end
                        i32.const 0
                        local.get 3
                        i32.sub
                        local.set 4
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 6
                                i32.const 2
                                i32.shl
                                i32.const 70504
                                i32.add
                                i32.load
                                local.tee 5
                                br_if 0 (;@14;)
                                i32.const 0
                                local.set 0
                                i32.const 0
                                local.set 8
                                br 1 (;@13;)
                              end
                              i32.const 0
                              local.set 0
                              local.get 3
                              i32.const 0
                              i32.const 25
                              local.get 6
                              i32.const 1
                              i32.shr_u
                              i32.sub
                              local.get 6
                              i32.const 31
                              i32.eq
                              select
                              i32.shl
                              local.set 7
                              i32.const 0
                              local.set 8
                              loop  ;; label = @14
                                block  ;; label = @15
                                  local.get 5
                                  i32.load offset=4
                                  i32.const -8
                                  i32.and
                                  local.get 3
                                  i32.sub
                                  local.tee 2
                                  local.get 4
                                  i32.ge_u
                                  br_if 0 (;@15;)
                                  local.get 2
                                  local.set 4
                                  local.get 5
                                  local.set 8
                                  local.get 2
                                  br_if 0 (;@15;)
                                  i32.const 0
                                  local.set 4
                                  local.get 5
                                  local.set 8
                                  local.get 5
                                  local.set 0
                                  br 3 (;@12;)
                                end
                                local.get 0
                                local.get 5
                                i32.load offset=20
                                local.tee 2
                                local.get 2
                                local.get 5
                                local.get 7
                                i32.const 29
                                i32.shr_u
                                i32.const 4
                                i32.and
                                i32.add
                                i32.load offset=16
                                local.tee 11
                                i32.eq
                                select
                                local.get 0
                                local.get 2
                                select
                                local.set 0
                                local.get 7
                                i32.const 1
                                i32.shl
                                local.set 7
                                local.get 11
                                local.set 5
                                local.get 11
                                br_if 0 (;@14;)
                              end
                            end
                            block  ;; label = @13
                              local.get 0
                              local.get 8
                              i32.or
                              br_if 0 (;@13;)
                              i32.const 0
                              local.set 8
                              i32.const 2
                              local.get 6
                              i32.shl
                              local.tee 0
                              i32.const 0
                              local.get 0
                              i32.sub
                              i32.or
                              local.get 10
                              i32.and
                              local.tee 0
                              i32.eqz
                              br_if 3 (;@10;)
                              local.get 0
                              i32.ctz
                              i32.const 2
                              i32.shl
                              i32.const 70504
                              i32.add
                              i32.load
                              local.set 0
                            end
                            local.get 0
                            i32.eqz
                            br_if 1 (;@11;)
                          end
                          loop  ;; label = @12
                            local.get 0
                            i32.load offset=4
                            i32.const -8
                            i32.and
                            local.get 3
                            i32.sub
                            local.tee 2
                            local.get 4
                            i32.lt_u
                            local.set 7
                            block  ;; label = @13
                              local.get 0
                              i32.load offset=16
                              local.tee 5
                              br_if 0 (;@13;)
                              local.get 0
                              i32.load offset=20
                              local.set 5
                            end
                            local.get 2
                            local.get 4
                            local.get 7
                            select
                            local.set 4
                            local.get 0
                            local.get 8
                            local.get 7
                            select
                            local.set 8
                            local.get 5
                            local.set 0
                            local.get 5
                            br_if 0 (;@12;)
                          end
                        end
                        local.get 8
                        i32.eqz
                        br_if 0 (;@10;)
                        local.get 4
                        i32.const 0
                        i32.load offset=70208
                        local.get 3
                        i32.sub
                        i32.ge_u
                        br_if 0 (;@10;)
                        local.get 8
                        i32.load offset=24
                        local.set 11
                        block  ;; label = @11
                          local.get 8
                          i32.load offset=12
                          local.tee 0
                          local.get 8
                          i32.eq
                          br_if 0 (;@11;)
                          local.get 8
                          i32.load offset=8
                          local.tee 5
                          local.get 0
                          i32.store offset=12
                          local.get 0
                          local.get 5
                          i32.store offset=8
                          br 8 (;@3;)
                        end
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 8
                            i32.load offset=20
                            local.tee 5
                            i32.eqz
                            br_if 0 (;@12;)
                            local.get 8
                            i32.const 20
                            i32.add
                            local.set 7
                            br 1 (;@11;)
                          end
                          local.get 8
                          i32.load offset=16
                          local.tee 5
                          i32.eqz
                          br_if 3 (;@8;)
                          local.get 8
                          i32.const 16
                          i32.add
                          local.set 7
                        end
                        loop  ;; label = @11
                          local.get 7
                          local.set 2
                          local.get 5
                          local.tee 0
                          i32.const 20
                          i32.add
                          local.set 7
                          local.get 0
                          i32.load offset=20
                          local.tee 5
                          br_if 0 (;@11;)
                          local.get 0
                          i32.const 16
                          i32.add
                          local.set 7
                          local.get 0
                          i32.load offset=16
                          local.tee 5
                          br_if 0 (;@11;)
                        end
                        local.get 2
                        i32.const 0
                        i32.store
                        br 7 (;@3;)
                      end
                      block  ;; label = @10
                        i32.const 0
                        i32.load offset=70208
                        local.tee 0
                        local.get 3
                        i32.lt_u
                        br_if 0 (;@10;)
                        i32.const 0
                        i32.load offset=70220
                        local.set 4
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 0
                            local.get 3
                            i32.sub
                            local.tee 5
                            i32.const 16
                            i32.lt_u
                            br_if 0 (;@12;)
                            local.get 4
                            local.get 3
                            i32.add
                            local.tee 7
                            local.get 5
                            i32.const 1
                            i32.or
                            i32.store offset=4
                            local.get 4
                            local.get 0
                            i32.add
                            local.get 5
                            i32.store
                            local.get 4
                            local.get 3
                            i32.const 3
                            i32.or
                            i32.store offset=4
                            br 1 (;@11;)
                          end
                          local.get 4
                          local.get 0
                          i32.const 3
                          i32.or
                          i32.store offset=4
                          local.get 4
                          local.get 0
                          i32.add
                          local.tee 0
                          local.get 0
                          i32.load offset=4
                          i32.const 1
                          i32.or
                          i32.store offset=4
                          i32.const 0
                          local.set 7
                          i32.const 0
                          local.set 5
                        end
                        i32.const 0
                        local.get 5
                        i32.store offset=70208
                        i32.const 0
                        local.get 7
                        i32.store offset=70220
                        local.get 4
                        i32.const 8
                        i32.add
                        local.set 0
                        br 9 (;@1;)
                      end
                      block  ;; label = @10
                        i32.const 0
                        i32.load offset=70212
                        local.tee 7
                        local.get 3
                        i32.le_u
                        br_if 0 (;@10;)
                        i32.const 0
                        local.get 7
                        local.get 3
                        i32.sub
                        local.tee 4
                        i32.store offset=70212
                        i32.const 0
                        i32.const 0
                        i32.load offset=70224
                        local.tee 0
                        local.get 3
                        i32.add
                        local.tee 5
                        i32.store offset=70224
                        local.get 5
                        local.get 4
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        local.get 0
                        local.get 3
                        i32.const 3
                        i32.or
                        i32.store offset=4
                        local.get 0
                        i32.const 8
                        i32.add
                        local.set 0
                        br 9 (;@1;)
                      end
                      block  ;; label = @10
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=70672
                          i32.eqz
                          br_if 0 (;@11;)
                          i32.const 0
                          i32.load offset=70680
                          local.set 4
                          br 1 (;@10;)
                        end
                        i32.const 0
                        i64.const -1
                        i64.store offset=70684 align=4
                        i32.const 0
                        i64.const 17592186048512
                        i64.store offset=70676 align=4
                        i32.const 0
                        local.get 1
                        i32.const 12
                        i32.add
                        i32.const -16
                        i32.and
                        i32.const 1431655768
                        i32.xor
                        i32.store offset=70672
                        i32.const 0
                        i32.const 0
                        i32.store offset=70692
                        i32.const 0
                        i32.const 0
                        i32.store offset=70644
                        i32.const 4096
                        local.set 4
                      end
                      i32.const 0
                      local.set 0
                      local.get 4
                      local.get 3
                      i32.const 47
                      i32.add
                      local.tee 6
                      i32.add
                      local.tee 2
                      i32.const 0
                      local.get 4
                      i32.sub
                      local.tee 11
                      i32.and
                      local.tee 8
                      local.get 3
                      i32.le_u
                      br_if 8 (;@1;)
                      i32.const 0
                      local.set 0
                      block  ;; label = @10
                        i32.const 0
                        i32.load offset=70640
                        local.tee 4
                        i32.eqz
                        br_if 0 (;@10;)
                        i32.const 0
                        i32.load offset=70632
                        local.tee 5
                        local.get 8
                        i32.add
                        local.tee 10
                        local.get 5
                        i32.le_u
                        br_if 9 (;@1;)
                        local.get 10
                        local.get 4
                        i32.gt_u
                        br_if 9 (;@1;)
                      end
                      block  ;; label = @10
                        block  ;; label = @11
                          i32.const 0
                          i32.load8_u offset=70644
                          i32.const 4
                          i32.and
                          br_if 0 (;@11;)
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    i32.const 0
                                    i32.load offset=70224
                                    local.tee 4
                                    i32.eqz
                                    br_if 0 (;@16;)
                                    i32.const 70648
                                    local.set 0
                                    loop  ;; label = @17
                                      block  ;; label = @18
                                        local.get 4
                                        local.get 0
                                        i32.load
                                        local.tee 5
                                        i32.lt_u
                                        br_if 0 (;@18;)
                                        local.get 4
                                        local.get 5
                                        local.get 0
                                        i32.load offset=4
                                        i32.add
                                        i32.lt_u
                                        br_if 3 (;@15;)
                                      end
                                      local.get 0
                                      i32.load offset=8
                                      local.tee 0
                                      br_if 0 (;@17;)
                                    end
                                  end
                                  i32.const 0
                                  call $sbrk
                                  local.tee 7
                                  i32.const -1
                                  i32.eq
                                  br_if 3 (;@12;)
                                  local.get 8
                                  local.set 2
                                  block  ;; label = @16
                                    i32.const 0
                                    i32.load offset=70676
                                    local.tee 0
                                    i32.const -1
                                    i32.add
                                    local.tee 4
                                    local.get 7
                                    i32.and
                                    i32.eqz
                                    br_if 0 (;@16;)
                                    local.get 8
                                    local.get 7
                                    i32.sub
                                    local.get 4
                                    local.get 7
                                    i32.add
                                    i32.const 0
                                    local.get 0
                                    i32.sub
                                    i32.and
                                    i32.add
                                    local.set 2
                                  end
                                  local.get 2
                                  local.get 3
                                  i32.le_u
                                  br_if 3 (;@12;)
                                  block  ;; label = @16
                                    i32.const 0
                                    i32.load offset=70640
                                    local.tee 0
                                    i32.eqz
                                    br_if 0 (;@16;)
                                    i32.const 0
                                    i32.load offset=70632
                                    local.tee 4
                                    local.get 2
                                    i32.add
                                    local.tee 5
                                    local.get 4
                                    i32.le_u
                                    br_if 4 (;@12;)
                                    local.get 5
                                    local.get 0
                                    i32.gt_u
                                    br_if 4 (;@12;)
                                  end
                                  local.get 2
                                  call $sbrk
                                  local.tee 0
                                  local.get 7
                                  i32.ne
                                  br_if 1 (;@14;)
                                  br 5 (;@10;)
                                end
                                local.get 2
                                local.get 7
                                i32.sub
                                local.get 11
                                i32.and
                                local.tee 2
                                call $sbrk
                                local.tee 7
                                local.get 0
                                i32.load
                                local.get 0
                                i32.load offset=4
                                i32.add
                                i32.eq
                                br_if 1 (;@13;)
                                local.get 7
                                local.set 0
                              end
                              local.get 0
                              i32.const -1
                              i32.eq
                              br_if 1 (;@12;)
                              block  ;; label = @14
                                local.get 2
                                local.get 3
                                i32.const 48
                                i32.add
                                i32.lt_u
                                br_if 0 (;@14;)
                                local.get 0
                                local.set 7
                                br 4 (;@10;)
                              end
                              local.get 6
                              local.get 2
                              i32.sub
                              i32.const 0
                              i32.load offset=70680
                              local.tee 4
                              i32.add
                              i32.const 0
                              local.get 4
                              i32.sub
                              i32.and
                              local.tee 4
                              call $sbrk
                              i32.const -1
                              i32.eq
                              br_if 1 (;@12;)
                              local.get 4
                              local.get 2
                              i32.add
                              local.set 2
                              local.get 0
                              local.set 7
                              br 3 (;@10;)
                            end
                            local.get 7
                            i32.const -1
                            i32.ne
                            br_if 2 (;@10;)
                          end
                          i32.const 0
                          i32.const 0
                          i32.load offset=70644
                          i32.const 4
                          i32.or
                          i32.store offset=70644
                        end
                        local.get 8
                        call $sbrk
                        local.set 7
                        i32.const 0
                        call $sbrk
                        local.set 0
                        local.get 7
                        i32.const -1
                        i32.eq
                        br_if 5 (;@5;)
                        local.get 0
                        i32.const -1
                        i32.eq
                        br_if 5 (;@5;)
                        local.get 7
                        local.get 0
                        i32.ge_u
                        br_if 5 (;@5;)
                        local.get 0
                        local.get 7
                        i32.sub
                        local.tee 2
                        local.get 3
                        i32.const 40
                        i32.add
                        i32.le_u
                        br_if 5 (;@5;)
                      end
                      i32.const 0
                      i32.const 0
                      i32.load offset=70632
                      local.get 2
                      i32.add
                      local.tee 0
                      i32.store offset=70632
                      block  ;; label = @10
                        local.get 0
                        i32.const 0
                        i32.load offset=70636
                        i32.le_u
                        br_if 0 (;@10;)
                        i32.const 0
                        local.get 0
                        i32.store offset=70636
                      end
                      block  ;; label = @10
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=70224
                          local.tee 4
                          i32.eqz
                          br_if 0 (;@11;)
                          i32.const 70648
                          local.set 0
                          loop  ;; label = @12
                            local.get 7
                            local.get 0
                            i32.load
                            local.tee 5
                            local.get 0
                            i32.load offset=4
                            local.tee 8
                            i32.add
                            i32.eq
                            br_if 2 (;@10;)
                            local.get 0
                            i32.load offset=8
                            local.tee 0
                            br_if 0 (;@12;)
                            br 5 (;@7;)
                          end
                        end
                        block  ;; label = @11
                          block  ;; label = @12
                            i32.const 0
                            i32.load offset=70216
                            local.tee 0
                            i32.eqz
                            br_if 0 (;@12;)
                            local.get 7
                            local.get 0
                            i32.ge_u
                            br_if 1 (;@11;)
                          end
                          i32.const 0
                          local.get 7
                          i32.store offset=70216
                        end
                        i32.const 0
                        local.set 0
                        i32.const 0
                        local.get 2
                        i32.store offset=70652
                        i32.const 0
                        local.get 7
                        i32.store offset=70648
                        i32.const 0
                        i32.const -1
                        i32.store offset=70232
                        i32.const 0
                        i32.const 0
                        i32.load offset=70672
                        i32.store offset=70236
                        i32.const 0
                        i32.const 0
                        i32.store offset=70660
                        loop  ;; label = @11
                          local.get 0
                          i32.const 3
                          i32.shl
                          local.tee 4
                          i32.const 70248
                          i32.add
                          local.get 4
                          i32.const 70240
                          i32.add
                          local.tee 5
                          i32.store
                          local.get 4
                          i32.const 70252
                          i32.add
                          local.get 5
                          i32.store
                          local.get 0
                          i32.const 1
                          i32.add
                          local.tee 0
                          i32.const 32
                          i32.ne
                          br_if 0 (;@11;)
                        end
                        i32.const 0
                        local.get 2
                        i32.const -40
                        i32.add
                        local.tee 0
                        i32.const -8
                        local.get 7
                        i32.sub
                        i32.const 7
                        i32.and
                        local.tee 4
                        i32.sub
                        local.tee 5
                        i32.store offset=70212
                        i32.const 0
                        local.get 7
                        local.get 4
                        i32.add
                        local.tee 4
                        i32.store offset=70224
                        local.get 4
                        local.get 5
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        local.get 7
                        local.get 0
                        i32.add
                        i32.const 40
                        i32.store offset=4
                        i32.const 0
                        i32.const 0
                        i32.load offset=70688
                        i32.store offset=70228
                        br 4 (;@6;)
                      end
                      local.get 4
                      local.get 7
                      i32.ge_u
                      br_if 2 (;@7;)
                      local.get 4
                      local.get 5
                      i32.lt_u
                      br_if 2 (;@7;)
                      local.get 0
                      i32.load offset=12
                      i32.const 8
                      i32.and
                      br_if 2 (;@7;)
                      local.get 0
                      local.get 8
                      local.get 2
                      i32.add
                      i32.store offset=4
                      i32.const 0
                      local.get 4
                      i32.const -8
                      local.get 4
                      i32.sub
                      i32.const 7
                      i32.and
                      local.tee 0
                      i32.add
                      local.tee 5
                      i32.store offset=70224
                      i32.const 0
                      i32.const 0
                      i32.load offset=70212
                      local.get 2
                      i32.add
                      local.tee 7
                      local.get 0
                      i32.sub
                      local.tee 0
                      i32.store offset=70212
                      local.get 5
                      local.get 0
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      local.get 4
                      local.get 7
                      i32.add
                      i32.const 40
                      i32.store offset=4
                      i32.const 0
                      i32.const 0
                      i32.load offset=70688
                      i32.store offset=70228
                      br 3 (;@6;)
                    end
                    i32.const 0
                    local.set 0
                    br 6 (;@2;)
                  end
                  i32.const 0
                  local.set 0
                  br 4 (;@3;)
                end
                block  ;; label = @7
                  local.get 7
                  i32.const 0
                  i32.load offset=70216
                  i32.ge_u
                  br_if 0 (;@7;)
                  i32.const 0
                  local.get 7
                  i32.store offset=70216
                end
                local.get 7
                local.get 2
                i32.add
                local.set 5
                i32.const 70648
                local.set 0
                block  ;; label = @7
                  block  ;; label = @8
                    loop  ;; label = @9
                      local.get 0
                      i32.load
                      local.tee 8
                      local.get 5
                      i32.eq
                      br_if 1 (;@8;)
                      local.get 0
                      i32.load offset=8
                      local.tee 0
                      br_if 0 (;@9;)
                      br 2 (;@7;)
                    end
                  end
                  local.get 0
                  i32.load8_u offset=12
                  i32.const 8
                  i32.and
                  i32.eqz
                  br_if 3 (;@4;)
                end
                i32.const 70648
                local.set 0
                block  ;; label = @7
                  loop  ;; label = @8
                    block  ;; label = @9
                      local.get 4
                      local.get 0
                      i32.load
                      local.tee 5
                      i32.lt_u
                      br_if 0 (;@9;)
                      local.get 4
                      local.get 5
                      local.get 0
                      i32.load offset=4
                      i32.add
                      local.tee 5
                      i32.lt_u
                      br_if 2 (;@7;)
                    end
                    local.get 0
                    i32.load offset=8
                    local.set 0
                    br 0 (;@8;)
                  end
                end
                i32.const 0
                local.get 2
                i32.const -40
                i32.add
                local.tee 0
                i32.const -8
                local.get 7
                i32.sub
                i32.const 7
                i32.and
                local.tee 8
                i32.sub
                local.tee 11
                i32.store offset=70212
                i32.const 0
                local.get 7
                local.get 8
                i32.add
                local.tee 8
                i32.store offset=70224
                local.get 8
                local.get 11
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 7
                local.get 0
                i32.add
                i32.const 40
                i32.store offset=4
                i32.const 0
                i32.const 0
                i32.load offset=70688
                i32.store offset=70228
                local.get 4
                local.get 5
                i32.const 39
                local.get 5
                i32.sub
                i32.const 7
                i32.and
                i32.add
                i32.const -47
                i32.add
                local.tee 0
                local.get 0
                local.get 4
                i32.const 16
                i32.add
                i32.lt_u
                select
                local.tee 8
                i32.const 27
                i32.store offset=4
                local.get 8
                i32.const 16
                i32.add
                i32.const 0
                i64.load offset=70656 align=4
                i64.store align=4
                local.get 8
                i32.const 0
                i64.load offset=70648 align=4
                i64.store offset=8 align=4
                i32.const 0
                local.get 8
                i32.const 8
                i32.add
                i32.store offset=70656
                i32.const 0
                local.get 2
                i32.store offset=70652
                i32.const 0
                local.get 7
                i32.store offset=70648
                i32.const 0
                i32.const 0
                i32.store offset=70660
                local.get 8
                i32.const 24
                i32.add
                local.set 0
                loop  ;; label = @7
                  local.get 0
                  i32.const 7
                  i32.store offset=4
                  local.get 0
                  i32.const 8
                  i32.add
                  local.set 7
                  local.get 0
                  i32.const 4
                  i32.add
                  local.set 0
                  local.get 7
                  local.get 5
                  i32.lt_u
                  br_if 0 (;@7;)
                end
                local.get 8
                local.get 4
                i32.eq
                br_if 0 (;@6;)
                local.get 8
                local.get 8
                i32.load offset=4
                i32.const -2
                i32.and
                i32.store offset=4
                local.get 4
                local.get 8
                local.get 4
                i32.sub
                local.tee 7
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 8
                local.get 7
                i32.store
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 7
                    i32.const 255
                    i32.gt_u
                    br_if 0 (;@8;)
                    local.get 7
                    i32.const -8
                    i32.and
                    i32.const 70240
                    i32.add
                    local.set 0
                    block  ;; label = @9
                      block  ;; label = @10
                        i32.const 0
                        i32.load offset=70200
                        local.tee 5
                        i32.const 1
                        local.get 7
                        i32.const 3
                        i32.shr_u
                        i32.shl
                        local.tee 7
                        i32.and
                        br_if 0 (;@10;)
                        i32.const 0
                        local.get 5
                        local.get 7
                        i32.or
                        i32.store offset=70200
                        local.get 0
                        local.set 5
                        br 1 (;@9;)
                      end
                      local.get 0
                      i32.load offset=8
                      local.set 5
                    end
                    local.get 0
                    local.get 4
                    i32.store offset=8
                    local.get 5
                    local.get 4
                    i32.store offset=12
                    i32.const 12
                    local.set 7
                    i32.const 8
                    local.set 8
                    br 1 (;@7;)
                  end
                  i32.const 31
                  local.set 0
                  block  ;; label = @8
                    local.get 7
                    i32.const 16777215
                    i32.gt_u
                    br_if 0 (;@8;)
                    local.get 7
                    i32.const 38
                    local.get 7
                    i32.const 8
                    i32.shr_u
                    i32.clz
                    local.tee 0
                    i32.sub
                    i32.shr_u
                    i32.const 1
                    i32.and
                    local.get 0
                    i32.const 1
                    i32.shl
                    i32.sub
                    i32.const 62
                    i32.add
                    local.set 0
                  end
                  local.get 4
                  local.get 0
                  i32.store offset=28
                  local.get 4
                  i64.const 0
                  i64.store offset=16 align=4
                  local.get 0
                  i32.const 2
                  i32.shl
                  i32.const 70504
                  i32.add
                  local.set 5
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        i32.const 0
                        i32.load offset=70204
                        local.tee 8
                        i32.const 1
                        local.get 0
                        i32.shl
                        local.tee 2
                        i32.and
                        br_if 0 (;@10;)
                        i32.const 0
                        local.get 8
                        local.get 2
                        i32.or
                        i32.store offset=70204
                        local.get 5
                        local.get 4
                        i32.store
                        local.get 4
                        local.get 5
                        i32.store offset=24
                        br 1 (;@9;)
                      end
                      local.get 7
                      i32.const 0
                      i32.const 25
                      local.get 0
                      i32.const 1
                      i32.shr_u
                      i32.sub
                      local.get 0
                      i32.const 31
                      i32.eq
                      select
                      i32.shl
                      local.set 0
                      local.get 5
                      i32.load
                      local.set 8
                      loop  ;; label = @10
                        local.get 8
                        local.tee 5
                        i32.load offset=4
                        i32.const -8
                        i32.and
                        local.get 7
                        i32.eq
                        br_if 2 (;@8;)
                        local.get 0
                        i32.const 29
                        i32.shr_u
                        local.set 8
                        local.get 0
                        i32.const 1
                        i32.shl
                        local.set 0
                        local.get 5
                        local.get 8
                        i32.const 4
                        i32.and
                        i32.add
                        local.tee 2
                        i32.load offset=16
                        local.tee 8
                        br_if 0 (;@10;)
                      end
                      local.get 2
                      i32.const 16
                      i32.add
                      local.get 4
                      i32.store
                      local.get 4
                      local.get 5
                      i32.store offset=24
                    end
                    i32.const 8
                    local.set 7
                    i32.const 12
                    local.set 8
                    local.get 4
                    local.set 5
                    local.get 4
                    local.set 0
                    br 1 (;@7;)
                  end
                  local.get 5
                  i32.load offset=8
                  local.tee 0
                  local.get 4
                  i32.store offset=12
                  local.get 5
                  local.get 4
                  i32.store offset=8
                  local.get 4
                  local.get 0
                  i32.store offset=8
                  i32.const 0
                  local.set 0
                  i32.const 24
                  local.set 7
                  i32.const 12
                  local.set 8
                end
                local.get 4
                local.get 8
                i32.add
                local.get 5
                i32.store
                local.get 4
                local.get 7
                i32.add
                local.get 0
                i32.store
              end
              i32.const 0
              i32.load offset=70212
              local.tee 0
              local.get 3
              i32.le_u
              br_if 0 (;@5;)
              i32.const 0
              local.get 0
              local.get 3
              i32.sub
              local.tee 4
              i32.store offset=70212
              i32.const 0
              i32.const 0
              i32.load offset=70224
              local.tee 0
              local.get 3
              i32.add
              local.tee 5
              i32.store offset=70224
              local.get 5
              local.get 4
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 0
              local.get 3
              i32.const 3
              i32.or
              i32.store offset=4
              local.get 0
              i32.const 8
              i32.add
              local.set 0
              br 4 (;@1;)
            end
            call $__errno_location
            i32.const 48
            i32.store
            i32.const 0
            local.set 0
            br 3 (;@1;)
          end
          local.get 0
          local.get 7
          i32.store
          local.get 0
          local.get 0
          i32.load offset=4
          local.get 2
          i32.add
          i32.store offset=4
          local.get 7
          local.get 8
          local.get 3
          call $prepend_alloc
          local.set 0
          br 2 (;@1;)
        end
        block  ;; label = @3
          local.get 11
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 8
              local.get 8
              i32.load offset=28
              local.tee 7
              i32.const 2
              i32.shl
              i32.const 70504
              i32.add
              local.tee 5
              i32.load
              i32.ne
              br_if 0 (;@5;)
              local.get 5
              local.get 0
              i32.store
              local.get 0
              br_if 1 (;@4;)
              i32.const 0
              local.get 10
              i32.const -2
              local.get 7
              i32.rotl
              i32.and
              local.tee 10
              i32.store offset=70204
              br 2 (;@3;)
            end
            block  ;; label = @5
              block  ;; label = @6
                local.get 11
                i32.load offset=16
                local.get 8
                i32.ne
                br_if 0 (;@6;)
                local.get 11
                local.get 0
                i32.store offset=16
                br 1 (;@5;)
              end
              local.get 11
              local.get 0
              i32.store offset=20
            end
            local.get 0
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 0
          local.get 11
          i32.store offset=24
          block  ;; label = @4
            local.get 8
            i32.load offset=16
            local.tee 5
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            local.get 5
            i32.store offset=16
            local.get 5
            local.get 0
            i32.store offset=24
          end
          local.get 8
          i32.load offset=20
          local.tee 5
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          local.get 5
          i32.store offset=20
          local.get 5
          local.get 0
          i32.store offset=24
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 4
            i32.const 15
            i32.gt_u
            br_if 0 (;@4;)
            local.get 8
            local.get 4
            local.get 3
            i32.add
            local.tee 0
            i32.const 3
            i32.or
            i32.store offset=4
            local.get 8
            local.get 0
            i32.add
            local.tee 0
            local.get 0
            i32.load offset=4
            i32.const 1
            i32.or
            i32.store offset=4
            br 1 (;@3;)
          end
          local.get 8
          local.get 3
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 8
          local.get 3
          i32.add
          local.tee 7
          local.get 4
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 7
          local.get 4
          i32.add
          local.get 4
          i32.store
          block  ;; label = @4
            local.get 4
            i32.const 255
            i32.gt_u
            br_if 0 (;@4;)
            local.get 4
            i32.const -8
            i32.and
            i32.const 70240
            i32.add
            local.set 0
            block  ;; label = @5
              block  ;; label = @6
                i32.const 0
                i32.load offset=70200
                local.tee 3
                i32.const 1
                local.get 4
                i32.const 3
                i32.shr_u
                i32.shl
                local.tee 4
                i32.and
                br_if 0 (;@6;)
                i32.const 0
                local.get 3
                local.get 4
                i32.or
                i32.store offset=70200
                local.get 0
                local.set 4
                br 1 (;@5;)
              end
              local.get 0
              i32.load offset=8
              local.set 4
            end
            local.get 0
            local.get 7
            i32.store offset=8
            local.get 4
            local.get 7
            i32.store offset=12
            local.get 7
            local.get 0
            i32.store offset=12
            local.get 7
            local.get 4
            i32.store offset=8
            br 1 (;@3;)
          end
          i32.const 31
          local.set 0
          block  ;; label = @4
            local.get 4
            i32.const 16777215
            i32.gt_u
            br_if 0 (;@4;)
            local.get 4
            i32.const 38
            local.get 4
            i32.const 8
            i32.shr_u
            i32.clz
            local.tee 0
            i32.sub
            i32.shr_u
            i32.const 1
            i32.and
            local.get 0
            i32.const 1
            i32.shl
            i32.sub
            i32.const 62
            i32.add
            local.set 0
          end
          local.get 7
          local.get 0
          i32.store offset=28
          local.get 7
          i64.const 0
          i64.store offset=16 align=4
          local.get 0
          i32.const 2
          i32.shl
          i32.const 70504
          i32.add
          local.set 3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 10
                i32.const 1
                local.get 0
                i32.shl
                local.tee 5
                i32.and
                br_if 0 (;@6;)
                i32.const 0
                local.get 10
                local.get 5
                i32.or
                i32.store offset=70204
                local.get 3
                local.get 7
                i32.store
                local.get 7
                local.get 3
                i32.store offset=24
                br 1 (;@5;)
              end
              local.get 4
              i32.const 0
              i32.const 25
              local.get 0
              i32.const 1
              i32.shr_u
              i32.sub
              local.get 0
              i32.const 31
              i32.eq
              select
              i32.shl
              local.set 0
              local.get 3
              i32.load
              local.set 5
              loop  ;; label = @6
                local.get 5
                local.tee 3
                i32.load offset=4
                i32.const -8
                i32.and
                local.get 4
                i32.eq
                br_if 2 (;@4;)
                local.get 0
                i32.const 29
                i32.shr_u
                local.set 5
                local.get 0
                i32.const 1
                i32.shl
                local.set 0
                local.get 3
                local.get 5
                i32.const 4
                i32.and
                i32.add
                local.tee 2
                i32.load offset=16
                local.tee 5
                br_if 0 (;@6;)
              end
              local.get 2
              i32.const 16
              i32.add
              local.get 7
              i32.store
              local.get 7
              local.get 3
              i32.store offset=24
            end
            local.get 7
            local.get 7
            i32.store offset=12
            local.get 7
            local.get 7
            i32.store offset=8
            br 1 (;@3;)
          end
          local.get 3
          i32.load offset=8
          local.tee 0
          local.get 7
          i32.store offset=12
          local.get 3
          local.get 7
          i32.store offset=8
          local.get 7
          i32.const 0
          i32.store offset=24
          local.get 7
          local.get 3
          i32.store offset=12
          local.get 7
          local.get 0
          i32.store offset=8
        end
        local.get 8
        i32.const 8
        i32.add
        local.set 0
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 10
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            local.get 7
            local.get 7
            i32.load offset=28
            local.tee 8
            i32.const 2
            i32.shl
            i32.const 70504
            i32.add
            local.tee 5
            i32.load
            i32.ne
            br_if 0 (;@4;)
            local.get 5
            local.get 0
            i32.store
            local.get 0
            br_if 1 (;@3;)
            i32.const 0
            local.get 9
            i32.const -2
            local.get 8
            i32.rotl
            i32.and
            i32.store offset=70204
            br 2 (;@2;)
          end
          block  ;; label = @4
            block  ;; label = @5
              local.get 10
              i32.load offset=16
              local.get 7
              i32.ne
              br_if 0 (;@5;)
              local.get 10
              local.get 0
              i32.store offset=16
              br 1 (;@4;)
            end
            local.get 10
            local.get 0
            i32.store offset=20
          end
          local.get 0
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 0
        local.get 10
        i32.store offset=24
        block  ;; label = @3
          local.get 7
          i32.load offset=16
          local.tee 5
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          local.get 5
          i32.store offset=16
          local.get 5
          local.get 0
          i32.store offset=24
        end
        local.get 7
        i32.load offset=20
        local.tee 5
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        local.get 5
        i32.store offset=20
        local.get 5
        local.get 0
        i32.store offset=24
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          i32.const 15
          i32.gt_u
          br_if 0 (;@3;)
          local.get 7
          local.get 4
          local.get 3
          i32.add
          local.tee 0
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 7
          local.get 0
          i32.add
          local.tee 0
          local.get 0
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          br 1 (;@2;)
        end
        local.get 7
        local.get 3
        i32.const 3
        i32.or
        i32.store offset=4
        local.get 7
        local.get 3
        i32.add
        local.tee 3
        local.get 4
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 3
        local.get 4
        i32.add
        local.get 4
        i32.store
        block  ;; label = @3
          local.get 6
          i32.eqz
          br_if 0 (;@3;)
          local.get 6
          i32.const -8
          i32.and
          i32.const 70240
          i32.add
          local.set 5
          i32.const 0
          i32.load offset=70220
          local.set 0
          block  ;; label = @4
            block  ;; label = @5
              i32.const 1
              local.get 6
              i32.const 3
              i32.shr_u
              i32.shl
              local.tee 8
              local.get 2
              i32.and
              br_if 0 (;@5;)
              i32.const 0
              local.get 8
              local.get 2
              i32.or
              i32.store offset=70200
              local.get 5
              local.set 8
              br 1 (;@4;)
            end
            local.get 5
            i32.load offset=8
            local.set 8
          end
          local.get 5
          local.get 0
          i32.store offset=8
          local.get 8
          local.get 0
          i32.store offset=12
          local.get 0
          local.get 5
          i32.store offset=12
          local.get 0
          local.get 8
          i32.store offset=8
        end
        i32.const 0
        local.get 3
        i32.store offset=70220
        i32.const 0
        local.get 4
        i32.store offset=70208
      end
      local.get 7
      i32.const 8
      i32.add
      local.set 0
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $prepend_alloc (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.const -8
    local.get 0
    i32.sub
    i32.const 7
    i32.and
    i32.add
    local.tee 3
    local.get 2
    i32.const 3
    i32.or
    i32.store offset=4
    local.get 1
    i32.const -8
    local.get 1
    i32.sub
    i32.const 7
    i32.and
    i32.add
    local.tee 4
    local.get 3
    local.get 2
    i32.add
    local.tee 5
    i32.sub
    local.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        i32.const 0
        i32.load offset=70224
        i32.ne
        br_if 0 (;@2;)
        i32.const 0
        local.get 5
        i32.store offset=70224
        i32.const 0
        i32.const 0
        i32.load offset=70212
        local.get 0
        i32.add
        local.tee 2
        i32.store offset=70212
        local.get 5
        local.get 2
        i32.const 1
        i32.or
        i32.store offset=4
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 4
        i32.const 0
        i32.load offset=70220
        i32.ne
        br_if 0 (;@2;)
        i32.const 0
        local.get 5
        i32.store offset=70220
        i32.const 0
        i32.const 0
        i32.load offset=70208
        local.get 0
        i32.add
        local.tee 2
        i32.store offset=70208
        local.get 5
        local.get 2
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 5
        local.get 2
        i32.add
        local.get 2
        i32.store
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 4
        i32.load offset=4
        local.tee 1
        i32.const 3
        i32.and
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        local.get 1
        i32.const -8
        i32.and
        local.set 6
        local.get 4
        i32.load offset=12
        local.set 2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const 255
            i32.gt_u
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 2
              local.get 4
              i32.load offset=8
              local.tee 7
              i32.ne
              br_if 0 (;@5;)
              i32.const 0
              i32.const 0
              i32.load offset=70200
              i32.const -2
              local.get 1
              i32.const 3
              i32.shr_u
              i32.rotl
              i32.and
              i32.store offset=70200
              br 2 (;@3;)
            end
            local.get 7
            local.get 2
            i32.store offset=12
            local.get 2
            local.get 7
            i32.store offset=8
            br 1 (;@3;)
          end
          local.get 4
          i32.load offset=24
          local.set 8
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              local.get 4
              i32.eq
              br_if 0 (;@5;)
              local.get 4
              i32.load offset=8
              local.tee 1
              local.get 2
              i32.store offset=12
              local.get 2
              local.get 1
              i32.store offset=8
              br 1 (;@4;)
            end
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 4
                  i32.load offset=20
                  local.tee 1
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 4
                  i32.const 20
                  i32.add
                  local.set 7
                  br 1 (;@6;)
                end
                local.get 4
                i32.load offset=16
                local.tee 1
                i32.eqz
                br_if 1 (;@5;)
                local.get 4
                i32.const 16
                i32.add
                local.set 7
              end
              loop  ;; label = @6
                local.get 7
                local.set 9
                local.get 1
                local.tee 2
                i32.const 20
                i32.add
                local.set 7
                local.get 2
                i32.load offset=20
                local.tee 1
                br_if 0 (;@6;)
                local.get 2
                i32.const 16
                i32.add
                local.set 7
                local.get 2
                i32.load offset=16
                local.tee 1
                br_if 0 (;@6;)
              end
              local.get 9
              i32.const 0
              i32.store
              br 1 (;@4;)
            end
            i32.const 0
            local.set 2
          end
          local.get 8
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 4
              local.get 4
              i32.load offset=28
              local.tee 7
              i32.const 2
              i32.shl
              i32.const 70504
              i32.add
              local.tee 1
              i32.load
              i32.ne
              br_if 0 (;@5;)
              local.get 1
              local.get 2
              i32.store
              local.get 2
              br_if 1 (;@4;)
              i32.const 0
              i32.const 0
              i32.load offset=70204
              i32.const -2
              local.get 7
              i32.rotl
              i32.and
              i32.store offset=70204
              br 2 (;@3;)
            end
            block  ;; label = @5
              block  ;; label = @6
                local.get 8
                i32.load offset=16
                local.get 4
                i32.ne
                br_if 0 (;@6;)
                local.get 8
                local.get 2
                i32.store offset=16
                br 1 (;@5;)
              end
              local.get 8
              local.get 2
              i32.store offset=20
            end
            local.get 2
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 2
          local.get 8
          i32.store offset=24
          block  ;; label = @4
            local.get 4
            i32.load offset=16
            local.tee 1
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            local.get 1
            i32.store offset=16
            local.get 1
            local.get 2
            i32.store offset=24
          end
          local.get 4
          i32.load offset=20
          local.tee 1
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          local.get 1
          i32.store offset=20
          local.get 1
          local.get 2
          i32.store offset=24
        end
        local.get 6
        local.get 0
        i32.add
        local.set 0
        local.get 4
        local.get 6
        i32.add
        local.tee 4
        i32.load offset=4
        local.set 1
      end
      local.get 4
      local.get 1
      i32.const -2
      i32.and
      i32.store offset=4
      local.get 5
      local.get 0
      i32.const 1
      i32.or
      i32.store offset=4
      local.get 5
      local.get 0
      i32.add
      local.get 0
      i32.store
      block  ;; label = @2
        local.get 0
        i32.const 255
        i32.gt_u
        br_if 0 (;@2;)
        local.get 0
        i32.const -8
        i32.and
        i32.const 70240
        i32.add
        local.set 2
        block  ;; label = @3
          block  ;; label = @4
            i32.const 0
            i32.load offset=70200
            local.tee 1
            i32.const 1
            local.get 0
            i32.const 3
            i32.shr_u
            i32.shl
            local.tee 0
            i32.and
            br_if 0 (;@4;)
            i32.const 0
            local.get 1
            local.get 0
            i32.or
            i32.store offset=70200
            local.get 2
            local.set 0
            br 1 (;@3;)
          end
          local.get 2
          i32.load offset=8
          local.set 0
        end
        local.get 2
        local.get 5
        i32.store offset=8
        local.get 0
        local.get 5
        i32.store offset=12
        local.get 5
        local.get 2
        i32.store offset=12
        local.get 5
        local.get 0
        i32.store offset=8
        br 1 (;@1;)
      end
      i32.const 31
      local.set 2
      block  ;; label = @2
        local.get 0
        i32.const 16777215
        i32.gt_u
        br_if 0 (;@2;)
        local.get 0
        i32.const 38
        local.get 0
        i32.const 8
        i32.shr_u
        i32.clz
        local.tee 2
        i32.sub
        i32.shr_u
        i32.const 1
        i32.and
        local.get 2
        i32.const 1
        i32.shl
        i32.sub
        i32.const 62
        i32.add
        local.set 2
      end
      local.get 5
      local.get 2
      i32.store offset=28
      local.get 5
      i64.const 0
      i64.store offset=16 align=4
      local.get 2
      i32.const 2
      i32.shl
      i32.const 70504
      i32.add
      local.set 1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            i32.const 0
            i32.load offset=70204
            local.tee 7
            i32.const 1
            local.get 2
            i32.shl
            local.tee 4
            i32.and
            br_if 0 (;@4;)
            i32.const 0
            local.get 7
            local.get 4
            i32.or
            i32.store offset=70204
            local.get 1
            local.get 5
            i32.store
            local.get 5
            local.get 1
            i32.store offset=24
            br 1 (;@3;)
          end
          local.get 0
          i32.const 0
          i32.const 25
          local.get 2
          i32.const 1
          i32.shr_u
          i32.sub
          local.get 2
          i32.const 31
          i32.eq
          select
          i32.shl
          local.set 2
          local.get 1
          i32.load
          local.set 7
          loop  ;; label = @4
            local.get 7
            local.tee 1
            i32.load offset=4
            i32.const -8
            i32.and
            local.get 0
            i32.eq
            br_if 2 (;@2;)
            local.get 2
            i32.const 29
            i32.shr_u
            local.set 7
            local.get 2
            i32.const 1
            i32.shl
            local.set 2
            local.get 1
            local.get 7
            i32.const 4
            i32.and
            i32.add
            local.tee 4
            i32.load offset=16
            local.tee 7
            br_if 0 (;@4;)
          end
          local.get 4
          i32.const 16
          i32.add
          local.get 5
          i32.store
          local.get 5
          local.get 1
          i32.store offset=24
        end
        local.get 5
        local.get 5
        i32.store offset=12
        local.get 5
        local.get 5
        i32.store offset=8
        br 1 (;@1;)
      end
      local.get 1
      i32.load offset=8
      local.tee 2
      local.get 5
      i32.store offset=12
      local.get 1
      local.get 5
      i32.store offset=8
      local.get 5
      i32.const 0
      i32.store offset=24
      local.get 5
      local.get 1
      i32.store offset=12
      local.get 5
      local.get 2
      i32.store offset=8
    end
    local.get 3
    i32.const 8
    i32.add)
  (func $emscripten_builtin_free (type 5) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const -8
      i32.add
      local.tee 1
      local.get 0
      i32.const -4
      i32.add
      i32.load
      local.tee 2
      i32.const -8
      i32.and
      local.tee 0
      i32.add
      local.set 3
      block  ;; label = @2
        local.get 2
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 2
        i32.const 2
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        local.get 1
        i32.load
        local.tee 4
        i32.sub
        local.tee 1
        i32.const 0
        i32.load offset=70216
        i32.lt_u
        br_if 1 (;@1;)
        local.get 4
        local.get 0
        i32.add
        local.set 0
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                i32.const 0
                i32.load offset=70220
                i32.eq
                br_if 0 (;@6;)
                local.get 1
                i32.load offset=12
                local.set 2
                block  ;; label = @7
                  local.get 4
                  i32.const 255
                  i32.gt_u
                  br_if 0 (;@7;)
                  local.get 2
                  local.get 1
                  i32.load offset=8
                  local.tee 5
                  i32.ne
                  br_if 2 (;@5;)
                  i32.const 0
                  i32.const 0
                  i32.load offset=70200
                  i32.const -2
                  local.get 4
                  i32.const 3
                  i32.shr_u
                  i32.rotl
                  i32.and
                  i32.store offset=70200
                  br 5 (;@2;)
                end
                local.get 1
                i32.load offset=24
                local.set 6
                block  ;; label = @7
                  local.get 2
                  local.get 1
                  i32.eq
                  br_if 0 (;@7;)
                  local.get 1
                  i32.load offset=8
                  local.tee 4
                  local.get 2
                  i32.store offset=12
                  local.get 2
                  local.get 4
                  i32.store offset=8
                  br 4 (;@3;)
                end
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 1
                    i32.load offset=20
                    local.tee 4
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 1
                    i32.const 20
                    i32.add
                    local.set 5
                    br 1 (;@7;)
                  end
                  local.get 1
                  i32.load offset=16
                  local.tee 4
                  i32.eqz
                  br_if 3 (;@4;)
                  local.get 1
                  i32.const 16
                  i32.add
                  local.set 5
                end
                loop  ;; label = @7
                  local.get 5
                  local.set 7
                  local.get 4
                  local.tee 2
                  i32.const 20
                  i32.add
                  local.set 5
                  local.get 2
                  i32.load offset=20
                  local.tee 4
                  br_if 0 (;@7;)
                  local.get 2
                  i32.const 16
                  i32.add
                  local.set 5
                  local.get 2
                  i32.load offset=16
                  local.tee 4
                  br_if 0 (;@7;)
                end
                local.get 7
                i32.const 0
                i32.store
                br 3 (;@3;)
              end
              local.get 3
              i32.load offset=4
              local.tee 2
              i32.const 3
              i32.and
              i32.const 3
              i32.ne
              br_if 3 (;@2;)
              i32.const 0
              local.get 0
              i32.store offset=70208
              local.get 3
              local.get 2
              i32.const -2
              i32.and
              i32.store offset=4
              local.get 1
              local.get 0
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 3
              local.get 0
              i32.store
              return
            end
            local.get 5
            local.get 2
            i32.store offset=12
            local.get 2
            local.get 5
            i32.store offset=8
            br 2 (;@2;)
          end
          i32.const 0
          local.set 2
        end
        local.get 6
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            local.get 1
            i32.load offset=28
            local.tee 5
            i32.const 2
            i32.shl
            i32.const 70504
            i32.add
            local.tee 4
            i32.load
            i32.ne
            br_if 0 (;@4;)
            local.get 4
            local.get 2
            i32.store
            local.get 2
            br_if 1 (;@3;)
            i32.const 0
            i32.const 0
            i32.load offset=70204
            i32.const -2
            local.get 5
            i32.rotl
            i32.and
            i32.store offset=70204
            br 2 (;@2;)
          end
          block  ;; label = @4
            block  ;; label = @5
              local.get 6
              i32.load offset=16
              local.get 1
              i32.ne
              br_if 0 (;@5;)
              local.get 6
              local.get 2
              i32.store offset=16
              br 1 (;@4;)
            end
            local.get 6
            local.get 2
            i32.store offset=20
          end
          local.get 2
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 2
        local.get 6
        i32.store offset=24
        block  ;; label = @3
          local.get 1
          i32.load offset=16
          local.tee 4
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          local.get 4
          i32.store offset=16
          local.get 4
          local.get 2
          i32.store offset=24
        end
        local.get 1
        i32.load offset=20
        local.tee 4
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.get 4
        i32.store offset=20
        local.get 4
        local.get 2
        i32.store offset=24
      end
      local.get 1
      local.get 3
      i32.ge_u
      br_if 0 (;@1;)
      local.get 3
      i32.load offset=4
      local.tee 4
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 4
                i32.const 2
                i32.and
                br_if 0 (;@6;)
                block  ;; label = @7
                  local.get 3
                  i32.const 0
                  i32.load offset=70224
                  i32.ne
                  br_if 0 (;@7;)
                  i32.const 0
                  local.get 1
                  i32.store offset=70224
                  i32.const 0
                  i32.const 0
                  i32.load offset=70212
                  local.get 0
                  i32.add
                  local.tee 0
                  i32.store offset=70212
                  local.get 1
                  local.get 0
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 1
                  i32.const 0
                  i32.load offset=70220
                  i32.ne
                  br_if 6 (;@1;)
                  i32.const 0
                  i32.const 0
                  i32.store offset=70208
                  i32.const 0
                  i32.const 0
                  i32.store offset=70220
                  return
                end
                block  ;; label = @7
                  local.get 3
                  i32.const 0
                  i32.load offset=70220
                  i32.ne
                  br_if 0 (;@7;)
                  i32.const 0
                  local.get 1
                  i32.store offset=70220
                  i32.const 0
                  i32.const 0
                  i32.load offset=70208
                  local.get 0
                  i32.add
                  local.tee 0
                  i32.store offset=70208
                  local.get 1
                  local.get 0
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 1
                  local.get 0
                  i32.add
                  local.get 0
                  i32.store
                  return
                end
                local.get 4
                i32.const -8
                i32.and
                local.get 0
                i32.add
                local.set 0
                local.get 3
                i32.load offset=12
                local.set 2
                block  ;; label = @7
                  local.get 4
                  i32.const 255
                  i32.gt_u
                  br_if 0 (;@7;)
                  block  ;; label = @8
                    local.get 2
                    local.get 3
                    i32.load offset=8
                    local.tee 5
                    i32.ne
                    br_if 0 (;@8;)
                    i32.const 0
                    i32.const 0
                    i32.load offset=70200
                    i32.const -2
                    local.get 4
                    i32.const 3
                    i32.shr_u
                    i32.rotl
                    i32.and
                    i32.store offset=70200
                    br 5 (;@3;)
                  end
                  local.get 5
                  local.get 2
                  i32.store offset=12
                  local.get 2
                  local.get 5
                  i32.store offset=8
                  br 4 (;@3;)
                end
                local.get 3
                i32.load offset=24
                local.set 6
                block  ;; label = @7
                  local.get 2
                  local.get 3
                  i32.eq
                  br_if 0 (;@7;)
                  local.get 3
                  i32.load offset=8
                  local.tee 4
                  local.get 2
                  i32.store offset=12
                  local.get 2
                  local.get 4
                  i32.store offset=8
                  br 3 (;@4;)
                end
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 3
                    i32.load offset=20
                    local.tee 4
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 3
                    i32.const 20
                    i32.add
                    local.set 5
                    br 1 (;@7;)
                  end
                  local.get 3
                  i32.load offset=16
                  local.tee 4
                  i32.eqz
                  br_if 2 (;@5;)
                  local.get 3
                  i32.const 16
                  i32.add
                  local.set 5
                end
                loop  ;; label = @7
                  local.get 5
                  local.set 7
                  local.get 4
                  local.tee 2
                  i32.const 20
                  i32.add
                  local.set 5
                  local.get 2
                  i32.load offset=20
                  local.tee 4
                  br_if 0 (;@7;)
                  local.get 2
                  i32.const 16
                  i32.add
                  local.set 5
                  local.get 2
                  i32.load offset=16
                  local.tee 4
                  br_if 0 (;@7;)
                end
                local.get 7
                i32.const 0
                i32.store
                br 2 (;@4;)
              end
              local.get 3
              local.get 4
              i32.const -2
              i32.and
              i32.store offset=4
              local.get 1
              local.get 0
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 1
              local.get 0
              i32.add
              local.get 0
              i32.store
              br 3 (;@2;)
            end
            i32.const 0
            local.set 2
          end
          local.get 6
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 3
              local.get 3
              i32.load offset=28
              local.tee 5
              i32.const 2
              i32.shl
              i32.const 70504
              i32.add
              local.tee 4
              i32.load
              i32.ne
              br_if 0 (;@5;)
              local.get 4
              local.get 2
              i32.store
              local.get 2
              br_if 1 (;@4;)
              i32.const 0
              i32.const 0
              i32.load offset=70204
              i32.const -2
              local.get 5
              i32.rotl
              i32.and
              i32.store offset=70204
              br 2 (;@3;)
            end
            block  ;; label = @5
              block  ;; label = @6
                local.get 6
                i32.load offset=16
                local.get 3
                i32.ne
                br_if 0 (;@6;)
                local.get 6
                local.get 2
                i32.store offset=16
                br 1 (;@5;)
              end
              local.get 6
              local.get 2
              i32.store offset=20
            end
            local.get 2
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 2
          local.get 6
          i32.store offset=24
          block  ;; label = @4
            local.get 3
            i32.load offset=16
            local.tee 4
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            local.get 4
            i32.store offset=16
            local.get 4
            local.get 2
            i32.store offset=24
          end
          local.get 3
          i32.load offset=20
          local.tee 4
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          local.get 4
          i32.store offset=20
          local.get 4
          local.get 2
          i32.store offset=24
        end
        local.get 1
        local.get 0
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 1
        local.get 0
        i32.add
        local.get 0
        i32.store
        local.get 1
        i32.const 0
        i32.load offset=70220
        i32.ne
        br_if 0 (;@2;)
        i32.const 0
        local.get 0
        i32.store offset=70208
        return
      end
      block  ;; label = @2
        local.get 0
        i32.const 255
        i32.gt_u
        br_if 0 (;@2;)
        local.get 0
        i32.const -8
        i32.and
        i32.const 70240
        i32.add
        local.set 2
        block  ;; label = @3
          block  ;; label = @4
            i32.const 0
            i32.load offset=70200
            local.tee 4
            i32.const 1
            local.get 0
            i32.const 3
            i32.shr_u
            i32.shl
            local.tee 0
            i32.and
            br_if 0 (;@4;)
            i32.const 0
            local.get 4
            local.get 0
            i32.or
            i32.store offset=70200
            local.get 2
            local.set 0
            br 1 (;@3;)
          end
          local.get 2
          i32.load offset=8
          local.set 0
        end
        local.get 2
        local.get 1
        i32.store offset=8
        local.get 0
        local.get 1
        i32.store offset=12
        local.get 1
        local.get 2
        i32.store offset=12
        local.get 1
        local.get 0
        i32.store offset=8
        return
      end
      i32.const 31
      local.set 2
      block  ;; label = @2
        local.get 0
        i32.const 16777215
        i32.gt_u
        br_if 0 (;@2;)
        local.get 0
        i32.const 38
        local.get 0
        i32.const 8
        i32.shr_u
        i32.clz
        local.tee 2
        i32.sub
        i32.shr_u
        i32.const 1
        i32.and
        local.get 2
        i32.const 1
        i32.shl
        i32.sub
        i32.const 62
        i32.add
        local.set 2
      end
      local.get 1
      local.get 2
      i32.store offset=28
      local.get 1
      i64.const 0
      i64.store offset=16 align=4
      local.get 2
      i32.const 2
      i32.shl
      i32.const 70504
      i32.add
      local.set 5
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              i32.const 0
              i32.load offset=70204
              local.tee 4
              i32.const 1
              local.get 2
              i32.shl
              local.tee 3
              i32.and
              br_if 0 (;@5;)
              i32.const 0
              local.get 4
              local.get 3
              i32.or
              i32.store offset=70204
              local.get 5
              local.get 1
              i32.store
              i32.const 8
              local.set 0
              i32.const 24
              local.set 2
              br 1 (;@4;)
            end
            local.get 0
            i32.const 0
            i32.const 25
            local.get 2
            i32.const 1
            i32.shr_u
            i32.sub
            local.get 2
            i32.const 31
            i32.eq
            select
            i32.shl
            local.set 2
            local.get 5
            i32.load
            local.set 5
            loop  ;; label = @5
              local.get 5
              local.tee 4
              i32.load offset=4
              i32.const -8
              i32.and
              local.get 0
              i32.eq
              br_if 2 (;@3;)
              local.get 2
              i32.const 29
              i32.shr_u
              local.set 5
              local.get 2
              i32.const 1
              i32.shl
              local.set 2
              local.get 4
              local.get 5
              i32.const 4
              i32.and
              i32.add
              local.tee 3
              i32.load offset=16
              local.tee 5
              br_if 0 (;@5;)
            end
            local.get 3
            i32.const 16
            i32.add
            local.get 1
            i32.store
            i32.const 8
            local.set 0
            i32.const 24
            local.set 2
            local.get 4
            local.set 5
          end
          local.get 1
          local.set 4
          local.get 1
          local.set 3
          br 1 (;@2;)
        end
        local.get 4
        i32.load offset=8
        local.tee 5
        local.get 1
        i32.store offset=12
        local.get 4
        local.get 1
        i32.store offset=8
        i32.const 0
        local.set 3
        i32.const 24
        local.set 0
        i32.const 8
        local.set 2
      end
      local.get 1
      local.get 2
      i32.add
      local.get 5
      i32.store
      local.get 1
      local.get 4
      i32.store offset=12
      local.get 1
      local.get 0
      i32.add
      local.get 3
      i32.store
      i32.const 0
      i32.const 0
      i32.load offset=70232
      i32.const -1
      i32.add
      local.tee 1
      i32.const -1
      local.get 1
      select
      i32.store offset=70232
    end)
  (func $__ashlti3 (type 20) (param i32 i64 i64 i32)
    (local i64)
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.const 64
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        local.get 3
        i32.const -64
        i32.add
        i64.extend_i32_u
        i64.shl
        local.set 2
        i64.const 0
        local.set 1
        br 1 (;@1;)
      end
      local.get 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.const 64
      local.get 3
      i32.sub
      i64.extend_i32_u
      i64.shr_u
      local.get 2
      local.get 3
      i64.extend_i32_u
      local.tee 4
      i64.shl
      i64.or
      local.set 2
      local.get 1
      local.get 4
      i64.shl
      local.set 1
    end
    local.get 0
    local.get 1
    i64.store
    local.get 0
    local.get 2
    i64.store offset=8)
  (func $__lshrti3 (type 20) (param i32 i64 i64 i32)
    (local i64)
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.const 64
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.get 3
        i32.const -64
        i32.add
        i64.extend_i32_u
        i64.shr_u
        local.set 1
        i64.const 0
        local.set 2
        br 1 (;@1;)
      end
      local.get 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.const 64
      local.get 3
      i32.sub
      i64.extend_i32_u
      i64.shl
      local.get 1
      local.get 3
      i64.extend_i32_u
      local.tee 4
      i64.shr_u
      i64.or
      local.set 1
      local.get 2
      local.get 4
      i64.shr_u
      local.set 2
    end
    local.get 0
    local.get 1
    i64.store
    local.get 0
    local.get 2
    i64.store offset=8)
  (func $__trunctfdf2 (type 21) (param i64 i64) (result f64)
    (local i32 i64 i64 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 1
    i64.const 281474976710655
    i64.and
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i64.const 48
        i64.shr_u
        i64.const 32767
        i64.and
        local.tee 4
        i32.wrap_i64
        local.tee 5
        i32.const -15361
        i32.add
        i32.const 2045
        i32.gt_u
        br_if 0 (;@2;)
        local.get 0
        i64.const 60
        i64.shr_u
        local.get 3
        i64.const 4
        i64.shl
        i64.or
        local.set 3
        local.get 5
        i32.const -15360
        i32.add
        i64.extend_i32_u
        local.set 4
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i64.const 1152921504606846975
            i64.and
            local.tee 0
            i64.const 576460752303423489
            i64.lt_u
            br_if 0 (;@4;)
            local.get 3
            i64.const 1
            i64.add
            local.set 3
            br 1 (;@3;)
          end
          local.get 0
          i64.const 576460752303423488
          i64.ne
          br_if 0 (;@3;)
          local.get 3
          i64.const 1
          i64.and
          local.get 3
          i64.add
          local.set 3
        end
        i64.const 0
        local.get 3
        local.get 3
        i64.const 4503599627370495
        i64.gt_u
        local.tee 5
        select
        local.set 0
        local.get 5
        i64.extend_i32_u
        local.get 4
        i64.add
        local.set 3
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 0
        local.get 3
        i64.or
        i64.eqz
        br_if 0 (;@2;)
        local.get 4
        i64.const 32767
        i64.ne
        br_if 0 (;@2;)
        local.get 0
        i64.const 60
        i64.shr_u
        local.get 3
        i64.const 4
        i64.shl
        i64.or
        i64.const 2251799813685248
        i64.or
        local.set 0
        i64.const 2047
        local.set 3
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 5
        i32.const 17406
        i32.le_u
        br_if 0 (;@2;)
        i64.const 2047
        local.set 3
        i64.const 0
        local.set 0
        br 1 (;@1;)
      end
      block  ;; label = @2
        i32.const 15360
        i32.const 15361
        local.get 4
        i64.eqz
        local.tee 6
        select
        local.tee 7
        local.get 5
        i32.sub
        local.tee 8
        i32.const 112
        i32.le_s
        br_if 0 (;@2;)
        i64.const 0
        local.set 0
        i64.const 0
        local.set 3
        br 1 (;@1;)
      end
      local.get 2
      i32.const 16
      i32.add
      local.get 0
      local.get 3
      local.get 3
      i64.const 281474976710656
      i64.or
      local.get 6
      select
      local.tee 3
      i32.const 128
      local.get 8
      i32.sub
      call $__ashlti3
      local.get 2
      local.get 0
      local.get 3
      local.get 8
      call $__lshrti3
      local.get 2
      i64.load
      local.tee 3
      i64.const 60
      i64.shr_u
      local.get 2
      i32.const 8
      i32.add
      i64.load
      i64.const 4
      i64.shl
      i64.or
      local.set 0
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i64.const 1152921504606846975
          i64.and
          local.get 7
          local.get 5
          i32.ne
          local.get 2
          i64.load offset=16
          local.get 2
          i32.const 16
          i32.add
          i32.const 8
          i32.add
          i64.load
          i64.or
          i64.const 0
          i64.ne
          i32.and
          i64.extend_i32_u
          i64.or
          local.tee 3
          i64.const 576460752303423489
          i64.lt_u
          br_if 0 (;@3;)
          local.get 0
          i64.const 1
          i64.add
          local.set 0
          br 1 (;@2;)
        end
        local.get 3
        i64.const 576460752303423488
        i64.ne
        br_if 0 (;@2;)
        local.get 0
        i64.const 1
        i64.and
        local.get 0
        i64.add
        local.set 0
      end
      local.get 0
      i64.const 4503599627370496
      i64.xor
      local.get 0
      local.get 0
      i64.const 4503599627370495
      i64.gt_u
      local.tee 5
      select
      local.set 0
      local.get 5
      i64.extend_i32_u
      local.set 3
    end
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 3
    i64.const 52
    i64.shl
    local.get 1
    i64.const -9223372036854775808
    i64.and
    i64.or
    local.get 0
    i64.or
    f64.reinterpret_i64)
  (table (;0;) 9 9 funcref)
  (memory (;0;) 258 258)
  (global $__stack_pointer (mut i32) (i32.const 65536))
  (export "memory" (memory 0))
  (export "__indirect_function_table" (table 0))
  (export "_start" (func $_start))
  (elem (;0;) (i32.const 1) func $__wasm_call_ctors $__stdio_close $__stdio_write $__stdio_seek $__emscripten_stdout_close $__emscripten_stdout_seek $fmt_fp $pop_arg_long_double)
  (data $.rodata (i32.const 65536) "-+   0X0x\00-0X+0X 0X-0x+0x 0x\00nan\00inf\00malloc failed\00NAN\00INF\00This is a string in heap memory.\00(null)\00Starting\0a\00Local string address: \0a\00Global string address: \0a\00Local int variable address: \0a\00Local float variable address: \0a\00Heap variable address: \0a\00Global variable address: \0a\00Stack variable address: \0a\00Static variable address: \0a\00Heap variable value: \0a\00Stack variable value:  \0a\00Local StringNo error information\00Illegal byte sequence\00Domain error\00Result not representable\00Not a tty\00Permission denied\00Operation not permitted\00No such file or directory\00No such process\00File exists\00Value too large for data type\00No space left on device\00Out of memory\00Resource busy\00Interrupted system call\00Resource temporarily unavailable\00Invalid seek\00Cross-device link\00Read-only file system\00Directory not empty\00Connection reset by peer\00Operation timed out\00Connection refused\00Host is down\00Host is unreachable\00Address in use\00Broken pipe\00I/O error\00No such device or address\00Block device required\00No such device\00Not a directory\00Is a directory\00Text file busy\00Exec format error\00Invalid argument\00Argument list too long\00Symbolic link loop\00Filename too long\00Too many open files in system\00No file descriptors available\00Bad file descriptor\00No child process\00Bad address\00File too large\00Too many links\00No locks available\00Resource deadlock would occur\00State not recoverable\00Previous owner died\00Operation canceled\00Function not implemented\00No message of desired type\00Identifier removed\00Device not a stream\00No data available\00Device timeout\00Out of streams resources\00Link has been severed\00Protocol error\00Bad message\00File descriptor in bad state\00Not a socket\00Destination address required\00Message too large\00Protocol wrong type for socket\00Protocol not available\00Protocol not supported\00Socket type not supported\00Not supported\00Protocol family not supported\00Address family not supported by protocol\00Address not available\00Network is down\00Network unreachable\00Connection reset by network\00Connection aborted\00No buffer space available\00Socket is connected\00Socket not connected\00Cannot send after socket shutdown\00Operation already in progress\00Operation in progress\00Stale file handle\00Remote I/O error\00Quota exceeded\00No medium found\00Wrong medium type\00Multihop attempted\00Required key not available\00Key has expired\00Key has been revoked\00Key was rejected by service\00\00\00\00\00\00\00\00\a5\02[\00\f0\01\b5\05\8c\05%\01\83\06\1d\03\94\04\ff\00\c7\031\03\0b\06\bc\01\8f\01\7f\03\ca\04+\00\da\06\af\00B\03N\03\dc\01\0e\04\15\00\a1\06\0d\01\94\02\0b\028\06d\02\bc\02\ff\02]\03\e7\04\0b\07\cf\02\cb\05\ef\05\db\05\e1\02\1e\06E\02\85\00\82\02l\03o\04\f1\00\f3\03\18\05\d9\00\da\03L\06T\02{\01\9d\03\bd\04\00\00Q\00\15\02\bb\00\b3\03m\00\ff\01\85\04/\05\f9\048\00e\01F\01\9f\00\b7\06\a8\01s\02S\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00!\04\00\00\00\00\00\00\00\00/\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\005\04G\04V\04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\a0\04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00F\05`\05n\05a\06\00\00\cf\01\00\00\00\00\00\00\00\00\c9\06\e9\06\f9\06\1e\079\07I\07^\07\00\00\00\00\00\00\00\00\00\00\00\00\19\00\0b\00\19\19\19\00\00\00\00\05\00\00\00\00\00\00\09\00\00\00\00\0b\00\00\00\00\00\00\00\00\19\00\0a\0a\19\19\19\03\0a\07\00\01\00\09\0b\18\00\00\09\06\0b\00\00\0b\00\06\19\00\00\00\19\19\19\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0e\00\00\00\00\00\00\00\00\19\00\0b\0d\19\19\19\00\0d\00\00\02\00\09\0e\00\00\00\09\00\0e\00\00\0e\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0c\00\00\00\00\00\00\00\00\00\00\00\13\00\00\00\00\13\00\00\00\00\09\0c\00\00\00\00\00\0c\00\00\0c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\0f\00\00\00\04\0f\00\00\00\00\09\10\00\00\00\00\00\10\00\00\10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\12\00\00\00\00\00\00\00\00\00\00\00\11\00\00\00\00\11\00\00\00\00\09\12\00\00\00\00\00\12\00\00\12\00\00\1a\00\00\00\1a\1a\1a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1a\00\00\00\1a\1a\1a\00\00\00\00\00\00\09\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\17\00\00\00\00\17\00\00\00\00\09\14\00\00\00\00\00\14\00\00\14\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\16\00\00\00\00\00\00\00\00\00\00\00\15\00\00\00\00\15\00\00\00\00\09\16\00\00\00\00\00\16\00\00\16\00\000123456789ABCDEF")
  (data $.data (i32.const 68640) "\05\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\03\00\00\00\04\00\00\00$\0e\01\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00 \0c\01\00\00\00\00\00\05\00\00\00\00\00\00\00\00\00\00\00\05\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\03\00\00\00\06\00\00\008\0e\01\00\00\04\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\ff\ff\ff\ff\0a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\b8\0c\01\000\14\01\00"))
