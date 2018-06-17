/// @description Arrays to hold spells and spell info
// Spell1: {[_spellID_],[_spellTitle_],[_info_],[_damageLow_],[_damageHigh_],[_chain_]}
// Spell2: {[_spellID_],[_spellTitle_],[_info_],[_damageLow_],[_damageHigh_],[_chain_]}
// etspellC...

enum spell { 
	Basic			= 0,
	Fireball		= 1,
	Elemental		= 2,
	Lightningbolt	= 3,
	Sprout			= 4,
	Tsunami			= 5,
	Brushfire		= 6,
}

enum spellC {
	SpellName		= 0,
	SpellID			= 1,
	SpellType		= 2,
	SpellInfo		= 3,
	DamageLow		= 4,
	DamageHigh		= 5,
	CursorWidth		= 6,
	CursorHeight	= 7,
	ScreenShakeSize = 8,
	ScreenShakeTime = 9,
	PieceToChain    = 10,
	SoundDelay		= 11,
	HasChargeSound	= 12,
	Stationary		= 13,
	TravelSpeed		= 14,
	ScreenFlashSize = 15,
	ElementType		= 16,
	MoreInfo		= 17,
	CanRotate		= 18,
	Orientation		= 19,
	CanFlip			= 20,
	FlipOrientation = 21,
	
}

// Basic Spell
global.spellData[spell.Basic, spellC.SpellID]					= 0;
global.spellData[spell.Basic, spellC.SpellName]					= "Basic";	
global.spellData[spell.Basic, spellC.SpellType]					= -1;
global.spellData[spell.Basic, spellC.SpellInfo]					= "Dmg: 1";		
global.spellData[spell.Basic, spellC.MoreInfo]					= ["The most simple of", "spellspell. Nothing special"];
global.spellData[spell.Basic, spellC.DamageLow]					= 1;						
global.spellData[spell.Basic, spellC.DamageHigh]				= 1;							
global.spellData[spell.Basic, spellC.PieceToChain]				= -1;
global.spellData[spell.Basic, spellC.CursorWidth]				= 1;						
global.spellData[spell.Basic, spellC.CursorHeight]				= 1;									
global.spellData[spell.Basic, spellC.ScreenShakeSize]			= 4;						
global.spellData[spell.Basic, spellC.ScreenShakeTime]			= 4;
global.spellData[spell.Basic, spellC.ScreenFlashSize]			= 0.8;	
global.spellData[spell.Basic, spellC.SoundDelay]				= 1;						
global.spellData[spell.Basic, spellC.HasChargeSound]			= false;						
global.spellData[spell.Basic, spellC.Stationary]				= "stationary";				
global.spellData[spell.Basic, spellC.TravelSpeed]				= -1;	
global.spellData[spell.Basic, spellC.ElementType]				= 0;
global.spellData[spell.Basic, spellC.CanRotate]					= false;
global.spellData[spell.Basic, spellC.Orientation]				= 0;
global.spellData[spell.Basic, spellC.CanFlip]					= false;
global.spellData[spell.Basic, spellC.FlipOrientation]			= 1;

// Fireball
global.spellData[spell.Fireball, spellC.SpellID]				= 1;
global.spellData[spell.Fireball, spellC.SpellName]				= "Fireball";
global.spellData[spell.Fireball, spellC.SpellType]				= 1;
global.spellData[spell.Fireball, spellC.SpellInfo]				= "Dmg: 6-8";
global.spellData[spell.Fireball, spellC.MoreInfo]				= ["Powerful fireball."];
global.spellData[spell.Fireball, spellC.DamageLow]				= 6;						
global.spellData[spell.Fireball, spellC.DamageHigh]				= 8;						
global.spellData[spell.Fireball, spellC.PieceToChain]			= -1;
global.spellData[spell.Fireball, spellC.CursorWidth]			= 3;						
global.spellData[spell.Fireball, spellC.CursorHeight]			= 3;								
global.spellData[spell.Fireball, spellC.ScreenShakeSize]		= 8;						
global.spellData[spell.Fireball, spellC.ScreenShakeTime]		= 8;	
global.spellData[spell.Fireball, spellC.ScreenFlashSize]		= 0.8;	
global.spellData[spell.Fireball, spellC.SoundDelay]				= 15;						
global.spellData[spell.Fireball, spellC.HasChargeSound]			= true;	
global.spellData[spell.Fireball, spellC.Stationary]				= "stationary";				
global.spellData[spell.Fireball, spellC.TravelSpeed]			= -1;
global.spellData[spell.Fireball, spellC.ElementType]			= 1;
global.spellData[spell.Fireball, spellC.CanRotate]				= false;
global.spellData[spell.Fireball, spellC.Orientation]			= 0;
global.spellData[spell.Fireball, spellC.CanFlip]				= false;
global.spellData[spell.Fireball, spellC.FlipOrientation]		= 1;

