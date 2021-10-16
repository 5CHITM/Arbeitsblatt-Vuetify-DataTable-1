<template>
  <div>
    <v-alert color="grey black--text" dark> Rent selected movies: {{ selectedFiltered }} </v-alert>
    <v-data-table
      v-model="selected"
      :headers="headers"
      :items="movies"
      :items-per-page="6"
      :footer-props="{ itemsPerPageOptions: [6, 12, 18] }"
      item-key="title"
      show-select
      toggle-select-all
      class="elevation-1"
    >
    </v-data-table>
  </div>
</template>

<script>
import axios from 'axios';
export default {
  name: 'Home',

  components: {},

  data() {
    return {
      movies: [],
      selected: [],
      singleSelect: false,
      headers: [
        { text: 'Title', align: 'start', value: 'title', class: 'blue-grey lighten-5' },
        { text: 'Director', value: 'director', class: 'blue-grey lighten-5' },
        { text: 'Genre', value: 'genre', class: 'blue-grey lighten-5' },
        { text: 'Year', value: 'year', width: 100, class: 'blue-grey lighten-5' },
        { text: 'Rated', value: 'rated', width: 100, class: 'blue-grey lighten-5' },
        { text: 'Plot ', value: 'plot' },
      ],
    };
  },

  methods: {
    async getMovies() {
      try {
        const { data } = await axios({
          url: `http://127.0.0.1:3000/movies`,
          method: 'GET',
        });
        this.movies = data;
      } catch (error) {
        console.error(error);
      }
    },
  },
  computed: {
    selectedFiltered: function() {
      return this.selected
        .filter((el) => el.title)
        .map(({ title }) => title)
        .join(', ');
    },
  },

  created() {
    this.getMovies();
  },
};
</script>
