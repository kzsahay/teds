taxation = softwareSystem "Taxation Adapter" "Downstream tax processing & government linking" {
    tags "Existing System" "new system"
}

taxation-adapter = softwareSystem "E-Tax" "E-tax adapter" {
    tags "container"
    // ==================== CONTAINERS====================
    teds-taxation = container "TEDS Taxation" "TEDS taxation program" {
        tags "Container"
        // ==================== COMPONENTS (must be inside their container) ====================
        Kafka-producer-taxation = component "Kafka producer for taxation system" {
            tags "Component"
        }
        Kafka-consumer-taxation = component "Kafka consumer for taxation system" {
            tags "Component"
        }
    }
}

Thailand-eTax = softwareSystem "Thailand E-Tax" "Thailand E-Tax program" {
    tags "Container"
}

Other-eTax = softwareSystem "Other E-Tax" "Other e-tax program" {
    tags "Container" "API"
}