/// @description Arrays to hold spells and spell info
// Spell1: {[_spellID_],[_spellTitle_],[_info_],[_damageLow_],[_damageHigh_],[_chain_]}
// Spell2: {[_spellID_],[_spellTitle_],[_info_],[_damageLow_],[_damageHigh_],[_chain_]}
// etc...

enum c {
	SpellName		= 0,
	SpellID			= 1,
	SpellType		= 2,
	SpellInfo		= 3,
	DamageLow		= 4,
	DamageHigh		= 5,
	CursorWidth		= 7,
	CursorHeight	= 8,
	ScreenShakeSize = 10,
	ScreenShakeTime = 11,
	PieceToChain    = 12,
	SoundDelay		= 14,
	HasChargeSound	= 15,
	Stationary		= 16,
	TravelSpeed		= 17,
	ScreenFlashSize = 18,
	ElementType		= 20,
	MoreInfo		= 22,
	Orientation		= 23,
	CanRotate		= 24,
}

enum s { 
	Basic			= 0,
	Fireball		= 1,
	Elemental		= 2,
	Lightningbolt	= 3,
	Sprout			= 4,
	Tsunami			= 5,
	Brushfire		= 6,
}

// Basic Spell
global.spellData[s.Basic, c.SpellID]					= 0;
global.spellData[s.Basic, c.SpellName]					= "Basic";	
global.spellData[s.Basic, c.SpellType]					= -1;
global.spellData[s.Basic, c.SpellInfo]					= "Dmg: 1";		
global.spellData[s.Basic, c.MoreInfo]					= ["The most simple of", "spells. Nothing special"];
global.spellData[s.Basic, c.DamageLow]					= 1;						
global.spellData[s.Basic, c.DamageHigh]					= 1;							
global.spellData[s.Basic, c.PieceToChain]				= -1;
global.spellData[s.Basic, c.CursorWidth]				= 1;						
global.spellData[s.Basic, c.CursorHeight]				= 1;									
global.spellData[s.Basic, c.ScreenShakeSize]			= 4;						
global.spellData[s.Basic, c.ScreenShakeTime]			= 4;
global.spellData[s.Basic, c.ScreenFlashSize]			= 0.8;	
global.spellData[s.Basic, c.SoundDelay]					= 1;						
global.spellData[s.Basic, c.HasChargeSound]				= false;						
global.spellData[s.Basic, c.Stationary]					= "stationary";				
global.spellData[s.Basic, c.TravelSpeed]				= -1;	
global.spellData[s.Basic, c.ElementType]				= 0;
global.spellData[s.Basic, c.CanRotate]					= false;
global.spellData[s.Basic, c.Orientation]				= 0;

// Fireball
global.spellData[s.Fireball, c.SpellID]					= 1;
global.spellData[s.Fireball, c.SpellName]				= "Fireball";
global.spellData[s.Fireball, c.SpellType]				= 1;
global.spellData[s.Fireball, c.SpellInfo]				= "Dmg: 6-8";
global.spellData[s.Fireball, c.MoreInfo]				= ["Powerful fireball."];
global.spellData[s.Fireball, c.DamageLow]				= 6;						
global.spellData[s.Fireball, c.DamageHigh]				= 8;						
global.spellData[s.Fireball, c.PieceToChain]			= -1;
global.spellData[s.Fireball, c.CursorWidth]				= 3;						
global.spellData[s.Fireball, c.CursorHeight]			= 3;								
global.spellData[s.Fireball, c.ScreenShakeSize]			= 8;						
global.spellData[s.Fireball, c.ScreenShakeTime]			= 8;	
global.spellData[s.Fireball, c.ScreenFlashSize]			= 0.8;	
global.spellData[s.Fireball, c.SoundDelay]				= 15;						
global.spellData[s.Fireball, c.HasChargeSound]			= true;	
global.spellData[s.Fireball, c.Stationary]				= "stationary";				
global.spellData[s.Fireball, c.TravelSpeed]				= -1;
global.spellData[s.Fireball, c.ElementType]				= 1;
global.spellData[s.Fireball, c.CanRotate]				= false;
global.spellData[s.Fireball, c.Orientation]				= 0;

