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
PS9 -> kafka-consumer-referential "Gets Michelin tyre referential data" "kafka"
Spyder -> kafka-consumer-referential "Gets non-tyre referential data" "kafka"
WyzAuto -> kafka-consumer-referential "Gets non-tyre referential data" "API" "kafka"
MARS -> kafka-consumer-referential "Gets non-tyre referential data" "Manual dump"
kafka-consumer-referential -> referential-database "Stores referential"
kafka-producer-referential -> sku "Provides referential data" "kafka"

// Loyalty Programs
teds-customer -> loyalty-adapter "Requests available coupons" "kafka"
Thailand-iCare -> Kafka-consumer-loyalty "Gets available coupons" "API" "kafka"
Korea-loyalty -> Kafka-consumer-loyalty "Gets available coupons" "API" "kafka"
Other-Loyalty -> Kafka-consumer-loyalty "Gets available coupons" "API" "kafka"
kafka-producer-loyalty -> teds-customer "Provides available coupons" "kafka"

// eOrdering
Thailand-MDO -> Kafka-consumer-eOrdering "Gets available E-orders" "API" "kafka"
Korea-SANA -> Kafka-consumer-eOrdering "Gets available E-orders" "API" "kafka"
Other-eOrdering -> Kafka-consumer-eOrdering "Gets available E-orders" "API" "kafka"
kafka-producer-eOrdering -> supplychain "Provides available E-orders" "kafka"

// Taxation
finance -> Kafka-consumer-taxation "Sends tax data" "kafka"
kafka-producer-taxation -> Thailand-eTax "Sends E-tax data to Govt agency" "kafka"
kafka-producer-taxation -> Other-eTax "Sends E-tax data to Govt agency" "kafka"
Thailand-eTax -> Kafka-consumer-taxation "Gets E-tax reference from Govt agency" "kafka"
other-eTax -> Kafka-consumer-taxation "Gets E-tax reference from Govt agency" "kafka"
kafka-producer-taxation -> finance "Provides government reference ID" "kafka"

// 
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