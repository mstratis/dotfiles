#!/usr/bin/ruby

# Copies in all of the dotfiles
# Allows you to set up your git name and email
# Warning: this script is destructive. It will overwrite current dotfiles

require 'fileutils'

@git_name = nil
@git_email = nil

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
      if line.include? "name = "
        if @git_name.nil? || @git_name.empty?
          out << line
        else
          out << "\tname = " + @git_name + "\n"
        end
      elsif line.include? "email = "
        if @git_email.nil? || @git_email.empty?
          out << line
        else
          out << "\temail = " + @git_email + "\n"
        end
      else
        out << line
      end
    end
    f.pos = 0
    f.print out
    f.truncate(f.pos)
  end
end

# Link the files
# Don't forget to add new files here as necessary
def link_files
  FileUtils.ln_s ENV['HOME']+'/.dotfiles/.bash_profile', ENV['HOME']+'/.bash_profile', :force => true
  FileUtils.ln_s ENV['HOME']+'/.dotfiles/.gitconfig', ENV['HOME']+'/.gitconfig', :force => true
  FileUtils.ln_s ENV['HOME']+'/.dotfiles/.gitignore_global', ENV['HOME']+'/.gitignore_global', :force => true
  FileUtils.ln_s ENV['HOME']+'/.dotfiles/.vimrc', ENV['HOME']+'/.vimrc', :force => true
  FileUtils.ln_s ENV['HOME']+'/.dotfiles/.lldbinit', ENV['HOME']+'/.lldbinit', :force => true

  # directories are a bitch...
  FileUtils.remove_dir ENV['HOME']+'/bin', true
  FileUtils.ln_s ENV['HOME']+'/.dotfiles/bin', ENV['HOME']+'/', :force => true
end

# do all the magic
read_git_credentials
overwrite_git_settings
link_files
