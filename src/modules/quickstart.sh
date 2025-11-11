#!/bin/bash
# Module: Quick Start Mode
# Description: Simplified UX for vibe coders and beginners
# Dependencies: All other modules

# Show welcome screen for Quick Start mode
show_quickstart_welcome() {
    clear
    echo -e "${CYAN}"
    cat << 'EOF'
    ╔════════════════════════════════════════════════════════════════╗
    ║                                                                ║
    ║        🚀 1453.AI QUICK START - VIBE CODERS İÇİN 🚀           ║
    ║                                                                ║
    ╚════════════════════════════════════════════════════════════════╝
EOF
    echo -e "${NC}"
    echo -e "${GREEN}Merhaba vibe coder! 👋${NC}"
    echo ""
    echo -e "${YELLOW}Bu mod, teknik detayları bilmeyenler için tasarlandı.${NC}"
    echo -e "${YELLOW}Size birkaç basit soru soracağım, gerisini bana bırakın! ✨${NC}"
    echo ""
    echo -e "${CYAN}────────────────────────────────────────────────────────────${NC}"
    echo -e "${YELLOW}💡 Nasıl çalışır?${NC}"
    echo -e "  1. Deneyim seviyenizi belirtirsiniz"
    echo -e "  2. Ne yapmak istediğinizi seçersiniz"
    echo -e "  3. Size önerilen araçları otomatik kurarım"
    echo ""
    echo -e "${YELLOW}🎯 Sonunda şunları elde edersiniz:${NC}"
    echo -e "  ✓ İhtiyacınız olan tüm geliştirici araçları"
    echo -e "  ✓ Hazır ortam"
    echo -e "  ✓ Hemen kod yazmaya başlayabilirsiniz!"
    echo ""
    echo -e "${CYAN}────────────────────────────────────────────────────────────${NC}"
    echo ""
    echo -ne "${YELLOW}Başlayalım mı? (Enter=Evet, n=Hayır): ${NC}"
    read -r response

    if [[ "$response" =~ ^[nN]$ ]]; then
        echo -e "\n${CYAN}ℹ️  ${NC}İsterseniz Advanced Mode'dan devam edebilirsiniz."
        echo -e "${YELLOW}⚙️  Advanced Mode${NC} → Detaylı menü ile kendiniz seçim yapabilirsiniz."
        return 1
    fi

    return 0
}

# Ask experience level
ask_experience_level() {
    echo -e "\n${BLUE}╔════════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${BLUE}║                 DENEYİM SEVİYENİZİ SEÇİN                   ║${NC}"
    echo -e "${BLUE}╚════════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    echo -e "${CYAN}Hangi seviyedesiniz?${NC}"
    echo ""
    echo -e "  ${GREEN}1${NC}) ${YELLOW}Yeni Başlıyorum${NC}"
    echo -e "     ${CYAN}→ Sadece temel araçları kur (Python, Git)${NC}"
    echo ""
    echo -e "  ${GREEN}2${NC}) ${YELLOW}Orta Seviye${NC}"
    echo -e "     ${CYAN}→ İhtiyacım olan araçları biliyorum${NC}"
    echo ""
    echo -e "  ${GREEN}3${NC}) ${YELLOW}Deneyimliyim${NC}"
    echo -e "     ${CYAN}→ Her şeyi kur, en kapsamlı ortamı istiyorum${NC}"
    echo ""
    echo -ne "${YELLOW}Seçiminiz (1-3): ${NC}"
    read -r experience

    case $experience in
        1) echo "beginner";;
        2) echo "intermediate";;
        3) echo "advanced";;
        *) ask_experience_level;;
    esac
}

