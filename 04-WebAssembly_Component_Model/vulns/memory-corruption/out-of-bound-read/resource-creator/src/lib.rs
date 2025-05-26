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

        *self.inner.borrow_mut() = data;

        let after = self.inner.borrow().clone();
        println!("AFTER: {:?}", after);
    }

    fn read(&self) -> Vec<u8> {
        let read = self.inner.borrow().clone();
        println!("READ: {:?}", read);
        return read;
    }
}

struct Component;

impl Guest for Component {
    type Buffer = MyBuffer;
}

bindings::export!(Component with_types_in bindings);
