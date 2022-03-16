### MSBuild internals

- To execute a task in an MSBuild project,
create an element with the name of the task
as a child of the `Target` element.
If a task accepts parameters, these are
passed as attributes of the element.
```
<Target Name="MakeBuildDirectory">
    <MakeDir Directories="$(BuildDir)" />
</Target>
```
MakeDir is a task that creates a directory.
Directories is a Property of the MakeDir task and it 
get's the value of BuildDir property.


### [List of MSBuild Tasks](https://docs.microsoft.com/en-us/visualstudio/msbuild/msbuild-task-reference?view=vs-2022)

### *[.vcxproj and .props file structure](https://docs.microsoft.com/en-us/cpp/build/reference/vcxproj-file-structure?view=msvc-170)


### [List of MSBuild C++ Tasks](https://docs.microsoft.com/en-us/visualstudio/msbuild/msbuild-tasks-specific-to-visual-cpp?view=vs-2022)

- Let's create Item type `Compile` with 2 files in one `Include` attribute. 
```
<ItemGroup>
<Compile Include = "file1.cs;file2.cs"/>
</ItemGroup>
```
The `Include` attribute is a path that is interpreted reletive to the project file's folder, $(MSBuildProjectPath), even if the item is in an imported file such as a .targets file.



