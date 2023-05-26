resource "aws_instance" "bih" {
    ami                 = var.bih_ami
    instance_type       = var.bih_instance_type
    vpc_security_group_ids     = [aws_security_group.tf_sg.id]
    associate_public_ip_address = true
    availability_zone   = var.azs [0]
    subnet_id           = aws_subnet.public_subnet.id
    key_name            = "aws_tf_key"
    
    tags = {
        Name = "${var.vpc_name}-${var.bih_instance_name}"
        Env= local.common_tags ["Env"]
        Team= local.common_tags ["Team"]
    }
}
