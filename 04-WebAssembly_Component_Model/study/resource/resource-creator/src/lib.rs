#[allow(warnings)]
mod bindings;

use bindings::exports::resources::creator::create_resource::Guest;
use bindings::exports::resources::creator::create_resource::GuestBuffer;
use std::cell::RefCell;

pub struct MyBuffer {
    inner: RefCell<Vec<u8>>,
}

impl GuestBuffer for MyBuffer {
    fn new() -> Self {
        MyBuffer {
            inner: RefCell::new(Vec::new()),
        }
    }

    fn write(&self, data: Vec<u8>) {
        let before = self.inner.borrow().clone();
        println!("BEFORE: {:?}", before);

        println!("[A] Before write, buffer ptr: {:p}", before.as_ptr());

        *self.inner.borrow_mut() = data;

        let after = self.inner.borrow().clone();
        println!("AFTER: {:?}", after);

        println!("[A] After write, buffer ptr: {:p}", after.as_ptr());
    }

    fn read(&self) -> Vec<u8> {
        let read = self.inner.borrow().clone();
        println!("READ: {:?}", read);

        println!("[A] Read buffer ptr: {:p}", read.as_ptr());

        read
    }
}

struct Component;

impl Guest for Component {
    type Buffer = MyBuffer;
}

bindings::export!(Component with_types_in bindings);
