<template>
  <div class="min-h-screen bg-nord-0 flex flex-col justify-center py-8 sm:px-6 lg:px-8">
    <div class="sm:mx-auto sm:w-full sm:max-w-md">
      <h2 class="mt-10 text-center text-2xl font-bold text-nord-6">
        random string from api:
      </h2>
      <h1 class="mt-8 text-center text-3xl font-extrabold text-nord-8">
        {{ string }}
      </h1>
      <button class="mt-8 w-full flex justify-center py-2 px-4 rounded-md shadow-sm text-sm font-medium focus:outline-none text-white bg-nord-10 hover:bg-nord-9" @click="getRandomString">
        <h2 class="tracking-wide inline my-2 uppercase text-nord-4">
          Get Another
        </h2>
      </button>
    </div>
  </div>
</template>

<script>
export default {
  data () {
    return {
      string: ''
    }
  },
  mounted () {
    this.getRandomString()
  },
  methods: {
    getRandomString () {
      this.$axios.get('https://api.hughmaltby.com/api/random').then((response) => { this.string = response.data.message })
    }
  }
}
</script>