// Elemental
global.spellData[spell.Elemental, spellC.SpellID]				= 2;
global.spellData[spell.Elemental, spellC.SpellName]				= "Elemental";	
global.spellData[spell.Elemental, spellC.SpellType]				= -1;
global.spellData[spell.Elemental, spellC.SpellInfo]				= "Dmg: 0-10";	
global.spellData[spell.Elemental, spellC.MoreInfo]				= ["Harness the elements and", "hope for good luck."];
global.spellData[spell.Elemental, spellC.DamageLow]				= 0;						
global.spellData[spell.Elemental, spellC.DamageHigh]			= 10;						
global.spellData[spell.Elemental, spellC.PieceToChain]			= -1;
global.spellData[spell.Elemental, spellC.CursorWidth]			= 2;						
global.spellData[spell.Elemental, spellC.CursorHeight]			= 2;							
global.spellData[spell.Elemental, spellC.ScreenShakeSize]		= 6;						
global.spellData[spell.Elemental, spellC.ScreenShakeTime]		= 6;
global.spellData[spell.Elemental, spellC.ScreenFlashSize]		= 0.8;	
global.spellData[spell.Elemental, spellC.SoundDelay]			= 15;						
global.spellData[spell.Elemental, spellC.HasChargeSound]		= true;						
global.spellData[spell.Elemental, spellC.Stationary]			= "stationary";				
global.spellData[spell.Elemental, spellC.TravelSpeed]			= -1;	
global.spellData[spell.Elemental, spellC.ElementType]			= 5;
global.spellData[spell.Elemental, spellC.CanRotate]				= false;
global.spellData[spell.Elemental, spellC.Orientation]			= 0;
global.spellData[spell.Elemental, spellC.CanFlip]				= false;
global.spellData[spell.Elemental, spellC.FlipOrientation]		= 1;

// Lightningbolt
global.spellData[spell.Lightningbolt, spellC.SpellID]			= 3;
global.spellData[spell.Lightningbolt, spellC.SpellName]			= "Lightningbolt";									
global.spellData[spell.Lightningbolt, spellC.SpellInfo]			= "Dmg: 4(c) R";	
global.spellData[spell.Lightningbolt, spellC.SpellType]			= 4;
global.spellData[spell.Lightningbolt, spellC.MoreInfo]			= ["Chain: Deal 1 extra damage", "for each bolt connected.", "Can Rotate."];
global.spellData[spell.Lightningbolt, spellC.DamageLow]			= 4;						
global.spellData[spell.Lightningbolt, spellC.DamageHigh]		= 4;						
global.spellData[spell.Lightningbolt, spellC.PieceToChain]		= 4;
global.spellData[spell.Lightningbolt, spellC.CursorWidth]		= 3;						
global.spellData[spell.Lightningbolt, spellC.CursorHeight]		= 2;							
global.spellData[spell.Lightningbolt, spellC.ScreenShakeSize]	= 10;						
global.spellData[spell.Lightningbolt, spellC.ScreenShakeTime]	= 4;	
global.spellData[spell.Lightningbolt, spellC.ScreenFlashSize]	= 0.8;
global.spellData[spell.Lightningbolt, spellC.SoundDelay]		= 12;						
global.spellData[spell.Lightningbolt, spellC.HasChargeSound]	= true;	
global.spellData[spell.Lightningbolt, spellC.Stationary]		= "stationary";				
global.spellData[spell.Lightningbolt, spellC.TravelSpeed]		= -1;	
global.spellData[spell.Lightningbolt, spellC.ElementType]		= 4;
global.spellData[spell.Lightningbolt, spellC.CanRotate]			= true;
global.spellData[spell.Lightningbolt, spellC.Orientation]		= 0;
global.spellData[spell.Lightningbolt, spellC.CanFlip]			= true;
global.spellData[spell.Lightningbolt, spellC.FlipOrientation]	= 1;

