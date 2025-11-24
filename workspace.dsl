workspace "TEDS Ecosystem" "System Context Diagram (C4 Level 1)" {
    !docs workspace-docs
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

        //DCP Mobile Application
        !include models/dcpMobile.dsl

        // External API
        plate-scanner-external-api = softwareSystem "Plate Scanner External API" "Third-party number plate and VIN scanning API" {
            tags "Existing System" "API"
        }

        TDP = softwareSystem "T+ Data Platform" "Reporting data platform & CRM programs" {
            tags "Existing System" "Database"
        }

        BI-dashboards = softwareSystem "BI Dashboards" "Reporting and Dashboard platform" {
            tags "Existing System" "Container"
        }

        // CRM Activities
        !include models/crm-activities.dsl

        // Relationships
        !include relationships/relationships.dsl
    }

    // Views
    !include views/views.dsl

}