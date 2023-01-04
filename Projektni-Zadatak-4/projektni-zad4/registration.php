<?php
	ini_set('display_errors', 0);
	ini_set('display_startup_errors', 0);
	error_reporting(E_ALL); 
	print '
	<h1>Registracija</h1>
	<div id="registration">';
	
	if ($_POST['_action_'] == FALSE) {
		print '
		<form action="" id="registration_form" name="registration_form" method="POST">
			<input type="hidden" id="_action_" name="_action_" value="TRUE">
			
			<label for="firstname">Ime *</label>
			<input type="text" id="firstname" name="firstname" placeholder="vaše ime.." required>

			<label for="lastname">Prezime *</label>
			<input type="text" id="lastname" name="lastname" placeholder="vaše prezime.." required>
				
			<label for="email">E-mail adresa *</label>
			<input type="email" id="email" name="email" placeholder="vaša e-mail adresa.." required>
			
			<label for="username">Korisničko ime *</label>
			<input type="text" id="username" name="username" placeholder="vaše korisničko ime.." required><br>
			
									
			<label for="password">Lozinka *</label>
			<input type="password" id="password" name="password" placeholder="vaše lozinka.."  required>

			<label for="country">Država *</label>
			<select name="country" id="country">
				<option value="">odaberite</option>';
				$query  = "SELECT * FROM countries";
				$result = @mysqli_query($MySQL, $query);
				while($row = @mysqli_fetch_array($result)) {
					print '<option value="' . $row['country_code'] . '">' . $row['country_name'] . '</option>';
				}
			print '
			</select>

            <label for="city">Grad *</label>
			<input type="text" id="city" name="city"  placeholder="grad.." required><br>

            <label for="address">Adresa * </label>
			<input type="text" id="address" name="address" placeholder="vaša adresa.." required><br>

			<input type="submit" value="Registriraj se">
			<br>
		</form>';
	}
	else if ($_POST['_action_'] == TRUE) {
		
		$query  = "SELECT * FROM users";
		$query .= " WHERE email='" .  $_POST['email'] . "'";
		$query .= " OR username='" .  $_POST['username'] . "'";
		$result = @mysqli_query($MySQL, $query);
		$row = @mysqli_fetch_array($result, MYSQLI_ASSOC);
		
		if ($row['email'] == '' || $row['username'] == '') {
			$pass_hash = password_hash($_POST['password'], PASSWORD_DEFAULT, ['cost' => 12]);
			
			$query  = "INSERT INTO users (firstname, lastname, email, username, password, country, city, address)";
			$query .= " VALUES ('" . $_POST['firstname'] . "', '" . $_POST['lastname'] . "', '" . $_POST['email'] . "', '" . $_POST['username'] . "', '" . $pass_hash . "', '" . $_POST['country'] . "', '" . $_POST['city'] . "', '" . $_POST['address'] . "')";
			$result = @mysqli_query($MySQL, $query);
			echo '<p>' . ucfirst(strtolower($_POST['firstname'])) . ' ' .  ucfirst(strtolower($_POST['lastname'])) . ', hvala na registraciji!</p>
			<hr>';
		}
		else {
			echo '<p>Korisnik sa tim imenom ili email-om već postoji!</p>';
		}
	}
	print '
	</div>';
?>