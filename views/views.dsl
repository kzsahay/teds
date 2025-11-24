views {
        systemContext teds "Level1_SystemContext" {
            title "System Context"
            include *
            # autoLayout
        }

        container teds "Level2_teds_Containers" {
            title "Containers"
            include *
            # autoLayout lr
        }

        component core-database "Level3_core_database_Components" {
            title "Core Database – Components"
            include *
            # autoLayout lr
        }

        container dcpMobile "Level2_dcpmobile_Containers" {
            title "Containers"
            include *
            # autoLayout lr
        }

        component teds-dcp-plate-scanner "Level2_dcpmobile_plate_scanner_Components" {
            title "Containers"
            include *
            # autoLayout lr
        }

        container referential-system "Level2_referential_Containers" {
            title "Containers"
            include *
            # autoLayout lr
        }

        component teds-referential "Level3_referential_Components" {
            title "Referential System – Components"
            include *
            # autoLayout lr
        }

        container loyalty-adapter "Level2_loyalty-adapter_Containers" {
            title "Containers"
            include *
            # autoLayout lr
        }

        component teds-loyalty "Level3_loyalty_Components" {
            title "Loyalty System – Components"
            include *
            # autoLayout lr
        }

        container eOrdering-adapter "Level2_eOrdering-adapter_Containers" {
            title "Containers"
            include *
            # autoLayout lr
        }

        component teds-eOrdering "Level3_eOrdering_Components" {
            title "E-Ordering System – Components"
            include *
            # autoLayout lr
        }

        container taxation-adapter "Level2_taxation-adapter_Containers" {
            title "Containers"
            include *
            # autoLayout lr
        }

        component teds-taxation "Level3_taxation_Components" {
            title "Taxation System – Components"
            include *
            # autoLayout lr
        }

        container CRM-BI-System "Level2_CRM-BI-System_Containers" {
            title "Containers"
            include *
            # autoLayout lr
        }

        component Tplus-data-platform "Level3_Tplus-data-platform_Components" {
            title "HubSpot CRM – Components"
            include *
            # autoLayout lr
        }

        !include ../styles/styles.dsl

        theme default
    }