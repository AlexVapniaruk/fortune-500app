<template>
  <div>
    <h1>Company Details</h1>
    <div v-if="company">
      <h2>{{ company.name }}</h2>
      <p><strong>ID:</strong> {{ company.id }}</p>
      <p><strong>Ticker:</strong> {{ company.ticker }}</p>
      <p><strong>Rank:</strong> {{ company.rank }}</p>
      <p><strong>CEO:</strong> {{ company.ceo }}</p>
      <p><strong>Company Type:</strong> {{ company.companyTypeId === 1 ? 'Public' : 'Private' }}</p>
      <p><strong>Industry:</strong> {{ company.industryId }}</p>
      <p><strong>Location:</strong> {{ company.headquartersCity }}, {{ company.headquartersState }}</p>
      <p><strong>Market Cap:</strong> ${{ company.marketCapUpdatedM }} million</p>
      <p><strong>Number of Employees:</strong> {{ company.numberOfEmployees }}</p>
      <p><strong>Profitable:</strong> {{ company.profitable ? 'Yes' : 'No' }}</p>
      <p><strong>Profits:</strong> ${{ company.profitsM }} million</p>
      <p><strong>Revenue:</strong> ${{ company.revenuesM }} million</p>
      <p><strong>Sector:</strong> {{ company.sectorId }}</p>
      <p><strong>Website:</strong> <a :href="company.website" target="_blank">{{ company.website }}</a></p>
      <p><strong>Footnote:</strong> {{ company.footnote }}</p>
      <p><strong>Updated:</strong> {{ new Date(company.updated).toLocaleDateString() }}</p>
    </div>
    <div v-else>
      <p>Loading...</p>
    </div>
  </div>
</template>

<script lang="ts" setup>
import { ref, onMounted } from 'vue';
import { useRoute } from 'vue-router';
import { getCompanyById } from '../../../api-sdk/modules/companies';
import { Company } from '../../../api-sdk/modules/companies/company';

const route = useRoute();
const company = ref<Company | null>(null);

onMounted(async () => {
  const companyId = route.params.id as string;
  try {
    company.value = await getCompanyById(companyId);
  } catch (error) {
    console.error('Error fetching company details:', error);
  }
});
</script>
