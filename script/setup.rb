#!/usr/bin/ruby

# Copies in all of the dotfiles
# Allows you to set up your git name and email
# Warning: this script is destructive. It will overwrite current dotfiles

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
