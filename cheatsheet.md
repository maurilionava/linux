# CHEATSHEET LINUX

## 1. Navegação e Manipulação de Arquivos

### Navegação
- `pwd` – Mostrar diretório atual  
- `cd /home/user` – Ir para `/home/user`  
  - `..` – Sobe um nível  
  - `~` – Vai para o diretório home  
  - `-` – Volta ao diretório anterior  
- `ls -lhart *.jpg | more` – Listar arquivos `.jpg` com detalhes, ordenados por data (reverso), com paginação  
- `tree` – Mostrar estrutura de diretórios em árvore  

### Criação, remoção e cópia
- `mkdir new_folder` – Criar diretório  
- `rm -rf new_folder` – Remover diretório e conteúdo  
- `cp -R /source /destination` – Copiar arquivos/pastas (recursivo se for diretório)  
- `mv oldname.txt newname.txt` – Renomear/mover arquivo  
- `touch newfile.txt` – Criar arquivo vazio/atualizar timestamp  

### Exibição de arquivos
- `cat file.txt` – Mostrar conteúdo  
- `less file.txt` – Visualizar com paginação  
- `head file.txt` – Primeiras 10 linhas  
- `tail file.txt` – Últimas 10 linhas  

### Edição
- `nano file.txt` – Editar com Nano  
- `vim file.txt` – Editar com Vim  

---

## 2. Busca de Arquivos
- `find . -name "*.jpg"` – Buscar arquivos `.jpg`  
  - `-type f` – Apenas arquivos  
  - `-type d` – Apenas diretórios  

- `locate "*.jpg"` – Buscar via banco de dados do `locate` (precisa `updatedb`)  

---

## 3. Sistema e Recursos
- `df -lh -T` – Espaço em disco (legível + tipo de FS)  
- `du -sh *` – Tamanho de cada item no diretório atual  
- `free -m` – Uso de memória (em MB)  
  - `-k` – KB  
  - `-b` – Bytes  
- `uptime` – Tempo ligado do sistema  
- `clear` – Limpar tela  

---

## 4. Usuários e Grupos

### Informações
- `whoami` – Usuário atual  
- `who` – Quem está logado  
- `w` – Usuários logados + atividades  
- `id` – ID do usuário e grupos  
- `groups username` – Mostrar grupos do usuário  

### Gerenciamento de usuários
- `adduser username` – Criar usuário  
- `passwd username` – Alterar senha  
- `deluser username` – Remover usuário  
- `useradd username` – Alternativa para criar usuário  
- `userdel username` – Alternativa para remover usuário  

### Gerenciamento de grupos
- `groupadd groupname` – Criar grupo  
- `groupdel groupname` – Remover grupo  
- `usermod -aG groupname username` – Adicionar usuário ao grupo  
- `adduser username groupname` – Alternativa para adicionar ao grupo  

---

## 5. Permissões de Arquivo
- `chmod -v 755 file.txt` – Permissões `rwxr-xr-x`  
  - `-R` – Aplicar recursivamente  
  - `ugo+x` – Adicionar execução a todos  

- `chown user:group file.txt` – Alterar dono e grupo  

---

## 6. Processos

### Listagem
- `ps aux | grep process_name` – Listar processos filtrando por nome  
  - `ps -au`, `ps -Ax`, `ps -ef` – Variações de visualização  

### Monitoramento
- `top -i` – Monitor em tempo real  
- `htop` – Monitor interativo (se instalado)  

### Encerramento
- `kill PID` – Encerrar processo  
  - `-9` – Forçar encerramento  

### Jobs
- `jobs` – Listar jobs em background  
- `fg %1` – Trazer job para foreground  
- `bg %1` – Retomar em background  

---

## 7. Histórico
- `history` – Mostrar histórico  
- `!n` – Executar comando nº *n*  
- `!string` – Executar último comando iniciado com *string*  
- `!?string` – Executar último comando que contém *string*  

---

## 8. Variáveis e Echo
- `echo "Hello, World!"` – Imprimir no terminal  
- `echo $HOME` – Mostrar variável de ambiente HOME  
- `export MY_VAR="my_value"` – Definir variável de ambiente  

---

## 9. Gerenciamento de Sistema
- `shutdown -h now` – Desligar imediatamente  
  - `-r now` – Reiniciar  
  - `-h +10` – Agendar desligamento em 10 minutos  
- `reboot` – Reiniciar  
- `halt` – Parar sistema  

---

## 10. Acesso e Terminais
- `Alt + F1/F2/...` – Alternar entre TTYs  
- `Alt + F7` – Voltar para interface gráfica  

---

## 11. Gerenciamento de Pacotes (Debian/Ubuntu)

### APT
- `apt update` – Atualizar lista de pacotes  
- `apt upgrade -y` – Atualizar pacotes  
- `apt full-upgrade -y` – Upgrade completo (dependências inteligentes)  
- `apt dist-upgrade -y` – Upgrade que pode remover pacotes  
- `apt clean` – Limpar cache de pacotes  
- `apt autoclean` – Remover apenas pacotes obsoletos  
- `apt autoremove` – Remover dependências não usadas  
- `apt search package_name` – Buscar pacote  
- `apt show package_name` – Mostrar informações detalhadas  
- `apt list --installed | grep package_name` – Listar pacotes instalados  
- `apt install package_name -y` – Instalar pacote  
- `apt remove package_name` – Remover pacote  
- `apt purge package_name` – Remover pacote e configurações  

### DPKG
- `dpkg -i package.deb` – Instalar pacote `.deb`  
- `dpkg -r package_name` – Remover pacote  
- `dpkg -l | grep package_name` – Listar pacotes instalados  

---

## 12. Compactação de Arquivos

### TAR
- `tar -cvf archive.tar /path/to/directory` – Criar arquivo `.tar`  
- `tar -xvf archive.tar` – Extrair `.tar`  
- `tar -tvf archive.tar` – Listar conteúdo  
- `tar -rvf archive.tar file.txt` – Adicionar arquivo a `.tar`  

- `tar -czvf archive.tar.gz /path/to/directory` – Criar `.tar.gz`  
- `tar -xzvf archive.tar.gz` – Extrair `.tar.gz`  

### BZIP2
- `bzip2 file.txt` – Comprimir com bzip2  
  - `-9` – Máxima compressão  
- `bunzip2 file.txt.bz2` – Descomprimir  

### GZIP
- `gzip file.txt` – Comprimir com gzip  
- `gunzip file.txt.gz` – Descomprimir  

---

## 13. Particionamento
- `fdisk -l` – Listar partições  
- `fdisk /dev/sdX` – Abrir utilitário fdisk  
- `parted /dev/sdX` – Abrir utilitário parted  
- `mkfs.ext4 -c -L label /dev/sdX1` – Criar sistema de arquivos ext4 na partição  
