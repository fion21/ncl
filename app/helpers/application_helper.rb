module ApplicationHelper
  def login_helper
    if user_signed_in?
      # Always sends DELETE (no JS required)
      button_to "Log out",
                destroy_user_session_path,
                method: :delete,
                class: "as-link",
                form: { class: "inline" }
    else
      link_to("Log in", new_user_session_path) +
        " | ".html_safe +
        link_to("Register", new_user_registration_path)
    end
  end
end
