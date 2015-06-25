# hubot-multi-search
Hubot and Bash scripts to search local files on Linux Server and give users chatops access to data.

We share files that we run through a RIP (Raster Image Processor) through our network with our Linux server and we use this with hubot to check if files have been ripped and therefore can be imaged.

The usage is simple, just point it at the directories and have it use loops to check for the ripped filetype, in our case .prt files. (I may add an array with filetypes later, but currently I have no need for more than one file)

Input multiple filenames or numbers as arguments and it uses each separated by whitespace as a new argument. Will return up to 100 lines per argument passed into the loop.
