# Module EC2

Ce module déploie deux instances EC2 :

- Une dans un subnet public
- Une dans un subnet privé

Les instances utilisent un Security Group fourni en input et installent NGINX via user-data.

## Variables importantes

- `ami_id` : AMI à utiliser pour les instances
- `instance_type` : Type d'instance (t2.micro par défaut)
- `public_subnet_id` / `private_subnet_id` : Subnets où déployer les EC2
- `sg_id` : Security Group à associer
- `name` : Préfixe pour les noms des ressources

## Outputs

- `public_ec2_id`
- `private_ec2_id`
- `public_ec2_ip`
