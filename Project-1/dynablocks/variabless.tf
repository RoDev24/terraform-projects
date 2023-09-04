variable "region" {
  description = "The aws region"
  type        = string
  default     = "us-east-1"
}

/*variable "my_ami" {
  description = "The aws ami"
  type = string
  default = "ami-007855ac798b5175e"
}*/

variable "instance_type" {
  description = "The ec2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "key_pair" {
  description = "The ec2 key pair"
  type        = string
  default     = "auto30"
}

variable "ingressrules" {
  type    = list(number)
  default = [80, 443, 8080, 22]
}

variable "egressrules" {
  type    = list(number)
  default = [80, 443, 25, 3306, 53, 8080]
}