// Sprout spell
global.spellData[spell.Sprout, spellC.SpellID]					= 4;	
global.spellData[spell.Sprout, spellC.SpellName]				= "Sprout";		
global.spellData[spell.Sprout, spellC.SpellType]				= 3;
global.spellData[spell.Sprout, spellC.SpellInfo]				= "Dmg: 0 (3/2)";	
global.spellData[spell.Sprout, spellC.MoreInfo]					= ["Deal 3 damage each turn", "for 2 turnspell. Heals player", "2 health each turn."];
global.spellData[spell.Sprout, spellC.DamageLow]				= 0;						
global.spellData[spell.Sprout, spellC.DamageHigh]				= 0;						
global.spellData[spell.Sprout, spellC.PieceToChain]				= -1;
global.spellData[spell.Sprout, spellC.CursorWidth]				= 3;						
global.spellData[spell.Sprout, spellC.CursorHeight]				= 2;									
global.spellData[spell.Sprout, spellC.ScreenShakeSize]			= 6;						
global.spellData[spell.Sprout, spellC.ScreenShakeTime]			= 6;
global.spellData[spell.Sprout, spellC.ScreenFlashSize]			= 0.8;	
global.spellData[spell.Sprout, spellC.SoundDelay]				= 15;						
global.spellData[spell.Sprout, spellC.HasChargeSound]			= true;			
global.spellData[spell.Sprout, spellC.Stationary]				= "stationary";				
global.spellData[spell.Sprout, spellC.TravelSpeed]				= -1;
global.spellData[spell.Sprout, spellC.ElementType]				= 3;
global.spellData[spell.Sprout, spellC.CanRotate]				= false;
global.spellData[spell.Sprout, spellC.Orientation]				= 0;
global.spellData[spell.Sprout, spellC.CanFlip]					= false;
global.spellData[spell.Sprout, spellC.FlipOrientation]			= 1;

// Tsunami Spell
global.spellData[spell.Tsunami, spellC.SpellID]					= 5;
global.spellData[spell.Tsunami, spellC.SpellName]				= "Tsunami";
global.spellData[spell.Tsunami, spellC.SpellType]				= 2;
global.spellData[spell.Tsunami, spellC.SpellInfo]				= "Dmg: 3(c)";			
global.spellData[spell.Tsunami, spellC.MoreInfo]				= ["Chain: Deal 1 extra damage", "for each water connected."];
global.spellData[spell.Tsunami, spellC.DamageLow]				= 3;						
global.spellData[spell.Tsunami, spellC.DamageHigh]				= 3;						
global.spellData[spell.Tsunami, spellC.PieceToChain]			= 2;
global.spellData[spell.Tsunami, spellC.CursorWidth]				= 2;						
global.spellData[spell.Tsunami, spellC.CursorHeight]			= 2;								
global.spellData[spell.Tsunami, spellC.ScreenShakeSize]			= 6;						
global.spellData[spell.Tsunami, spellC.ScreenShakeTime]			= 6;
global.spellData[spell.Tsunami, spellC.ScreenFlashSize]			= 0.6;	
global.spellData[spell.Tsunami, spellC.SoundDelay]				= 1;						
global.spellData[spell.Tsunami, spellC.HasChargeSound]			= false;						
global.spellData[spell.Tsunami, spellC.Stationary]				= "up";						
global.spellData[spell.Tsunami, spellC.TravelSpeed]				= 3;
global.spellData[spell.Tsunami, spellC.ElementType]				= 2;
global.spellData[spell.Tsunami, spellC.CanRotate]				= false;
global.spellData[spell.Tsunami, spellC.Orientation]				= 0;
global.spellData[spell.Tsunami, spellC.CanFlip]					= true;
global.spellData[spell.Tsunami, spellC.FlipOrientation]			= 1;

// Brushfire Spell
global.spellData[spell.Brushfire, spellC.SpellID]				= 6;
global.spellData[spell.Brushfire, spellC.SpellName]				= "Brushfire";
global.spellData[spell.Brushfire, spellC.SpellType]				= 1;
global.spellData[spell.Brushfire, spellC.SpellInfo]				= "Dmg: 2(c)";	
global.spellData[spell.Brushfire, spellC.MoreInfo]				= ["Environmentally unsafe."];
global.spellData[spell.Brushfire, spellC.DamageLow]				= 2;						
global.spellData[spell.Brushfire, spellC.DamageHigh]			= 2;						
global.spellData[spell.Brushfire, spellC.PieceToChain]			= 3;
global.spellData[spell.Brushfire, spellC.CursorWidth]			= 3;						
global.spellData[spell.Brushfire, spellC.CursorHeight]			= 1;								
global.spellData[spell.Brushfire, spellC.ScreenShakeSize]		= 8;						
global.spellData[spell.Brushfire, spellC.ScreenShakeTime]		= 8;
global.spellData[spell.Brushfire, spellC.ScreenFlashSize]		= 0.8;	
global.spellData[spell.Brushfire, spellC.SoundDelay]			= 15;						
global.spellData[spell.Brushfire, spellC.HasChargeSound]		= true;						
global.spellData[spell.Brushfire, spellC.Stationary]			= "stationary";						
global.spellData[spell.Brushfire, spellC.TravelSpeed]			= -1;
global.spellData[spell.Brushfire, spellC.ElementType]			= 1;
global.spellData[spell.Brushfire, spellC.CanRotate]				= true;
global.spellData[spell.Brushfire, spellC.Orientation]			= 0;
global.spellData[spell.Brushfire, spellC.CanFlip]				= false;
global.spellData[spell.Brushfire, spellC.FlipOrientation]		= 1;