## Copyright (c) 2022 Oracle and/or its affiliates.
## All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl

module "oci-oke" {
  source                        = "github.com/oracle-devrel/terraform-oci-arch-oke"
  tenancy_ocid                  = var.tenancy_ocid
  compartment_ocid              = var.compartment_ocid
  use_existing_vcn              = false
  is_api_endpoint_subnet_public = true # OKE API Endpoint will be public (Internet facing)
  is_lb_subnet_public           = true # OKE LoadBalanacer will be public (Internet facing)
  is_nodepool_subnet_public     = false
  node_shape                    = "VM.Standard.A1.Flex"
  k8s_version                   = "v1.25.4"
  node_image_id                 = "ocid1.image.oc1.iad.aaaaaaaanokb5an2x7kbeyqyk3l735j67rizvqxoaatelz4j3wexp3fexmya"
  node_count                    = 1
}

