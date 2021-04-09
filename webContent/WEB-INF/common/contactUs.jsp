<!-- Custom Style -->
<style>
	.contact-container {
		background: #E0F0F6;
    padding: 50px;
    border-radius: 10px;
	}
	.contact-form h3 {
		font-style: normal;
    font-weight: bold;
    font-size: 30px;
    line-height: 30px;
    text-align: center;
    color: #0979FA !important;
	}
</style>
<!-- Custom Style -->

<!-- Contact Form Container -->
<div class="container contact-container text-center mt-4 mb-4">
      <form class="contact-form">
        <h3 class="mb-2">Get In Touch !</h3>
        
        <!-- Footer Caption -->
        <small class="text-muted">
        	Feel free to contact us on your queries and we will get back to you soon as possible.
        </small>
        <!-- Footer Caption -->
        
        <!-- First & Last Name Inputs -->
        <div class="form-row mt-4">
    			<div class="col">
      			<input name="fname" type="text" class="form-control input-field" placeholder="First name" required>
   				</div>
    			<div class="col">
      			<input name="lname" type="text" class="form-control input-field" placeholder="Last name" required>
    			</div>
  			</div>
        <!-- First & Last Name Inputs -->
        
        <!-- Email Input -->
        <div class="mt-2">
          <label class="sr-only" for="email">Email address</label>
          <input name="email" class="form-control input-field" placeholder="Email address" required/>
        </div>
        <!-- Email Input -->
        
        <!-- Message Text Area -->
        <div class="form-group mt-2">
    			<label class="sr-only" for="message">Your message</label>
    			<textarea name="message" class="form-control input-field" rows="3" placeholder="Your message"></textarea>
  			</div>
        <!-- Message Text Area -->
        
        <!-- Submit Button -->
        <div class="mt-3">
          <button type="submit" class="btn btn-primary btn-block font-weight-normal" >
            Sign Up
          </button>
        </div>
				<!-- Submit Button -->
      </form>
    </div>
<!-- Contact Form Container -->