// Elemental
global.spellData[s.Elemental, c.SpellID]				= 2;
global.spellData[s.Elemental, c.SpellName]				= "Elemental";	
global.spellData[s.Elemental, c.SpellType]				= -1;
global.spellData[s.Elemental, c.SpellInfo]				= "Dmg: 0-10";	
global.spellData[s.Elemental, c.MoreInfo]				= ["Harness the elements and", "hope for good luck."];
global.spellData[s.Elemental, c.DamageLow]				= 0;						
global.spellData[s.Elemental, c.DamageHigh]				= 10;						
global.spellData[s.Elemental, c.PieceToChain]			= -1;
global.spellData[s.Elemental, c.CursorWidth]			= 2;						
global.spellData[s.Elemental, c.CursorHeight]			= 2;							
global.spellData[s.Elemental, c.ScreenShakeSize]		= 6;						
global.spellData[s.Elemental, c.ScreenShakeTime]		= 6;
global.spellData[s.Elemental, c.ScreenFlashSize]		= 0.8;	
global.spellData[s.Elemental, c.SoundDelay]				= 15;						
global.spellData[s.Elemental, c.HasChargeSound]			= false;						
global.spellData[s.Elemental, c.Stationary]				= "stationary";				
global.spellData[s.Elemental, c.TravelSpeed]			= -1;	
global.spellData[s.Elemental, c.ElementType]			= 5;
global.spellData[s.Elemental, c.CanRotate]				= false;
global.spellData[s.Elemental, c.Orientation]			= 0;

// Lightningbolt
global.spellData[s.Lightningbolt, c.SpellID]			= 3;
global.spellData[s.Lightningbolt, c.SpellName]			= "Lightningbolt";									
global.spellData[s.Lightningbolt, c.SpellInfo]			= "Dmg: 4(c) R";	
global.spellData[s.Lightningbolt, c.SpellType]			= 4;
global.spellData[s.Lightningbolt, c.MoreInfo]			= ["Chain: Deal 1 extra damage", "for each bolt connected.", "Can Rotate."];
global.spellData[s.Lightningbolt, c.DamageLow]			= 4;						
global.spellData[s.Lightningbolt, c.DamageHigh]			= 4;						
global.spellData[s.Lightningbolt, c.PieceToChain]		= 4;
global.spellData[s.Lightningbolt, c.CursorWidth]		= 3;						
global.spellData[s.Lightningbolt, c.CursorHeight]		= 2;							
global.spellData[s.Lightningbolt, c.ScreenShakeSize]	= 10;						
global.spellData[s.Lightningbolt, c.ScreenShakeTime]	= 4;	
global.spellData[s.Lightningbolt, c.ScreenFlashSize]	= 0.8;
global.spellData[s.Lightningbolt, c.SoundDelay]			= 12;						
global.spellData[s.Lightningbolt, c.HasChargeSound]		= true;	
global.spellData[s.Lightningbolt, c.Stationary]			= "stationary";				
global.spellData[s.Lightningbolt, c.TravelSpeed]		= -1;	
global.spellData[s.Lightningbolt, c.ElementType]		= 4;
global.spellData[s.Lightningbolt, c.CanRotate]			= true;
global.spellData[s.Lightningbolt, c.Orientation]		= 0;

