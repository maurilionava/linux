# Anotações Linux - Conceitos Essenciais

## Conceitos

### Kernel
Núcleo do sistema operacional, responsável por gerenciar hardware, memória, processos e dispositivos de entrada/saída.  
Atua como interface de comunicação entre software e hardware.  
**Exemplos:** Linux, Unix, Windows NT.

---

### GNU
Conjunto de softwares livres que compõem grande parte do ecossistema Linux.  
Faz parte do movimento de Software Livre criado por Richard Stallman.  
O Linux em si é apenas o kernel – o sistema completo é geralmente chamado de **GNU/Linux**.

---

### Shell
Interface que permite ao usuário interagir com o sistema operacional, interpretando comandos e executando-os.  
Pode ser **interativa** (usuário digita comandos) ou **script** (arquivos de automação).  

---

### Bash
O shell mais comum em sistemas Linux (Bourne Again SHell).  
Permite execução de comandos, variáveis, funções e scripts.  

Exemplo:  
```bash
echo $HISTSIZE   # Mostra o tamanho do histórico de comandos
```

---

### Controladoras
São componentes (de hardware ou software) responsáveis por gerenciar a comunicação entre o sistema e dispositivos de armazenamento (HDD, SSD, controladora RAID).  
Elas traduzem comandos do sistema para operações físicas no dispositivo.  

---

### Virtualização
Tecnologia que permite criar ambientes virtuais independentes sobre o mesmo hardware físico.  
Usada em servidores, testes e isolamento de aplicações.  

- **Tipo 1 (bare-metal):** roda direto no hardware (ex: VMware ESXi, Hyper-V, Xen).  
- **Tipo 2 (hosted):** roda sobre um sistema operacional hospedeiro (ex: VirtualBox, VMware Workstation).  
- **Containers:** isolam processos no mesmo kernel (ex: Docker, LXC).  

---

### BIOS (Basic Input/Output System)
Firmware antigo, responsável pela inicialização do hardware e pelo carregamento do bootloader.  
Limitações: suporta apenas discos MBR (até 2 TB), interface simples e mais lenta.  

---

### UEFI (Unified Extensible Firmware Interface)
Substituto moderno da BIOS, com suporte a discos GPT (partições maiores que 2 TB), interface gráfica e recursos de segurança como **Secure Boot**.  

---

### Arquiteturas (i386/x64)
- **i386 (x86, 32 bits):** arquitetura mais antiga, limitada a ~4GB de RAM.  
- **x64 (amd64, 64 bits):** suporta grandes quantidades de memória e melhor desempenho.  

---

### SHA (Secure Hash Algorithm)
Conjunto de funções criptográficas usadas para gerar **hashes**.  
Hash é uma representação única de dados, útil para verificação de integridade e segurança.  
Exemplo:  
```bash
sha256sum arquivo.iso
```
Verifica a integridade de uma imagem baixada.

---

### Sistemas de Boot
Processo que ocorre ao ligar o computador:  
1. **POST (Power On Self Test):** autodiagnóstico do hardware.  
2. **Firmware (BIOS/UEFI):** carrega configurações iniciais.  
3. **Bootloader (ex: GRUB):** carrega o kernel do sistema.  
4. **Kernel:** inicializa drivers, processos e monta sistemas de arquivos.  
5. **User space:** inicializa serviços e disponibiliza login ao usuário.  

---

### Sistema de Arquivos
Forma de organização e armazenamento das pastas e arquivos no sistema operacional.  

- **Unidades de disco:** hardware de armazenamento (HDD, SSD).  
- **Pontos de montagem:** diretórios que funcionam como ponteiros para unidades/discos.  
- **Formatação lógica:** cria a estrutura do sistema de arquivos dentro do disco.  
- **EXT (Extended File System):** usado no Linux.  
  - EXT2, EXT3, EXT4 (mais comum hoje).  
  - Suporta arquivos de até 16TB e partições de até 1 exabyte.  
- **Journaling:** mecanismo de registro que protege contra falhas de energia ou sistema.  
  - Mantém um log (diário) de operações pendentes, reduzindo risco de corrupção.  
- **/etc/fstab:** arquivo de configuração que define quais sistemas de arquivos devem ser montados automaticamente na inicialização e suas opções.  
- **Pontos de montagem:** diretórios especiais que funcionam como “portas de acesso” para dispositivos de armazenamento.  

Outros sistemas de arquivos comuns:  
- **NTFS:** usado pelo Windows.  
- **FAT32/exFAT:** compatíveis entre diferentes SOs.  
- **XFS, Btrfs, ZFS:** avançados, com suporte a snapshots, compressão e escalabilidade.  

---

## Resumo
- **Sistemas de arquivos:** organizam como dados são gravados, acessados e protegidos.  
- **Sistemas de boot:** responsáveis pela inicialização do hardware e carregamento do SO.  
- **Virtualização:** permite rodar múltiplos sistemas/ambientes no mesmo hardware.  
