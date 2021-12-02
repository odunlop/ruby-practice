# The user sees a greeting, which asks them to enter their name.
# The user enters their name.
# If the user's name begins with 'S', the program shouts the user's name back at them.
# If the user's name begins with any other letter, the program just says 'Hi, ' plus their name.

def greeting
  user_name = gets.chomp

  user_name.split("")[0] == "S" ? "#{user_name.upcase}!" : "Hi, #{user_name}"

end

# From looking at example answer afterwards...
# could have used .chr instead of splitting the string