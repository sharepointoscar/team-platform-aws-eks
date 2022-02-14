module "tfplan-functions" {
  source = "https://github.com/sharepointoscar/terraform-guides/governance/third-generation/common-functions/tfplan-functions/tfplan-functions.sentinel"
}


module "tfstate-functions" {
  source = "https://github.com/sharepointoscar/terraform-guides.git//governance/third-generation/common-functions/tfstate-functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
  source = "https://github.com/sharepointoscar/terraform-guides.git//governance/third-generation/common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

module "aws-functions" {
  source = "https://github.com/sharepointoscar/terraform-guides.git//governance/third-generation/aws/aws-functions/aws-functions.sentinel"
}


policy "restrict-eks-node-group-size" {
  source = "https://github.com/sharepointoscar/terraform-guides.git//governance/third-generation/aws/restrict-eks-node-group-size.sentinel"
  enforcement_level = "advisory"
}