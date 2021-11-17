# author: Tiffany Timbers
# date: 2020-01-15
# modified by: Jennifer Hoang
# date modified: 2021-11-16

"This script prints out docopt args.
Usage: demo.R <arg1> --arg2=<arg2> [<arg3>] [--arg4=<arg4>]
Options:
<arg1>             Takes any value (this is a required positional argument)
--arg2=<arg2>     Takes any value (this is a required option)
[<arg3>]          Takes any value (this is an optional positional argument)
[--arg4=<arg4>]   Takes any value (this is an optional option)
" -> doc

library(docopt)
opt <- docopt(doc)

main <- function(opt){
  print(opt)
  print(typeof(opt))
  print(opt$arg3)  
}

main(opt)