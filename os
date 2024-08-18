import os
from pathlib import Path
import shutil
import glob

# --- OS Module Examples ---

# 1. List the contents of the current directory
print("Contents of the current directory:")
for item in os.listdir("."):
    print(item)
print()

# 2. Create a new directory
new_dir_path = "example_dir"
os.mkdir(new_dir_path)  # Creates a new directory named 'example_dir'
print(f"Directory '{new_dir_path}' created.")
print(os.listdir("."))  # Verify the new directory is created
print()

# 3. Create a nested directory structure
nested_dir_path = os.path.join(new_dir_path, "nested_dir/subdir")
os.makedirs(nested_dir_path)  # Creates nested directories
print(f"Nested directories '{nested_dir_path}' created.")
print(os.listdir(new_dir_path))  # Verify the nested directory is created
print()

# 4. Rename a directory (or file)
new_dir_renamed_path = "renamed_example_dir"
os.rename(new_dir_path, new_dir_renamed_path)  # Renames 'example_dir' to 'renamed_example_dir'
print(f"Directory renamed to '{new_dir_renamed_path}'.")
print(os.listdir("."))  # Verify the directory is renamed
print()

# 5. Change the current working directory
os.chdir(new_dir_renamed_path)  # Changes the current working directory to 'renamed_example_dir'
print("Changed to new working directory:", os.getcwd())  # Prints the current working directory
print()

# 6. Create a new file in the directory
file_path = "example_file.txt"
with open(file_path, "w") as file:
    file.write("This is an example file.")  # Writes content to the file
print(f"File '{file_path}' created.")
print(os.listdir("."))  # Verify the file is created
print()

# 7. Get file size
file_size = os.path.getsize(file_path)  # Gets the size of the file in bytes
print(f"Size of '{file_path}': {file_size} bytes")
print()

# 8. Check if the path is a file or directory
print(f"Is '{file_path}' a file? {os.path.isfile(file_path)}")
print(f"Is '{file_path}' a directory? {os.path.isdir(file_path)}")
print()

# 9. Get the base name and directory name
print(f"Base name of '{file_path}': {os.path.basename(file_path)}")
print(f"Directory name of '{file_path}': {os.path.dirname(file_path)}")
print()

# 10. Check if the path exists
print(f"Does the path '{file_path}' exist? {os.path.exists(file_path)}")
print()

# 11. Remove the created file
os.remove(file_path)  # Deletes the file
print(f"File '{file_path}' deleted.")
print(os.listdir("."))  # Verify the file is deleted
print()

# 12. Create a new file and write content to it
with open("temp_file.txt", "w") as f:
    f.write("This is a temporary file.")
print("Temporary file 'temp_file.txt' created.")
print(os.listdir("."))  # Verify the file is created
print()

# 13. Check if the path is a file or directory
print(f"Is 'temp_file.txt' a file? {os.path.isfile('temp_file.txt')}")
print(f"Is 'renamed_example_dir' a directory? {os.path.isdir('..')}")
print()

# 14. Rename the file
os.rename("temp_file.txt", "renamed_temp_file.txt")
print("Temporary file renamed to 'renamed_temp_file.txt'.")
print(os.listdir("."))  # Verify the file is renamed
print()

# 15. Remove the renamed file
os.remove("renamed_temp_file.txt")
print("Renamed temporary file 'renamed_temp_file.txt' deleted.")
print(os.listdir("."))  # Verify the file is deleted
print()

# --- Glob Module Examples ---

# 16. List all .txt files in the current directory using glob
print("All .txt files in the current directory:")
txt_files = glob.glob("*.txt")
for txt_file in txt_files:
    print(txt_file)
print()

# 17. Recursive glob to match all .txt files in the directory and its subdirectories
print("All .txt files in the directory and its subdirectories (recursive):")
txt_files_recursive = glob.glob("**/*.txt", recursive=True)
for txt_file in txt_files_recursive:
    print(txt_file)
print()

# 18. Use wildcards to match specific file patterns
print("Files matching pattern '?ile1.txt':")
pattern_files = glob.glob("?ile1.txt")
for pattern_file in pattern_files:
    print(pattern_file)
print()

# 19. Use character ranges to match specific files
print("Files matching pattern 'example_file[1-9].txt':")
range_files = glob.glob("example_file[1-9].txt")
for range_file in range_files:
    print(range_file)
print()

# --- Pathlib Module Examples ---

# 20. Create a Path object
path = Path("example_file.txt")
print(f"Path object created: {path}")
print()

# 21. Check if the Path exists
print(f"Does the path '{path}' exist? {path.exists()}")
print()

