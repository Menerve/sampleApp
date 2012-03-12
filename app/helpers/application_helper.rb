module ApplicationHelper

    def title
        baseTitle = "Sample Ror app"
        if @title.nil?
            baseTitle
        else
            "#{baseTitle} | #{@title}"
        end
    end
     
end
