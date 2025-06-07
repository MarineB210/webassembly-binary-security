#[allow(warnings)]
mod bindings;

use bindings::exports::exploit::legitimate::victim::{Guest};

struct Component;

use bindings::exploit::evil::malicious::malicious; // Import function from malicious component

impl Guest for Component {
    fn victim(){
        unsafe{
            let mut frame = "AAAAAAAA";
            let mut buffer : [u8; 8] = [0; 8];
            println!("Printing the buffer: {:?}", buffer);
            println!("Printing the frame: {}", frame);
            let vec = malicious(); // Call imported function
            buffer = vec;
            println!("Printing the after buffer: {:?}", buffer);
            println!("Printing the after frame: {}", frame);
        }
    }
}

bindings::export!(Component with_types_in bindings);