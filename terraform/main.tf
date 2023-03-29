resource "aws_instance" "key" {
ami = "ami-0376ec8eacdf70aae"
instance_type = "t2.micro"
vpc_security_group_ids = [aws_security_group.demo-sg.id]
tags = {
Name = "project-instance"
Environment = "prod"
}
key_name = "mykeypaire"
}
