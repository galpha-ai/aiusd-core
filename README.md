<h1 align="center">AIUSD Core</h1>

<p align="center">
  <strong>Trading tools and account management for AI agents.</strong>
</p>

<p align="center">
  <a href="https://aiusd.ai"><img src="https://img.shields.io/badge/aiusd.ai-visit-blue" alt="Website" /></a>
  <a href="https://www.npmjs.com/package/aiusd-core"><img src="https://img.shields.io/npm/v/aiusd-core" alt="npm" /></a>
  <a href="https://github.com/galpha-ai/aiusd-core/blob/main/LICENSE"><img src="https://img.shields.io/badge/license-MIT-green" alt="License" /></a>
</p>

---

AIUSD Core provides structured CLI commands and MCP tools that let AI agents execute trades, manage accounts, and access market data. Your agent's LLM interprets user intent and calls the appropriate commands — no AIUSD-side inference required.

> Looking for a fully managed experience with built-in AI reasoning? See [AIUSD Pro](https://github.com/galpha-ai/aiusd-pro).

## Install

### Claude Code / Codex / Cursor

```bash
npx skills add galpha-ai/aiusd-core -y -g
```

### OpenClaw

Install from [ClawHub](https://clawhub.com):

```bash
clawhub install aiusd-core
```

Or manually — download [SKILL.md](https://raw.githubusercontent.com/galpha-ai/aiusd-core/main/SKILL.md) into your skills directory:

```bash
mkdir -p ~/.openclaw/skills/aiusd-core
curl -fsSL https://raw.githubusercontent.com/galpha-ai/aiusd-core/main/SKILL.md \
  -o ~/.openclaw/skills/aiusd-core/SKILL.md
```

### npm

```bash
npm install -g aiusd-core
```

### Manual

```bash
git clone https://github.com/galpha-ai/aiusd-core.git
cd aiusd-core && npm install && npm run build
```

## Quick Start

```bash
aiusd-core login --browser        # Authenticate
aiusd-core balances               # Check account balances
aiusd-core guide spot             # Get the latest spot trading reference
aiusd-core spot buy -b SOL -a 100 # Execute a trade
```

## Capabilities

| Domain | Description |
|--------|-------------|
| **Spot** | Buy, sell, and swap across supported venues |
| **Perpetuals** | Long, short, and close positions with leverage and TP/SL |
| **Prediction Markets** | Trade on event outcomes, search markets, manage positions |
| **Account** | Balances, deposit addresses, transaction history, staking |
| **Monitoring** | Watch signals and set conditional execution rules |
| **Market Data** | Trending assets, price feeds, holder analytics |

Run `aiusd-core guide <domain>` before executing commands in any domain to get the latest parameter reference.

## Authentication

```bash
aiusd-core login --browser       # Sign in via browser
aiusd-core login --new-wallet    # Create a new account
aiusd-core logout                # Sign out
```

## Supported Platforms

| Platform | Install |
|----------|---------|
| Claude Code | `npx skills add galpha-ai/aiusd-core` |
| Codex | `npx skills add galpha-ai/aiusd-core` |
| Cursor | `npx skills add galpha-ai/aiusd-core` |
| OpenClaw | `clawhub install aiusd-core` |
| GitHub Copilot | Symlink to `.github/skills/` |

## Architecture

AIUSD Core connects to the AIUSD platform via MCP protocol. The client-side LLM handles intent parsing and command selection, while the platform handles execution, custody, and settlement.

```
User → Agent LLM → AIUSD Core CLI → MCP Server → Execution Platform
```

## Security

- **Local-first** — authentication tokens stored on-device (`~/.aiusd/`)
- **Open source** — fully auditable skill code
- **No inference cost** — bring your own LLM, no platform charges

## Core vs. Pro

| | Core | Pro |
|---|------|-----|
| **Inference** | Client-side LLM | Managed backend agent |
| **Interface** | Structured CLI commands | Natural language |
| **Inference cost** | None — bring your own LLM | Included |
| **Best for** | Developers building custom agents | End users and turnkey integrations |

## Links

- [Documentation](https://docs.aiusd.ai)
- [AIUSD Pro](https://github.com/galpha-ai/aiusd-pro) — managed AI agent with built-in reasoning
- [Website](https://aiusd.ai)

## License

MIT
