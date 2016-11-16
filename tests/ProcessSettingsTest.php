<?php
use PHPUnit\Framework\TestCase;

class ProcessSettingsTest extends TestCase
{
    public function testMissingSettingsPhp()
    {
        require(dirname(__FILE__).'/../process_settings.php');

        // The user is alerted that the settings.php file is missing
        $this->expectOutputString("<div style='width:600px; background-color:#eee; padding:20px; font-family:arial;'><h3>settings.php file error</h3>Copy and modify default.settings.php to settings.php<br>For more information about configure settings.php file go to <a href=\"http://emoncms.org\">http://emoncms.org</a></div>");

        // FIXME: assert that a die is triggered
    }
}