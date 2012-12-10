#!/usr/bin/ruby

# Copies in all of the dotfiles
# Allows you to set up your git name and email
# Warning: this script is destructive. It will overwrite current dotfiles

require 'fileutils'

@git_name = nil;
@git_email = "nil;

# Get the git settings
def read_git_credentials

  print "Enter your full name: "
  @git_name = gets
  @git_name.chomp!
  
  print "Enter your email address: "
  @git_email = gets
  @git_email.chomp!

end

# Overwrite git settings

# Copy over dotfiles
# Don't forget to add new files here as necessary
def overwrite
  FileUtils.cp '.bash_profile', '~/.bash_profile'
  FileUtils.cp '.gitconfig', '~/.gitconfig'
  FileUtils.cp '.gitignore_global', '~/.gitignore_global'
  FileUtils.cp_r 'bin', '~/', :remove_destination => true
end
