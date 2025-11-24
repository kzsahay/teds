workspace "TEDS Ecosystem" "System Context Diagram (C4 Level 1)" {

    !impliedRelationships true

    model {
        properties {
            "structurizr.groupSeparator" "/"
        }
        // Human actors
        !include models/actors.dsl

        //Core system
        !include models/core-system.dsl
        
        //Referential system
        !include models/referential.dsl
        
        //Loyalty system
        !include models/loyalty.dsl

        dcpMobile = softwareSystem "DCP Mobile Application" "Mobile login application" {
            tags "Existing System"
        }

        eordering = softwareSystem "E-Ordering" "E-ordering adapter" {
            tags "Existing System"
        }

        taxation = softwareSystem "Taxation Adapter" "Downstream tax processing & government linking" {
            tags "Existing System"
        }

        TDP = softwareSystem "T+ Data Platform" "Reporting data platform & CRM programs" {
            tags "Existing System" "Database"
        }

        // CRM Activities
        !include models/crm-activities.dsl

        // ==================== RELATIONSHIPS ====================
        !include relationships/relationships.dsl
    }

    !include views/views.dsl

}