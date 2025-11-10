# 1453-wsl-bash-script

## 🚀 1453.AI - WSL Setup Script for AI Developers

Comprehensive automated setup script for WSL (Windows Subsystem for Linux) environments, specifically designed for AI developers and "Vibe Coders."

## 📥 Installation

### Quick Start
```bash
# Clone the repository
git clone https://github.com/altudev/1453-wsl-bash-script.git
cd 1453-wsl-bash-script

# Run the setup script
chmod +x src/linux-ai-setup-script.sh
./src/linux-ai-setup-script.sh
```

### ⚠️ Windows Line Endings Issue

If you download the script from Windows or encounter this error:
```
linux-ai-setup-script.sh: line 10: syntax error near unexpected token `elif'
```

**Solution 1: Use the fix-crlf helper script**
```bash
chmod +x fix-crlf.sh
./fix-crlf.sh src/linux-ai-setup-script.sh
```

**Solution 2: Manual fix**
```bash
# Convert Windows line endings to Unix
sed -i 's/\r$//' src/linux-ai-setup-script.sh

# Or use dos2unix if available
dos2unix src/linux-ai-setup-script.sh

# Then run the script
bash src/linux-ai-setup-script.sh
```

## 🛠️ Features

- **Multi-Distribution Support**: Debian/Ubuntu, Fedora/RHEL, CentOS, Arch Linux
- **Programming Languages**: Python 3.x, Node.js (via NVM), PHP (7.4-8.5), Bun.js
- **AI CLI Tools**: Claude Code, Google Gemini, Qwen, OpenCode, GitHub Copilot, Codex
- **AI Frameworks**: SuperGemini, SuperQwen, SuperClaude with MCP server support
- **Automatic Configuration**: Git setup, shell configuration, package manager detection
- **Interactive Menu**: User-friendly interface with multi-choice support

## 📋 Main Menu Options

1. Install everything (full setup)
2. Setup preparation (system update + Git)
3. Install Python
4. Install pip
5. Install pipx
6. Install UV (ultra-fast Python package installer)
7. Install NVM (Node Version Manager)
8. Install Bun.js
9. Install PHP (multiple versions)
10. Switch PHP version
11. Install AI CLI tools
12. Install AI frameworks
13. Remove AI frameworks
14. Install GitHub CLI
15. Configure Claude Code with GLM-4.6
16. MCP server management
0. Exit

## 👨‍💻 Credits

- **Project Creator**: Alper Tunga
- **Developer**: Tamer KARACA (A.K.A THE KING)
- **Contributors**: FitzGPT, Tuğser OKUR
- **Version**: 1.0.1

## 📄 License

MIT License - See [LICENSE.md](LICENSE.md) for details

## 🐛 Troubleshooting

### Script Syntax Check
```bash
# Check for syntax errors without running
bash -n src/linux-ai-setup-script.sh
```

### Common Issues

1. **Permission Denied**: Run `chmod +x` on the script
2. **CRLF Line Endings**: Use `fix-crlf.sh` helper or convert manually
3. **Missing Dependencies**: Script installs prerequisites automatically
4. **Shell Not Reloading**: Restart terminal or run `source ~/.bashrc`

## 🤝 Contributing

Feel free to submit issues and pull requests at https://github.com/altudev/1453-wsl-bash-script
