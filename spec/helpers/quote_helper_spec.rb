require 'spec_helper'

# Specs in this file have access to a helper object that includes
# the QuoteHelper. For example:
#
# describe QuoteHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       helper.concat_strings("this","that").should == "this that"
#     end
#   end
# end

def login(user)
  post user_session_path, 'user[email]' => user.email, 'user[password]' => user.password, 'user[password_confirmation]' => user.password
end
