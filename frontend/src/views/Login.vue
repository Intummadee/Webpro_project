<template>
  <div class="container">
    <form action="" method="POST" id="form">
      <div class="form-control p-5 " style="background-color: #fefeff;color: #494D36">
        <h2>Log in</h2>
        
        <label for="email" class="form-label">Email:</label>
        <input type="text" id="email" placeholder="Enter email">

        <label for="Password" class="form-label">Password:</label>
        <input type="text" id="password" placeholder="Enter email">

        <div class="text-center mt-5">
          <router-link :to="{name : 'Appointment', params: { userId : 1}}">
            <button type="button" class="btn btn-outline-primary" value="submit" onclick="login()">Login</button>
          </router-link>
        </div>
      </div>
    </form>
  </div>
</template>

<script>
export default {
    data() {
      return {}
    }
  }
</script>

<style scoped>

</style>