# Ask what they want to build
ask_development_focus() {
    echo -e "\n${BLUE}╔════════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${BLUE}║                   NE YAPMAK İSTİYORSUNUZ?                   ║${NC}"
    echo -e "${BLUE}╚════════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    echo -e "${CYAN}Hangi alanda geliştirme yapmak istiyorsunuz?${NC}"
    echo ""
    echo -e "  ${GREEN}1${NC}) ${YELLOW}Web Siteleri${NC}"
    echo -e "     ${CYAN}→ Frontend & Backend web uygulamaları${NC}"
    echo ""
    echo -e "  ${GREEN}2${NC}) ${YELLOW}AI & Yapay Zeka${NC}"
    echo -e "     ${CYAN}→ Makine öğrenmesi, AI modelleri${NC}"
    echo ""
    echo -e "  ${GREEN}3${NC}) ${YELLOW}API & Backend${NC}"
    echo -e "     ${CYAN}→ Sunucu tarafı, mikroservisler${NC}"
    echo ""
    echo -e "  ${GREEN}4${NC}) ${YELLOW}Mobil Uygulamalar${NC}"
    echo -e "     ${CYAN}→ iOS & Android uygulamaları${NC}"
    echo ""
    echo -e "  ${GREEN}5${NC}) ${YELLOW}Henüz Karar Vermedim${NC}"
    echo -e "     ${CYAN}→ Her şeyi kur, sonra seçerim${NC}"
    echo ""
    echo -ne "${YELLOW}Seçiminiz (1-5): ${NC}"
    read -r focus

    case $focus in
        1) echo "web";;
        2) echo "ai";;
        3) echo "backend";;
        4) echo "mobile";;
        5) echo "general";;
        *) ask_development_focus;;
    esac
}

# Ask about customization
ask_customization() {
    echo -e "\n${BLUE}╔════════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${BLUE}║                   KURULUM TERCİHİNİZ                        ║${NC}"
    echo -e "${BLUE}╚════════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    echo -e "${CYAN}Hangi kurulum yöntemini tercih edersiniz?${NC}"
    echo ""
    echo -e "  ${GREEN}1${NC}) ${YELLOW}Önerilenleri Kur${NC}"
    echo -e "     ${CYAN}→ Size uygun araçları otomatik seçip kurarım${NC}"
    echo -e "     ${CYAN}→ (Hızlı, önerilen, güvenli)${NC}"
    echo ""
    echo -e "  ${GREEN}2${NC}) ${YELLOW}Kendim Seçmek İstiyorum${NC}"
    echo -e "     ${CYAN}→ Detaylı listeyi göster, ben seçim yapayım${NC}"
    echo -e "     ${CYAN}→ (İleri düzey kullanıcılar için)${NC}"
    echo ""
    echo -ne "${YELLOW}Seçiminiz (1-2): ${NC}"
    read -r custom

    case $custom in
        1) echo "auto";;
        2) echo "manual";;
        *) ask_customization;;
    esac
}

# Generate installation plan based on answers
generate_installation_plan() {
    local experience=$1
    local focus=$2
    local customization=$3

    echo -e "\n${CYAN}╔════════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${CYAN}║                  KURULUM PLANINIZ HAZIR!                    ║${NC}"
    echo -e "${CYAN}╚════════════════════════════════════════════════════════════════╝${NC}"
    echo ""

    # Always install base tools
    echo -e "${YELLOW}📦 Temel araçlar (herkese uygun):${NC}"
    echo -e "  ✓ Git yapılandırması"
    echo -e "  ✓ Sistem güncellemeleri"
    echo ""

    # Build tool list based on experience and focus
    local tools=()

    case $experience in
        "beginner")
            echo -e "${YELLOW}🌱 Başlangıç kurulumu:${NC}"
            tools+=("python" "pip" "git_config")
            ;;
        "intermediate"|"advanced")
            echo -e "${YELLOW}⚙️  Gelişmiş kurulum:${NC}"
            tools+=("python" "pip" "pipx" "uv" "git_config")
            ;;
    esac

    case $focus in
        "web")
            echo -e "${YELLOW}🌐 Web geliştirme için:${NC}"
            tools+=("nvm" "node" "bun" "php" "composer")
            ;;
        "ai")
            echo -e "${YELLOW}🤖 AI geliştirme için:${NC}"
            tools+=("nvm" "node" "ai_cli" "ai_frameworks")
            ;;
        "backend")
            echo -e "${YELLOW}⚙️  Backend geliştirme için:${NC}"
            tools+=("go" "php" "composer")
            ;;
        "mobile")
            echo -e "${YELLOW}📱 Mobil geliştirme için:${NC}"
            tools+=("nvm" "node" "php" "composer")
            ;;
        "general")
            echo -e "${YELLOW}🎯 Genel geliştirme için:${NC}"
            tools+=("nvm" "node" "bun" "php" "composer" "go" "ai_cli")
            ;;
    esac

    if [ "$experience" = "advanced" ]; then
        echo -e "${YELLOW}🚀 Full-stack kurulum:${NC}"
        tools+=("ai_frameworks")
    fi

    echo ""
    echo -e "${CYAN}────────────────────────────────────────────────────────────${NC}"
    echo -e "${GREEN}Toplam ${#tools[@]} araç kurulacak${NC}"
    echo ""

    # Return the tools array
    printf '%s\n' "${tools[@]}"
}

