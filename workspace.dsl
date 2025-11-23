workspace "TEDS Ecosystem" "System Context Diagram (C4 Level 1)" {

    !impliedRelationships true

    model {
        properties {
            "structurizr.groupSeparator" "/"
        }
        // Human actors
        dealer = person "Dealer" "Performs manual data entry, manages tires & services, creates quotations" {
            tags "dealer"
        }
        staff = person "Workshop Staff" "Performs manual data entry, manages tires & services, creates quotations" {
            tags "dealer"
        }
        administrator = person "Administrator" "Performs manual data entry, manages tires & services, creates quotations" {
            tags "dealer"
        }
        customer = person "Customer" "Receives NPS surveys, messages, quotations" {
            tags "customer"
        }
        consultant = person "T+ Consultant" "Accesses reports produced from the T+ Data Platform" {
            tags "consultant"
        }

        //Core system
        teds = softwareSystem "TEDS Core System" "DOS platform including microservices and core business logic" {
            tags "TEDS Core System"

            // ==================== CONTAINERS====================
            // Front-end
            group "Frontend" {
                service-pc = container "teds-service-pc" "Serves static content and the SPA" "Java + Spring Boot" {
                    tags "Container" "WebBrowser"
                }
                service-mobile = container "teds-service-mobile" "Provides all banking functionality in the browser" "React + TypeScript" {
                    tags "Container" "MobileDevicePortrait"
                }
            }
            // Back-end
            group "Backend" {
                group "Gateway" {
                    service-web = container "teds-service-web" "Serves static content and the SPA" "Java + Spring Boot" {
                        tags "Container"
                    }
                    system-foundation = container "systemfoundation" "Provides all banking functionality in the browser" "React + TypeScript" {
                        tags "Container"
                    }
                    openapi = container "openapi" "Provides all banking functionality in the browser" "React + TypeScript" {
                        tags "Container"
                    }
                }
                group "Core-Services" {
                    aftersales = container "teds-service-aftersales" "Serves static content and the SPA" "Java + Spring Boot" {
                        tags "Container"
                    }
                    teds-customer = container "teds-service-customer" "Provides all banking functionality in the browser" "React + TypeScript" {
                        tags "Container"
                    }
                    finance = container "teds-service-finance" "Provides all banking functionality in the browser" "React + TypeScript" {
                        tags "Container"
                    }
                    supplychain = container "teds-service-supplychain" "Provides all banking functionality in the browser" "React + TypeScript" {
                        tags "Container"
                    }
                    sku = container "teds-service-sku" "Provides all banking functionality in the browser" "React + TypeScript" {
                        tags "Container"
                    }
                }
                group "search-acceleration" {
                    service-search = container "teds-service-search" "Serves static content and the SPA" "Java + Spring Boot" {
                        tags "Container"
                    }
                }
                group "non-core-services" {
                    service-report = container "teds-service-report" "Serves static content and the SPA" "Java + Spring Boot" {
                        tags "Container"
                    }
                    service-scheduler = container "teds-service-scheduler" "Serves static content and the SPA" "Java + Spring Boot" {
                        tags "Container"
                    }
                }
            }
            CDN = container "CDN" "Serves static content and the SPA" "Java + Spring Boot" {
                tags "Container"
            }
            group "external-communication" {
                kafka = container "kafka" "Serves static content and the SPA" "Java + Spring Boot" {
                    tags "Container"
                }
                APIM = container "APIM" "Serves static content and the SPA" "Java + Spring Boot" {
                    tags "Container"
                }
            }
            webApp = container "Web Application" "Serves static content and the SPA" "Java + Spring Boot" {
                tags "Container"
            }
            spa = container "Single-Page Application" "Internet banking UI in the browser" "React + TypeScript" {
                tags "Container"
            }
            mobileApp = container "Mobile App" "Limited functionality on mobile devices" "Flutter" {
                tags "Container"
            }
            api = container "API Application" "Provides functionality via JSON/HTTPS API" "Java + Spring Boot" {
                tags "Container"

                // ==================== COMPONENTS (must be inside their container) ====================
                signInController = component "Sign In Controller" "Allows users to sign in" "Spring MVC RestController" {
                    tags "Component"
                }
                accountsController = component "Accounts Controller" "Account summary & history" "Spring MVC RestController" {
                    tags "Component"
                }
                transferController = component "Transfer Controller" "Handles payments/transfers" "Spring MVC RestController" {
                    tags "Component"
                }
                securityComponent = component "Security Component" "Authentication & authorization" "Spring Security" {
                    tags "Component"
                }
                mainframeFacade = component "Mainframe Facade" "Adapter to legacy mainframe" "Java" {
                    tags "Component"
                }
            }
            sqlproxy = container "sqlproxy" "medium performance database" {
                tags "Container" "Database"
            }
            reporting-database = container "reporting-database" "medium performance database" {
                tags "Container" "Database"
            }
            core-database = container "core-atabase" "high performance database" {
                tags "Container" "Database"
            }
        }

        dcpMobile = softwareSystem "DCP Mobile Application" "Mobile login application" {
            tags "Existing System"
        }

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
            # tags "Container"

            // ==================== CONTAINERS====================
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
        
        loyalty = softwareSystem "Loyalty Programs" "Loyalty program adapter" {
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

        group "CRM Activities" {
            hubspot       = softwareSystem "HubSpot"                   "CRM & marketing automation"
            infobip       = softwareSystem "Infobip"                   "Enabler for messaging platforms"
            nps           = softwareSystem "NPS System"                "Net Promoter Score & consent management"
            messaging     = softwareSystem "Messaging Platforms"       "Line, WhatsApp, etc." {
                tags "CRM"
            }
        }

        // ==================== RELATIONSHIPS ====================
        CDN -> dealer "Gets frontend assets" ""
        CDN -> administrator "Gets frontend assets" ""
        CDN -> service-pc "Gives frontend assets" ""
        CDN -> service-mobile "Gives frontend assets" ""
        service-pc  -> service-web "Uses" ""
        service-mobile -> service-web "Uses" ""
        kafka -> openapi "Uses" ""
        APIM -> openapi "Uses" ""
        openapi -> aftersales "Uses" ""
        openapi -> teds-customer "Uses" ""
        openapi -> finance "Uses" ""
        openapi -> supplychain "Uses" ""
        openapi -> sku "Uses" ""
        openapi -> service-search "Uses" ""
        openapi -> service-report "Uses" ""
        openapi -> service-scheduler "Uses" ""
        customer -> webApp "Uses" "HTTPS"
        customer -> mobileApp "Uses"
        dealer -> dcpMobile "Uses"
        dcpMobile -> service-mobile "Authenticates & exchanges data"
        service-mobile -> dcpMobile "Authenticates & exchanges data"
        
        // Referentials
        PS9 -> Ps9-referential "Gets tyre referential data" "kafka"
        Spyder -> Spyder-referential "Gets non-tyre referential data" "kafka"
        WyzAuto -> WyzAuto-referential "Gets non-tyre referential data" "API" "kafka"
        MARS -> Manual-dump-referential "Gets non-tyre referential data" "kafka"
        referential-system -> sku "Provides referential data" "kafka"

        //
        loyalty -> teds-customer "Provides available coupons" "kafka"
        eordering -> supplychain "Sends purchase orders" "kafka"
        finance -> taxation "Sends tax data" "kafka"
        taxation -> finance "Provides government reference ID" "kafka"
        service-report -> TDP "Sends reporting data" "kafka"
        TDP -> hubspot "Provides CRM data" ""
        hubspot -> infobip "Sends/receives customer messages (HubSpot-driven)"
        infobip -> messaging "Sends messages to customers" ""
        messaging -> infobip "Sends customer replies back to Infobip" ""
        nps -> messaging "Sends NPS surveys to customers" ""
        customer -> nps "Responds to NPS surveys" ""


        webApp -> spa "Delivers"
        spa -> api "Calls" "JSON/HTTPS"
        mobileApp -> api "Calls" "JSON/HTTPS"

        // Component relationships
        spa -> signInController "POST /signin" "JSON/HTTPS"
        spa -> accountsController "GET /accounts" "JSON/HTTPS"
        spa -> transferController "POST /transfer" "JSON/HTTPS"
        mobileApp -> signInController "POST /signin" "JSON/HTTPS"
        mobileApp -> accountsController "GET /accounts" "JSON/HTTPS"
        mobileApp -> transferController "POST /transfer" "JSON/HTTPS"

        signInController -> securityComponent "Uses"
        accountsController -> mainframeFacade "Uses"
        transferController -> mainframeFacade "Uses"
    }

    views {
        systemContext teds "Level1_SystemContext" {
            title "System Context"
            include *
            # autoLayout lr
        }

        container teds "Level2_teds_Containers" {
            title "Containers"
            include *
            # autoLayout lr
        }

        container referential-system "Level2_referential_Containers" {
            title "Containers"
            include *
            # autoLayout lr
        }

        component api "Level3_Components" {
            title "API Application – Components"
            include *
            autoLayout lr
        }

        dynamic api "SignIn_Flow" "User signs in" {
            spa -> signInController "POST /signin"
            signInController -> securityComponent "validate()"
            securityComponent -> signInController "JWT"
            signInController -> spa "200 OK + JWT"
            autoLayout lr
        }

        styles {
            element "Person" {
                shape Person
                background #1168bd
                color #ffffff
            }
            element "Existing System" {
                background #999999
                color #ffffff
            }
            element "Database" {
                shape Cylinder
            }
            element "Container" {
                background #438dd6
                color #ffffff
            }
            element "Component" {
                background #85bbf0
                color #000000
            }
            element "WebBrowser" {
                shape WebBrowser
                background white
                color #000000
            }
            element "MobileDevicePortrait" {
                shape MobileDevicePortrait
                background white
                color #000000
            }
        }

        theme default
    }
}