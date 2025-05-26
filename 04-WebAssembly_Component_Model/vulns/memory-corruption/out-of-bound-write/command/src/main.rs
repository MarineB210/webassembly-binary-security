mod bindings;

use bindings::resources::creator::operate_buffer::modify_buffer;


struct Command;

impl Command {
    fn run(self) {
        modify_buffer();
    }
}

fn main() {
    Command.run();
}