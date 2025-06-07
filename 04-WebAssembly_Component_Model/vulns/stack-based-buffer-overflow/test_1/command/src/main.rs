mod bindings;

use clap::Parser;

use bindings::exploit::legitimate::victim;

/// A CLI for executing both components using WebAssembly
#[derive(Parser)]
#[clap(name = "legitimate", version = env!("CARGO_PKG_VERSION"))]
struct Command;

impl Command {
    fn run(self) {
        victim::victim();
    }
}

fn main() {
    Command::parse().run();
}
