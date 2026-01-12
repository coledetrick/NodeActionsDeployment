output "ec2_public_ip" {
  value       = aws_instance.nodejs.public_ip
  description = "Public IP of the EC2 instance"
}

output "instance_id" {
  value       = aws_instance.nodejs.id
  description = "EC2 instance id"
}
