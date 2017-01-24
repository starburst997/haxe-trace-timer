# haxe-trace-timer
Inject timer information in trace statement, mainly just the delta time since last trace statement in milliseconds.

Very simple, might add more info later on, but usefull when wanting to do some benchmark without adding any unneeded fluff.

```haxe
// Activate functionality
TraceTimer.activate();

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

// If you would want to deactivate
TraceTimer.deactivate();
```