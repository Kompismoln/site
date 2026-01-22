<script lang="ts">
  export let title: string;
  export let description: string;
</script>

<div class="service-card text-center">
  <div class="inline-flex items-center justify-center w-16 h-16 rounded-full bg-cloud-soft text-cloud mb-6">
    <slot name="icon" />
  </div>
  <h3 class="text-xl font-serif mb-3">{title}</h3>
  <p class="text-muted-foreground leading-relaxed">{description}</p>
</div>
