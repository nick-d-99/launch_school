Locate the ruby documentation for methods File::path and File#path. How are they different?

File::path

path(path) → string

Returns the string representation of the path

File.path("/dev/null")          #=> "/dev/null"
File.path(Pathname.new("/tmp")) #=> "/tmp"


File#path

path → filename
to_path → filename

Returns the pathname used to create file as a string. Does not normalize the name.

File.new("testfile").path               #=> "testfile"
File.new("/tmp/../tmp/xxx", "w").path   #=> "/tmp/../tmp/xxx"
