provider "oci" {}

resource "oci_core_instance" "generated_oci_core_instance" {
	agent_config {
		is_management_disabled = "false"
		is_monitoring_disabled = "false"
		plugins_config {
			desired_state = "DISABLED"
			name = "Vulnerability Scanning"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Oracle Java Management Service"
		}
		plugins_config {
			desired_state = "ENABLED"
			name = "OS Management Service Agent"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Management Agent"
		}
		plugins_config {
			desired_state = "ENABLED"
			name = "Custom Logs Monitoring"
		}
		plugins_config {
			desired_state = "ENABLED"
			name = "Compute Instance Run Command"
		}
		plugins_config {
			desired_state = "ENABLED"
			name = "Compute Instance Monitoring"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Block Volume Management"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Bastion"
		}
	}
	availability_config {
		recovery_action = "RESTORE_INSTANCE"
	}
	availability_domain = "FAOL:US-ASHBURN-AD-1"
	compartment_id = "ocid1.compartment.oc1..aaaaaaaa5fqmsscgiuqnjnditov5paekmaznkglubxdxoag2xfa7yiixf5ta"
	create_vnic_details {
		assign_private_dns_record = "true"
		assign_public_ip = "false"
		subnet_id = "ocid1.subnet.oc1.iad.aaaaaaaa2lplnjiyyki65kzerhngc7nyix2ruclvqbpkxxjjlvy2mojm35va"
	}
	display_name = "zak-vm01"
	instance_options {
		are_legacy_imds_endpoints_disabled = "false"
	}
	metadata = {
		"ssh_authorized_keys" = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDPQXh/3dxqJnfO/4qyFd/zT6nChnvtWuoobeH7LheARubCLFE7fuvuUNTbCeHNJrnILUGp/yc71Q9X3LYRXbijkXLKx/00XFzHn4rBXsTrkCw42hD6hvMxZP5tKmQSYBDuoQRYTYdIuBXqTPwAQToPeOi7CBQdIaJFEDoWHqTZAaluJoFdbS1nOd1QDZWzh5qSzTLUHz3e2rY0kWfafA6DRF4p9S8vTEdfkpHLdWoeUJkNpwYNlnZjGKqAAfuAnL1S2QuK0veQGhRn7YBeMEaJfsL6W6GkRuAG1R8Zov6KrE77bfD4UFS7f5zTrT7amsi8pNgynAzFJiFsXI9Au3bDGXHLpmL5FzfcnYh9ooLgx0bI1L40WCDngxsm8FSYV7mnp9mT0ZEI32LzOY+iaCrKBhdkZHDoapc5PfdJvWDVwj2ngLQC4UTFXn1/XKlo497mOr7iYo7R/DTqm1rk18HFpYGmhfT3Lo6llyuS0M+hoO7TpN2pvMzfI4wLaYZoV5FvM2PhPXnnG7nr4EWeY5wUcFjQGI68hGlJIw3CjmPZjkJrxQp5tB70lZjUm8phWqUDx5TOli35J8K3AaPgaifui1olcx1q+6h25T6W/TK2+p5zN3Lipk4yvYUPNIZok2xQTJcqL8cZ5aiUcJ9DubToWhZEDFjSh6VM08N5XVkP5Q== opc@zak-hop01"
	}
	shape = "VM.Standard.E4.Flex"
	shape_config {
		baseline_ocpu_utilization = "BASELINE_1_1"
		memory_in_gbs = "2"
		ocpus = "2"
	}
	source_details {
		source_id = "ocid1.image.oc1.iad.aaaaaaaazavxtitjiojkyivwwb72pn2vcvnoxirpgkhf26i2ku4egieknkxq"
		source_type = "image"
	}
}