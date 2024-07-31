locals {
  extra_tags = {
    Entity      = "UK"
    Criticality = "High"
    CostCenter  = "00000"
    Owner       = title(replace("bob-tayara", "-", " "))
 }
}