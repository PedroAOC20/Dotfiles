# Niri — Configuração

Gerenciador de janelas [niri](https://github.com/YaLTeR/niri): compositor Wayland com layout de colunas roláveis.

## Estrutura de arquivos

```
~/.config/niri/
├── config.kdl              # Entrada principal
├── binds/
│   ├── core.kdl            # Ações do sistema (terminal, launcher, lock, quit)
│   ├── apps.kdl            # Atalhos para abrir aplicativos
│   ├── navigation.kdl      # Foco, movimento, workspaces, monitores
│   └── media.kdl           # Volume, brilho (teclas de hardware)
└── modules/
    ├── layout.kdl          # Gaps, bordas, sombras, presets de largura
    ├── inputs.kdl          # Teclado e touchpad
    ├── outputs.kdl         # Monitores e resoluções
    ├── animations.kdl      # Animações de janela e workspace
    └── windows-rules.kdl   # Regras automáticas por app
```

---

## Atalhos de teclado

> `Mod` = tecla Super (Win)

### Sistema

| Atalho | Ação |
|---|---|
| `Mod + Return` | Terminal (ghostty) |
| `Mod + Space` | Launcher |
| `Mod + Alt + Space` | Launcher — clipboard |
| `Mod + Ctrl + Space` | Launcher — emoji |
| `Mod + P` | Menu de sessão / power |
| `Mod + E` | Arquivos (nautilus) |
| `Mod + Q` | Fechar janela |
| `Mod + Shift + L` | Bloquear tela |
| `Mod + Shift + E` | Sair do niri |
| `Ctrl + Alt + Delete` | Sair do niri |

### Capturas de tela

| Atalho | Ação |
|---|---|
| `Print` | Screenshot da área selecionada |
| `Ctrl + Print` | Screenshot da tela inteira |
| `Alt + Print` | Screenshot da janela ativa |

### Janelas — modo e tamanho

| Atalho | Ação |
|---|---|
| `Mod + F` | Maximizar coluna |
| `Mod + Shift + F` | Alternar floating |
| `Mod + Ctrl + F` | Trocar foco entre floating e tiling |
| `Mod + W` | Alternar wallpaper |
| `Mod + R` | Preset de largura: 33% → 50% → 66% → 100% |
| `Mod + Shift + R` | Preset de altura |
| `Mod + Ctrl + R` | Resetar altura |
| `Mod + -` | Diminuir largura da coluna em 10% |
| `Mod + =` | Aumentar largura da coluna em 10% |
| `Mod + Shift + C` | Centralizar coluna |
| `Mod + Ctrl + C` | Centralizar todas as colunas visíveis |

### Navegação — foco

| Atalho | Ação |
|---|---|
| `Alt + Tab` | Visão geral (overview) |
| `Mod + Tab` | Workspace anterior |
| `Mod + H` | Foco coluna esquerda |
| `Mod + L` | Foco coluna direita |
| `Mod + J` | Foco janela abaixo |
| `Mod + K` | Foco janela acima |
| `Mod + Scroll ↑/↓` | Workspace acima / abaixo |
| `Mod + Scroll ←/→` | Coluna esquerda / direita |

### Navegação — mover janelas

| Atalho | Ação |
|---|---|
| `Mod + Ctrl + H` | Mover coluna para esquerda |
| `Mod + Ctrl + L` | Mover coluna para direita |
| `Mod + Ctrl + J` | Mover janela para baixo |
| `Mod + Ctrl + K` | Mover janela para cima |

### Colunas — empilhamento

| Atalho | Ação |
|---|---|
| `Mod + [` | Consumir ou expulsar janela para esquerda |
| `Mod + ]` | Consumir ou expulsar janela para direita |
| `Mod + ,` | Puxar janela para dentro da coluna |
| `Mod + .` | Expulsar janela da coluna |

### Workspaces

| Atalho | Ação |
|---|---|
| `Mod + 1–9` | Ir para workspace |
| `Mod + Ctrl + 1–5` | Mover coluna para workspace |

### Monitores

| Atalho | Ação |
|---|---|
| `Mod + Alt + H` | Foco monitor esquerdo |
| `Mod + Alt + L` | Foco monitor direito |
| `Mod + Alt + Ctrl + H` | Mover coluna para monitor esquerdo |
| `Mod + Alt + Ctrl + L` | Mover coluna para monitor direito |

> **Lógica de modificadores para movimento:**
> `Mod` = foco · `Mod+Ctrl` = mover · `Mod+Alt` = foco (monitor) · `Mod+Alt+Ctrl` = mover (monitor)

### Aplicativos

| Atalho | App |
|---|---|
| `Mod + B` | Zen Browser |
| `Mod + O` | Obsidian |
| `Mod + T` | Todoist |
| `Mod + M` | Spotify |
| `Mod + C` | WhatsApp |
| `Mod + Y` | YouTube |
| `Mod + D` | Google Drive |

### Mídia (teclas de hardware)

| Tecla | Ação |
|---|---|
| `XF86AudioRaiseVolume` | Volume + |
| `XF86AudioLowerVolume` | Volume - |
| `XF86AudioMute` | Mute |
| `XF86AudioMicMute` | Mute microfone |
| `XF86MonBrightnessUp` | Brilho + |
| `XF86MonBrightnessDown` | Brilho - |

---

## Layout

- **Gaps:** 16px
- **Largura padrão:** 50%
- **Presets (`Mod+R`):** 33% → 50% → 66% → 100%
- **Coluna focada:** centraliza automaticamente quando sair da view (`on-overflow`)
- **Bordas:** gradiente verde ativo, cinza inativo
- **Sombra:** ativada com blur suave
- **Corner radius:** 20px (global)

## Regras de janela

- **Picture-in-Picture** (zen-browser, chrome): abre flutuando automaticamente
- **Utilitários** (pavucontrol, nm-connection-editor, blueman-manager, gnome-calculator, gnome-calendar): abrem flutuando automaticamente
