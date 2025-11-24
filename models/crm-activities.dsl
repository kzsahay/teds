group "CRM Activities" {
    hubspot       = softwareSystem "HubSpot"                   "CRM & marketing automation"
    infobip       = softwareSystem "Infobip"                   "Enabler for messaging platforms"
    nps           = softwareSystem "NPS System"                "Net Promoter Score & consent management"
    messaging     = softwareSystem "Messaging Platforms"       "Line, WhatsApp, etc." {
        tags "CRM"
    }
}