# Execute installation plan
execute_installation_plan() {
    local -a tools=("$@")

    echo -e "\n${BLUE}╔════════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${BLUE}║                    KURULUM BAŞLIYOR!                        ║${NC}"
    echo -e "${BLUE}╚════════════════════════════════════════════════════════════════╝${NC}"
    echo ""

    # Update system and configure git first
    update_system
    configure_git

    # Install tools
    for tool in "${tools[@]}"; do
        case $tool in
            "python")
                install_python
                ;;
            "pip")
                install_pip
                ;;
            "pipx")
                install_pipx
                ;;
            "uv")
                install_uv
                ;;
            "nvm")
                install_nvm
                ;;
            "node")
                # Already installed with nvm
                ;;
            "bun")
                install_bun
                ;;
            "php")
                install_php_version_menu
                ;;
            "composer")
                install_composer
                ;;
            "go")
                install_go
                ;;
            "ai_cli")
                install_ai_cli_tools_menu
                ;;
            "ai_frameworks")
                install_ai_frameworks_menu
                ;;
            "git_config")
                # Already configured
                ;;
        esac
    done

    echo ""
    echo -e "${GREEN}╔════════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${GREEN}║                  ✅ KURULUM TAMAMLANDI!                      ║${NC}"
    echo -e "${GREEN}╚════════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    echo -e "${YELLOW}🎉 Tebrikler! Geliştirme ortamınız hazır!${NC}"
    echo ""
    echo -e "${CYAN}💡 Sonraki adımlar:${NC}"
    echo -e "  1. ${GREEN}source ~/.bashrc${NC} (ya da terminali yeniden başlat)"
    echo -e "  2. ${GREEN}Python --version${NC} ile test edin"
    echo -e "  3. ${GREEN}node --version${NC} ile test edin"
    echo -e "  4. 🚀 Kodlamaya başlayın!"
    echo ""
    echo -e "${YELLOW}⚙️  İleri düzey araçlar için:${NC}"
    echo -e "    Scripti tekrar çalıştırıp 'Advanced Mode' seçin"
    echo ""
}

# Main Quick Start flow
run_quickstart_mode() {
    # Show welcome
    if ! show_quickstart_welcome; then
        return 1
    fi

    # Ask questions
    local experience=$(ask_experience_level)
    local focus=$(ask_development_focus)
    local customization=$(ask_customization)

    echo -e "\n${CYAN}⌛ Kurulum planı hazırlanıyor...${NC}"
    sleep 1

    # Generate and show plan
    local -a tools=($(generate_installation_plan "$experience" "$focus" "$customization"))

    if [ "$customization" = "manual" ]; then
        echo -e "\n${YELLOW}Detaylı kurulum için Advanced Mode'a geçiliyor...${NC}"
        sleep 2
        return 1
    fi

    # Confirm before installing
    echo -e "\n${YELLOW}Bu planla devam etmek istiyor musunuz? (Enter=Evet, n=Hayır): ${NC}"
    read -r confirm

    if [[ "$confirm" =~ ^[nN]$ ]]; then
        echo -e "\n${CYAN}ℹ️  ${NC}Kurulum iptal edildi."
        return 1
    fi

    # Execute installation
    execute_installation_plan "${tools[@]}"

    echo -e "\n${YELLOW}Başka bir işlem yapmak ister misiniz? (y/N): ${NC}"
    read -r more
    if [[ ! "$more" =~ ^[yY]$ ]]; then
        exit 0
    fi

    return 0
}

# Export functions
export -f show_quickstart_welcome
export -f ask_experience_level
export -f ask_development_focus
export -f ask_customization
export -f generate_installation_plan
export -f execute_installation_plan
export -f run_quickstart_mode