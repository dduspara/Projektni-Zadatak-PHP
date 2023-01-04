<?php
print '
		<h1>Kontakt</h1>
		<div id="contact">
			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1995.4565488516246!2d15.97819108707127!3d45.800383987249276!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4765d7b614ecfb81%3A0xcc6f36eb78a1d613!2sPoglavarstvo%20grada%20Zagreba!5e0!3m2!1shr!2shr!4v1641207913330!5m2!1shr!2shr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
			<form action="/action_page.php" id="contact_form" name="contact_form" method="POST">
				<label for="fname">Ime *</label>
				<input type="text" id="fname" name="firstname" placeholder="Vaše ime.." required>

				<label for="lname">Prezime *</label>
				<input type="text" id="lname" name="lastname" placeholder="Vaše prezime.." required>
				
				<label for="lname">E-mail adresa *</label>
				<input type="email" id="email" name="email" placeholder="Vaša e-mail adresa.." required>

				<label for="country">Država</label>
				<select id="country" name="country">
				  <option value="" selected>Izaberi..</option>
				  <option value="HR">Hrvatska</option>
				  <option value="LU">Luksemburg</option>
				  <option value="HU">Mađarska</option>
				  <option value="BE">Belgija</option>
				</select>

				<label for="subject">Poruka</label>
				<textarea id="subject" name="subject" placeholder="Vaša poruka.." style="height:200px"></textarea>

				<input type="submit" value="Pošalji">
			</form>
		</div>';
?>
