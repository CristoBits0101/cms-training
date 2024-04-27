// Function to serialize and display a chat message.
export const serializeMessage = (message) => 
{
    // Get the chat console container element.
    let consoleElement = document.getElementById('chat-console-container')

    // Create a new paragraph element.
    let p = document.createElement('p')

    // Check if the message contains both 'linebreak' and 'userTime'.
    if (message.includes('linebreak') && message.includes('userTime')) 
    {
        // Split the message into userTime and content.
        const [userTime, content] = message.split('linebreak')
        const [user, time] = userTime.split('userTime')

        // Function to capitalize the first letter of a string.
        const capitalizeFirstLetter = (string) => {
            return string.charAt(0).toUpperCase() + string.slice(1)
        }

        // Create a bold element for the user name.
        let userBold = document.createElement('b')
        let userText = document.createTextNode(capitalizeFirstLetter(user) + ' ')
        userBold.appendChild(userText)

        // Create text nodes for time and content.
        let timeText = document.createTextNode(time)
        let text = document.createTextNode(content)

        // Check if userText and timeText are not empty.
        if (userText.textContent.trim() !== "" && timeText.textContent.trim() !== "") 
        {
            // Create a span element for the time.
            let span = document.createElement('span')
            span.classList.add('subtext')
            span.appendChild(timeText)

            // Append userBold, span, and a line break to the paragraph.
            p.appendChild(userBold)
            p.appendChild(span)
            p.appendChild(document.createElement('br'))
        }

        // Check if the text content is not empty.
        if (text.textContent.trim() !== "")
            p.appendChild(text)

        // Append the paragraph and a line break to the console container.
        consoleElement.appendChild(p)
        consoleElement.appendChild(document.createElement('br'))

        // Automatically scroll to the bottom of the chat console.
        consoleElement.scrollTop = consoleElement.scrollHeight
    } 
    
    else 
    {
        // If the message doesn't contain 'linebreak' and 'userTime'.
        // Create a bold element for the message.
        let boldTextNode = document.createElement('b')
        let textNode = document.createTextNode(message)
        boldTextNode.appendChild(textNode)

        // Append the bold element to the paragraph.
        p.appendChild(boldTextNode)

        // Append the paragraph and a line break to the console container.
        consoleElement.appendChild(p)
        consoleElement.appendChild(document.createElement('br'))
    }
}