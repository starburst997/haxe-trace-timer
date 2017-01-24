package;

import openfl.display.Sprite;

/**
 * Test the trace-timer in OpenFL
 */
class MainOpenFL extends Sprite
{
  var stats:Stats = new Stats();
  var test:TestTimer;

  // Run some tests
	public function new()
  {
		super();

    // Stats
    addChild(stats);

    // Test
		test = new TestTimer();
	}
}