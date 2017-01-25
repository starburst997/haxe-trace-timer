package trace;

#if openfl
  import openfl.Lib;
#elseif flash
  import flash.Lib;
#end

/**
 * Inject timer information in trace statement
 */
class TraceTimer 
{
  private static var activated = false;
  
  private static var oldTrace = haxe.Log.trace;
  
  private static var lastTimer:Int = 0;
  
  // No need to instantiate
  private function new() {}
  
  // Reset Timer
  public static inline function resetTimer()
  {
    lastTimer = getTimer();
  }
  
  // Activate
  public static function activate()
  {
    if ( !activated )
    {
      activated = true;
      
      resetTimer();
      haxe.Log.trace = function(v:Dynamic, ?infos:haxe.PosInfos) 
      {
        var delta = getTimer() - lastTimer;
        resetTimer();
        
        if ( v != "" ) oldTrace(delta + "ms," + v, infos);
      };
    }
  }
  
  // Deactivate
  public static function deactivate()
  {
    if ( activated )
    {
      activated = false;
      
      haxe.Log.trace = oldTrace;
    }
  }
  
  // Return number of milliseconds since program start
  public static inline function getTimer():Int
  {
    #if (openfl || flash)
    return Lib.getTimer();
    #elseif js
    return cast Date.now().getTime();
    #elseif (!disable_cffi && !macro)
    return cast NativeCFFI.lime_system_get_timer();
    #elseif cpp
    return Std.int(untyped __global__.__time_stamp() * 1000);
    #elseif sys
    return Std.int(Sys.time() * 1000);
    #else
    return 0;
    #end
  }
}