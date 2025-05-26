mod bindings;

use bindings::resources::caller::operate_buffer::check_buffer;


struct Command;

impl Command {
    fn run(self) {
        check_buffer();
    }
}

fn main() {
    Command.run();
}