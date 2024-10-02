#Madatory user should supply
variable "ami_id" {
  type = string
  #default = "ami-09c813fb71547fc4f"
}

#optional user may override this value but default value is t3.micro
variable "instance_type"{
    default = "t3.micro"
    type = string
    validation {
        condition = contains ([ "t3.micro","t3.medium","t3.small"],var.instance_type)
        error_message = "instance_type can be only of t3,micro,t3.samll,t3.medium"
    }
}

#mandatory user should supply
variable "vpc_security_group_ids"{
    type = list(string)
}