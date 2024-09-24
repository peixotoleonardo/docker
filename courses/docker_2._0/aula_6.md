# Container sem Docker

A aula mostra alguns recursos do Linux que o Docker utiliza
para conseguir isolar os containers.

## unshare

Comando usado para rodar um programa em um novo namespace.


```bash
sudo unshare --pid --fork --mount-proc /bin/bash
```

Opções:

- --pid (-p): Cria um novo PID namespace
- --fork (-f): Fork um programa especifico como um processo filho
- --mount-proc Antes de executar o programa, monta o proc filesystem


Para verificar a árvore de processo criado, podemos executar o comando 
ps em outra sessão do terminal:

```bash
ps -ef --forest
```

## chroot

Comando usado para modificar o diretório raiz aparente para o processo e seus filhos.

É necessário ter toda a estrutura de diretórios do Linux dentro do diretório target
do chroot.


**debootstrap**

Usado para criar todo a estrutura de diretórios de alguma distro baseada em Debian.

```bash
sudo debootstrap jammy ./aula_6
```

Depois de criado, nós podemos executar:

```bash
sudo chroot ./aula_6
```

## unshare + chroot

```bash
sudo unshare --pid --fork --mount-proc=./aula_6/proc chroot ./aula_6 /bin/bash
```

## cgroup

Utilizado para gerênciar a utilização de recursos, como CPU, memória, 
banda de rede, etc...

