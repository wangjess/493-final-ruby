module ApplicationHelper

    def active_class(path)   
        p "hello"    
        "active" if current_page?(path)   
    end
end
