// Initialize counters for the first two upgrade icons
let firstIconClickCount = 0;
let secondIconClickCount = 0;

// Function to click multiple elements repeatedly
function clickElementsForever() {
    // Array of individual selectors for unique elements
    const selectors = [
        '.main-btn.main-btn-pretty',  // First element
        '.another-btn',               // Second element (example, replace if needed)
        '.collect',                   // Third element: your "Collect" button
        '.main-btn'                   // Fourth element: the basic main button
    ];

    // Loop through the selectors and click each unique element
    selectors.forEach(selector => {
        const element = document.querySelector(selector);
        if (element) {
            element.click();
            console.log(`Clicked element: ${selector}`);
        } else {
            console.error(`Element not found: ${selector}`);
        }
    });

    // Click all instances of `.upgrade-icon` (basic and fancy included)
    const upgradeIcons = document.querySelectorAll('.upgrade-icon');
    if (upgradeIcons.length > 0) {
        upgradeIcons.forEach((icon, index) => {
            // Prevent clicking the first two upgrade icons more than 10 times
            if (index === 0 && firstIconClickCount < 10) {
                icon.click();
                firstIconClickCount++;
                console.log('Clicked the first upgrade icon (limit: 10)');
            } else if (index === 1 && secondIconClickCount < 10) {
                icon.click();
                secondIconClickCount++;
                console.log('Clicked the second upgrade icon (limit: 10)');
            } else if (index > 1) {
                // For other icons, just click them without limits
                icon.click();
                console.log('Clicked an upgrade icon');
            }
        });
    } else {
        console.error('No upgrade icons found');
    }
}

// Start the interval and save its ID
var intervalId = setInterval(clickElementsForever, 0);

// To stop the interval later, use: clearInterval(intervalId);