# 22. Create a new file using Path
path.touch()  # Creates the file
print(f"File '{path}' created using Path.")
print(path.exists())  # Verify the file exists
print()

# 23. Get the parent directory of the Path
parent_dir = path.parent
print(f"Parent directory of '{path}': {parent_dir}")
print()

# 24. Get the name and extension of the file
file_name = path.name  # Gets the file name
file_extension = path.suffix  # Gets the file extension
print(f"File name: {file_name}, File extension: {file_extension}")
print()

# 25. Join paths using Path
joined_path = parent_dir / "subdir" / "file.txt"
print(f"Joined path: {joined_path}")
print()

# 26. Get the absolute path
absolute_path = path.resolve()
print(f"Absolute path of '{path}': {absolute_path}")
print()

# 27. Remove the created file using Path
path.unlink()  # Deletes the file
print(f"File '{path}' deleted using Path.")
print()

# 28. Iterate over files in the directory using Path
print("Files in the current directory:")
for file in Path(".").iterdir():
    if file.is_file():
        print(file.name)
print()

# --- Shutil Module Examples ---

# 29. Copy the file to a new location
original_file = "original_file.txt"
with open(original_file, "w") as file:
    file.write("This is the original file.")
print(f"File '{original_file}' created.")
print(os.listdir("."))  # Verify the file is created
print()

copied_file_path = "copied_file.txt"
shutil.copy(original_file, copied_file_path)  # Copies 'original_file.txt' to 'copied_file.txt'
print(f"File copied to '{copied_file_path}'.")
print(os.listdir("."))  # Verify the file is copied
print()

# 30. Copy the file with metadata
copied_file_with_metadata = "copied_with_metadata.txt"
shutil.copy2(original_file, copied_file_with_metadata)  # Copies with metadata
print(f"File copied with metadata to '{copied_file_with_metadata}'.")
print(os.listdir("."))  # Verify the file is copied
print()

# 31. Move the copied file to a subdirectory (creates the subdirectory first)
subdir_path = Path("subdir")
subdir_path.mkdir(parents=True, exist_ok=True)  # Creates a new subdirectory named 'subdir'
shutil.move(copied_file_path, subdir_path / copied_file_path)  # Moves the file to the subdirectory
print(f"File '{copied_file_path}' moved to subdirectory '{subdir_path}'.")
print(os.listdir(subdir_path))  # Verify the file is moved
print()

# 32. Create a zip archive of the directory
archive_name = "example_archive"
shutil.make_archive(archive_name, 'zip', parent_dir)  # Creates a zip archive of the parent directory
print(f"Archive '{archive_name}.zip' created.")
print(os.listdir("."))  # Verify the archive is created
print()

# 33. Extract the zip archive into a new directory
extracted_dir = "extracted_files"
shutil.unpack_archive(f"{archive_name}.zip", extracted_dir)  # Extracts the archive into 'extracted_files'
print(f"Archive extracted into directory '{extracted_dir}'.")
print(os.listdir(extracted_dir))  # Verify the extraction
print()

# 34. Copy an entire directory tree
shutil.copytree(extracted_dir, "copied_extracted_dir")  # Recursively copies 'extracted_files' to 'copied_extracted_dir'
print(f"Directory tree copied to 'copied_extracted_dir'.")
print(os.listdir("."))  # Verify the directory tree is copied
print()

# 35. Remove the original directory tree
shutil.rmtree(extracted_dir)  # Recursively deletes the 'extracted_files' directory
print(f"Directory '{extracted_dir}' and its contents deleted.")
print(os.listdir("."))  # Verify the directory tree is deleted
print()

# 36. Remove the copied directory tree
shutil.rmtree("copied_extracted_dir")  # Recursively deletes the copied directory
print(f"Copied directory 'copied_extracted_dir' deleted.")
print(os.listdir("."))  # Verify the directory tree is deleted
print()

# 37. Copy file permissions
shutil.copymode(original_file, copied_file_with_metadata)
print(f"Permissions of '{original_file}' copied to '{copied_file_with_metadata}'.")
print()

# 38. Copy file metadata
shutil.copystat(original_file, copied_file_with_metadata)
print(f"Metadata of '{original_file}' copied to '{copied_file_with_metadata}'.")
print()

# 39. Print disk usage of the current directory
total, used, free = shutil.disk_usage(".")
print(f"Disk usage: Total: {total}, Used: {used}, Free: {free}")
print()

# 40. Create a temporary directory and print its path
temp_dir = shutil.mkdtemp()
print(f"Temporary directory created at '{temp_dir}'.")
print()

# 41. Remove the temporary directory
shutil.rmtree(temp_dir)
print(f"Temporary directory '{temp_dir}' deleted.")
print()
