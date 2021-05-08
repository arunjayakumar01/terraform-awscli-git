
 ![drawing](https://accubits-image-assets.s3-ap-southeast-1.amazonaws.com/AJ/terraform.png "")
 ![drawing](https://accubits-image-assets.s3-ap-southeast-1.amazonaws.com/AJ/aws.png "")
 ![drawing](https://accubits-image-assets.s3-ap-southeast-1.amazonaws.com/AJ/git.png "")
 
## Terraform / AWS CLI / GIT 

- `cp env.sample .env`
- Update values for `AWS_ACCESS_KEY_ID`,`AWS_SECRET_ACCESS_KEY` and `AWS_DEFAULT_REGION`  in `.env` file
- `docker run -itd -v $(pwd):/home/ubuntu/project arunjayakumar/terrform:0.1  --name <name>`
- Or use docker-compose to run 

``` yaml
version: '3'

services:
  terraform:
    build: .
    container_name: terraform
    image: arunjayakumar/terrform:0.1
    environment:
      - AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID}
      - AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY}
      - AWS_DEFAULT_REGION=${AWS_DEFAULT_REGION}
    command: ""
    volumes:
      - './:/home/ubuntu/project'
    restart: always
``` 

- `docker-compose run terraform`
- check aws access by running any aws cli commands eg : `aws s3 ls`

