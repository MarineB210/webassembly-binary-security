const createModule = require('./main.js');

createModule().then((Module) => {
  Module.FS.mkdir('/working');
  Module.FS.mount(Module.FS.filesystems.NODEFS, { root: '.' }, '/working');
  Module.FS.chdir('/working');

  // Call main()
  Module.callMain([]);
});
