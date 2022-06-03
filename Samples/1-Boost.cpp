#include <boost/filesystem.hpp>
using namespace boost;
using namespace boost::filesystem;


// Let's remove file extentions from the following path:
void remove_extension(const char* p) {
    path p1(p);
    if (exists(p1)) {
        if (is_regular_file(p1)) {
            std::cout << "path without extention" << p1.filename().replace_extension()
            << " " << file_size(p1);
        }
    }
    else {
        std::cout << "path does not exist" << p1;
    }
}
// find parent path of our exe file.

auto dir = path(argv[0]).parent_path();

// decomposition
for (auto& child : dir) {
    cout << child << endl;
}

// if invalid path is passed then API functions will throw an exception.
try {
path p("junkpath");
cout << file_size(p);
}catch(const boost::filesystem_error& e) {
    cout << e.what() << endl;
}
// usefull functions are status and type
void fun(path p) {
    auto s = status(p);
    auto t = s.type();

    auto ps = s.permissions();
    // now we can find out if we can write to a file.
    if ((ps & owner_write)!= owner_write) {
        cout << "cannot write to file" << endl;
    }
    else {
        cout << "can write to file" << endl;
    }
}