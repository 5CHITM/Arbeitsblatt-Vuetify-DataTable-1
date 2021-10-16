<template>
  <v-app>
    <v-app-bar app color="blue-grey lighten-5">
      <div class="d-flex align-center">
        <v-img alt="Movies Logo" class="shrink mr-2 hidden-md-and-down" contain src="https://www.svgimages.com/svg-image/s5/film-roll-projector.svg" transition="scale-transition" width="40" />

        <h1>Movies</h1>
      </div>

      <v-spacer></v-spacer>

      <v-btn href="https://www.imdb.com/movies-in-theaters/" target="_blank" text>
        <span class="mr-2">Latest Release</span>
        <v-icon>mdi-open-in-new</v-icon>
      </v-btn>
    </v-app-bar>

    <v-main>
      <router-view />
    </v-main>
  </v-app>
</template>

<script>
export default {
  name: 'App',

  data: () => ({
    //
  }),
};
</script>
