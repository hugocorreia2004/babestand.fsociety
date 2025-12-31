# ✅ Validação e Testes

Esta secção contém as evidências de validação de cada funcionalidade do sistema.

## 📁 Estrutura

```
validacao/
├── screenshots/           # Capturas de ecrã
│   ├── login-2fa/
│   ├── veiculos/
│   ├── test-drives/
│   ├── vendas/
│   └── admin/
│
└── videos/               # Vídeos de demonstração
    ├── 01-autenticacao.mp4
    ├── 02-catalogo.mp4
    ├── 03-test-drive.mp4
    └── ...
```

## 🎬 Vídeos de Validação

| # | Funcionalidade | Duração | Vídeo |
|---|----------------|---------|-------|
| 01 | Login + 2FA (Email) | ~2min | [▶️](videos/01-login-2fa-email.mp4) |
| 02 | Login + 2FA (TOTP) | ~2min | [▶️](videos/02-login-2fa-totp.mp4) |
| 03 | Registo + Verificação | ~2min | [▶️](videos/03-registo.mp4) |
| 04 | Catálogo + Filtros | ~3min | [▶️](videos/04-catalogo.mp4) |
| 05 | Comparador | ~2min | [▶️](videos/05-comparador.mp4) |
| 06 | Agendar Test Drive | ~3min | [▶️](videos/06-test-drive.mp4) |
| 07 | Sistema Favoritos | ~2min | [▶️](videos/07-favoritos.mp4) |
| 08 | Área Meus Veículos | ~4min | [▶️](videos/08-meus-veiculos.mp4) |
| 09 | Sistema Negociação | ~4min | [▶️](videos/09-negociacao.mp4) |
| 10 | Dashboard Admin | ~3min | [▶️](videos/10-dashboard.mp4) |
| 11 | CRUD Veículos | ~5min | [▶️](videos/11-crud-veiculos.mp4) |
| 12 | Gestão Utilizadores | ~3min | [▶️](videos/12-utilizadores.mp4) |
| 13 | Logs Segurança | ~2min | [▶️](videos/13-logs.mp4) |

## 📸 Screenshots

### Autenticação

| Screenshot | Descrição |
|------------|-----------|
| ![Login](screenshots/login-2fa/01-login-form.png) | Formulário de login |
| ![2FA Email](screenshots/login-2fa/02-email-code.png) | Código 2FA por email |
| ![TOTP Setup](screenshots/login-2fa/03-totp-setup.png) | Configuração TOTP |

### Veículos

| Screenshot | Descrição |
|------------|-----------|
| ![Catálogo](screenshots/veiculos/01-catalogo.png) | Listagem com filtros |
| ![Detalhe](screenshots/veiculos/02-detalhe.png) | Página de detalhe |
| ![Comparador](screenshots/veiculos/03-comparador.png) | Comparação lado a lado |

### Área Admin

| Screenshot | Descrição |
|------------|-----------|
| ![Dashboard](screenshots/admin/01-dashboard.png) | Dashboard com estatísticas |
| ![CRUD](screenshots/admin/02-crud-veiculo.png) | Edição de veículo |
| ![Logs](screenshots/admin/03-security-logs.png) | Logs de segurança |

## 🔍 Matriz de Validação

| Funcionalidade | Implementado | Testado | Evidência |
|----------------|:------------:|:-------:|-----------|
| Login básico | ✅ | ✅ | [Vídeo 01](videos/) |
| 2FA por Email | ✅ | ✅ | [Vídeo 01](videos/) |
| 2FA por TOTP | ✅ | ✅ | [Vídeo 02](videos/) |
| Rate Limiting | ✅ | ✅ | [Screenshot](screenshots/) |
| Bloqueio de conta | ✅ | ✅ | [Screenshot](screenshots/) |
| Registo | ✅ | ✅ | [Vídeo 03](videos/) |
| Verificação email | ✅ | ✅ | [Vídeo 03](videos/) |
| Remember Me | ✅ | ✅ | [Screenshot](screenshots/) |
| Catálogo veículos | ✅ | ✅ | [Vídeo 04](videos/) |
| Filtros avançados | ✅ | ✅ | [Vídeo 04](videos/) |
| Comparador | ✅ | ✅ | [Vídeo 05](videos/) |
| Favoritos | ✅ | ✅ | [Vídeo 07](videos/) |
| Test Drives | ✅ | ✅ | [Vídeo 06](videos/) |
| Meus Veículos | ✅ | ✅ | [Vídeo 08](videos/) |
| Documentos | ✅ | ✅ | [Vídeo 08](videos/) |
| Manutenções | ✅ | ✅ | [Vídeo 08](videos/) |
| Negociação | ✅ | ✅ | [Vídeo 09](videos/) |
| Reviews | ✅ | ✅ | [Screenshot](screenshots/) |
| Dashboard Admin | ✅ | ✅ | [Vídeo 10](videos/) |
| CRUD Veículos | ✅ | ✅ | [Vídeo 11](videos/) |
| Gestão Users | ✅ | ✅ | [Vídeo 12](videos/) |
| Logs Segurança | ✅ | ✅ | [Vídeo 13](videos/) |
| Headers HTTP | ✅ | ✅ | [Screenshot](../seguranca/screenshots/) |
| TLS 1.3 | ✅ | ✅ | [Screenshot](../seguranca/screenshots/) |
| CSRF Protection | ✅ | ✅ | [Screenshot](screenshots/) |

## 📋 Checklist de Validação

### Segurança
- [x] Headers HTTP de segurança
- [x] TLS 1.3 configurado
- [x] Cookies seguros (HttpOnly, Secure, SameSite)
- [x] CSRF em todos os formulários
- [x] Rate limiting funcional
- [x] Bloqueio de conta após tentativas
- [x] 2FA funcional (Email + TOTP)
- [x] Upload seguro de imagens

### Funcional
- [x] Registo de utilizadores
- [x] Login com múltiplos métodos
- [x] Gestão de perfil
- [x] Catálogo com filtros
- [x] Sistema de favoritos
- [x] Agendamento test drives
- [x] Contacto com notificações
- [x] Área pós-venda completa
- [x] Sistema de negociação
- [x] Dashboard administrativo

### Performance
- [x] Cache implementado
- [x] Imagens otimizadas
- [x] Queries com índices
- [x] Lazy loading de imagens

## 🎥 Como Gravar Vídeos

Para manter consistência nos vídeos de validação:

1. **Resolução**: 1920x1080 (Full HD)
2. **Formato**: MP4 (H.264)
3. **Tamanho máximo**: 100MB por vídeo
4. **Duração**: 2-5 minutos por funcionalidade
5. **Incluir**: Narração ou legendas descritivas

### Ferramentas Recomendadas
- OBS Studio (gratuito)
- ShareX (gratuito, Windows)
- Kazam (gratuito, Linux)
