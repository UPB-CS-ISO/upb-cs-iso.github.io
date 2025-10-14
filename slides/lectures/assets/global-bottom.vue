<template>
  <header class="absolute top-0 right-0">
    <!-- <img src="../assets/img/logo_so2.png" width="70" /> -->
  </header>
  <footer
    v-if="$slidev.nav.currentPage == 1"
    class="absolute bottom-0 left-0 right-0 p-2"
  >
    Copyright &copy;
    <a href="https://linux-101.wyliodrin.com"
      >Wyliodrin SRL &amp; Politehnica Bucharest</a
    >
    2025, licensed under CC BY-SA 4.0.
  </footer>
</template>
