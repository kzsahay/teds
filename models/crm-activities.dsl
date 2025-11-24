group "CRM Activities" {
    hubspot = softwareSystem "HubSpot" "CRM & marketing automation" {
        tags "CRM"
        // ==================== CONTAINERS====================
        crm-hubspot = container "Hubspot-crm" "hubspot crm program" {
            tags "Container"
            // ==================== COMPONENTS (must be inside their container) ====================
            db-reader-hubspot = component "Reads TDP to apply marketing rules" {
                tags "Component"
            }
            api-endpoint-hubspot = component "Connects to Infobip for messaging" {
                tags "Component"
            }
        }
    }
    infobip = softwareSystem "Infobip" "Enabler for messaging platforms" {
        tags "CRM"
        // ==================== CONTAINERS====================
        crm-infobip = container "Infobip-crm" "infobip enabler" {
            tags "Container"
            // ==================== COMPONENTS (must be inside their container) ====================
            api-endpoint-infobip = component "Connects to messaging for sending out messages" {
                tags "Component"
            }
        }
    }
    nps           = softwareSystem "NPS System"                "Net Promoter Score & consent management"
    messaging     = softwareSystem "Messaging Platforms"       "Line, WhatsApp, etc." {
        tags "CRM"
    }
}