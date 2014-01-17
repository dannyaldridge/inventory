# Taken from
# http://blog.wolfman.com/articles/2007/7/28/rspec-testing-all-actions-of-a-controller
module ControllerSpecHelper
   
   # get all actions for specified controller
  def get_all_actions(cont)
    c = Module.const_get(cont.to_s.pluralize.capitalize + "Controller")
    c.public_instance_methods(false).reject do |action|
      ['rescue_action'].include?(action)
    end 
  end

  # test actions fail if not logged in
  # opts[:exclude] contains an array of actions to skip
  # opts[:include] contains an array of actions to add to the test in addition
  # to any found by get_all_actions
  def controller_actions_should_fail_if_not_logged_in(cont, opts ={})
    except = opts[:except] || []
    actions_to_test = get_all_actions(cont).reject{ |a| except.include?(a) }
    actions_to_test += opts[:include] if opts[:include]
    actions_to_test.each do |a|
      get a
      response.should_not be_success
      response.should redirect_to new_session_path
      flash[:notice].should == @login_notice
    end
  end
end
