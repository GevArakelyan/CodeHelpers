### To add libs to your project.
- KDBindings
find_package(KDBindings CONFIG REQUIRED)
target_link_libraries(main PRIVATE KDAB::KDBindings)
