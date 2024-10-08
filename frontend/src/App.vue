<!-- src/App.vue -->
<template>
  <div id="app">
    <header>
      <h2>Fortune 500 Search App</h2>
      
    </header>
    <main>
      <router-view />
    </main>
  </div>
</template>

<script lang="ts" setup></script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
header {
  background-color: #f8f9fa;
  padding: 10px 0;
}
footer {
  margin-top: 20px;
  padding: 10px 0;
  background-color: #f8f9fa;
}
</style>
