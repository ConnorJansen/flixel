package flixel.util.helpers;

import flixel.util.FlxStringUtil;
import flixel.math.FlxPoint;

/**
 * Helper object for holding minimum and maximum values of various properties.
 */
class FlxBounds<T>
{
	public var min:T;
	public var max:T;
	
	/**
	 * Create a new Bounds object. Must be typed, e.g. var myBounds = new Bounds<Float>(0, 0);
	 * 
	 * @param	min  The minimum value of the property.
	 * @param	max  The maximum value of the property. Optional, will be set equal to min if ignored.
	 */
	public function new(min:T, ?max:Null<T>)
	{
		this.min = min;
		this.max = max == null ? min : max;
	}
	
	/**
	 * Handy function to set the minimum and maximum values of this Bounds object in one line.
	 * 
	 * @param	min  The new minimum value of the property.
	 * @param	max  The new maximum value of the property. Optional, will be set equal to min if ignored.
	 * @return  This Bounds instance (nice for chaining stuff together).
	 */
	public function set(min:T, ?max:Null<T>):FlxBounds<T>
	{
		this.min = min;
		this.max = max == null ? min : max;
		return this;
	}
	
	/**
	 * Function to compare this FlxBounds to another.
	 * 
	 * @param	OtherFlxBounds  The other FlxBounds to compare to this one.
	 * @return	True if the FlxBounds have the same min and max value, false otherwise.
	 */
	public inline function equals(OtherBounds:FlxBounds<T>):Bool
	{
		return min == OtherBounds.min && max == OtherBounds.max;
	}
	
	/**
	 * Convert object to readable string name. Useful for debugging, save games, etc.
	 */
	public function toString():String
	{
		return FlxStringUtil.getDebugString([ 
			LabelValuePair.weak("min", min),
			LabelValuePair.weak("max", max)]);
	}
}