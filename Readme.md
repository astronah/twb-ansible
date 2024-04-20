# Из репозитория исключены /var убедиться что данные существуют! 

## Prepare
###### ansible-galaxy collection install community.docker

## Developer
### ansible-playbook playbooks/retweets.io-ping.yaml - Проверить доступность серверов.
### ansible-playbook playbooks/retweets.io-deploy.yaml - Деплоинг

## admin
### ansible-playbook playbooks/retweets.io-ping.yaml -e "node=all ansible_user=root" - Проверить доступность серверов.
### ansible-playbook playbooks/retweets.io.yaml -e "node=nodes_docker user_name=retweets" - Настройка сервера 
