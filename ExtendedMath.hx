import Sys.*;
import com.stencyl.utils.Utils;
import com.stencyl.models.Actor;

class ExtendedMath {
	private static var e:Float = 2.7182818284;

	public static function MinMaxAvg(_control:Int,_list:Array<Dynamic>):Float
	{
		if(_list == null) return 0;
		if(_list.length == 0) return 0;
		switch _control {
			case 0: //Average
				var _sum:Float = 0;
				for(i in 0..._list.length)
				{
					_sum += Std.parseFloat(_list[i]);
				}
				_sum /= _list.length;
				return _sum;
			case 1: //Min
				var _min:Float = Math.POSITIVE_INFINITY;
				for(i in 0..._list.length)
				{
					_min = Math.min(Std.parseFloat(_list[i]),_min);
				}
				return _min;
			case 2: //Max
				var _max:Float = Math.NEGATIVE_INFINITY;
				for(i in 0..._list.length)
				{
					_max = Math.max(Std.parseFloat(_list[i]),_max);
				}
				return _max;
			default:
				return 0;
		}

		return 0;
	}

	public static function HeavensideStep(_val:Float):Float
	{
		if(_val == 0) return 0;
		else if(_val < 0) return -1;
		else if(_val > 0) return 1;
		return Math.NaN;
	}

	public static function Circle(_control:Int, _r:Float):Float
	{
		switch _control {
			case 0: //Area
				return Math.PI * _r * _r;
			case 1: //Circumference
				return 2 * Math.PI * _r;
			default:
				return 0;
		}
	}

	public static function Square(_control:Int, _l:Float, _w:Float):Float
	{
		switch _control {
			case 0: //Area
				return _l * _w;
			case 1: //Parimeter
				return (2 * _l) + (2 * _w);
			default:
				return 0;
		}
	}

	public static function Infinity():Float
	{
		return Math.POSITIVE_INFINITY;
	}

	public static function IsNumber(_val:Dynamic):Bool
	{
		if(Std.parseInt(_val) == null) return false;
		return true;
	}

	public static function NaN():Float
	{
		return Math.NaN;
	}

	public static function Summation(_list:Array<Dynamic>):Float
	{
		if(_list == null) return 0;
		if(_list.length == 0) return 0;
		var _sum:Float = 0;
		for(i in 0..._list.length)
		{
			_sum += Std.parseFloat(_list[i]);
		}
		return _sum;
	}

	public static function ListModifier(_control:Int,_list1:Array<Dynamic>,_list2:Array<Dynamic>):Array<Dynamic>
	{
		if(_list1 == null) return _list2;
		if(_list2 == null) return _list1;
		switch _control {
			case 0: //Intersection
				var temp:Array<Dynamic> = new Array<Dynamic>();
				for(i in 0..._list2.length)
				{
					if(Utils.contains(_list1, _list2[i]))
					{
						temp.push(_list2[i]);
					}
				}
				return temp;
			case 1: //Union
				for(i in 0..._list2.length)
				{
					if(!Utils.contains(_list1, _list2[i]))
					{
						_list1.push(_list2[i]);
					}
				}
				return _list1;
			case 2: //Subtraction
				var temp:Array<Dynamic> = new Array<Dynamic>();
				for(i in 0..._list1.length)
				{
					if(!Utils.contains(_list2, _list1[i]))
					{
						temp.push(_list1[i]);
					}
				}
				return temp;
			default:
				//
		}

		return new Array<Dynamic>();
	}

	public static function MaxInt(_control:Int):Float
	{
		switch _control {
			case 0: //32 Bit
				return 2147483647;
			case 1: //64 Bit
				return 9223372036854775807;
			case 2: //16 Bit
				return 65536;
			case 3: //8 Bit
				return 255;
			default:
				//
		}

		return Math.NaN;
	}

	public static function DistanceBetween(_actor1:Actor,_actor2:Actor):Float
	{
		var X_dist:Float = _actor1.getX() - _actor2.getX();
		var Y_dist:Float = _actor1.getY() - _actor2.getY();
		X_dist *= X_dist;
		Y_dist *= Y_dist;

		return Math.sqrt(X_dist + Y_dist);
	}

	public static function Factorial(n:Float):Float
	{ 
		var n64:Int = Math.floor(n);
		if (n64 == 0)
			return 1;
		return n64 * Factorial(n64 - 1); 
	}

	public static function CubeRoot(n:Float):Float
	{
		return Math.pow(n,(1.0/3));
	}

	public static function NthRoot(_nth:Int,_n:Float):Float
	{
		return Math.pow(_n,(1.0/_nth));
	}

	public static function LogBase(_b:Int,_x:Float):Float
	{
		return Math.log(_x)/Math.log(_b);
	}

	public static function ModularTest(_a:Int,_b:Int,_n:Int):Bool
	{
		return (_a%_n == _b%_n);
	}

	public static function IsEvenOdd(_n:Int,_control:Bool):Bool
	{
		if(_control) //Even
			return (_n%2 == 0);
		//Odd
		return (_n%2 == 1);
	}

	public static function PlusMinus(_A:Float,_B:Float):Array<Dynamic>
	{
		var plusminus:Array<Dynamic> = new Array<Dynamic>();
		plusminus.push(_A + _B);
		plusminus.push(_A - _B);
		return plusminus;
	}

	public static function Subset(A:Array<Dynamic>,B:Array<Dynamic>):Bool
	{
		if(A == null) return false;
		if(B == null) return false;
		for(i in 0...A.length)
		{
			if(!Utils.contains(B, A[i])) return false;
		}
		return true;
	}

	public static function Choose(n:Float,k:Float):Float
	{
		return (Factorial(n)/Factorial(n-k))/Factorial(k);
	}

	public static function Pick(n:Float,k:Float):Float
	{
		return (Factorial(n)/Factorial(n-k));
	}

	public static function Divides(A:Float,B:Float):Bool
	{
		if(A > B || A == 0) return false;
		return (B%A == 0);
	}

	public static function IdentityMatrix(n:Int):Array<Dynamic>
	{
		n = Math.floor(n);
		var list = new Array<Dynamic>();
		for(i in 0...n)
		{
			list.push(new Array<Dynamic>());
			for(j in 0...n)
			{
				list[i].push((i == j)?1:0);
			}
		}
		return list;
	}

	public static function Implies(A:Bool,B:Bool):Bool
	{
		if(A && !B) return false;
		return true;
	}

	public static function RootTwo():Float
	{
		return Math.sqrt(2.0);
	}

	public static function Phi():Float
	{
		return (1 + Math.sqrt(5.0))/2.0;
	}

	public static function SinCosTanh(_control:Int,_n:Float):Float
	{
		switch _control {
			case 0: //sinh
				return sinh(_n);
			case 1: //cosh
				return cosh(_n);
			case 2: //tanh
				return tanh(_n);
			default:
		}
		return 0;
	}

	private static function sinh(n:Float)
	{
		return (1.0/2.0) * (Math.pow(e,n) - (1.0/Math.pow(e,n)));
	}

	private static function cosh(n:Float)
	{
		return (1.0/2.0) * ((1.0/Math.pow(e,n)) + Math.pow(e,n));
	}

	private static function tanh(n:Float)
	{
		return sinh(n) / cosh(n);
	}

	public static function Inverse(_n:Float):Float
	{
		return 1.0/_n;
	}

}