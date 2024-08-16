output "instance_id" {
    description = "Id of the EC2 instance"
    value = aws_instance.test-ec2.id
}

output "instance_public_id" {
    description = "Public Ip of the EC2 instance"
    value = aws_instance.test-ec2.public_ip
}