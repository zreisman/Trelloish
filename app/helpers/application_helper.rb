module ApplicationHelper

  def render_auth_token
    "<input type=\"hidden\" name=\"authenticity_token\" value=\"#{form_authenticity_token}\">".html_safe
  end

  def display_messages
    if flash.now[:errors]
      @messages = flash.now[:errors]
    elsif flash[:errors]
      @messages = flash[:errors]
    elsif flash[:success]
      @messages = flash[:success]
    elsif flash.now[:success]
      @messages = flash.now[:success]
    end
    str = ""
    if @messages
      @messages.each do |message|
        str << "<li>#{message}</li>"
      end
    end
    "<ul>#{str}</ul>".html_safe
  end


end
