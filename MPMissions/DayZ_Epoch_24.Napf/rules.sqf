private ["_messages","_timeout"];

_messages = [
	["DayZ Epoch", "Welcome To Hell "+(name player)],
	["World", "Napf Veteran"],
	//["Teamspeak", "some TS info"],
	//["Website/Forums", "some website info"],
	["Server Rules", "Duping, glitching or using any<br />exploit will result in a<br />permanent ban."],
	["Server Rules", "PVE Only"],
	["Server Rules", "Hackers will be banned permanently<br />Respect others"],
	["Server Features","Indestructible Bases"],
	["Server Features","Plot Pole Is REQUIRED To Secure Base BUT Not To Build"],
	["Server Features","Adjusted Traders - They Pay More!!!"],
	["Server Features","WAI DZAI DZMS"],
	["Server Features","55 Missions In Total"],
	["Server Features","Old Style Tow And Lift System"],
	["Server Features","Remember Have Fun And Enjoy Your Time On Beautiful Napf Island"],
	["Server Features","Where The Sun Always Shines And the AI Are Accurate"]
	
];
 
_timeout = 5;
{
	private ["_title","_content","_titleText"];
	uiSleep 2;
	_title = _x select 0;
	_content = _x select 1;
	_titleText = format[("<t font='TahomaB' size='0.40' color='#a81e13' align='right' shadow='1' shadowColor='#000000'>%1</t><br /><t shadow='1'shadowColor='#000000' font='TahomaB' size='0.60' color='#FFFFFF' align='right'>%2</t>"), _title, _content];
	[
		_titleText,
		[safezoneX + safezoneW - 0.8,0.50],     //DEFAULT: 0.5,0.35
		[safezoneY + safezoneH - 0.8,0.7],      //DEFAULT: 0.8,0.7
		_timeout,
		0.5
	] spawn BIS_fnc_dynamicText;
	uiSleep (_timeout * 1.1);
} forEach _messages;