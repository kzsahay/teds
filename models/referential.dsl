PS9 = softwareSystem "PS9 Application" "Mobile login application" {
    tags "Existing System" "Kafka"
}

Spyder = softwareSystem "Spyder Application" "Mobile login application" {
    tags "Existing System" "Kafka"
}

WyzAuto = softwareSystem "WyzAuto Application" "Mobile login application" {
    tags "Existing System" "Kafka"
}

MARS = softwareSystem "MARS Application" "Mobile login application" {
    tags "Existing System" "Kafka"
}

referential-system = softwareSystem "Referential System" "Wecare-like referential provider" {
    tags "Container"

    // ==================== CONTAINERS====================
    teds-referential = container "TEDS Tyre referential" "TEDS product and services referential" {
        tags "Container" "new system"
        // ==================== COMPONENTS (must be inside their container) ====================
        Kafka-producer-referential = component "Kafka producer for referential-system" {
            tags "Component"
        }
        Kafka-consumer-referential = component "Kafka consumer for referential-system" {
            tags "Component"
        }
    }
}