package;

import trace.TraceTimer;

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
    
    TraceTimer.activate();
    
    var test = Stress1;
    
    switch(test)
    {
      case Stress1: stressTest1();
    }
  }

  // Simply load a URL and do nothing else
  function stressTest1()
  {
    // 0ms,Start
    trace("Start");
    
    // Do something...
    var a = 0;
    for ( i in 0...1000000 )
    {
      a++;
    }

    // 20ms,Finished
    trace("Finished");
    
    // 0ms,Start
    trace("Start 2");
    
    // Do something...
    var a = 0;
    for ( i in 0...10000000 )
    {
      a++;
    }

    // 20ms,Finished
    trace("Finished 2");
  }
}