class SimpleHandlingPage
    include PageObject

    page_url "https://promises-demo.firebaseapp.com/#/simple"
    h2(:page_title, { text: "Simple Handling" })
    text_field(:message_box, { id: "message-input" })
    text_field(:delay_box, { id: "delay-input" })
    button(:set_timeout, { text: "Set Timeout" })
    span(:toast_span, { xpath: "/html/body/md-toast/span" })

    def loaded?
        page_title?
    end

    def initialize_page
        page_title_element.when_present
    end

    def enter_text(id, text)
        puts(text)
        if id == "message-input"
            message_box_element.click
            message_box_element.append text
        elsif id == "delay-input"
            delay_box_element.click
            delay_box_element.append text
        end
    end

    def click_set_timeout
        set_timeout
    end

    def toast_message
        toast_span_element.when_visible
        toast_span
    end

end
