variable "gc_credentials" {
  type    = string
  default = "project-everis-f6429c48cd6b.json"
}
variable "gc_project" {
  type    = string
  default = "project-everis"
}
variable "gc_region" {
  type    = string
  default = "us-east-1"
}
variable "gke_namecluster" {
  type    = string
  default = "gke-challenge-everis"
}
variable "gke_network" {
  type    = string
  default = "default"
}
variable "gke_subnetwork" {
  type    = string
  default = "default"
}
variable "gke_service_account" {
  type    = string
  default = "challenge-gke@project-everis.iam.gserviceaccount.com"
}