<?php
// Run with
// docker run -v $(pwd):/app --rm phpunit/phpunit -c phpunit.xml

// Set the EMONCMS_EXEC constant, so we don't get 'Restricted Access' errors
define('EMONCMS_EXEC', true);

