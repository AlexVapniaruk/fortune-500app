<script lang="ts" setup>
import { ref, watch } from 'vue';
import { searchForCompany } from '../../api-sdk/modules/companies';
import { useRouter } from 'vue-router';

const router = useRouter();
const searchValue = ref<string>('');
const results = ref<any[]>([]);
const message = ref<string>('');

watch(searchValue, async (newValue) => {
  if (newValue.trim() === '') {
    results.value = [];
    return;
  }

  const debounceTimeout = setTimeout(async () => {
    try {
      const response = await searchForCompany(newValue);
      results.value = response;
    } catch (error) {
      console.error('Error fetching data:', error);
      message.value = 'Error fetching data. Please try again.';
    }
  }, 300);

  return () => clearTimeout(debounceTimeout);
});

const goToCompanyDetail = (id: string) => {
  router.push({ path: `/company/${id}` });
};
</script>

<template>
  <div>
    <h2>Search for Fortune 500 Company</h2>
    <input v-model="searchValue" placeholder="Type to search..." />
    <div v-if="message">{{ message }}</div>
    <div v-if="results.length > 0">
      <p v-for="(company, index) in results" :key="index">
        <a @click.prevent="goToCompanyDetail(company.id)" style="cursor: pointer;">{{ company.name }}</a>
      </p>
    </div>
  </div>
</template>