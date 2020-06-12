resource "aws_security_group" "sg_ec2" {
  name        = "${var.product}.${var.environment}-ec2-sg"
  vpc_id      = "${var.vpc_id}"

  ingress {
    description = "ec2 sg"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.product}.${var.environment}-ec2-sg"
  }
}

