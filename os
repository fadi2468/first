import os

# --- OS Module Examples ---

# 1. List the contents of the current directory
print("Contents of the current directory:")
print(os.listdir("."))  # Lists all files and directories in the current directory
print()

# 2. Create a new directory
new_dir_path = "example_dir"
os.mkdir(new_dir_path)  # Creates a new directory named 'example_dir'
print(f"Directory '{new_dir_path}' created.")
print()

# 3. Rename a directory
new_dir_renamed_path = "renamed_example_dir"
os.rename(new_dir_path, new_dir_renamed_path)  # Renames 'example_dir' to 'renamed_example_dir'
print(f"Directory renamed to '{new_dir_renamed_path}'.")
print()

# 4. Change the current working directory
os.chdir(new_dir_renamed_path)  # Changes the current working directory to 'renamed_example_dir'
print("Changed to new working directory:", os.getcwd())  # Prints the current working directory
print()

# 5. Create a new file in the directory
file_path = "example_file.txt"
with open(file_path, "w") as file:
    file.write("This is an example file.")  # Writes content to the file
print(f"File '{file_path}' created.")
print()

# 6. Get file size
file_size = os.path.getsize(file_path)  # Gets the size of the file in bytes
print(f"Size of '{file_path}': {file_size} bytes")
print()

# 7. Check if the path is a file or directory
print(f"Is '{file_path}' a file? {os.path.isfile(file_path)}")
print(f"Is '{file_path}' a directory? {os.path.isdir(file_path)}")
print()

# 8. Get the base name and directory name of the file
print(f"Base name of the file: {os.path.basename(file_path)}")
print(f"Directory name of the file: {os.path.dirname(file_path)}")
print()

# 9. Get the absolute path of the file
absolute_path = os.path.abspath(file_path)  # Returns the absolute version of the path
print(f"Absolute path of the file: {absolute_path}")
print()

# 10. Check if a path exists
print(f"Does the path '{absolute_path}' exist? {os.path.exists(absolute_path)}")
print()

# 11. Join multiple path components
joined_path = os.path.join("folder", "subfolder", "file.txt")  # Joins multiple path components
print(f"Joined path: {joined_path}")
print()

# 12. Create nested directories
nested_dir_path = os.path.join("nested_folder", "subfolder")
os.makedirs(nested_dir_path, exist_ok=True)  # Creates nested directories
print(f"Nested directories '{nested_dir_path}' created.")
print()

# 13. Remove a file
os.remove(file_path)  # Removes (deletes) the file 'example_file.txt'
print(f"File '{file_path}' deleted.")
print()

# 14. Remove a directory
os.rmdir(nested_dir_path)  # Removes the 'subfolder' directory
print(f"Directory '{nested_dir_path}' deleted.")
print()




# 20. Get the current working directory
current_working_directory = os.getcwd()  # Gets the current working directory
print(f"Current working directory: {current_working_directory}")
print()





# 26. Walk through directory tree
print("Walking through the directory tree:")
for root, dirs, files in os.walk("."):
    print(f"Root: {root}")
    print(f"Directories: {dirs}")
    print(f"Files: {files}")
print()


