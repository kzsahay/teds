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
            sqlproxy = container "sqlproxy" "medium performance database" {
                tags "Container" "Database"
            }
            reporting-database = container "reporting-database" "medium performance database" {
                tags "Container" "Database"
            }
            core-database = container "core-database" "high performance database" {
                tags "Container" "Database"

                // ==================== COMPONENTS (must be inside their container) ====================
                DCP-database = component "DCP Mobile Database" "Stores credentials for log in" "postgres" {
                    tags "Component"
                }
                eOrdering-database = component "E-Ordering Database" "Stores E-Ordering data" "postgres" {
                    tags "Component"
                }
                referential-database = component "Referential Database" "Stores referential data" "postgres" {
                    tags "Component"
                }
                taxation-database = component "Taxation Database" "Stores taxation data" "postgres" {
                    tags "Component"
                }
                loyalty-database = component "Loyalty Database" "Stores loyalty data" "postgres" {
                    tags "Component"
                }
            }
        }