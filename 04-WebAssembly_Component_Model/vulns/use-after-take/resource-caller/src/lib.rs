#[allow(warnings)]
mod bindings;

use bindings::exports::resources::caller::operate_buffer::Guest;
use bindings::resources::creator::create_resource::Buffer;

struct Component;

impl Guest for Component {
    fn check_buffer(){
        let buff = Buffer::new();
        buff.read();

        let handle = buff.take_handle();
        Self::modify_buffer(handle);

        buff.read();    // read handle with id u32::MAX
        buff.write(&[4,4,4,4]); // write to handle with id u32::MAX
    }

    fn modify_buffer(value: u32){
        let new_buff = unsafe {Buffer::from_handle(value)};
        new_buff.read();
        new_buff.write(&[1,2,3,4]);
    }
}


bindings::export!(Component with_types_in bindings);
