<script lang="ts">
  import { Mail, Phone, Shield, Server, Wrench, Github } from "lucide-svelte";
  import ServiceCard from "$lib/ServiceCard.svelte";

  const currentYear = new Date().getFullYear();
</script>

<div class="min-h-screen bg-background text-foreground font-sans">
  <header class="cloud-gradient">
    <div class="container mx-auto px-6 py-16 md:py-24">
      <div class="max-w-3xl mx-auto text-center fade-in-up">
        
        <div class="mb-8 flex justify-center">
          <div class="relative w-24 h-24 md:w-72 md:h-72 flex items-center justify-center">
            <img src="/kompismoln-logo.svg" class="w-full h-full" alt="Kompismoln logotyp - Din vän på internet" />
          </div>
        </div>
        
        <h1 class="text-4xl md:text-5xl lg:text-6xl font-serif tracking-tight mb-6">
          Kompismoln
        </h1>
        
        <p class="text-xl md:text-2xl text-subtle font-light mb-4">
          En molnfabrik på Södermalm
        </p>
        
        <p class="text-lg md:text-xl text-muted-foreground max-w-2xl mx-auto leading-relaxed">
          Jag hjälper småföretag och föreningar att få 
          systemen att fungera, datan att stanna där den ska, och vardagen 
          att innehålla minsta möjliga mängd IT.
        </p>
      </div>
    </div>
  </header>

  <section class="py-16 md:py-24">
    <div class="container mx-auto px-6">
      <div class="grid md:grid-cols-3 gap-8 max-w-5xl mx-auto">
        
        <ServiceCard 
          title="Drift & Förvaltning" 
          description="Hemsidor, e-post och molntjänster som fungerar säkert och tillförlitligt."
        >
          <Server slot="icon" class="w-8 h-8" />
        </ServiceCard>

        <ServiceCard 
          title="GDPR & Säkerhet" 
          description="Rådgivning för hantering av data enligt konstens och lagens alla regler."
        >
          <Shield slot="icon" class="w-8 h-8" />
        </ServiceCard>

        <ServiceCard 
          title="Teknisk Problemlösning" 
          description="Felsökning och åtgärder som utgår från både maskin och människa."
        >
          <Wrench slot="icon" class="w-8 h-8" />
        </ServiceCard>

      </div>
    </div>
  </section>

  <section class="py-16 md:py-24 bg-card">
    <div class="container mx-auto px-6">
      <div class="max-w-2xl mx-auto text-center">
        <h2 class="text-3xl md:text-4xl font-serif mb-8">
          Alexander Holmbäck
        </h2>
        <p class="text-lg text-muted-foreground leading-relaxed mb-8">
          Systemutvecklare och problemlösare med bas i Stockholm.
          <br class="hidden md:block" />
          Jag tror på öppna standarder, integritet och teknik som skapar valmöjligheter.
        </p>
        <p class="text-sm text-subtle font-medium">
          Innehar F-skatt
        </p>
      </div>
    </div>
  </section>

  <section class="py-16 md:py-24">
    <div class="container mx-auto px-6">
      <div class="max-w-md mx-auto text-center">
        <h2 class="text-3xl md:text-4xl font-serif mb-8">
          Kontakt
        </h2>
        
        <address class="space-y-4 not-italic flex flex-col items-center">
          <a 
            href="mailto:alex@kompismoln.se" 
            class="contact-link text-lg flex items-center gap-2 hover:text-primary transition-colors"
          >
            <Mail class="w-5 h-5" />
            alex@kompismoln.se
          </a>
          
          <a 
            href="tel:+46707976262" 
            class="contact-link text-lg flex items-center gap-2 hover:text-primary transition-colors"
          >
            <Phone class="w-5 h-5" />
            070-797 62 62
          </a>
          
          <a 
            href="https://github.com/Kompismoln" 
            target="_blank"
            rel="noreferrer"
            class="contact-link text-lg flex items-center gap-2 hover:text-primary transition-colors"
          >
            <Github class="w-5 h-5" />
            github.com/Kompismoln
          </a>
        </address>

      </div>
    </div>
  </section>

  <footer class="py-8 border-t border-border">
    <div class="container mx-auto px-6 text-center text-sm text-muted-foreground">
      © {currentYear} Kompismoln
    </div>
  </footer>
</div>
