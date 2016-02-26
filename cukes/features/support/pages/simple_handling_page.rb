class SimpleHandlingPage

    include PageObject

    h2(:page_title, { text: "Simple Handling" })

    def loaded?
        page_title?
    end

    def initialize_page
        page_title_element.when_present
    end

end
