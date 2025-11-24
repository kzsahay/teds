eordering-adapter = softwareSystem "E-Ordering" "E-ordering adapter" {
    tags "container"
    // ==================== CONTAINERS====================
    teds-eOrdering = container "TEDS E-Ordering" "TEDS e-ordering program" {
        tags "Container"
        // ==================== COMPONENTS (must be inside their container) ====================
        Kafka-producer-eOrdering = component "Kafka producer for e-ordering system" {
            tags "Component"
        }
        Kafka-consumer-eOrdering = component "Kafka consumer for e-ordering system" {
            tags "Component"
        }
    }
}

Thailand-MDO = softwareSystem "Thailand MDO" "Thailand MDO e-ordering program" {
    tags "Container"
}

Korea-SANA = softwareSystem "Korea SANA" "Korea SANA e-ordering program" {
    tags "Container"
}

Other-eOrdering = softwareSystem "Other E-Ordering" "Other e-ordering program" {
    tags "Container" "API"
}