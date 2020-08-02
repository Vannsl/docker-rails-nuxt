<template>
  <section class="section">
    <div class="columns is-mobile">
      <ul>
        <li v-for="example in examples" :key="example.name">
          {{ example.name }} by {{ example.curated_by }}
        </li>
      </ul>
    </div>
  </section>
</template>

<script>
export default {
  name: 'HomePage',
  data() {
    return {
      examples: [],
    }
  },
  created() {
    this.updateExamples()
  },
  methods: {
    async updateExamples() {
      this.examples = await this.$axios.$get('/examples')
    },
  },
}
</script>
