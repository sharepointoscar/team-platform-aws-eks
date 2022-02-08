/*
 * Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
 * SPDX-License-Identifier: MIT-0
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy of this
 * software and associated documentation files (the "Software"), to deal in the Software
 * without restriction, including without limitation the rights to use, copy, modify,
 * merge, publish, distribute, sublicense, and/or sell copies of the Software, and to
 * permit persons to whom the Software is furnished to do so.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
 * INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
 * PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
 * HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
 * OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
 * SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */

variable "helm_config" {
  type        = any
  default     = {}
  description = "ArgoCD Helm Chart Config values"
}

variable "applications" {
  type        = any
  default     = {}
  description = "ArgoCD Application config used to bootstrap a cluster."
}

variable "admin_password_secret_name" {
  type        = string
  default     = "argo-admin-secret"
  description = "Name for a secret stored in AWS Secrets Manager that contains the admin password for ArgoCD."
}

variable "eks_cluster_id" {
  type        = string
  description = "Name for the EKS Cluster"
}

variable "add_on_config" {
  type        = any
  default     = {}
  description = "Configuration for managing add-ons via ArgoCD"
}
