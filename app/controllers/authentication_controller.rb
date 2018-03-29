class AuthenticationController < ApplicationController

		def signin_get
		end

		def signup_get
		end
		
		def signin
	    username = params["username"]
	    password = params["password"]

	    user = User.find_by_username(username)
	    if user
	      if user.password == password
	        session[:user_id] = user.id
	        return redirect_to '/'
	      else
	        return redirect_to '/signin'
	      end

	    else
	      return redirect_to '/signup'
	    end

	  end

	  def signup
	    username = params["username"]
	    password = params["password"]
	    reconfirm_password = params["reconfirm_password"]
	    email = params["email"]
	    user = User.find_by_username(username)
	    unless user
	    	if password==reconfirm_password
		      user = User.create(email: email, username: username, password: password)
		      session[:user_id] = user.id
		      return redirect_to '/'
		    else
		    	return redirect_to '/signup'
		    end
	    else
	      return redirect_to '/signup'
	    end


	  end

	  def logout
	    session[:user_id] = nil
	    return redirect_to '/'
	  end

end
