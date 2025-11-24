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

        // E-Ordering
        !include models/e-ordering.dsl

        // Taxation
        !include models/taxation.dsl

        // CRM Activities
        !include models/crm-activities.dsl

        // Relationships
        !include relationships/relationships.dsl

        dcpMobile = softwareSystem "DCP Mobile Application" "Mobile login application" {
            tags "Existing System"
        }

        TDP = softwareSystem "T+ Data Platform" "Reporting data platform & CRM programs" {
            tags "Existing System" "Database"
        }
    }

    // Views
    !include views/views.dsl

}