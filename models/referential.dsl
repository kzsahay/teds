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
        tags "Container"
        // ==================== COMPONENTS (must be inside their container) ====================
        Kafka-producer-referential = component "Kafka producer for referential-system" {
            tags "Component"
        }
        Kafka-consumer-referential = component "Kafka consumer for referential-system" {
            tags "Component"
        }
    }
    PS9-referential = container "Michelin Tyre referential" "Michelin Tyre product referential" {
        tags "Container"
    }
    Spyder-referential = container "Non-Michelin Tyre referential" "Non-Michelin Tyre product referential" {
        tags "Container"
    }
    WyzAuto-referential = container "WyzAuto Non-Tyre products referential" "Non-tyre products referential" {
        tags "Container" "API"
    }
    Manual-dump-referential = container "Manual Non-Tyre products referential" "Manual dump from MARS if WyzAuto is not ready" {
        tags "Container" 
    }
}