# CHEATSHEET LINUX
# comandos básicos de terminal
df -lh -T # List disk space usage with human-readable sizes and filesystem types
du -sh *   # Show the size of each item in the current directory in a human-readable format
free -m -k -b # Display memory usage in megabytes, kilobytes, and bytes
uptime # Show how long the system has been running
whoami # Display the current logged-in user
id # Display user ID and group ID information
ls -lhart *.jpg | more # List all JPG files with detailed info, sorted by modification time, in reverse order, paginated
cd /home/user .. ~ - # Change directory to /home/user, then up one level, then to home directory, then to previous directory
find . -name "*.jpg"  # Find all JPG files in the current directory and subdirectories
clear # Clear the terminal screen
pwd   # Print working directory
mkdir new_folder # Create a new directory named 'new_folder'
rm -rf new_folder # Remove 'new_folder' and its contents recursively and forcefully
cp -R /source /destination # Copy 'source.txt' to 'destination.txt', using -R for recursive copying if it's a directory
mv oldname.txt newname.txt # Rename or move 'oldname.txt' to 'newname.txt'
cat file.txt # Display the contents of 'file.txt'
less file.txt # View 'file.txt' with pagination
head file.txt # Display the first 10 lines of 'file.txt'
tail file.txt # Display the last 10 lines of 'file.txt'
grep "search_term" file.txt # Search for 'search_term' in 'file.txt'
nano file.txt # Open 'file.txt' in the nano text editor
vim file.txt # Open 'file.txt' in the vim text editor

shutdown -h now # Shut down the system immediately
shutdown -r now # Reboot the system immediately
shutdown -h +10 # Schedule a shutdown in 10 minutes
reboot # Reboot the system
halt # Halt the system

jobs # List background jobs
fg %1 # Bring job number 1 to the foreground
bg %1 # Resume job number 1 in the background

history # Show command history
!n # Re-execute command number n from history
!string # Re-execute the most recent command starting with 'string'
!?string # Re-execute the most recent command containing '

touch newfile.txt # Create an empty file named 'newfile.txt' or update its timestamp if it exists
echo "Hello, World!" # Print 'Hello, World!' to the terminal
echo $HOME # Display the value of the HOME environment variable
export MY_VAR="my_value" # Set an environment variable named MY_VAR with the value '

tree     # Display directory structure in a tree format

# processos
# ps: process status
ps aux | grep process_name # List all processes and filter for 'process_name'
ps -au   # Detailed view of all running processes
ps -Ax   # List all running processes
ps -ef   # Another format to display all running processes
top -i   # Dynamic real-time process viewer
htop     # Interactive process viewer (if installed)
kill PID # Terminate process with the specified PID
kill -9 PID # Forcefully terminate process with the specified PID

# editor vi/vim - comandos básicos de navegação e edição
# modo de comando e de inserção
i  # switch to insert mode
I # switch to insert mode at the beginning of the line
a # switch to insert mode after the cursor
A # switch to insert mode at the end of the line
Esc  # switch to command mode
:1 # go to line 1
:w  # save changes
:q  # quit
:wq  # save changes and quit
:q!  # quit without saving changes
x  # delete character under cursor
dd  # delete current line
yy  # copy (yank) current line
p  # paste copied or deleted content after the cursor
u  # undo last change

/  # search forward
n  # repeat last search forward
N  # repeat last search backward

# usuários e grupos
who # Show who is logged in
w   # Show who is logged in and what they are doing
id  # Display user ID and group ID information

adduser username # Add a new user
passwd username # Change password for 'username'
deluser username # Remove a user

groupadd groupname # Create a new group
groupdel groupname # Delete a group

usermod -aG groupname username # Add 'username' to 'groupname'
groups username # Show groups for 'username'

useradd username # Add a new user (alternative command)
userdel username # Remove a user (alternative command)
adduser username groupname # Add 'username' to 'groupname' (alternative command)

chown user:group file.txt # Change ownership of 'file.txt' to 'user'
chmod 755 file.txt # Set permissions of 'file.txt' to rwxr-xr-x
chmod +x script.sh # Make 'script.sh' executable
chmod -R 755 /path/to/directory # Recursively set permissions of the directory and its contents

alt + f2 # Switch to the next terminal (tty)
alt + f1 # Switch to the previous terminal (tty)
alt + f7 # Switch to the graphical interface (X server)

# gerenciamento de pacotes (Debian/Ubuntu)
# APT - Advanced Package Tool
## source list apt /etc/apt/sources.list
## source list dpkg /etc/dpkg/dpkg.cfg
ldd /path/to/binary # List shared library dependencies of a binary

apt update # Update package lists
apt upgrade -y # Upgrade all packages without prompting for confirmation
apt full-upgrade -y # Perform a full upgrade, handling dependencies intelligently
apt dist-upgrade -y # Similar to full-upgrade, but may remove some packages
apt clean # Clear the local repository of retrieved package files
apt autoclean # Remove only outdated package files
apt autoremove # Remove unnecessary packages
apt search package_name # Search for a package
apt show package_name # Show detailed information about a package
apt list --installed | grep package_name # List installed packages and filter for 'package_name'
apt install package_name -y # Install a package without prompting for confirmation
apt remove package_name # Remove a package
apt purge package_name # Remove a package and its configuration files

# DPKG - Debian Package Manager
dpkg -i package.deb # Install a .deb package
dpkg -r package_name # Remove a package using dpkg
dpkg -l | grep package_name # List installed packages and filter for 'package_name'