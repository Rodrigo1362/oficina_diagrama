# oficina_diagrama
Sistema de Controle e Gerenciamento de Ordens de Serviço em Oficina Mecânica.

## 📜 Descrição do Projeto

Este projeto tem como objetivo criar um sistema de controle e gerenciamento de ordens de serviço (OS) em uma oficina mecânica, que organiza os serviços realizados nos veículos trazidos pelos clientes. O sistema gerencia os dados dos veículos, serviços, mecânicos, e a execução das ordens de serviço. Através de um esquema conceitual, as entidades e os relacionamentos entre elas são modelados para possibilitar a implementação de funcionalidades como:

- Cadastro de clientes e veículos.
- Criação e atualização de ordens de serviço (OS).
- Atribuição de equipes de mecânicos a cada OS.
- Cálculo do valor de serviços com base em uma tabela de referência de mão-de-obra e peças.
- Acompanhamento do status de cada OS até a sua conclusão.

## Objetivo

O esquema conceitual para o sistema será desenvolvido e modelado para ajudar na futura implementação de uma solução que permita a execução e monitoramento das ordens de serviço. A modelagem leva em consideração a identificação de clientes, veículos, mecânicos, serviços e a gestão das ordens de serviço.

## Estrutura do Esquema Conceitual

O esquema conceitual é composto por várias entidades com seus atributos e relacionamentos, conforme descrito a seguir.

### Entidades:

1. **Cliente**:
   - `id_cliente` (PK)
   - `nome`
   - `endereco`
   
2. **Veículo**:
   - `id_veiculo` (PK)
   - `modelo`
   - `ano`
   - `placa`
   - `id_cliente` (FK)

3. **Mecânico**:
   - `id_mecanico` (PK)
   - `nome`
   - `endereco`
   - `especialidade`

4. **Ordem de Serviço (OS)**:
   - `id_os` (PK)
   - `numero`
   - `data_emissao`
   - `data_conclusao`
   - `status` (e.g., "pendente", "em execução", "concluída")
   - `valor_total`
   - `id_veiculo` (FK)

5. **Serviço**:
   - `id_servico` (PK)
   - `descricao`
   - `valor`
   - `id_os` (FK)

6. **Peça**:
   - `id_peca` (PK)
   - `descricao`
   - `valor`
   - `id_os` (FK)

### Relacionamentos:

- **Cliente - Veículo**: Um cliente pode ter vários veículos.
- **Veículo - Ordem de Serviço**: Um veículo pode ter várias ordens de serviço associadas.
- **Ordem de Serviço - Serviço**: Cada ordem de serviço pode ter vários serviços associados.
- **Ordem de Serviço - Peça**: Cada ordem de serviço pode ter várias peças associadas.
- **Mecânico - Ordem de Serviço**: Cada mecânico pode ser responsável por várias ordens de serviço (através de uma equipe).

### Diagrama Entidade-Relacionamento (ER)

[Inserir o diagrama ER gerado a partir do esquema conceitual]

## 🚀 Como Rodar o Projeto

1. Clone este repositório para o seu ambiente local.
2. Instale as dependências necessárias:
   ```bash
   pip install -r requirements.txt
