package;

// Tests
enum Tests
{
  Stress1;
}

/**
 * Class used to Test trace-timer
 *
 * Install https://github.com/tapio/live-server and start from html5 folder
 * Simply issue "live-server" inside the html5 folder and build (release for faster build)
 * Server will reload page automatically when JS is compiled
 */
class TestTimer
{
  // Run some tests
  public function new()
  {
    trace("TestTimer Launch");

    var test = Stress1;

    switch(test)
    {
      case Stress1: stressTest1();
    }
  }

  // Simply load a URL and do nothing else
  function stressTest1()
  {

  }
}