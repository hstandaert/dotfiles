<?php
class Application {

	public function get($query = null) {
			$query = trim(substr($query, 1));

			if($this->isValidDate($query)) {
					list($hours, $minutes, $seconds) = explode(':', $query);
					$decimal_time = ($hours) + ($minutes/60) + ($seconds/3600);

					$result = new StdClass();
					$result->title = number_format($decimal_time, 2, ',', '.');
					$result->subtitle = 'Press enter to copy to clipboard';

					$this->display($result);
			}
	}

	private function isValidDate($date) {
		preg_match('/^([0-1]\d|2[0-3]):([0-5]\d):([0-5]\d)$/', $date, $matches);

		if(count($matches) > 0) {
			return true;
		} else {
			$this->displayError();
			return false;
		}
	}

	private function display($result) {

		echo '<?xml version="1.0"?>';
		echo '<items>';

			echo '
				<item arg="'.$result->title.'">
					<title>'.$result->title.'</title>
					<subtitle>'.$result->subtitle.'</subtitle>
					<icon>icon.png</icon>
				</item>';

		echo '</items>';
	}

	private function displayError() {
			echo '<?xml version="1.0"?>';
			echo '<items>';
				echo '
					<item>
						<title>Please enter a time in the HH:mm:ss format</title>
						<subtitle>For example \'05:12:33\'</subtitle>
						<icon>icon.png</icon>
					</item>';
			echo '</items>';
	}
}
