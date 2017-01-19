resource "aws_eip" "eip_for_nat_gw" {
  vpc      = true
}
