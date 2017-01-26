package;

import openfl.display.Sprite;

/**
 * Test the trace-timer in OpenFL
 */
class MainOpenFL extends Sprite
{
  var test:TestTimer;

  // Run some tests
	public function new()
  {
		super();

    // Test
		test = new TestTimer();
	}
}