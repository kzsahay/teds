CRM-BI-System = softwareSystem "CRM and BI System" "CRM and Business Intelligence platform" {
    tags "container" "new system"
    // ==================== CONTAINERS====================
    Tplus-data-platform = container "T+ Data Platform" "T+ Data Platform for reporting and CRM data storage" {
        tags "database"
        // ==================== COMPONENTS (must be inside their container) ====================
        pgbouncer  = component "pgbouncer for Postgres database connections" {
            tags "Component"
        }
    }
    BI-dashboards = container "BI Dashboards" "Reporting and Dashboard platform" {
        tags "Existing System" "Container"
    }
    hubspot = container "HubSpot" "CRM & marketing automation" {
        tags "CRM"
        // ==================== COMPONENTS (must be inside their container) ====================
        db-reader-hubspot = component "Reads TDP to apply marketing rules" {
            tags "Component"
        }
        api-endpoint-hubspot = component "Connects to Infobip for messaging" {
            tags "Component"
        }
    }
    infobip = container "Infobip" "Enabler for messaging platforms" {
        tags "CRM"
            // ==================== COMPONENTS (must be inside their container) ====================
            api-endpoint-infobip = component "Connects to messaging for sending out messages" {
                tags "Component"
            }
    }
    nps           = container "NPS System"                "Net Promoter Score & consent management"
    messaging     = container "Messaging Platforms"       "Line, WhatsApp, etc." {
        tags "CRM"
    }
}