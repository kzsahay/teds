loyalty-adapter = softwareSystem "Loyalty Programs" "Loyalty program adapter" {
    tags "container"

    // ==================== CONTAINERS====================
    teds-loyalty = container "TEDS Loyalty" "TEDS loyalty program" {
        tags "Container"
        // ==================== COMPONENTS (must be inside their container) ====================
        Kafka-producer-loyalty = component "Kafka producer for loyalty-system" {
            tags "Component"
        }
        Kafka-consumer-loyalty = component "Kafka consumer for loyalty-system" {
            tags "Component"
        }
    }
}

Thailand-iCare = softwareSystem "Thailand iCare" "Thailand iCare loyalty program" {
    tags "Container"
}

Korea-loyalty = softwareSystem "Korea Loyalty" "Korea loyalty program" {
    tags "Container"
}

Other-Loyalty = softwareSystem "Other Loyalty" "Other loyalty program" {
    tags "Container" "API"
}