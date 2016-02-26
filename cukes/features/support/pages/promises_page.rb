class PromisesPage
    include PageObject

    page_url "https://promises-demo.firebaseapp.com/#/"
    div(:toolbar, { class: "md-toolbar-tools" })
    span(:simple_handling_link, { text: "Simple Handling" })

    def open_hamburger
        toolbar_element.button_element.click
        simple_handling_link_element.when_visible
    end

    def simple_handling
        open_hamburger
        simple_handling_link_element.click
    end
end