// Sprout spell
global.spellData[s.Sprout, c.SpellID]					= 4;	
global.spellData[s.Sprout, c.SpellName]					= "Sprout";		
global.spellData[s.Sprout, c.SpellType]					= 3;
global.spellData[s.Sprout, c.SpellInfo]					= "Dmg: 0 (3/2)";	
global.spellData[s.Sprout, c.MoreInfo]					= ["Deal 3 damage each turn", "for 2 turns. Heals player", "2 health each turn."];
global.spellData[s.Sprout, c.DamageLow]					= 0;						
global.spellData[s.Sprout, c.DamageHigh]				= 0;						
global.spellData[s.Sprout, c.PieceToChain]				= -1;
global.spellData[s.Sprout, c.CursorWidth]				= 3;						
global.spellData[s.Sprout, c.CursorHeight]				= 2;									
global.spellData[s.Sprout, c.ScreenShakeSize]			= 6;						
global.spellData[s.Sprout, c.ScreenShakeTime]			= 6;
global.spellData[s.Sprout, c.ScreenFlashSize]			= 0.8;	
global.spellData[s.Sprout, c.SoundDelay]				= 15;						
global.spellData[s.Sprout, c.HasChargeSound]			= true;			
global.spellData[s.Sprout, c.Stationary]				= "stationary";				
global.spellData[s.Sprout, c.TravelSpeed]				= -1;
global.spellData[s.Sprout, c.ElementType]				= 3;
global.spellData[s.Sprout, c.CanRotate]					= false;
global.spellData[s.Sprout, c.Orientation]				= 0;

// Tsunami Spell
global.spellData[s.Tsunami, c.SpellID]					= 5;
global.spellData[s.Tsunami, c.SpellName]				= "Tsunami";
global.spellData[s.Tsunami, c.SpellType]				= 2;
global.spellData[s.Tsunami, c.SpellInfo]				= "Dmg: 3(c)";			
global.spellData[s.Tsunami, c.MoreInfo]					= ["Chain: Deal 1 extra damage", "for each water connected."];
global.spellData[s.Tsunami, c.DamageLow]				= 3;						
global.spellData[s.Tsunami, c.DamageHigh]				= 3;						
global.spellData[s.Tsunami, c.PieceToChain]				= 2;
global.spellData[s.Tsunami, c.CursorWidth]				= 2;						
global.spellData[s.Tsunami, c.CursorHeight]				= 2;								
global.spellData[s.Tsunami, c.ScreenShakeSize]			= 6;						
global.spellData[s.Tsunami, c.ScreenShakeTime]			= 6;
global.spellData[s.Tsunami, c.ScreenFlashSize]			= 0.6;	
global.spellData[s.Tsunami, c.SoundDelay]				= 1;						
global.spellData[s.Tsunami, c.HasChargeSound]			= false;						
global.spellData[s.Tsunami, c.Stationary]				= "up";						
global.spellData[s.Tsunami, c.TravelSpeed]				= 3;
global.spellData[s.Tsunami, c.ElementType]				= 2;
global.spellData[s.Tsunami, c.CanRotate]				= false;
global.spellData[s.Tsunami, c.Orientation]				= 0;

// Brushfire Spell
global.spellData[s.Brushfire, c.SpellID]				= 6;
global.spellData[s.Brushfire, c.SpellName]				= "Brushfire";
global.spellData[s.Brushfire, c.SpellType]				= 1;
global.spellData[s.Brushfire, c.SpellInfo]				= "Dmg: 2(c)";	
global.spellData[s.Brushfire, c.MoreInfo]				= ["Environmentally unsafe."];
global.spellData[s.Brushfire, c.DamageLow]				= 2;						
global.spellData[s.Brushfire, c.DamageHigh]				= 2;						
global.spellData[s.Brushfire, c.PieceToChain]			= 3;
global.spellData[s.Brushfire, c.CursorWidth]			= 3;						
global.spellData[s.Brushfire, c.CursorHeight]			= 1;								
global.spellData[s.Brushfire, c.ScreenShakeSize]		= 8;						
global.spellData[s.Brushfire, c.ScreenShakeTime]		= 8;
global.spellData[s.Brushfire, c.ScreenFlashSize]		= 0.8;	
global.spellData[s.Brushfire, c.SoundDelay]				= 15;						
global.spellData[s.Brushfire, c.HasChargeSound]			= true;						
global.spellData[s.Brushfire, c.Stationary]				= "stationary";						
global.spellData[s.Brushfire, c.TravelSpeed]			= -1;
global.spellData[s.Brushfire, c.ElementType]			= 1;
global.spellData[s.Brushfire, c.CanRotate]				= true;
global.spellData[s.Brushfire, c.Orientation]			= 0;