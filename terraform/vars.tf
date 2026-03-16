## Variables para la infraestructura de Azure

variable "location" {
  type        = string
  description = "Región de Azure donde crearemos la infraestructura"
  default     = "francecentral"
}

variable "public_key_path" {
  type        = string
  description = "Ruta para la clave pública de acceso a las instancias"
  default     = "~/.ssh/id_rsa.pub"
}

variable "ssh_user" {
  type        = string
  description = "Usuario para hacer ssh"
  default     = "devops"
}

variable "resource_group_name" {
  type        = string
  description = "Nombre del Resource Group"
  default     = "rg-cp2-devops"
}

variable "acr_name" {
  type        = string
  description = "Nombre del Azure Container Registry"
  default     = "acrcp2pablo2026"
}

variable "vnet_name" {
  type        = string
  description = "Nombre de la red virtual"
  default     = "vnet-cp2"
}

variable "subnet_name" {
  type        = string
  description = "Nombre de la subred"
  default     = "subnet-cp2"
}

variable "nsg_name" {
  type        = string
  description = "Nombre del Network Security Group"
  default     = "nsg-cp2-vm"
}

variable "public_ip_name" {
  type        = string
  description = "Nombre de la IP publica"
  default     = "pip-cp2-vm"
}

variable "nic_name" {
  type        = string
  description = "Nombre de la interfaz de red"
  default     = "nic-cp2-vm"
}

## Variables para la maquina virtual

variable "vm_name" {
  type        = string
  description = "Nombre de la maquina virtual"
  default     = "vm-cp2-web"
}

variable "vm_size" {
  type        = string
  description = "Tamaño de la maquina virtual"
  default     = "Standard_B2ats_v2"
}


## Variables para AKS

variable "aks_name" {
  type        = string
  description = "Nombre del cluster AKS"
  default     = "aks-cp2-pablo"
}

variable "aks_dns_prefix" {
  type        = string
  description = "DNS prefix para AKS"
  default     = "akscp2pablo"
}

variable "aks_node_count" {
  type        = number
  description = "Numero de nodos del pool por defecto"
  default     = 1
}

variable "aks_vm_size" {
  type        = string
  description = "Tamaño de los nodos de AKS"
  default     = "Standard_D2s_v3"
}