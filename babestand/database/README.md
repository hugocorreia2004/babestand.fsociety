# 🗄️ Base de Dados

## Visão Geral

| Parâmetro | Valor |
|-----------|-------|
| **SGBD** | MariaDB 10.11 |
| **Charset** | utf8mb4 |
| **Collation** | utf8mb4_unicode_ci |
| **Total Tabelas** | 36 |

## Ficheiros

| Ficheiro | Descrição |
|----------|-----------|
| [schema.sql](schema.sql) | Estrutura das tabelas (sem dados) |
| [seed.sql](seed.sql) | Dados de exemplo |
| [full-export.sql](full-export.sql) | Export completo |

## Diagrama ER

📊 [Ver diagrama ER completo](../docs/arquitetura/diagrama-er.md)

## Tabelas por Módulo

### 👤 Utilizadores e Autenticação
```sql
roles                -- Papéis (admin, user)
users                -- Dados dos utilizadores
login_tokens         -- Tokens 2FA por email
login_attempts       -- Rate limiting
login_history        -- Histórico de logins
login_logs           -- Logs de login
user_activity        -- Atividade do utilizador
security_logs        -- Eventos de segurança
notifications        -- Notificações in-app
```

### 🚗 Veículos
```sql
vehicles             -- Dados dos veículos
brands               -- Marcas automóveis
vehicle_types        -- Tipos (carro, mota, etc.)
fuel_types           -- Combustíveis
vehicle_status       -- Estados
vehicle_colors       -- Cores
vehicle_images       -- Imagens
features             -- Características/extras
vehicle_features     -- Relação veículo-característica
vehicle_waiting_list -- Lista de espera
```

### 📅 Funcionalidades
```sql
test_drives          -- Agendamentos
test_drive_status    -- Estados do test drive
favorites            -- Veículos favoritos
reviews              -- Avaliações
contact_messages     -- Mensagens de contacto
contact_replies      -- Respostas às mensagens
```

### 💰 Vendas e Negociação
```sql
sell_trade_requests  -- Pedidos de venda/troca
negotiation_messages -- Histórico de negociação
```

### 🔧 Pós-Venda
```sql
vehicle_documents      -- Documentos do proprietário
vehicle_maintenance    -- Histórico de manutenções
maintenance_reminders  -- Lembretes enviados
```

### ⚙️ Configurações
```sql
settings             -- Configurações legacy
site_settings        -- Configurações do site
closed_days          -- Dias encerrados
```

## Principais Relações

```
users (1) ─────< (N) vehicles          [buyer_id]
users (1) ─────< (N) test_drives       [user_id]
users (1) ─────< (N) favorites         [user_id]
users (1) ─────< (N) reviews           [user_id]
users (1) ─────< (N) sell_trade_requests [user_id]

vehicles (1) ─────< (N) vehicle_images    [vehicle_id]
vehicles (1) ─────< (N) test_drives       [vehicle_id]
vehicles (1) ─────< (N) favorites         [vehicle_id]
vehicles (1) ─────< (N) vehicle_documents [vehicle_id]

brands (1) ─────< (N) vehicles         [brand_id]
vehicle_status (1) ─────< (N) vehicles [status_id]
fuel_types (1) ─────< (N) vehicles     [fuel_type_id]
```

## Índices Principais

```sql
-- users
INDEX idx_email (email)
INDEX idx_remember_token (remember_token)

-- vehicles
INDEX idx_brand (brand_id)
INDEX idx_status (status_id)
INDEX idx_price (price)
INDEX idx_year (year)
FULLTEXT idx_search (model, description)

-- test_drives
INDEX idx_user (user_id)
INDEX idx_vehicle (vehicle_id)
INDEX idx_date (scheduled_date)
UNIQUE unique_slot (scheduled_date, scheduled_time)

-- security_logs
INDEX idx_user_id (user_id)
INDEX idx_event_type (event_type)
INDEX idx_created_at (created_at)
```

## Backup e Restauro

### Exportar
```bash
mysqldump -u user -p babestand > backup.sql
```

### Importar
```bash
mysql -u user -p babestand < backup.sql
```

### Apenas Estrutura
```bash
mysqldump -u user -p --no-data babestand > schema.sql
```
