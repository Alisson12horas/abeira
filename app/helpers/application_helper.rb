module ApplicationHelper

    def current_page(page,action)
    if controller.controller_name.to_s == page && controller.action_name.to_s == action
      'active'
    else
      'not_active'
    end
  end

end