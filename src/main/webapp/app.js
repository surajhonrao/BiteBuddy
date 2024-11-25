// Initialize Google Map for GPS tracking
function initMap() {
    const deliveryLocation = { lat: 40.7128, lng: -74.0060 }; // Replace with dynamic coordinates
    const map = new google.maps.Map(document.getElementById('map'), {
        zoom: 12,
        center: deliveryLocation
    });

    // Add a marker for delivery location
    const marker = new google.maps.Marker({
        position: deliveryLocation,
        map: map,
        title: 'Delivery is on the way!'
    });
}

// Display an alert for GPS location access (just as a basic example)
function requestLocationPermission() {
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(function (position) {
            console.log("Latitude: " + position.coords.latitude);
            console.log("Longitude: " + position.coords.longitude);
        }, function () {
            alert("Error: Geolocation is not supported by this browser.");
        });
    } else {
        alert("Geolocation is not supported by this browser.");
    }
}

// Call the function to request location
requestLocationPermission();
