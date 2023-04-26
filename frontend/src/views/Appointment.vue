<template>
  
   
    <div class="container mt-5" style="width: 50%;">
      <form action="">
        <div class="form-control p-5" style="background-color: #fefeff;color: #494D36">
          <h2>Appointment</h2>
          <label for="service" class="form-label">Select service:</label>
          <input type="date"/>
          <label for="doctor" class="form-label">Select Doctor:</label>
          <input type="date"/>
          <label for="date" class="form-label">Date:</label>
          <div id="datetimepicker">
            <input type="date"/>
          </div>
          <div class="text-center mt-5">
            <a href="confirm.html" target="_blank">
              <button type="button" class="btn btn-outline-primary">Confirm booking</button>
            </a>
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
body {
    background-color: #CCBBB1;
  }

  .name {
    font-family: 'Ubuntu', sans-serif;
    color: #494D36;

  }

  header {
    background-color: #FAF2F2;
  }



  .booking {

    border: 2px solid #494D36;
    ;
    border-radius: 5px;
    font-family: 'Ubuntu', sans-serif;
    color: #494D36;

  }


  .bi-person-circle {
    color: #494D36;
    font-size: 2.2rem;
  }

  .bi-house-door {
    color: #494D36;
    font-size: 2.2rem;
  }

  .bi-calendar {
    color: #494D36;
  }

  h2 {
    font-family: 'Raleway', sans-serif;
    text-align: center;
    font-size: 25px;
  }

  .form-label {
    font-size: 25px;
    font-family: 'Raleway', sans-serif;
  }

  input {
    width: 100%;
    height: 40px;
    font-family: 'Athiti', sans-serif;
    font-size: 20px;
    border-radius: 4px;
    border: solid 1px lightgray;
  }

  .btn {
    font-family: 'Raleway', sans-serif;
    font-size: 20px;
  }

  .time-item {
    background-color: aqua;
    width: 100px;
  }
</style>