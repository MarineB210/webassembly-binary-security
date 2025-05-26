#[allow(warnings)]
mod bindings;

use bindings::exports::resources::caller::operate_buffer::Guest;
use bindings::resources::creator::create_resource::Buffer;

struct Component;

impl Guest for Component {
    fn check_buffer(){
        let buff = Buffer::new();
        buff.read();

        let handle = buff.handle(); // Does not release the handle, simply print its index.
        Self::modify_buffer(handle);

        buff.read();     // Comment this line to see a double-drop in action
        buff.write(&[4,4,4,4]);  // Comment this line to see a double-drop in action
    }

    fn modify_buffer(value: u32){
        let new_buff = unsafe {Buffer::from_handle(value)};
        new_buff.read();
        new_buff.write(&[1,2,3,4]);
        new_buff.take_handle(); // Comment this line to see a double-drop in action
    }
}


bindings::export!(Component with_types_in bindings);
