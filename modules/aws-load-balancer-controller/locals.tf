locals {
  oidc_fingerprint = split("/", var.oidc)[4]
}