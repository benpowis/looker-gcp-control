connection: "mandm_bigquery"

include: "/EANSKUs.view.lkml"                # include all views in the views/ folder in this project

explore:eanskus {
  group_label: "EANSKUs"
}
