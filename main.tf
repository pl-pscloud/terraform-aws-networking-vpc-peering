resource "aws_vpc_peering_connection" "pscloud-vpc-peering" {
  for_each = var.pscloud_peer_vpcs
  
  vpc_id        = each.value.vpc1
  peer_vpc_id   = each.value.vpc2
  auto_accept   = var.pscloud_auto_accept
  
  tags = {
    Name = "${var.pscloud_company}_vpc_peering_${var.pscloud_env}_${each.value.vpc1}_${each.value.vpc1}"
  }
}
