
  
  

# Demo terraform

Para este demo, inicializaremos nuestra configuración de terraform, luego crearemos y destruiremos los siguientes componentes en AWS:

 1. Una cola de SQS
 2. Un bucket de S3
 

## Requisitos

 - Terraform > v0.15.1
 - Credenciales de AWS 
 

## Inicializando la configuración

Comando: `terraform init`
Salida esperada: ![enter image description here](./images/terraform_init.png)



## Creando componentes

Para crear crear componentes es necesario:

 1. Crear un plan. Comando: `terraform plan`. Salida esperada: ![terraform plan](./images/terraform_plan.png)
 2. Aplicar el plan.  Comando: `terraform apply`. Salida esperada: ![terraform apply](./images/terraform_apply_1.png)
 3. Confirmar la acción y esperar a que los componentes sean creados. Salida esperada: ![terraform apply](./images/terraform_apply_2.png)


## Eliminando componentes
Para eliminar componentes es necesario: 
1. Ejecutar el comando:`terraform destroy`. Salida esperada: ![terraform destroy](./images/terraform_destroy_1.png)
2. Confirmar la acción y Esperar a que los componentes sean destruidos. Salida esperada: ![terraform destroy](./images/terraform_destroy_2.png)




Author Information
------------------

**Owner:** DevOps
**Contact:** [devops@omni.cr](mailto:devops@omni.cr?subject=[demo-terraform]%20Role%20Nginx)

