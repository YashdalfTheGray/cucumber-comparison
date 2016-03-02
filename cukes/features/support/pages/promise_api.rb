class PromiseApi
    include PageObject

    h2(:page_title, { text: "Then-Catch-Finally" })

    def initialize_page
        page_title_element.when_present
    end

    def loaded?
        page_title?
    end
end
