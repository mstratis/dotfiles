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
def overwrite_git_settings
  File.open('.gitconfig', 'r+') do |f|
    out = ""
    f.each do |line|
      unless @git_name.nil? || @git_name.eql? ""
        out << line.gsub('Matt Hodges', @git_name)
      end
      unless @git_email.nil? || @git_email.eql? ""
        out << line.gsub('hodgesmr1@gmail.com', @git_email)
      end
    end
    f.pos = 0
    f.print out
    f.truncate(f.pos)
  end
end

# Copy over dotfiles
# Don't forget to add new files here as necessary
def copy_files
  FileUtils.cp '.bash_profile', '~/.bash_profile'
  FileUtils.cp '.gitconfig', '~/.gitconfig'
  FileUtils.cp '.gitignore_global', '~/.gitignore_global'
  FileUtils.cp_r 'bin', '~/', :remove_destination => true
end

# do all the magic
read_git_credentials
overwrite_git_settings
copy_files
