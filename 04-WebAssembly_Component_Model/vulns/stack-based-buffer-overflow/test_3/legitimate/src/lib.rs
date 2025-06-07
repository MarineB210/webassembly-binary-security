#[allow(warnings)]
mod bindings;

use bindings::exports::exploit::legitimate::victim::{Guest};

struct Component;

use bindings::exploit::evil::malicious::malicious; // Import function from malicious component

impl Guest for Component {
    fn victim(){
        let a = "I'm a string";
        let mut b = [0;8];
        let c = "I'm another string";

        println!("Buffer address as usize = 0x{:x}", &b as *const _ as u64);

        println!("Printing the buffer: {:?}", b);
        println!("Printing the first string: {}", a);
        println!("Printing the second string: {}", c);

        malicious(&b as *const _ as u64); // cast reference to an integer

        println!("Printing the buffer: {:?}", b);
        println!("Printing the first string: {}", a);
        println!("Printing the second string: {}", c);
    }
}

bindings::export!(Component with_types_in bindings);
