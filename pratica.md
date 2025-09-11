# 📝 Exercícios de Linux (Prática)

## 1. Navegação e Manipulação de Arquivos
1. Descubra em qual diretório você está e depois vá até sua pasta **home**.  
2. Crie a estrutura de diretórios:  
   ```
   projetos/
   ├── backend/
   ├── frontend/
   └── docs/
   ```
3. Dentro de `backend/`, crie um arquivo `app.py` vazio.  
4. Copie `app.py` para `frontend/` e renomeie para `index.py`.  
5. Crie 3 arquivos de texto (`log1.txt`, `log2.txt`, `log3.txt`) em `docs/` e depois remova todos de uma vez.  
6. Liste os arquivos `.py` criados, mostrando tamanho e ordenados pela data de modificação.  
7. Exiba apenas as **10 primeiras linhas** e as **10 últimas linhas** de um arquivo de texto grande.  

---

## 2. Busca de Arquivos
1. Busque todos os arquivos `.py` no diretório `projetos/`.  
2. Procure dentro desses arquivos se existe a palavra **import**.  
3. Use o `locate` para encontrar todos os arquivos `bashrc` no sistema.  

---

## 3. Sistema e Recursos
1. Descubra: espaço total e disponível em disco, consumo de memória e há quanto tempo o sistema está ligado.  
2. Liste o tamanho de todos os diretórios dentro de `/var/`.  

---

## 4. Usuários e Grupos
1. Descubra qual usuário você está utilizando agora.  
2. Crie um novo usuário `devuser`.  
3. Crie um grupo `developers` e adicione `devuser` a ele.  
4. Verifique a quais grupos o usuário `devuser` pertence.  
5. Altere a senha do usuário `devuser`.  

---

## 5. Permissões de Arquivos
1. Crie um arquivo `deploy.sh`.  
2. Dê permissão de execução apenas para o dono.  
3. Depois, permita execução para todos.  
4. Altere o dono do arquivo para `devuser`.  

---

## 6. Processos
1. Liste todos os processos rodando e filtre apenas os que contenham a palavra **python**.  
2. Inicie um processo simples em background, liste os jobs, traga para foreground e depois finalize.  
3. Use `top` ou `htop` para monitorar os processos em tempo real.  

---

## 7. Histórico e Variáveis
1. Execute três comandos diferentes e depois visualize seu histórico.  
2. Reexecute o penúltimo comando utilizando o histórico.  
3. Crie uma variável de ambiente chamada `API_KEY` com valor fictício e depois exiba no terminal.  

---

## 8. Gerenciamento de Pacotes
1. Atualize a lista de pacotes.  
2. Busque pelo pacote `curl`.  
3. Instale o `curl`.  
4. Mostre informações detalhadas sobre o pacote `curl`.  
5. Liste todos os pacotes instalados e filtre os que contenham `python`.  
6. Remova o pacote `curl`.  

---

## 9. Compactação e Arquivos
1. Crie um arquivo `README.txt` dentro de `docs/` e depois compacte-o usando:  
   - tar.gz  
   - gzip  
   - bzip2  
2. Extraia os arquivos compactados em uma pasta chamada `extracao/`.  

---

## 10. Particionamento e Montagem (simulação em VM/disco extra)
1. Liste todas as partições disponíveis.  
2. Formate uma partição livre em **ext4**.  
3. Monte a partição em `/mnt/teste`.  
4. Crie um arquivo de teste dentro dessa partição.  
5. Desmonte a partição.  
6. Verifique e repare o sistema de arquivos dessa partição.  

---

## 11. Extra (Cenários Reais de Desenvolvimento)
1. Baixe o código-fonte de um repositório GitHub.  
2. Use `grep` para encontrar todas as ocorrências da palavra `class` nos arquivos `.py`.  
3. Monitore um log em tempo real enquanto executa seu programa.  
4. Crie um script `build.sh` que compacte todos os `.py` de `backend/` e exiba uma mensagem de conclusão.  
5. Torne o script executável e rode-o.  
