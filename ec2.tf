resource "aws_instance" "ec2" {
  ami           = "${var.ec2_ami}"
  count = "${var.ec2_count}" 
  instance_type = "${var.ec2_type}"
  key_name      = "${var.key_name}"
  subnet_id = "${var.subnet_id}"
  vpc_security_group_ids = ["${aws_security_group.sg_ec2.id}"]
  
  root_block_device {
    delete_on_termination = "${var.ec2_delete_root_volume}"
    volume_size = "${var.ec2_rootvol_size}"
  }
 
  tags = {
    Name = "${var.product}.${var.environment}-ec2-${count.index+1}"
  }
}

