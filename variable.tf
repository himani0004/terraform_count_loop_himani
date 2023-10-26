variable "tag_himani" {
  type = map(any)
}
variable "bucket_name" {
  type = list(string)
}
variable "acl1" {
  type = string
}
variable "ownership1" {
  type = string
}
variable "status1" {
  type = string
}
variable "force_destroy1" {
  type = bool
}