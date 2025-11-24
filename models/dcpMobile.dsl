dcpMobile = softwareSystem "DCP Mobile Application" "Mobile login application" {
    tags "Container"

    // ==================== CONTAINERS====================
    teds-dcp-plate-scanner = container "Plate Scanner" "Number plate and VIN scanner" {
        tags "Container"
        // ==================== COMPONENTS (must be inside their container) ====================
        plate-scanner-camera-access = component "Camera access for plate scanner" {
            tags "Component"
        }
        plate-scanner-external-api-connector = component "External API to read plate and VIN" {
            tags "Component" "API"
        }
    }
    
}

// External API
plate-scanner-external-api = softwareSystem "Plate Scanner External API" "Third-party number plate and VIN scanning API" {
    tags "Existing System" "API"
}