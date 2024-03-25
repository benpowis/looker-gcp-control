connection: "mandm_bigquery"

include: "/EANSKUs.view.lkml"                # include all views in the views/ folder in this project

explore:ean_issues {
  group_label: "EANSKUs"
}
