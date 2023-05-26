output "instance_public_ip" {
    value = aws_instance.bih.public_ip
    description = "instance public ip"
}

output instance_public_dns {
    value = aws_instance.bih.public_dns
    description = "instance public ip"
}