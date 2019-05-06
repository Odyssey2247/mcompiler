                                      _ _           
      /\/\   ___ ___  _ __ ___  _ __ (_) | ___ _ __ 
     /    \ / __/ _ \| '_ ` _ \| '_ \| | |/ _ \ '__|
    / /\/\ \ (_| (_) | | | | | | |_) | | |  __/ |
    \/    \/\___\___/|_| |_| |_| .__/|_|_|\___|_|
                               |_|                  
    https://github.com/Odyssey2247/mcompiler

# Simple plugin to compile code using micro text editor V 1.0.1

### NOTE

this plugin is made for Tmux based IDE (t-ide) https://github.com/Odyssey2247/t-ide
but can be using without t-ide with the correct settings

### INSTALL

in micro open command mode (ctrl+e) and:

	plugins install mcompiler

### MANUAL INSTALL

in terminal

    $ git clone https://github.com/Odyssey2247/mcompiler
    $ mv mcompiler ~/.config/micro/plugins

### USE

to RUN your code(ruby, python...) open command mode and:

	runc

to build/compile your code:
	
	build

to debug your code:
	
	debug

### KEYBINDINGS

to use a key instead of a command (like F5 to build) go to the directory:
	
	cd ~/.config/micro

and create the file "bindings.json" with the following content
	
        {
          "F5": "command:build",
          "F6": "command:runc"
        }

and save.
in micro simple, press F5 to build your code or F6 to run

### CONFIG

open file:

	~/.config/micro/plugins/mcompiler/mcompiler.lua

to config "runc" and "build" command to adjust your preferred language and 
build/compile/run options or add more commands
