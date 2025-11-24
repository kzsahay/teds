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

        component api "Level3_Components" {
            title "API Application – Components"
            include *
            # autoLayout lr
        }

        dynamic api "SignIn_Flow" "User signs in" {
            spa -> signInController "POST /signin"
            signInController -> securityComponent "validate()"
            securityComponent -> signInController "JWT"
            signInController -> spa "200 OK + JWT"
            # autoLayout lr
        }

        !include ../styles/styles.dsl

        theme default
    }