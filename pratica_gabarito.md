# 📝 Exercícios de Linux com Respostas (Gabarito)

## 1. Navegação e Manipulação de Arquivos
1. `pwd` ; `cd ~`  
2. `mkdir -p projetos/{backend,frontend,docs}`  
3. `touch projetos/backend/app.py`  
4. `cp projetos/backend/app.py projetos/frontend/index.py`  
5. `touch projetos/docs/log{1..3}.txt && rm projetos/docs/log*`  
6. `ls -lhart projetos/**/*.py`  
7. `head -n 10 /var/log/syslog ; tail -n 10 /var/log/syslog`  

---

## 2. Busca de Arquivos
1. `find projetos/ -name "*.py"`  
2. `grep -r "import" projetos/*.py`  
3. `locate bashrc`  

---

## 3. Sistema e Recursos
1. `df -lh -T` ; `free -m` ; `uptime`  
2. `du -sh /var/*`  

---

## 4. Usuários e Grupos
1. `whoami`  
2. `sudo adduser devuser`  
3. `sudo groupadd developers && sudo usermod -aG developers devuser`  
4. `groups devuser`  
5. `sudo passwd devuser`  

---

## 5. Permissões de Arquivos
1. `touch deploy.sh`  
2. `chmod 700 deploy.sh`  
3. `chmod 755 deploy.sh`  
4. `sudo chown devuser:devuser deploy.sh`  

---

## 6. Processos
1. `ps aux | grep python`  
2. `tail -f /var/log/syslog &` → `jobs` → `fg %1` → `Ctrl+Z` → `bg %1` → `kill %1`  
3. `top` ou `htop`  

---

## 7. Histórico e Variáveis
1. `history`  
2. `!n` (substituir n pelo número do comando desejado)  
3. `export API_KEY="12345" && echo $API_KEY`  

---

## 8. Gerenciamento de Pacotes
1. `sudo apt update`  
2. `apt search curl`  
3. `sudo apt install curl -y`  
4. `apt show curl`  
5. `apt list --installed | grep python`  
6. `sudo apt remove curl -y`  

---

## 9. Compactação e Arquivos
1.  
   - `tar -czvf docs.tar.gz docs/README.txt`  
   - `gzip docs/README.txt`  
   - `bzip2 docs/README.txt`  
2.  
   - `tar -xzvf docs.tar.gz -C extracao/`  
   - `gunzip docs/README.txt.gz`  
   - `bunzip2 docs/README.txt.bz2`  

---

## 10. Particionamento e Montagem
1. `sudo fdisk -l`  
2. `sudo mkfs.ext4 /dev/sdX1`  
3. `sudo mount /dev/sdX1 /mnt/teste`  
4. `touch /mnt/teste/arquivo.txt`  
5. `sudo umount /mnt/teste`  
6. `sudo fsck -t ext4 /dev/sdX1`  

---

## 11. Extra (Cenários Reais de Desenvolvimento)
1. `git clone https://github.com/usuario/repositorio.git`  
2. `grep -r "class" projetos/*.py`  
3. `tail -f logs/app.log`  
4.  
```bash
#!/bin/bash
cd projetos/backend
tar -czvf backend.tar.gz *.py
echo "Build concluído!"
```
5. `chmod +x build.sh && ./build.sh`  
