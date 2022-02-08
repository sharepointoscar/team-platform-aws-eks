 locals {
  platform_teams = {
    hashi-platform-team = {
      users = [
        "arn:aws:iam::540060600283:role/Admin"
      ]
    }
  }
  application_teams = {
    hashi-developers = {
      labels = {
        name = "hashi-developers",
      }
      quota = {
        "requests.cpu"    = "2000m",
        "requests.memory" = "8Gi",
        "limits.cpu"      = "4000m",
        "limits.memory"   = "16Gi",
        "pods"            = "20",
        "secrets"         = "20",
        "services"        = "20"
      }
      manifests_dir = "./manifests"
      users = [
        "arn:aws:iam::540060600283:role/Admin"
      ]
    }
  }
 }