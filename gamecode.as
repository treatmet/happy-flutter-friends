import flash.ui.Keyboard;
import flash.utils.Timer;
import flash.events.TimerEvent;
import flash.events.Event;
import flash.events.Event;
import flash.display.StageAlign;
import flash.display.StageScaleMode;
import flash.events.Event;    
import flash.ui.Mouse;
Mouse.hide();

stage.scaleMode = StageScaleMode.EXACT_FIT;

var newMenu1p:menu1p;
var newMenu2p:menu2p;
var newMenuQuest:menuQuest;
var newMenuChapter:menuChapter;
var newMenuDifficulty:menuDifficulty;
var newMenuParty2p:menuParty2p;
var newMenuSurvival1p:menuSurvival1p;
var newMenuSurvival2p:menuSurvival2p;

var gameplay:Number = 0;
var Ch1Lv1Completed:Number = 0;//1,2,3 players
var Ch1Lv1Perfect:Number = 0;
var Ch1Lv1Gems:Number = 0;
var Ch1Lv2Completed:Number = 0;//1,2,3 players
var Ch1Lv2Perfect:Number = 0;
var Ch1Lv2Gems:Number = 0;
var Ch1Lv3Completed:Number = 0;//1,2,3 players
var Ch1Lv3Perfect:Number = 0;
var Ch1Lv3Gems:Number = 0;
var Ch1Lv4Completed:Number = 0;//1,2,3 players
var Ch1Lv4Perfect:Number = 0;
var Ch1Lv4Gems:Number = 0;
var Ch1Lv5Completed:Number = 0;//1,2,3 players
var Ch1Lv5Perfect:Number = 0;
var Ch1Lv5Gems:Number = 0;
var Ch2Lv1Completed:Number = 0;//1,2,3 players
var Ch2Lv1Perfect:Number = 0;
var Ch2Lv1Gems:Number = 0;
var Ch2Lv2Completed:Number = 0;//1,2,3 players
var Ch2Lv2Perfect:Number = 0;
var Ch2Lv2Gems:Number = 0;
var Ch2Lv3Completed:Number = 0;//1,2,3 players
var Ch2Lv3Perfect:Number = 0;
var Ch2Lv3Gems:Number = 0;
var Ch2Lv4Completed:Number = 0;//1,2,3 players
var Ch2Lv4Perfect:Number = 0;
var Ch2Lv4Gems:Number = 0;
var Ch2Lv5Completed:Number = 0;//1,2,3 players
var Ch2Lv5Perfect:Number = 0;
var Ch2Lv5Gems:Number = 0;
var Ch3Lv1Completed:Number = 0;//1,2,3 players
var Ch3Lv1Perfect:Number = 0;
var Ch3Lv1Gems:Number = 0;
var Ch3Lv2Completed:Number = 0;//1,2,3 players
var Ch3Lv2Perfect:Number = 0;
var Ch3Lv2Gems:Number = 0;
var Ch3Lv3Completed:Number = 0;//1,2,3 players
var Ch3Lv3Perfect:Number = 0;
var Ch3Lv3Gems:Number = 0;
var Ch3Lv4Completed:Number = 0;//1,2,3 players
var Ch3Lv4Perfect:Number = 0;
var Ch3Lv4Gems:Number = 0;
var Ch3Lv5Completed:Number = 0;//1,2,3 players
var Ch3Lv5Perfect:Number = 0;
var Ch3Lv5Gems:Number = 0;
var Ch4Lv1Completed:Number = 0;//1,2,3 players
var Ch4Lv1Perfect:Number = 0;
var Ch4Lv1Gems:Number = 0;
var Ch4Lv2Completed:Number = 0;//1,2,3 players
var Ch4Lv2Perfect:Number = 0;
var Ch4Lv2Gems:Number = 0;
var Ch4Lv3Completed:Number = 0;//1,2,3 players
var Ch4Lv3Perfect:Number = 0;
var Ch4Lv3Gems:Number = 0;
var Ch4Lv4Completed:Number = 0;//1,2,3 players
var Ch4Lv4Perfect:Number = 0;
var Ch4Lv4Gems:Number = 0;
var Ch4Lv5Completed:Number = 0;//1,2,3 players
var Ch4Lv5Perfect:Number = 0;
var Ch4Lv5Gems:Number = 0;
var Ch5Lv1Completed:Number = 0;//1,2,3 players
var Ch5Lv1Perfect:Number = 0;
var Ch5Lv1Gems:Number = 0;
var Ch5Lv2Completed:Number = 0;//1,2,3 players
var Ch5Lv2Perfect:Number = 0;
var Ch5Lv2Gems:Number = 0;
var Ch5Lv3Completed:Number = 0;//1,2,3 players
var Ch5Lv3Perfect:Number = 0;
var Ch5Lv3Gems:Number = 0;
var Ch5Lv4Completed:Number = 0;//1,2,3 players
var Ch5Lv4Perfect:Number = 0;
var Ch5Lv4Gems:Number = 0;
var Ch5Lv5Completed:Number = 0;//1,2,3 players
var Ch5Lv5Perfect:Number = 0;
var Ch5Lv5Gems:Number = 0;

var altControls:Number = 0;
var defaultSpeed:Number = 4;
var selected1 = "1 PLAYER";
var menuLoaded:Number = 1;
var bumpRight:Number = 0;
var bumpLeft:Number = 0;
var menuDirection = 0;
var menuItems:Number = 3;
var zapSpeed1:Number = 0;
var zapDirection1 = 0;
var zapSpeed2:Number = 0;
var zapDirection2 = 0;
var zapSpeed3:Number = 0;
var zapDirection3 = 0;
var menuID = "TITLE";
var menuChanged:Number = 0;
var xy:Number = 60;
// random y: Math.floor(Math.random() * (1+650-60)) + 60
var xx:Number = 1150;
var xdirection = "left";
var xspeed:Number = 3;
var xyspeed:Number = 3;
var xheight:Number = 350;
// fire height: Math.floor(Math.random() * (1+450-250)) + 250
var xwidth:Number = 50;
var xrotation:Number = 0;
var xforce:Number = 80;
var xalpha:Number = 1;
var xtext = "text";

var autopilot:Number = 0;
var chapter:Number = 0;
var level:Number = 1;
var levelLength:Number = 1000;
var counter:Number = 0;
var coop:Number = 0;
var highscoreNum:Number = 0;
var numPlayers = " ";
var gameMode = " ";
var difficulty = "MILD";
var player1Wins:Number = 0;
var player2Wins:Number = 0;
var player3Wins:Number = 0;
var player1TotalScore:Number = 0;
var player2TotalScore:Number = 0;
var player3TotalScore:Number = 0;

var gravity:Number = 1.2;
var flutterStrength:Number = 1.2;
var moveSpeed:Number = .56;


black2.visible = false;
black2.blackness.width = 1200;
black2.blackness.height = 650;
black2.x = 1150 / 2 - 10;
black2.y = 650 / 2 + 34;
selector1.x = 575;
Title3.width = 790.85;
selector1.uarrow.visible = false;
Title3.width = 1009;
Title3.height = 285;
onePlayer.x=575;

whiteOutline.visible = false;
friend1.notinvince = 1;
friend2.notinvince = 1;
friend3.notinvince = 1;
friend1.finished = 0;
friend2.finished = 0;
friend3.finished = 0;
friend1.alive = 0;
friend2.alive = 0;
friend3.alive = 0;

gravity = gravity / 2;
friend1.fall = -15;
friend2.fall = -15;
friend3.fall = -15;
friend1.mspeed = 1.5;
friend2.mspeed = 1.5;
friend3.mspeed = 1.5;
friend1.kup = 0;
friend1.kleft = 0;
friend1.kright = 0;
friend2.kup = 0;
friend2.kleft = 0;
friend2.kright = 0;
friend3.kup = 0;
friend3.kleft = 0;
friend3.kright = 0;

var fireSpeedStandard:Number = 3;
var fireSpeed:Number;
fireSpeed = fireSpeedStandard;
var backScrollSpeed:Number = .5;
var p1ScoreNum:Number = 0;
var p2ScoreNum:Number = 0;
var p3ScoreNum:Number = 0;
var p1deaths:Number = 0;
var p2deaths:Number = 0;
var p3deaths:Number = 0;
var menuTotalDeaths:Number = 0;
var menuTotalGems:Number = 0;
var par:Number = 0;
var menuGrandTotalDeaths:Number = 0;
var menuGrandTotalGems:Number = 0;

var grandTotalGems:Number = 0;
var grandTotalDeaths:Number = 0;
var gemsGained:Number = 0;


var temp1;
temp1 = 0;
var temp2;
temp2 = 0;
var temp3;
temp3 = 0;
var temp4;
temp4 = 0;
var temp5;
temp5 = 0;
var temp6;
temp6 = 0;
var temp7;
temp7 = 0;
var temp8;
temp8 = 0;
var temp9;
temp9 = 0;
var formatSmallText:TextFormat = new TextFormat();
formatSmallText.size = 26;
var formatBigGem:TextFormat = new TextFormat();
formatBigGem.size = 40;
var format91:TextFormat = new TextFormat();
format91.size = 91;
var formatLevel:TextFormat = new TextFormat();
formatLevel.size = 200;
friend1.shield = 0;
friend2.shield = 0;
friend3.shield = 0;
friend1.invincible = 0;
friend2.invincible = 0;
friend3.invincible = 0;
friend1.ice = 0;
friend2.ice = 0;
friend3.ice = 0;
friend1.lightning = 0;
friend2.lightning = 0;
friend3.lightning = 0;
friend1.ball = 0;
friend2.ball = 0;
friend3.ball = 0;

twoPlayer.x = onePlayer.x;
threePlayer.x = onePlayer.x;
test.x = 100000;
whiteRect.visible = false;

friend1.visible = false;
friend2.visible = false;
friend3.visible = false;
Title2.visible = false;
Title3.visible = false;
text2.visible = false;
text3.visible = false;
text4.visible = false;
highscore.visible = false;
zap1.visible = false;
zap2.visible = false;
zap3.visible = false;
menuLevelOver.visible = false;

function loadMenu()
{
gameplay = 0;
menuLevelOver.visible = false;
selector1.uarrow.visible = false;
p1Score.visible = false;
p2Score.visible = false;
p3Score.visible = false;

timerFireSpawn = timerFireSpawn;
fireSpeed = fireSpeedStandard;

friend1.visible = false;
friend2.visible = false;
friend3.visible = false;
Title2.visible = false;
Title3.visible = false;
text2.visible = false;
text3.visible = false;
text4.visible = false;

//Build menu
onePlayer.x = 575;
onePlayer.visible = true;
twoPlayer.visible = true;
threePlayer.visible = true;
Title.y = 78.25;
Title.text = "welcome to happy flutter friends beta build";
Title.visible = true;
text1.visible = true;
selector1.visible = false;
selector1.x = 575;
selector1.y = onePlayer.y;

menuID="TITLE";

}//end menu button

var melt1Interval = 1200;
var melt1Repeat = 1;
var fl_melt1:Timer = new Timer(melt1Interval, melt1Repeat);
fl_melt1.addEventListener(TimerEvent.TIMER, melt1);
function melt1(event:TimerEvent):void
{
	friend1.ice = 0;
}

var melt2Interval = 1200;
var melt2Repeat = 1;
var fl_melt2:Timer = new Timer(melt2Interval, melt2Repeat);
fl_melt2.addEventListener(TimerEvent.TIMER, melt2);
function melt2(event:TimerEvent):void
{
	friend2.ice = 0;
}

var melt3Interval = 1200;
var melt3Repeat = 1;
var fl_melt3:Timer = new Timer(melt3Interval, melt3Repeat);
fl_melt3.addEventListener(TimerEvent.TIMER, melt3);
function melt3(event:TimerEvent):void
{
	friend3.ice = 0;
}

/*
var fl_notinvince1:PerfectTimer = new PerfectTimer(10000);
fl_notinvince1.timer.addEventListener(TimerEvent.TIMER, notInvince1);
function notInvince1(event:TimerEvent):void {
if (friend1.notinvince==0){
	friend1.notinvince = 1;
	fl_notinvince1.repeat(1000);
}
}
*/

var notinvince1Interval = 10000;
var notinvince1Repeat = 1;
var fl_notinvince1:Timer = new Timer(notinvince1Interval, notinvince1Repeat);
fl_notinvince1.addEventListener(TimerEvent.TIMER, notinvince1);
function notinvince1(event:TimerEvent):void
{
	friend1.notinvince = 1;
}

var notinvince2Interval = 10000;
var notinvince2Repeat = 1;
var fl_notinvince2:Timer = new Timer(notinvince2Interval, notinvince2Repeat);
fl_notinvince2.addEventListener(TimerEvent.TIMER, notinvince2);
function notinvince2(event:TimerEvent):void
{
	friend2.notinvince = 1;
}

var notinvince3Interval = 10000;
var notinvince3Repeat = 1;
var fl_notinvince3:Timer = new Timer(notinvince3Interval, notinvince3Repeat);
fl_notinvince3.addEventListener(TimerEvent.TIMER, notinvince3);
function notinvince3(event:TimerEvent):void
{
	friend3.notinvince = 1;
}


var notlightning1Interval = 10000;
var notlightning1Repeat = 1;
var fl_notlightning1:Timer = new Timer(notlightning1Interval, notlightning1Repeat);
fl_notlightning1.addEventListener(TimerEvent.TIMER, notlightning1);
function notlightning1(event:TimerEvent):void
{
	friend1.notlightning = 1;
}

var notlightning2Interval = 10000;
var notlightning2Repeat = 1;
var fl_notlightning2:Timer = new Timer(notlightning2Interval, notlightning2Repeat);
fl_notlightning2.addEventListener(TimerEvent.TIMER, notlightning2);
function notlightning2(event:TimerEvent):void
{
	friend2.notlightning = 1;
}

var notlightning3Interval = 10000;
var notlightning3Repeat = 1;
var fl_notlightning3:Timer = new Timer(notlightning3Interval, notlightning3Repeat);
fl_notlightning3.addEventListener(TimerEvent.TIMER, notlightning3);
function notlightning3(event:TimerEvent):void
{
	friend3.notlightning = 1;
}

//FLOATING TEXT
function createText(){
var newText:buttonText = new buttonText();
addChildAt(newText,1);
newText.x = xx;
newText.y = xy;
//newText.height = xheight;
//newText.width = xwidth;
newText.speed = xspeed;
newText.texty.text = xtext;
newText.direction = xdirection;
newText.addEventListener(Event.ENTER_FRAME, textFrame);
}
function textFrame(e:Event):void{
if (gameplay == 1){e.target.x -= e.target.speed;}
if(e.target.x<-200 || e.target.x>1350 || e.target.y<-200 || e.target.y>850){ 
e.target.removeEventListener(Event.ENTER_FRAME, textFrame);
removeChild(MovieClip(e.target));
}
if(gameplay == 0){ 
e.target.removeEventListener(Event.ENTER_FRAME, textFrame);
removeChild(MovieClip(e.target));
}
}


//Black HOLE
//timer that spawns the bh
var bhInterval = 1500;
var timerBhSpawn:Number = bhInterval;
var timerBhSpawnCounter:Number = 1;
var timerBhSpawnEnabled:Number = 0;

/*
var bhSpawnRepeat:Number = 0;
var bhSpawnInterval:Number = 50000;
var fl_timerbhSpawn:Timer = new Timer(bhSpawnInterval, bhSpawnRepeat);
fl_timerbhSpawn.addEventListener(TimerEvent.TIMER, bhSpawn);
function bhSpawn(event:TimerEvent):void
{
if (gameplay == 1) {
xspeed=3;
xx=1250;
xy = Math.floor(Math.random() * (1+650-60)) + 60;
createbh();
	}//end gameplay condition
}//end SpawnFire timer
*/


function bhFrame(e:Event):void{
if (gameplay==1){
if (e.target.direction == "left"){e.target.x -= e.target.speed;}
if (e.target.direction == "right"){e.target.x += e.target.speed;}
if (e.target.direction == "up"){e.target.y -= e.target.speed;}
if (e.target.direction == "down"){e.target.y += e.target.speed;}
if (e.target.direction == "upleft"){e.target.x -= e.target.speed/2; e.target.y -= e.target.speed/2;}
if (e.target.direction == "upright"){e.target.x += e.target.speed/2; e.target.y -= e.target.speed/2;}
if (e.target.direction == "downright"){e.target.x += e.target.speed/2; e.target.y += e.target.speed/2;}
if (e.target.direction == "downleft"){e.target.x -= e.target.speed/2; e.target.y += e.target.speed/2;}
e.target.rotation+=.3;
//bh gravity
if (friend1.alive==1 && friend1.finished==0 && friend1.invincible==0){
e.target.dx1 = e.target.x-friend1.x;
e.target.dy1 = e.target.y-friend1.y;
e.target.distSQ1 = e.target.dx1*e.target.dx1 + e.target.dy1*e.target.dy1;
e.target.dist1 = Math.sqrt(e.target.distSQ1);
e.target.force1 = e.target.force / e.target.dist1;
e.target.ax1 = e.target.force1*e.target.dx1/e.target.dist1;
e.target.ay1 = e.target.force1*e.target.dy1/e.target.dist1;
friend1.mspeed += e.target.ax1;
friend1.fall += e.target.ay1;
}
if (friend2.alive==1 && friend2.finished==0 && friend1.invincible==0){
e.target.dx2 = e.target.x-friend2.x;
e.target.dy2 = e.target.y-friend2.y;
e.target.distSQ2 = e.target.dx2*e.target.dx2 + e.target.dy2*e.target.dy2;
e.target.dist2 = Math.sqrt(e.target.distSQ2);
e.target.force2 = e.target.force / e.target.dist2;
e.target.ax2 = e.target.force2*e.target.dx2/e.target.dist2;
e.target.ay2 = e.target.force2*e.target.dy2/e.target.dist2;
friend2.mspeed += e.target.ax2;
friend2.fall += e.target.ay2;
}
if (friend3.alive==1 && friend3.finished==0 && friend1.invincible==0){
e.target.dx3 = e.target.x-friend3.x;
e.target.dy3 = e.target.y-friend3.y;
e.target.distSQ3 = e.target.dx3*e.target.dx3 + e.target.dy3*e.target.dy3;
e.target.dist3 = Math.sqrt(e.target.distSQ3);
e.target.force3 = e.target.force / e.target.dist3;
e.target.ax3 = e.target.force3*e.target.dx3/e.target.dist3;
e.target.ay3 = e.target.force3*e.target.dy3/e.target.dist3;
friend3.mspeed += e.target.ax3;
friend3.fall += e.target.ay3;
}
}//if gameplay==1

if(e.target.x<-200 || e.target.x>1350 || e.target.y<-200 || e.target.y>850){ 
e.target.removeEventListener(Event.ENTER_FRAME, bhFrame);
removeChild(MovieClip(e.target));
}
if(gameplay == 0){ 
e.target.removeEventListener(Event.ENTER_FRAME, bhFrame);
removeChild(MovieClip(e.target));
}
//bh hit detection
	if ((friend1.x - friend1.width *.22) < (e.target.x + e.target.width *.05)){
	if ((friend1.x + friend1.width *.22) > (e.target.x - e.target.width*.05)){
	if ((friend1.y - friend1.height *.22) < (e.target.y + e.target.height*.05)){
	if ((friend1.y + friend1.height *.22) > (e.target.y - e.target.height*.05)) {
	if (zap1.visible == false && friend1.alive == 1 && friend1.finished==0 && friend1.invincible==0){
	friend1.alive = 0;
	friend1.alpha = .4;
	if (gameMode=="QUEST"){p1deaths++;}
	friend1.fall = 0;
	friend1.mspeed = 0;
	}
	}
	}
	}		
	}
	if ((friend2.x - friend2.width *.22) < (e.target.x + e.target.width *.05)){
	if ((friend2.x + friend2.width *.22) > (e.target.x - e.target.width*.05)){
	if ((friend2.y - friend2.height *.22) < (e.target.y + e.target.height*.05)){
	if ((friend2.y + friend2.height *.22) > (e.target.y - e.target.height*.05)) {
	if (zap1.visible == false && friend2.alive == 1 && friend2.finished==0 && friend1.invincible==0){
	friend2.alive = 0;
	friend2.alpha = .4;
	if (gameMode=="QUEST"){p2deaths++;}
	friend2.fall = 0;
	friend2.mspeed = 0;
	}
	}
	}
	}		
	}
	if ((friend3.x - friend3.width *.22) < (e.target.x + e.target.width *.05)){
	if ((friend3.x + friend3.width *.22) > (e.target.x - e.target.width*.05)){
	if ((friend3.y - friend3.height *.22) < (e.target.y + e.target.height*.05)){
	if ((friend3.y + friend3.height *.22) > (e.target.y - e.target.height*.05)) {
	if (zap1.visible == false && friend3.alive == 1 && friend3.finished==0 && friend1.invincible==0){
	friend3.alive = 0;
	friend3.alpha = .4;
	if (gameMode=="QUEST"){p3deaths++;}
	friend3.fall = 0;
	friend3.mspeed = 0;
	}
	}
	}
	}		
	}
}//end bh frame

//create bh
//bh creator

function createbh(){
var newbh:bh = new bh();
addChildAt(newbh, getChildIndex(friend1)-25);
newbh.addEventListener(Event.ENTER_FRAME, bhFrame);
newbh.x = xx;
newbh.y = xy;
newbh.force = xforce;
//newbh.height = xheight;
//newbh.width = xwidth;
newbh.speed = xspeed;
newbh.direction = xdirection;
}

//walls
function wallFrame(e:Event):void{

if(e.target.x<-200 || e.target.x>1350 || e.target.y<-200 || e.target.y>850){ 
e.target.removeEventListener(Event.ENTER_FRAME, wallFrame);
removeChild(MovieClip(e.target));
}
if(gameplay == 0){ 
e.target.removeEventListener(Event.ENTER_FRAME, wallFrame);
removeChild(MovieClip(e.target));
}
//wall hit detection
	if ((friend1.x - friend1.width *.5) < (e.target.x + e.target.width *.5)){
	if ((friend1.x + friend1.width *.5) > (e.target.x - e.target.width*.5)){
	if ((friend1.y - friend1.height *.5) < (e.target.y + e.target.height*.5)){
	if ((friend1.y + friend1.height *.5) > (e.target.y - e.target.height*.5)) {
	if (friend1.alive == 1 && friend1.finished==0){



	}
	}
	}
	}		
	}
	if ((friend2.x - friend2.width *.22) < (e.target.x + e.target.width *.05)){
	if ((friend2.x + friend2.width *.22) > (e.target.x - e.target.width*.05)){
	if ((friend2.y - friend2.height *.22) < (e.target.y + e.target.height*.05)){
	if ((friend2.y + friend2.height *.22) > (e.target.y - e.target.height*.05)) {
	if (zap1.visible == false && friend2.alive == 1 && friend2.finished==0 && friend1.invincible==0){

	}
	}
	}
	}		
	}
	if ((friend3.x - friend3.width *.22) < (e.target.x + e.target.width *.05)){
	if ((friend3.x + friend3.width *.22) > (e.target.x - e.target.width*.05)){
	if ((friend3.y - friend3.height *.22) < (e.target.y + e.target.height*.05)){
	if ((friend3.y + friend3.height *.22) > (e.target.y - e.target.height*.05)) {
	if (zap1.visible == false && friend3.alive == 1 && friend3.finished==0 && friend1.invincible==0){

	}
	}
	}
	}		
	}
}//end wall frame

//create wall
//wall creator
function createwall(){
var newwall:wall = new wall();
addChildAt(newwall, getChildIndex(friend1));
newwall.addEventListener(Event.ENTER_FRAME, wallFrame);
newwall.x = xx;
newwall.y = xy;
newwall.force = xforce;
//newwall.height = xheight;
//newwall.width = xwidth;
newwall.speed = xspeed;
newwall.direction = xdirection;
}


//KYLES
//timer that spawns the Kyle
var KyleSpawnRepeat:Number = 0;
var KyleSpawnInterval:Number = 50000;
var fl_timerKyleSpawn:Timer = new Timer(KyleSpawnInterval, KyleSpawnRepeat);
fl_timerKyleSpawn.addEventListener(TimerEvent.TIMER, KyleSpawn);
function KyleSpawn(event:TimerEvent):void
{
if (gameplay == 1) {
xspeed=3;
xx=1250;
xy = Math.floor(Math.random() * (1+650-60)) + 60;
createKyle();
	}//end gameplay condition
}//end SpawnFire timer

//create Kyle
//Kyle creator
function createKyle(){
var newKyle:Kyle = new Kyle();
addChildAt(newKyle, getChildIndex(friend1));
newKyle.addEventListener(Event.ENTER_FRAME, KyleFrame);
newKyle.x = xx;
newKyle.y = xy;
newKyle.force = xforce;
newKyle.height = 100;
newKyle.width =  100;
//newKyle.height = xheight;
//newKyle.width = xwidth;
newKyle.xspeed = xspeed;
newKyle.yspeed = xyspeed;
newKyle.name = "kyle";
}
function KyleFrame(e:Event):void{
if (gameplay==1){
//Kyle Movement

if (friend1.alive == 1 && friend1.finished == 0 && friend1.invincible == 0){
e.target.dx1 = e.target.x-friend1.x;
e.target.dy1 = e.target.y-friend1.y;
e.target.distSQ1 = e.target.dx1*e.target.dx1 + e.target.dy1*e.target.dy1;
e.target.dist1 = Math.sqrt(e.target.distSQ1);
e.target.ax1 = e.target.dx1/e.target.dist1;
e.target.ay1 = e.target.dy1/e.target.dist1;
}else {e.target.dist1 = 10000;}
if (friend2.alive == 1 && friend2.finished == 0 && friend2.invincible == 0){
e.target.dx2 = e.target.x-friend2.x;
e.target.dy2 = e.target.y-friend2.y;
e.target.distSQ2 = e.target.dx2*e.target.dx2 + e.target.dy2*e.target.dy2;
e.target.dist2 = Math.sqrt(e.target.distSQ2);
e.target.ax2 = e.target.dx2/e.target.dist2;
e.target.ay2 = e.target.dy2/e.target.dist2;
}else {e.target.dist2 = 10000;}
if (friend3.alive == 1 && friend3.finished == 0 && friend3.invincible == 0){
e.target.dx3 = e.target.x-friend3.x;
e.target.dy3 = e.target.y-friend3.y;
e.target.distSQ3 = e.target.dx3*e.target.dx3 + e.target.dy3*e.target.dy3;
e.target.dist3 = Math.sqrt(e.target.distSQ3);
e.target.ax3 = e.target.dx3/e.target.dist3;
e.target.ay3 = e.target.dy3/e.target.dist3;
}else {e.target.dist3 = 10000;}


if ((e.target.dist1 < e.target.dist3) && (e.target.dist1 < e.target.dist2) && friend1.finished == 0 && friend1.invincible == 0){
e.target.xspeed-=e.target.ax1*(e.target.force/10);
e.target.yspeed-=e.target.ay1*(e.target.force/10);
if (e.target.xspeed>0 && (e.target.x>friend1.x)){
e.target.xspeed-=e.target.ax1*(e.target.force/10);	
e.target.xspeed-=e.target.ax1*(e.target.force/10);	
}
if (e.target.xspeed<0 && (e.target.x<friend1.x)){
e.target.xspeed-=e.target.ax1*(e.target.force/10);	
e.target.xspeed-=e.target.ax1*(e.target.force/10);	
}
if (e.target.yspeed>0 && (e.target.y>friend1.y)){
e.target.yspeed-=e.target.ay1*(e.target.force/10);	
e.target.yspeed-=e.target.ay1*(e.target.force/10);	
}
if (e.target.yspeed<0 && (e.target.y<friend1.y)){
e.target.yspeed-=e.target.ay1*(e.target.force/10);	
e.target.yspeed-=e.target.ay1*(e.target.force/10);	
}
e.target.x+=e.target.xspeed/50;
e.target.y+=e.target.yspeed/50;
if (friend1.x>e.target.x){e.target.scaleX = -.5;} else{e.target.scaleX = .5;}
e.target.eye.y = (((friend1.y + 650) - e.target.y) / 20) - 45;
}//dist1 < dist2,3

if ((e.target.dist2 < e.target.dist3) && (e.target.dist2 < e.target.dist1) && friend2.finished == 0 && friend2.invincible == 0){
e.target.xspeed-=e.target.ax2*(e.target.force/10);
e.target.yspeed-=e.target.ay2*(e.target.force/10);
if (e.target.xspeed>0 && (e.target.x>friend2.x)){
e.target.xspeed-=e.target.ax2*(e.target.force/10);	
e.target.xspeed-=e.target.ax2*(e.target.force/10);	
}
if (e.target.xspeed<0 && (e.target.x<friend2.x)){
e.target.xspeed-=e.target.ax2*(e.target.force/10);	
e.target.xspeed-=e.target.ax2*(e.target.force/10);	
}
if (e.target.yspeed>0 && (e.target.y>friend2.y)){
e.target.yspeed-=e.target.ay2*(e.target.force/10);	
e.target.yspeed-=e.target.ay2*(e.target.force/10);	
}
if (e.target.yspeed<0 && (e.target.y<friend2.y)){
e.target.yspeed-=e.target.ay2*(e.target.force/10);	
e.target.yspeed-=e.target.ay2*(e.target.force/10);	
}
e.target.x+=e.target.xspeed/50;
e.target.y+=e.target.yspeed/50;
if (friend2.x>e.target.x){e.target.scaleX = -.5;} else{e.target.scaleX = .5;}
e.target.eye.y = (((friend2.y + 650) - e.target.y) / 20) - 45;
}//dist2 < dist1,3

if ((e.target.dist3 < e.target.dist1) && (e.target.dist3 < e.target.dist2) && friend3.finished == 0 && friend3.invincible == 0){
e.target.xspeed-=e.target.ax3*(e.target.force/10);
e.target.yspeed-=e.target.ay3*(e.target.force/10);
if (e.target.xspeed>0 && (e.target.x>friend3.x)){
e.target.xspeed-=e.target.ax3*(e.target.force/10);	
e.target.xspeed-=e.target.ax3*(e.target.force/10);	
}
if (e.target.xspeed<0 && (e.target.x<friend3.x)){
e.target.xspeed-=e.target.ax3*(e.target.force/10);	
e.target.xspeed-=e.target.ax3*(e.target.force/10);	
}
if (e.target.yspeed>0 && (e.target.y>friend3.y)){
e.target.yspeed-=e.target.ay3*(e.target.force/10);	
e.target.yspeed-=e.target.ay3*(e.target.force/10);	
}
if (e.target.yspeed<0 && (e.target.y<friend3.y)){
e.target.yspeed-=e.target.ay3*(e.target.force/10);	
e.target.yspeed-=e.target.ay3*(e.target.force/10);	
}
e.target.x+=e.target.xspeed/50;
e.target.y+=e.target.yspeed/50;
if (friend3.x>e.target.x){e.target.scaleX = -.5;} else{e.target.scaleX = .5;}
e.target.eye.y = (((friend3.y + 650) - e.target.y) / 20) - 45;
}//dist3 < dist2,3


}//if gameplay==1

if(e.target.x<-500 || e.target.x>1650 || e.target.y<-500 || e.target.y>1150){ 
e.target.removeEventListener(Event.ENTER_FRAME, KyleFrame);
removeChild(MovieClip(e.target));
}
if(gameplay == 0){ 
e.target.removeEventListener(Event.ENTER_FRAME, KyleFrame);
removeChild(MovieClip(e.target));
}
//Kyle hit detection
	if ((friend1.x - friend1.width *.22) < (e.target.x + e.target.width *.3)){
	if ((friend1.x + friend1.width *.22) > (e.target.x - e.target.width*.3)){
	if ((friend1.y - friend1.height *.22) < (e.target.y + e.target.height*.3)){
	if ((friend1.y + friend1.height *.22) > (e.target.y - e.target.height*.3)) {
	if (zap1.visible == false && friend1.alive == 1 && friend1.finished==0 && friend1.invincible==0){
	friend1.alive = 0;
	friend1.alpha = .4;
	if (gameMode=="QUEST"){p1deaths++;}
	friend1.fall = 0;
	friend1.mspeed = 0;
	}
	}
	}
	}		
	}
	if ((friend2.x - friend2.width *.22) < (e.target.x + e.target.width *.5)){
	if ((friend2.x + friend2.width *.22) > (e.target.x - e.target.width*.5)){
	if ((friend2.y - friend2.height *.22) < (e.target.y + e.target.height*.5)){
	if ((friend2.y + friend2.height *.22) > (e.target.y - e.target.height*.5)) {
	if (zap2.visible == false && friend2.alive == 1 && friend2.finished==0 && friend2.invincible==0){
	friend2.alive = 0;
	friend2.alpha = .4;
	if (gameMode=="QUEST"){p2deaths++;}
	friend2.fall = 0;
	friend2.mspeed = 0;
	}
	}
	}
	}		
	}
	if ((friend3.x - friend3.width *.22) < (e.target.x + e.target.width *.5)){
	if ((friend3.x + friend3.width *.22) > (e.target.x - e.target.width*.5)){
	if ((friend3.y - friend3.height *.22) < (e.target.y + e.target.height*.5)){
	if ((friend3.y + friend3.height *.22) > (e.target.y - e.target.height*.5)) {
	if (zap3.visible == false && friend3.alive == 1 && friend3.finished==0 && friend3.invincible==0){
	friend3.alive = 0;
	friend3.alpha = .4;
	if (gameMode=="QUEST"){p3deaths++;}
	friend3.fall = 0;
	friend3.mspeed = 0;
	}
	}
	}
	}		
	}
}//end Kyle frame

//end KYLES

//EXIT Spawner
function exitFrame(e:Event):void{
if (gameplay==1){
if (e.target.direction == "left"){e.target.x -= e.target.speed;}
if (e.target.direction == "right"){e.target.x += e.target.speed;}
if (e.target.direction == "up"){e.target.y -= e.target.speed;}
if (e.target.direction == "down"){e.target.y += e.target.speed;}
if (e.target.direction == "upleft"){e.target.x -= e.target.speed/2; e.target.y -= e.target.speed/2;}
if (e.target.direction == "upright"){e.target.x += e.target.speed/2; e.target.y -= e.target.speed/2;}
if (e.target.direction == "downright"){e.target.x += e.target.speed/2; e.target.y += e.target.speed/2;}
if (e.target.direction == "downleft"){e.target.x -= e.target.speed/2; e.target.y += e.target.speed/2;}
}
if (gameplay==2 && e.target.playin==1){e.target.playin = 0; e.target.stop();}
if (gameplay==1 && e.target.playin==0){e.target.playin = 1; e.target.play();}

//EXIT gravity
if (friend1.finished==1 && e.target.entered==1){
	friend1.mspeed = friend1.mspeed - (.1*(friend1.x-e.target.x));
	friend1.fall = friend1.fall - (.1*(friend1.y-e.target.y));
}
if (friend2.finished==1 && e.target.entered==1){
	friend2.mspeed = friend2.mspeed - (.1*(friend2.x-e.target.x));
	friend2.fall = friend2.fall - (.1*(friend2.y-e.target.y));
}
if (friend3.finished==1 && e.target.entered==1){
	friend3.mspeed = friend3.mspeed - (.1*(friend3.x-e.target.x));
	friend3.fall = friend3.fall - (.1*(friend3.y-e.target.y));
}


if(e.target.x<-200 || e.target.x>1350 || e.target.y<-200 || e.target.y>850){ 
e.target.removeEventListener(Event.ENTER_FRAME, exitFrame);
removeChild(MovieClip(e.target));
}
if(gameplay == 0){ 
e.target.removeEventListener(Event.ENTER_FRAME, exitFrame);
removeChild(MovieClip(e.target));
}
//exit hit detection
	if ((friend1.x - friend1.width *.22) < (e.target.x + e.target.width *.30)){
	if ((friend1.x + friend1.width *.22) > (e.target.x - e.target.width*.30)){
	if ((friend1.y - friend1.height *.22) < (e.target.y + e.target.height*.30)){
	if ((friend1.y + friend1.height *.22) > (e.target.y - e.target.height*.30)) {
	if (zap1.visible == false && friend1.alive == 1){
		friend1.finished=1;
		e.target.entered = 1;
	}
	}
	}
	}		
	}
	if ((friend2.x - friend2.width *.22) < (e.target.x + e.target.width *.30)){
	if ((friend2.x + friend2.width *.22) > (e.target.x - e.target.width*.30)){
	if ((friend2.y - friend2.height *.22) < (e.target.y + e.target.height*.30)){
	if ((friend2.y + friend2.height *.22) > (e.target.y - e.target.height*.30)) {
	if (zap2.visible == false && friend2.alive == 1){
		friend2.finished=1;
		e.target.entered = 1;
	}
	}
	}
	}		
	}
	if ((friend3.x - friend3.width *.22) < (e.target.x + e.target.width *.30)){
	if ((friend3.x + friend3.width *.22) > (e.target.x - e.target.width*.30)){
	if ((friend3.y - friend3.height *.22) < (e.target.y + e.target.height*.30)){
	if ((friend3.y + friend3.height *.22) > (e.target.y - e.target.height*.30)) {
	if (zap3.visible == false && friend3.alive == 1){
		friend3.finished=1;
		e.target.entered = 1;
	}
	}
	}
	}		
	}
}//end exit frame

//exit creator
function createExit(){
var newexit:exit = new exit();
addChildAt(newexit,2);
newexit.addEventListener(Event.ENTER_FRAME, exitFrame);
newexit.x = xx;
newexit.y = xy;
newexit.playin = 1;
//newexit.height = xheight;
//newexit.width = xwidth;
newexit.speed = xspeed;
newexit.direction = xdirection;
}


var fireInterval = 150;
var timerFireSpawn:Number = fireInterval;
var timerFireSpawnCounter:Number = 1;
var timerFireSpawnEnabled:Number = 0;

function fireFrame(e:Event):void{
if (gameplay==1){
if (e.target.alpha >= 1){
if (e.target.direction == "left"){e.target.x -= e.target.speed;}
if (e.target.direction == "right"){e.target.x += e.target.speed;}
if (e.target.direction == "up"){e.target.y -= e.target.speed;}
if (e.target.direction == "down"){e.target.y += e.target.speed;}
if (e.target.direction == "upleft"){e.target.x -= e.target.speed/2; e.target.y -= e.target.speed/2;}
if (e.target.direction == "upright"){e.target.x += e.target.speed/2; e.target.y -= e.target.speed/2;}
if (e.target.direction == "downright"){e.target.x += e.target.speed/2; e.target.y += e.target.speed/2;}
if (e.target.direction == "downleft"){e.target.x -= e.target.speed/2; e.target.y += e.target.speed/2;}
}
if (e.target.alpha < 1){e.target.alpha = e.target.alpha + (.02 * fireSpeed/3);}
}
if (gameplay==2 && e.target.playin==1){e.target.playin = 0; e.target.stop();}
if (gameplay==1 && e.target.playin==0){e.target.playin = 1; e.target.play();}

if(e.target.x<-400 || e.target.x>1550 || e.target.y<-400 || e.target.y>1050){ 
e.target.removeEventListener(Event.ENTER_FRAME, fireFrame);
removeChild(MovieClip(e.target));
}
if(gameplay == 0){ 
e.target.removeEventListener(Event.ENTER_FRAME, fireFrame);
removeChild(MovieClip(e.target));
}
	//newFire hit detection
if (e.target.rotation == 0){
	if ((friend1.x - friend1.width *.17) < (e.target.x + e.target.width *.26)){
	if ((friend1.x + friend1.width *.17) > (e.target.x - e.target.width*.26)){
	if ((friend1.y - friend1.height *.17) < (e.target.y + e.target.height*.43)){
	if ((friend1.y + friend1.height *.17) > (e.target.y - e.target.height*.43)) {
	if (zap1.visible == false && friend1.alive == 1 && e.target.alpha >= 1 && friend1.finished==0){
		if (friend1.shield == 0 && friend1.invincible == 0){
		friend1.notlightning = 1;
		zapSpeed1 = e.target.speed;
		zapDirection1 = e.target.direction;
		player1Death.start();
		zap1.x = friend1.x;
		zap1.y = friend1.y;
		zap1.visible = true;
		friend1.alpha = .5;
		}
		else{
		friend1.shield = 0;
		e.target.removeEventListener(Event.ENTER_FRAME, fireFrame);
		removeChild(MovieClip(e.target));
		}
	}
	}
	}
	}		
	}
	if ((friend2.x - friend2.width *.17) < (e.target.x + e.target.width *.26)){
	if ((friend2.x + friend2.width *.17) > (e.target.x - e.target.width*.26)){
	if ((friend2.y - friend2.height *.17) < (e.target.y + e.target.height*.43)){
	if ((friend2.y + friend2.height *.17) > (e.target.y - e.target.height*.43)) {
	if (zap2.visible == false && friend2.alive == 1 && e.target.alpha >= 1 && friend2.finished==0){
		if (friend2.shield == 0 && friend2.invincible == 0) {
		friend2.notlightning = 1;
		zapSpeed2 = e.target.speed;
		zapDirection2 = e.target.direction;
		player2Death.start();
		zap2.x = friend2.x;
		zap2.y = friend2.y;
		zap2.visible = true;
		friend2.alpha = .5;
		}
		else{
		friend2.shield = 0;
		e.target.removeEventListener(Event.ENTER_FRAME, fireFrame);
		removeChild(MovieClip(e.target));
		}

	}
	}
	}
	}		
	}
	if ((friend3.x - friend3.width *.17) < (e.target.x + e.target.width *.26)){
	if ((friend3.x + friend3.width *.17) > (e.target.x - e.target.width*.26)){
	if ((friend3.y - friend3.height *.17) < (e.target.y + e.target.height*.43)){
	if ((friend3.y + friend3.height *.17) > (e.target.y - e.target.height*.43)) {
	if (zap3.visible == false && friend3.alive == 1 && e.target.alpha >= 1 && friend3.finished==0){
		if (friend3.shield == 0 && friend3.invincible == 0){
		friend3.notlightning = 1;
		zapSpeed3 = e.target.speed;
		zapDirection3 = e.target.direction;
		player3Death.start();
		zap3.x = friend3.x;
		zap3.y = friend3.y;
		zap3.visible = true;
		friend3.alpha = .5;
		}
		else{
		friend3.shield = 0;
		e.target.removeEventListener(Event.ENTER_FRAME, fireFrame);
		removeChild(MovieClip(e.target));
		}
		
	}
	}
	}
	}		
	}
}//rotation == 0

if (e.target.rotation == 90){
	if ((friend1.x - friend1.width *.17) < (e.target.x + e.target.width *.43)){
	if ((friend1.x + friend1.width *.17) > (e.target.x - e.target.width*.43)){
	if ((friend1.y - friend1.height *.17) < (e.target.y + e.target.height*.26)){
	if ((friend1.y + friend1.height *.17) > (e.target.y - e.target.height*.26)) {
	if (zap1.visible == false && friend1.alive == 1 && e.target.alpha >= 1 && friend1.finished==0){
		if (friend1.shield == 0 && friend1.invincible == 0){
		friend1.notlightning = 1;
		zapSpeed1 = e.target.speed;
		zapDirection1 = e.target.direction;
		player1Death.start();
		zap1.x = friend1.x;
		zap1.y = friend1.y;
		zap1.visible = true;
		friend1.alpha = .5;
		}
		else{
		friend1.shield = 0;
		e.target.removeEventListener(Event.ENTER_FRAME, fireFrame);
		removeChild(MovieClip(e.target));
		}
	}
	}
	}
	}		
	}
	if ((friend2.x - friend2.width *.17) < (e.target.x + e.target.width *.43)){
	if ((friend2.x + friend2.width *.17) > (e.target.x - e.target.width*.43)){
	if ((friend2.y - friend2.height *.17) < (e.target.y + e.target.height*.26)){
	if ((friend2.y + friend2.height *.17) > (e.target.y - e.target.height*.26)) {
	if (zap2.visible == false && friend2.alive == 1 && e.target.alpha >= 1 && friend2.finished==0){
		if (friend2.shield == 0 && friend2.invincible == 0) {
		friend2.notlightning = 1;
		zapSpeed2 = e.target.speed;
		zapDirection2 = e.target.direction;
		player2Death.start();
		zap2.x = friend2.x;
		zap2.y = friend2.y;
		zap2.visible = true;
		friend2.alpha = .5;
		}
		else{
		friend2.shield = 0;
		e.target.removeEventListener(Event.ENTER_FRAME, fireFrame);
		removeChild(MovieClip(e.target));
		}

	}
	}
	}
	}		
	}
	if ((friend3.x - friend3.width *.17) < (e.target.x + e.target.width *.43)){
	if ((friend3.x + friend3.width *.17) > (e.target.x - e.target.width*.43)){
	if ((friend3.y - friend3.height *.17) < (e.target.y + e.target.height*.26)){
	if ((friend3.y + friend3.height *.17) > (e.target.y - e.target.height*.26)) {
	if (zap3.visible == false && friend3.alive == 1 && e.target.alpha >= 1 && friend3.finished==0){
		if (friend3.shield == 0 && friend3.invincible == 0){
		friend3.notlightning = 1;
		zapSpeed3 = e.target.speed;
		zapDirection3 = e.target.direction;
		player3Death.start();
		zap3.x = friend3.x;
		zap3.y = friend3.y;
		zap3.visible = true;
		friend3.alpha = .5;
		}
		else{
		friend3.shield = 0;
		e.target.removeEventListener(Event.ENTER_FRAME, fireFrame);
		removeChild(MovieClip(e.target));
		}
		
	}
	}
	}
	}		
	}
}//if rotation == 90

}//end fire frame
//fire creation
function createFire(){
var newFire:fire = new fire();
addChildAt(newFire,getChildIndex(friend1)+5);
newFire.addEventListener(Event.ENTER_FRAME, fireFrame);
newFire.alpha = xalpha;
newFire.x = xx;
newFire.direction = xdirection;
newFire.speed = xspeed;
newFire.y = xy;
newFire.playin = 1;
newFire.width = xwidth;
newFire.height = xheight;
newFire.rotation = xrotation;
}

var gemInterval = 50;
var timerGemSpawn:Number = gemInterval;
var timerGemSpawnCounter:Number = 1;
var timerGemSpawnEnabled:Number = 0;


/*
//timer that spawns the gems
var gemSpawnInterval = 2155;
var gemSpawnRepeat = 1;
function restartGem(){
var fl_gemSpawn:Timer = new Timer(gemSpawnInterval, gemSpawnRepeat);
fl_gemSpawn.addEventListener(TimerEvent.TIMER, gemSpawn);
fl_gemSpawn.start();
function gemSpawn(event:TimerEvent):void{
if (gameplay == 1) {
xspeed = defaultSpeed;
xdirection = "left";
xx = 1200;
xy = Math.floor(Math.random() * (1+650-50)) + 50;
createGem();
if(gameplay==1){restartGem();}
		}//end gameplay condition
	}//end Spawngem timer
}//restartGem function
*/

//begin everyFrame for gem
function gemFrame(e:Event):void{
if (gameplay==1){
if (e.target.direction == "left"){e.target.x -= e.target.speed;}
if (e.target.direction == "right"){e.target.x += e.target.speed;}
if (e.target.direction == "up"){e.target.y -= e.target.speed;}
if (e.target.direction == "down"){e.target.y += e.target.speed;}
if (e.target.direction == "upleft"){e.target.x -= e.target.speed/2; e.target.y -= e.target.speed/2;}
if (e.target.direction == "upright"){e.target.x += e.target.speed/2; e.target.y -= e.target.speed/2;}
if (e.target.direction == "downright"){e.target.x += e.target.speed/2; e.target.y += e.target.speed/2;}
if (e.target.direction == "downleft"){e.target.x -= e.target.speed/2; e.target.y += e.target.speed/2;}
}
if (gameplay==2 && e.target.playin==1){e.target.playin = 0; e.target.stop();}
if (gameplay==1 && e.target.playin==0){e.target.playin = 1; e.target.play();}

if(e.target.x<-200 || e.target.x>1350 || e.target.y<-200 || e.target.y>850){ 
e.target.removeEventListener(Event.ENTER_FRAME, gemFrame);
removeChild(MovieClip(e.target));
}
if(gameplay == 0){ 
e.target.removeEventListener(Event.ENTER_FRAME, gemFrame);
removeChild(MovieClip(e.target));
}
//variable is defined in this if because of the duplicate definition error encountered.
if ( ( ((friend1.x - friend1.width *.22) < (e.target.x + e.target.width *.20)) && ((friend1.x + friend1.width *.22) > (e.target.x - e.target.width*.20)) && ((friend1.y - friend1.height *.22) < (e.target.y + e.target.height*.20)) && ((friend1.y + friend1.height *.22) > (e.target.y - e.target.height*.20)) && (zap1.visible == false && friend1.alive == 1) ) || ( ((friend2.x - friend2.width *.22) < (e.target.x + e.target.width *.20)) && ((friend2.x + friend2.width *.22) > (e.target.x - e.target.width*.20)) && ((friend2.y - friend2.height *.22) < (e.target.y + e.target.height*.20)) && ((friend2.y + friend2.height *.22) > (e.target.y - e.target.height*.20)) && (zap2.visible == false && friend2.alive == 1) ) || ( ((friend3.x - friend3.width *.22) < (e.target.x + e.target.width *.20)) && ((friend3.x + friend3.width *.22) > (e.target.x - e.target.width*.20)) && ((friend3.y - friend3.height *.22) < (e.target.y + e.target.height*.20)) && ((friend3.y + friend3.height *.22) > (e.target.y - e.target.height*.20)) && (zap3.visible == false && friend3.alive == 1) )){
	e.target.removeEventListener(Event.ENTER_FRAME, gemFrame);
	removeChild(MovieClip(e.target));
var newpuText:puText = new puText();
addChildAt(newpuText,getChildIndex(black));
newpuText.riseSpeed = -5;
	newpuText.x = e.target.x;
	newpuText.y = e.target.y;
	newpuText.visible = true;	
	newpuText.texty.text = "100";
	newpuText.addEventListener(Event.ENTER_FRAME, puTextFrame);
}

//gem hit detection
	if ((friend1.x - friend1.width *.22) < (e.target.x + e.target.width *.20)){
	if ((friend1.x + friend1.width *.22) > (e.target.x - e.target.width*.20)){
	if ((friend1.y - friend1.height *.22) < (e.target.y + e.target.height*.20)){
	if ((friend1.y + friend1.height *.22) > (e.target.y - e.target.height*.20)) {
	if (zap1.visible == false && friend1.alive == 1){
		p1ScoreNum+=100;
	}
	}
	}
	}		
	}
	if ((friend2.x - friend2.width *.22) < (e.target.x + e.target.width *.20)){
	if ((friend2.x + friend2.width *.22) > (e.target.x - e.target.width*.20)){
	if ((friend2.y - friend2.height *.22) < (e.target.y + e.target.height*.20)){
	if ((friend2.y + friend2.height *.22) > (e.target.y - e.target.height*.20)) {
	if (zap2.visible == false && friend2.alive == 1){
		p2ScoreNum+=100;
	}
	}
	}
	}		
	}
	if ((friend3.x - friend3.width *.22) < (e.target.x + e.target.width *.20)){
	if ((friend3.x + friend3.width *.22) > (e.target.x - e.target.width*.20)){
	if ((friend3.y - friend3.height *.22) < (e.target.y + e.target.height*.20)){
	if ((friend3.y + friend3.height *.22) > (e.target.y - e.target.height*.20)) {
	if (zap3.visible == false && friend3.alive == 1){
			p3ScoreNum+=100;
	}
	}
	}
	}		
	}
}//end gem frame

//gem creator
function createGem(){
var newgem:gem = new gem();
addChildAt(newgem,getChildIndex(black));
newgem.addEventListener(Event.ENTER_FRAME, gemFrame);
newgem.playin = 1;
newgem.x = xx;
newgem.y = xy;
newgem.speed = xspeed;
newgem.direction = xdirection;
}



var bigGemInterval = 511;
var timerBigGemSpawn:Number = bigGemInterval;
var timerBigGemSpawnCounter:Number = 1;
var timerBigGemSpawnEnabled:Number = 0;

/*
//timer that spawns the BIG GEMS
var bigGemSpawnInterval = 10000;
var bigGemSpawnRepeat = 1;
function restartBigGem(){
var fl_bigGemSpawn:Timer = new Timer(bigGemSpawnInterval, bigGemSpawnRepeat);
fl_bigGemSpawn.addEventListener(TimerEvent.TIMER, bigGemSpawn);
fl_bigGemSpawn.start();
function bigGemSpawn(event:TimerEvent):void{
if (gameplay == 1) {
xspeed = defaultSpeed;
xdirection = "left";
xx = 1200;
xy = Math.floor(Math.random() * (1+650-50)) + 50;
createBigGem();
if(gameplay==1){restartBigGem();}
bigGemSpawnInterval = Math.floor(Math.random() * (1+15000-5000)) + 5000;
		}//end gameplay condition
	}//end SpawnbigGem timer
}//end function
*/


//begin everyFrame for bigGem
function bigGemFrame(e:Event):void{
if (gameplay==1){
if (e.target.direction == "left"){e.target.x -= e.target.speed;}
if (e.target.direction == "right"){e.target.x += e.target.speed;}
if (e.target.direction == "up"){e.target.y -= e.target.speed;}
if (e.target.direction == "down"){e.target.y += e.target.speed;}
if (e.target.direction == "upleft"){e.target.x -= e.target.speed/2; e.target.y -= e.target.speed/2;}
if (e.target.direction == "upright"){e.target.x += e.target.speed/2; e.target.y -= e.target.speed/2;}
if (e.target.direction == "downright"){e.target.x += e.target.speed/2; e.target.y += e.target.speed/2;}
if (e.target.direction == "downleft"){e.target.x -= e.target.speed/2; e.target.y += e.target.speed/2;}
}
if (gameplay==2 && e.target.playin==1){e.target.playin = 0; e.target.stop();}
if (gameplay==1 && e.target.playin==0){e.target.playin = 1; e.target.play();}

if(e.target.x<-200 || e.target.x>1350 || e.target.y<-200 || e.target.y>850){ 
e.target.removeEventListener(Event.ENTER_FRAME, bigGemFrame);
removeChild(MovieClip(e.target));
}
if(gameplay == 0){ 
e.target.removeEventListener(Event.ENTER_FRAME, bigGemFrame);
removeChild(MovieClip(e.target));
}
//variable is defined in this if because of the duplicate definition error encountered.
if ( ( ((friend1.x - friend1.width *.22) < (e.target.x + e.target.width *.20)) && ((friend1.x + friend1.width *.22) > (e.target.x - e.target.width*.20)) && ((friend1.y - friend1.height *.22) < (e.target.y + e.target.height*.20)) && ((friend1.y + friend1.height *.22) > (e.target.y - e.target.height*.20)) && (zap1.visible == false && friend1.alive == 1) ) || ( ((friend2.x - friend2.width *.22) < (e.target.x + e.target.width *.20)) && ((friend2.x + friend2.width *.22) > (e.target.x - e.target.width*.20)) && ((friend2.y - friend2.height *.22) < (e.target.y + e.target.height*.20)) && ((friend2.y + friend2.height *.22) > (e.target.y - e.target.height*.20)) && (zap2.visible == false && friend2.alive == 1) ) || ( ((friend3.x - friend3.width *.22) < (e.target.x + e.target.width *.20)) && ((friend3.x + friend3.width *.22) > (e.target.x - e.target.width*.20)) && ((friend3.y - friend3.height *.22) < (e.target.y + e.target.height*.20)) && ((friend3.y + friend3.height *.22) > (e.target.y - e.target.height*.20)) && (zap3.visible == false && friend3.alive == 1) )){
var newpuText:puText = new puText();
addChildAt(newpuText,getChildIndex(black));
newpuText.riseSpeed = -5;
	newpuText.texty.text = "1000";
	newpuText.texty.setTextFormat(formatBigGem);
	newpuText.x = e.target.x;
	newpuText.y = e.target.y;
	newpuText.visible = true;	
	newpuText.addEventListener(Event.ENTER_FRAME, puTextFrame);
	e.target.removeEventListener(Event.ENTER_FRAME, bigGemFrame);
	removeChild(MovieClip(e.target));
}

	//bigGem hit detection
	if ((friend1.x - friend1.width *.22) < (e.target.x + e.target.width *.20)){
	if ((friend1.x + friend1.width *.22) > (e.target.x - e.target.width*.20)){
	if ((friend1.y - friend1.height *.22) < (e.target.y + e.target.height*.20)){
	if ((friend1.y + friend1.height *.22) > (e.target.y - e.target.height*.20)) {
	if (zap1.visible == false && friend1.alive == 1){
		p1ScoreNum+=1000;
	}
	}
	}
	}		
	}
	if ((friend2.x - friend2.width *.22) < (e.target.x + e.target.width *.20)){
	if ((friend2.x + friend2.width *.22) > (e.target.x - e.target.width*.20)){
	if ((friend2.y - friend2.height *.22) < (e.target.y + e.target.height*.20)){
	if ((friend2.y + friend2.height *.22) > (e.target.y - e.target.height*.20)) {
	if (zap2.visible == false && friend2.alive == 1){
		p2ScoreNum+=1000;	
	}
	}
	}
	}		
	}
	if ((friend3.x - friend3.width *.22) < (e.target.x + e.target.width *.20)){
	if ((friend3.x + friend3.width *.22) > (e.target.x - e.target.width*.20)){
	if ((friend3.y - friend3.height *.22) < (e.target.y + e.target.height*.20)){
	if ((friend3.y + friend3.height *.22) > (e.target.y - e.target.height*.20)) {
	if (zap3.visible == false && friend3.alive == 1){
		p3ScoreNum+=1000;
	}
	}
	}
	}		
	}
}//end bigGem frame

//big gem creation
function createBigGem(){
var newbigGem:bigGem = new bigGem();
addChildAt(newbigGem,getChildIndex(black));
newbigGem.visible = true;
newbigGem.playin = 1;
newbigGem.addEventListener(Event.ENTER_FRAME, bigGemFrame);
newbigGem.x = xx;
newbigGem.y = xy;
newbigGem.speed = xspeed;
newbigGem.direction = xdirection;
}

//timer that spawns the hearts

var heartInterval = Math.floor(Math.random() * (1+1050-100)) + 100;
var timerHeartSpawn:Number = heartInterval;
var timerHeartSpawnCounter:Number = 1;
var timerHeartSpawnEnabled:Number = 0;

/*
var heartSpawnInterval = 11000;
var heartSpawnRepeat = 1;
function restartHeart(){
var fl_heartSpawn:Timer = new Timer(heartSpawnInterval, heartSpawnRepeat);
fl_heartSpawn.addEventListener(TimerEvent.TIMER, heartSpawn);
fl_heartSpawn.start();
function heartSpawn(event:TimerEvent):void
{
if (gameplay == 1) {
xspeed = defaultSpeed;
xdirection = "down";
xy = 0;
xx = Math.floor(Math.random() * (1+1050-100)) + 100;
createHeart();
if (gameplay==1){restartHeart();}
heartSpawnInterval = Math.floor(Math.random() * (1+20000-10000)) + 10000;
		}//end gameplay condition
	}//end Spawnheart timer
}//funct

*/

//begin everyFrame for heart
function heartFrame(e:Event):void{
if (e.target.direction == "left"){e.target.x -= e.target.speed;}
if (e.target.direction == "right"){e.target.x += e.target.speed;}
if (e.target.direction == "up"){e.target.y -= e.target.speed;}
if (e.target.direction == "down"){e.target.y += e.target.speed;}
if (e.target.direction == "upleft"){e.target.x -= e.target.speed/2; e.target.y -= e.target.speed/2;}
if (e.target.direction == "upright"){e.target.x += e.target.speed/2; e.target.y -= e.target.speed/2;}
if (e.target.direction == "downright"){e.target.x += e.target.speed/2; e.target.y += e.target.speed/2;}
if (e.target.direction == "downleft"){e.target.x -= e.target.speed/2; e.target.y += e.target.speed/2;}
if(e.target.x<-200 || e.target.x>1350 || e.target.y<-200 || e.target.y>850){ 
e.target.removeEventListener(Event.ENTER_FRAME, heartFrame);
removeChild(MovieClip(e.target));
}
if(gameplay == 0){ 
e.target.removeEventListener(Event.ENTER_FRAME, heartFrame);
removeChild(MovieClip(e.target));
}
//variable is defined in this if because of the duplicate definition error encountered.
if ( ( ((friend1.x - friend1.width *.22) < (e.target.x + e.target.width *.20)) && ((friend1.x + friend1.width *.22) > (e.target.x - e.target.width*.20)) && ((friend1.y - friend1.height *.22) < (e.target.y + e.target.height*.20)) && ((friend1.y + friend1.height *.22) > (e.target.y - e.target.height*.20)) && (zap1.visible == false && friend1.alive == 1) ) || ( ((friend2.x - friend2.width *.22) < (e.target.x + e.target.width *.20)) && ((friend2.x + friend2.width *.22) > (e.target.x - e.target.width*.20)) && ((friend2.y - friend2.height *.22) < (e.target.y + e.target.height*.20)) && ((friend2.y + friend2.height *.22) > (e.target.y - e.target.height*.20)) && (zap2.visible == false && friend2.alive == 1) ) || ( ((friend3.x - friend3.width *.22) < (e.target.x + e.target.width *.20)) && ((friend3.x + friend3.width *.22) > (e.target.x - e.target.width*.20)) && ((friend3.y - friend3.height *.22) < (e.target.y + e.target.height*.20)) && ((friend3.y + friend3.height *.22) > (e.target.y - e.target.height*.20)) && (zap3.visible == false && friend3.alive == 1) )){
var newpuText:puText = new puText();
	e.target.removeEventListener(Event.ENTER_FRAME, heartFrame);
	removeChild(MovieClip(e.target));
addChildAt(newpuText,getChildIndex(black));
newpuText.riseSpeed = -5;
	newpuText.x = e.target.x;
	newpuText.y = e.target.y;
	newpuText.texty.text = "extra life";
	newpuText.texty.setTextFormat(formatBigGem);
	newpuText.addEventListener(Event.ENTER_FRAME, puTextFrame);
	newpuText.visible = true;	
}

//heart hit detection
	if ((friend1.x - friend1.width *.22) < (e.target.x + e.target.width *.20)){
	if ((friend1.x + friend1.width *.22) > (e.target.x - e.target.width*.20)){
	if ((friend1.y - friend1.height *.22) < (e.target.y + e.target.height*.20)){
	if ((friend1.y + friend1.height *.22) > (e.target.y - e.target.height*.20)) {
	if (zap1.visible == false && friend1.alive == 1){
	}
	}
	}
	}		
	}
	if ((friend2.x - friend2.width *.22) < (e.target.x + e.target.width *.20)){
	if ((friend2.x + friend2.width *.22) > (e.target.x - e.target.width*.20)){
	if ((friend2.y - friend2.height *.22) < (e.target.y + e.target.height*.20)){
	if ((friend2.y + friend2.height *.22) > (e.target.y - e.target.height*.20)) {
	if (zap2.visible == false && friend2.alive == 1){
	}
	}
	}
	}		
	}
	if ((friend3.x - friend3.width *.22) < (e.target.x + e.target.width *.20)){
	if ((friend3.x + friend3.width *.22) > (e.target.x - e.target.width*.20)){
	if ((friend3.y - friend3.height *.22) < (e.target.y + e.target.height*.20)){
	if ((friend3.y + friend3.height *.22) > (e.target.y - e.target.height*.20)) {
	if (zap3.visible == false && friend3.alive == 1){
	}
	}
	}
	}		
	}
}//end heart frame


function createHeart(){
var newheart:puHeart = new puHeart();
addChildAt(newheart,getChildIndex(black));
newheart.visible = true;
newheart.addEventListener(Event.ENTER_FRAME, heartFrame);
newheart.x = xx;
newheart.y = xy;
newheart.playin = 1;
newheart.speed = xspeed;
newheart.direction = xdirection;
}



//timer that spawns the Ices
var iceInterval = Math.floor(Math.random() * (1+1050-100)) + 100;
var timerIceSpawn:Number = iceInterval;
var timerIceSpawnCounter:Number = 1;
var timerIceSpawnEnabled:Number = 0;
/*
var IceSpawnInterval = 24000;
var IceSpawnRepeat = 1;
function restartIce(){
var fl_IceSpawn:Timer = new Timer(IceSpawnInterval, IceSpawnRepeat);
fl_IceSpawn.addEventListener(TimerEvent.TIMER, IceSpawn);
fl_IceSpawn.start();
function IceSpawn(event:TimerEvent):void
{
if (gameplay == 1) {
xspeed = defaultSpeed;
xdirection = "down";
xy = 0;
xx = Math.floor(Math.random() * (1+1050-100)) + 100;
createIce();
if(gameplay==1){restartIce();}
IceSpawnInterval = Math.floor(Math.random() * (1+15000-5000)) + 5000;
		}//end gameplay condition
	}//end SpawnIce timer
}//funct
*/



//begin everyFrame for Ice
function IceFrame(e:Event):void{
if (gameplay==1){
if (e.target.direction == "left"){e.target.x -= e.target.speed;}
if (e.target.direction == "right"){e.target.x += e.target.speed;}
if (e.target.direction == "up"){e.target.y -= e.target.speed;}
if (e.target.direction == "down"){e.target.y += e.target.speed;}
if (e.target.direction == "upleft"){e.target.x -= e.target.speed/2; e.target.y -= e.target.speed/2;}
if (e.target.direction == "upright"){e.target.x += e.target.speed/2; e.target.y -= e.target.speed/2;}
if (e.target.direction == "downright"){e.target.x += e.target.speed/2; e.target.y += e.target.speed/2;}
if (e.target.direction == "downleft"){e.target.x -= e.target.speed/2; e.target.y += e.target.speed/2;}
}
if (gameplay==2 && e.target.playin==1){e.target.playin = 0; e.target.stop();}
if (gameplay==1 && e.target.playin==0){e.target.playin = 1; e.target.play();}

if(e.target.x<-200 || e.target.x>1350 || e.target.y<-200 || e.target.y>850){ 
e.target.removeEventListener(Event.ENTER_FRAME, IceFrame);
removeChild(MovieClip(e.target));
}
if(gameplay == 0){ 
e.target.removeEventListener(Event.ENTER_FRAME, IceFrame);
removeChild(MovieClip(e.target));
}
//variable is defined in this if because of the duplicate definition error encountered.


if ( ( ((friend1.x - friend1.width *.22) < (e.target.x + e.target.width *.20)) && ((friend1.x + friend1.width *.22) > (e.target.x - e.target.width*.20)) && ((friend1.y - friend1.height *.22) < (e.target.y + e.target.height*.20)) && ((friend1.y + friend1.height *.22) > (e.target.y - e.target.height*.20)) && (zap1.visible == false && friend1.alive == 1) ) || ( ((friend2.x - friend2.width *.22) < (e.target.x + e.target.width *.20)) && ((friend2.x + friend2.width *.22) > (e.target.x - e.target.width*.20)) && ((friend2.y - friend2.height *.22) < (e.target.y + e.target.height*.20)) && ((friend2.y + friend2.height *.22) > (e.target.y - e.target.height*.20)) && (zap2.visible == false && friend2.alive == 1) ) || ( ((friend3.x - friend3.width *.22) < (e.target.x + e.target.width *.20)) && ((friend3.x + friend3.width *.22) > (e.target.x - e.target.width*.20)) && ((friend3.y - friend3.height *.22) < (e.target.y + e.target.height*.20)) && ((friend3.y + friend3.height *.22) > (e.target.y - e.target.height*.20)) && (zap3.visible == false && friend3.alive == 1) )){
var newpuText:puText = new puText();
	e.target.removeEventListener(Event.ENTER_FRAME, IceFrame);
	removeChild(MovieClip(e.target));
addChildAt(newpuText,getChildIndex(black));
newpuText.riseSpeed = -5;
	newpuText.x = e.target.x;
	newpuText.y = e.target.y;
	newpuText.texty.text = "freeze";
	newpuText.texty.setTextFormat(formatBigGem);
	newpuText.addEventListener(Event.ENTER_FRAME, puTextFrame);
	newpuText.visible = true;	
	var newice:ice;
}


//Ice hit detection
	if ((friend1.x - friend1.width *.22) < (e.target.x + e.target.width *.20)){
	if ((friend1.x + friend1.width *.22) > (e.target.x - e.target.width*.20)){
	if ((friend1.y - friend1.height *.22) < (e.target.y + e.target.height*.20)){
	if ((friend1.y + friend1.height *.22) > (e.target.y - e.target.height*.20)) {
	if (zap1.visible == false && friend1.alive == 1){
		if (friend2.alive == 1 && friend2.invincible == 0){
			newice = new ice();
			addChildAt(newice,getChildIndex(friend2));
			friend2.ice = 1; 
			newice.player = 2;
			newice.width = 240;
			newice.height = 240;
			newice.alpha = 0;
			newice.addEventListener(Event.ENTER_FRAME, aiceFrame);
			fl_melt2.stop();
			fl_melt2.start();
			}
		if (friend3.alive == 1 && friend3.invincible == 0){
			newice = new ice();
			addChildAt(newice,getChildIndex(friend3));
			friend3.ice = 1; 
			newice.player = 3;
			newice.width = 240;
			newice.height = 240;
			newice.alpha = 0;
			newice.addEventListener(Event.ENTER_FRAME, aiceFrame);
			fl_melt2.stop();
			fl_melt3.start();
			}
			
	}
	}
	}
	}		
	}
	if ((friend2.x - friend2.width *.22) < (e.target.x + e.target.width *.20)){
	if ((friend2.x + friend2.width *.22) > (e.target.x - e.target.width*.20)){
	if ((friend2.y - friend2.height *.22) < (e.target.y + e.target.height*.20)){
	if ((friend2.y + friend2.height *.22) > (e.target.y - e.target.height*.20)) {
	if (zap2.visible == false && friend2.alive == 1){
		if (friend1.alive == 1 && friend1.invincible == 0){
			newice = new ice();
			addChildAt(newice,getChildIndex(friend1));
			friend1.ice = 1; 
			newice.player = 1;
			newice.width = 240;
			newice.height = 240;
			newice.alpha = 0;
			newice.addEventListener(Event.ENTER_FRAME, aiceFrame);
			fl_melt2.stop();
			fl_melt1.start();
			}
		if (friend3.alive == 1 && friend3.invincible == 0){
			newice = new ice();
			addChildAt(newice,getChildIndex(friend3));
			friend3.ice = 1; 
			newice.player = 3;
			newice.width = 240;
			newice.height = 240;
			newice.alpha = 0;
			newice.addEventListener(Event.ENTER_FRAME, aiceFrame);
			fl_melt3.start();
			}
	}
	}
	}
	}		
	}
	if ((friend3.x - friend3.width *.22) < (e.target.x + e.target.width *.20)){
	if ((friend3.x + friend3.width *.22) > (e.target.x - e.target.width*.20)){
	if ((friend3.y - friend3.height *.22) < (e.target.y + e.target.height*.20)){
	if ((friend3.y + friend3.height *.22) > (e.target.y - e.target.height*.20)) {
	if (zap3.visible == false && friend3.alive == 1){
		if (friend1.alive == 1 && friend1.invincible == 0){
			newice = new ice();
			addChildAt(newice,getChildIndex(friend1));
			friend1.ice = 1; 
			newice.player = 1;
			newice.width = 240;
			newice.height = 240;
			newice.alpha = 0;
			newice.addEventListener(Event.ENTER_FRAME, aiceFrame);
			fl_melt1.start();
			}
			if (friend2.alive == 1 && friend2.invincible == 0){
			newice = new ice();
			addChildAt(newice,getChildIndex(friend2));
			friend2.ice = 1; 
			newice.player = 2;
			newice.width = 240;
			newice.height = 240;
			newice.alpha = 0;
			newice.addEventListener(Event.ENTER_FRAME, aiceFrame);
			fl_melt2.start();
			}

	}
	}
	}
	}		
	}
}//end Ice frame

function createIce(){
var newIce:puIce = new puIce();
addChildAt(newIce,getChildIndex(black));
newIce.visible = true;
newIce.addEventListener(Event.ENTER_FRAME, IceFrame);
newIce.x = xx;
newIce.y = xy;
newIce.playin = 1;
newIce.speed = xspeed;
newIce.direction = xdirection;
}

//actual Ice every frame
function aiceFrame(e:Event):void{

if (e.target.width > 60){
	e.target.width = e.target.width - 18;
	e.target.height = e.target.height - 18;
}
if (e.target.width < 60 || e.target.height < 60){
	e.target.width = 60;
	e.target.height = 60;
}
if (e.target.alpha < 1){
	e.target.alpha = e.target.alpha + .1;
}

if (e.target.player == 1){
e.target.x = friend1.x;
e.target.y = friend1.y;
if (friend1.ice == 0){
e.target.removeEventListener(Event.ENTER_FRAME, aiceFrame);
removeChild(MovieClip(e.target));
}
}

if (e.target.player == 2){
e.target.x = friend2.x;
e.target.y = friend2.y;
if (friend2.ice == 0){
e.target.removeEventListener(Event.ENTER_FRAME, aiceFrame);
removeChild(MovieClip(e.target));
}
}

if (e.target.player == 3){
e.target.x = friend3.x;
e.target.y = friend3.y;
if (friend3.ice == 0){
e.target.removeEventListener(Event.ENTER_FRAME, aiceFrame);
removeChild(MovieClip(e.target));
}
}

if (gameplay == 0){
e.target.removeEventListener(Event.ENTER_FRAME, aiceFrame);
removeChild(MovieClip(e.target));
}

}


//timer that spawns the Lightnings

var lightningInterval = Math.floor(Math.random() * (1+1050-100)) + 100;
var timerLightningSpawn:Number = lightningInterval;
var timerLightningSpawnCounter:Number = 1;
var timerLightningSpawnEnabled:Number = 0;

/*
var LightningSpawnInterval = 32000;
var LightningSpawnRepeat = 1;
function restartLightning(){
var fl_LightningSpawn:Timer = new Timer(LightningSpawnInterval, LightningSpawnRepeat);
fl_LightningSpawn.addEventListener(TimerEvent.TIMER, LightningSpawn);
fl_LightningSpawn.start();
function LightningSpawn(event:TimerEvent):void
{
if (gameplay == 1) {
xspeed = defaultSpeed;
xdirection = "down";
xy = 0;
xx = Math.floor(Math.random() * (1+1050-100)) + 100;
createLightning();
if(gameplay==1){restartLightning();}
LightningSpawnInterval = Math.floor(Math.random() * (1+20000-10000)) + 10000;
		}//end gameplay condition
	}//end SpawnLightning timer
}//end function
*/


//begin everyFrame for Lightning
function LightningFrame(e:Event):void{
if (gameplay==1){
if (e.target.direction == "left"){e.target.x -= e.target.speed;}
if (e.target.direction == "right"){e.target.x += e.target.speed;}
if (e.target.direction == "up"){e.target.y -= e.target.speed;}
if (e.target.direction == "down"){e.target.y += e.target.speed;}
if (e.target.direction == "upleft"){e.target.x -= e.target.speed/2; e.target.y -= e.target.speed/2;}
if (e.target.direction == "upright"){e.target.x += e.target.speed/2; e.target.y -= e.target.speed/2;}
if (e.target.direction == "downright"){e.target.x += e.target.speed/2; e.target.y += e.target.speed/2;}
if (e.target.direction == "downleft"){e.target.x -= e.target.speed/2; e.target.y += e.target.speed/2;}
}
if (gameplay==2 && e.target.playin==1){e.target.playin = 0; e.target.stop();}
if (gameplay==1 && e.target.playin==0){e.target.playin = 1; e.target.play();}

if(e.target.x<-200 || e.target.x>1350 || e.target.y<-200 || e.target.y>850){ 
e.target.removeEventListener(Event.ENTER_FRAME, LightningFrame);
removeChild(MovieClip(e.target));
}
if(gameplay == 0){ 
e.target.removeEventListener(Event.ENTER_FRAME, LightningFrame);
removeChild(MovieClip(e.target));
}
//variable is defined in this if because of the duplicate definition error encountered.
if ( ( ((friend1.x - friend1.width *.22) < (e.target.x + e.target.width *.20)) && ((friend1.x + friend1.width *.22) > (e.target.x - e.target.width*.20)) && ((friend1.y - friend1.height *.22) < (e.target.y + e.target.height*.20)) && ((friend1.y + friend1.height *.22) > (e.target.y - e.target.height*.20)) && (zap1.visible == false && friend1.alive == 1) ) || ( ((friend2.x - friend2.width *.22) < (e.target.x + e.target.width *.20)) && ((friend2.x + friend2.width *.22) > (e.target.x - e.target.width*.20)) && ((friend2.y - friend2.height *.22) < (e.target.y + e.target.height*.20)) && ((friend2.y + friend2.height *.22) > (e.target.y - e.target.height*.20)) && (zap2.visible == false && friend2.alive == 1) ) || ( ((friend3.x - friend3.width *.22) < (e.target.x + e.target.width *.20)) && ((friend3.x + friend3.width *.22) > (e.target.x - e.target.width*.20)) && ((friend3.y - friend3.height *.22) < (e.target.y + e.target.height*.20)) && ((friend3.y + friend3.height *.22) > (e.target.y - e.target.height*.20)) && (zap3.visible == false && friend3.alive == 1) )){
var newpuText:puText = new puText();
	e.target.removeEventListener(Event.ENTER_FRAME, LightningFrame);
	removeChild(MovieClip(e.target));
addChildAt(newpuText,getChildIndex(black));
newpuText.riseSpeed = -5;
	newpuText.x = e.target.x;
	newpuText.y = e.target.y;
	newpuText.texty.text = "lightning";
	newpuText.texty.setTextFormat(formatBigGem);
	newpuText.addEventListener(Event.ENTER_FRAME, puTextFrame);
	newpuText.visible = true;	
var newElec:electricGlow = new electricGlow();
addChildAt(newElec,getChildIndex(black));
newElec.playin = 1;
newElec.expired = 0;
newElec.player = 0;
newElec.width = 160;
newElec.height = 160;
newElec.addEventListener(Event.ENTER_FRAME, aElecFrame);
}

//Lightning hit detection
	if ((friend1.x - friend1.width *.22) < (e.target.x + e.target.width *.20)){
	if ((friend1.x + friend1.width *.22) > (e.target.x - e.target.width*.20)){
	if ((friend1.y - friend1.height *.22) < (e.target.y + e.target.height*.20)){
	if ((friend1.y + friend1.height *.22) > (e.target.y - e.target.height*.20)) {
	if (zap1.visible == false && friend1.alive == 1){
	
	if (friend1.lightning == 1){
	newElec.removeEventListener(Event.ENTER_FRAME, aElecFrame);
	removeChild(MovieClip(newElec));
		fl_notlightning1.stop();
		fl_notlightning1.start();
		friend1.notlightning = 0;
	}
	else{
		friend1.lightning = 1;
		friend1.notlightning = 0;
		newElec.player = 1;
		fl_notlightning1.stop();
		fl_notlightning1.start();
		}
		
	}
	}
	}
	}		
	}
	if ((friend2.x - friend2.width *.22) < (e.target.x + e.target.width *.20)){
	if ((friend2.x + friend2.width *.22) > (e.target.x - e.target.width*.20)){
	if ((friend2.y - friend2.height *.22) < (e.target.y + e.target.height*.20)){
	if ((friend2.y + friend2.height *.22) > (e.target.y - e.target.height*.20)) {
	if (zap2.visible == false && friend2.alive == 1){
	if (friend2.lightning == 1){
	newElec.removeEventListener(Event.ENTER_FRAME, aElecFrame);
	removeChild(MovieClip(newElec));
		fl_notlightning1.stop();
		fl_notlightning1.start();
		friend1.notlightning = 0;
	}
	else{
		friend2.lightning = 1;
		friend2.notlightning = 0;
		newElec.player = 2;
		fl_notlightning2.stop();
		fl_notlightning2.start();
		}
	}
	}
	}
	}
	}		
	
	if ((friend3.x - friend3.width *.22) < (e.target.x + e.target.width *.20)){
	if ((friend3.x + friend3.width *.22) > (e.target.x - e.target.width*.20)){
	if ((friend3.y - friend3.height *.22) < (e.target.y + e.target.height*.20)){
	if ((friend3.y + friend3.height *.22) > (e.target.y - e.target.height*.20)) {
	if (zap3.visible == false && friend3.alive == 1){
	
	if (friend3.lightning == 1){
	newElec.removeEventListener(Event.ENTER_FRAME, aElecFrame);
	removeChild(MovieClip(newElec));
		fl_notlightning3.stop();
		fl_notlightning3.start();
		friend3.notlightning = 0;
	}
	else{
		friend3.lightning = 1;
		friend3.notlightning = 0;
		newElec.player = 3;
		fl_notlightning3.stop();
		fl_notlightning3.start();
		}
		
	}
	}
	}
	}
	}		
	
}//end Lightning frame

function aElecFrame(e:Event):void{
if (e.target.player == 0){trace("lightning player = 0");}
if (gameplay == 0){
e.target.removeEventListener(Event.ENTER_FRAME, aElecFrame);
removeChild(MovieClip(e.target));
}
if (gameplay==2 && e.target.playin==1){e.target.playin = 0; e.target.stop();}
if (gameplay==1 && e.target.playin==0){e.target.playin = 1; e.target.play();}

if (e.target.player == 1){
e.target.x = friend1.x;
e.target.y = friend1.y;
if (friend1.notlightning == 1){e.target.expired = 1;}
else {e.target.expired = 0;}
if (e.target.expired == 1){
friend1.lightning = 0;
e.target.removeEventListener(Event.ENTER_FRAME, aElecFrame);
removeChild(MovieClip(e.target));
}
}

if (e.target.player == 2){
e.target.x = friend2.x;
e.target.y = friend2.y;
if (friend2.notlightning == 1){e.target.expired = 1;}
else {e.target.expired = 0;}
if ( e.target.expired == 1){
friend2.lightning = 0;
e.target.removeEventListener(Event.ENTER_FRAME, aElecFrame);
removeChild(MovieClip(e.target));
}
}

if (e.target.player == 3){
e.target.x = friend3.x;
e.target.y = friend3.y;
if (friend3.notlightning == 1){e.target.expired = 1;}
else {e.target.expired = 0;}
if (e.target.expired == 1){
friend3.lightning = 0;
e.target.removeEventListener(Event.ENTER_FRAME, aElecFrame);
removeChild(MovieClip(e.target));
}
}

}//end alightning frame


function createLightning(){
var newLightning:puLightning = new puLightning();
addChildAt(newLightning,getChildIndex(black));
newLightning.visible = true;
newLightning.addEventListener(Event.ENTER_FRAME, LightningFrame);
newLightning.playin = 1;
newLightning.x = xx;
newLightning.y = xy;
newLightning.speed = xspeed;
newLightning.direction = xdirection;
}



//timer that spawns the Randoms
var randomInterval = Math.floor(Math.random() * (1+1050-100)) + 100;
var timerRandomSpawn:Number = randomInterval;
var timerRandomSpawnCounter:Number = 1;
var timerRandomSpawnEnabled:Number = 0;

/*
var RandomSpawnInterval = 14000;
var RandomSpawnRepeat = 1;
function restartRandom(){
var fl_RandomSpawn:Timer = new Timer(RandomSpawnInterval, RandomSpawnRepeat);
fl_RandomSpawn.addEventListener(TimerEvent.TIMER, RandomSpawn);
fl_RandomSpawn.start();
function RandomSpawn(event:TimerEvent):void
{
if (gameplay == 1) {
xspeed = defaultSpeed;
xdirection = "down";
xy = 0;
xx = Math.floor(Math.random() * (1+1050-100)) + 100;
createRandom();
if(gameplay==1){restartRandom();}
RandomSpawnInterval = Math.floor(Math.random() * (1+15000-10000)) + 10000;
		}//end gameplay condition
	}//end SpawnRandom timer
}//function
*/

//begin everyFrame for Random
function RandomFrame(e:Event):void{
if (gameplay==1){
if (e.target.direction == "left"){e.target.x -= e.target.speed;}
if (e.target.direction == "right"){e.target.x += e.target.speed;}
if (e.target.direction == "up"){e.target.y -= e.target.speed;}
if (e.target.direction == "down"){e.target.y += e.target.speed;}
if (e.target.direction == "upleft"){e.target.x -= e.target.speed/2; e.target.y -= e.target.speed/2;}
if (e.target.direction == "upright"){e.target.x += e.target.speed/2; e.target.y -= e.target.speed/2;}
if (e.target.direction == "downright"){e.target.x += e.target.speed/2; e.target.y += e.target.speed/2;}
if (e.target.direction == "downleft"){e.target.x -= e.target.speed/2; e.target.y += e.target.speed/2;}
}
if (gameplay==2 && e.target.playin==1){e.target.playin = 0; e.target.stop();}
if (gameplay==1 && e.target.playin==0){e.target.playin = 1; e.target.play();}

if(e.target.x<-200 || e.target.x>1350 || e.target.y<-200 || e.target.y>850){ 
e.target.removeEventListener(Event.ENTER_FRAME, RandomFrame);
removeChild(MovieClip(e.target));
}
if(gameplay == 0){ 
e.target.removeEventListener(Event.ENTER_FRAME, RandomFrame);
removeChild(MovieClip(e.target));
}
//variable is defined in this if because of the duplicate definition error encountered.
if ( ( ((friend1.x - friend1.width *.22) < (e.target.x + e.target.width *.20)) && ((friend1.x + friend1.width *.22) > (e.target.x - e.target.width*.20)) && ((friend1.y - friend1.height *.22) < (e.target.y + e.target.height*.20)) && ((friend1.y + friend1.height *.22) > (e.target.y - e.target.height*.20)) && (zap1.visible == false && friend1.alive == 1) ) || ( ((friend2.x - friend2.width *.22) < (e.target.x + e.target.width *.20)) && ((friend2.x + friend2.width *.22) > (e.target.x - e.target.width*.20)) && ((friend2.y - friend2.height *.22) < (e.target.y + e.target.height*.20)) && ((friend2.y + friend2.height *.22) > (e.target.y - e.target.height*.20)) && (zap2.visible == false && friend2.alive == 1) ) || ( ((friend3.x - friend3.width *.22) < (e.target.x + e.target.width *.20)) && ((friend3.x + friend3.width *.22) > (e.target.x - e.target.width*.20)) && ((friend3.y - friend3.height *.22) < (e.target.y + e.target.height*.20)) && ((friend3.y + friend3.height *.22) > (e.target.y - e.target.height*.20)) && (zap3.visible == false && friend3.alive == 1) )){
var newpuText:puText = new puText();
	e.target.removeEventListener(Event.ENTER_FRAME, RandomFrame);
	removeChild(MovieClip(e.target));
addChildAt(newpuText,getChildIndex(black));
newpuText.riseSpeed = -5;
	newpuText.x = e.target.x;
	newpuText.y = e.target.y;
	newpuText.texty.text = "???";
	newpuText.texty.setTextFormat(formatBigGem);
	newpuText.addEventListener(Event.ENTER_FRAME, puTextFrame);
	newpuText.visible = true;	
}

//Random hit detection
	if ((friend1.x - friend1.width *.22) < (e.target.x + e.target.width *.20)){
	if ((friend1.x + friend1.width *.22) > (e.target.x - e.target.width*.20)){
	if ((friend1.y - friend1.height *.22) < (e.target.y + e.target.height*.20)){
	if ((friend1.y + friend1.height *.22) > (e.target.y - e.target.height*.20)) {
	if (zap1.visible == false && friend1.alive == 1){
	}
	}
	}
	}		
	}
	if ((friend2.x - friend2.width *.22) < (e.target.x + e.target.width *.20)){
	if ((friend2.x + friend2.width *.22) > (e.target.x - e.target.width*.20)){
	if ((friend2.y - friend2.height *.22) < (e.target.y + e.target.height*.20)){
	if ((friend2.y + friend2.height *.22) > (e.target.y - e.target.height*.20)) {
	if (zap2.visible == false && friend2.alive == 1){
	}
	}
	}
	}		
	}
	if ((friend3.x - friend3.width *.22) < (e.target.x + e.target.width *.20)){
	if ((friend3.x + friend3.width *.22) > (e.target.x - e.target.width*.20)){
	if ((friend3.y - friend3.height *.22) < (e.target.y + e.target.height*.20)){
	if ((friend3.y + friend3.height *.22) > (e.target.y - e.target.height*.20)) {
	if (zap3.visible == false && friend3.alive == 1){
	}
	}
	}
	}		
	}
}//end Random frame

function createRandom(){
var newRandom:puRandom = new puRandom();
addChildAt(newRandom,getChildIndex(black));
newRandom.visible = true;
newRandom.addEventListener(Event.ENTER_FRAME, RandomFrame);
newRandom.x = xx;
newRandom.y = xy;
newRandom.playin = 1;
newRandom.speed = xspeed;
newRandom.direction = xdirection;
}

var shieldInterval = 1000;
var timerShieldSpawn:Number = shieldInterval;
var timerShieldSpawnCounter:Number = 1;
var timerShieldSpawnEnabled:Number = 0;

/*
//timer that spawns the Shields
var ShieldSpawnInterval = 26000;
var ShieldSpawnRepeat = 1;
function restartShield(){
var fl_ShieldSpawn:Timer = new Timer(ShieldSpawnInterval, ShieldSpawnRepeat);
fl_ShieldSpawn.addEventListener(TimerEvent.TIMER, ShieldSpawn);
fl_ShieldSpawn.start();
function ShieldSpawn(event:TimerEvent):void
{
if (gameplay == 1) {
xspeed = defaultSpeed;
xdirection = "down";
xy = 0;
xx = Math.floor(Math.random() * (1+1050-100)) + 100;
createShield();
if (gameplay==1){restartShield();}
ShieldSpawnInterval = Math.floor(Math.random() * (1+20000-10000)) + 10000;
		}//end gameplay condition
	}//end SpawnShield timer
}//funct
*/

//begin everyFrame for Shield
function ShieldFrame(e:Event):void{
if (gameplay==1){
if (e.target.direction == "left"){e.target.x -= e.target.speed;}
if (e.target.direction == "right"){e.target.x += e.target.speed;}
if (e.target.direction == "up"){e.target.y -= e.target.speed;}
if (e.target.direction == "down"){e.target.y += e.target.speed;}
if (e.target.direction == "upleft"){e.target.x -= e.target.speed/2; e.target.y -= e.target.speed/2;}
if (e.target.direction == "upright"){e.target.x += e.target.speed/2; e.target.y -= e.target.speed/2;}
if (e.target.direction == "downright"){e.target.x += e.target.speed/2; e.target.y += e.target.speed/2;}
if (e.target.direction == "downleft"){e.target.x -= e.target.speed/2; e.target.y += e.target.speed/2;}
}
if (gameplay==2 && e.target.playin==1){e.target.playin = 0; e.target.stop();}
if (gameplay==1 && e.target.playin==0){e.target.playin = 1; e.target.play();}

if(e.target.x<-200 || e.target.x>1350 || e.target.y<-200 || e.target.y>850){ 
e.target.removeEventListener(Event.ENTER_FRAME, ShieldFrame);
removeChild(MovieClip(e.target));
}
if(gameplay == 0){ 
e.target.removeEventListener(Event.ENTER_FRAME, ShieldFrame);
removeChild(MovieClip(e.target));
}
//variable is defined in this if because of the duplicate definition error encountered.
if ( ( ((friend1.x - friend1.width *.22) < (e.target.x + e.target.width *.20)) && ((friend1.x + friend1.width *.22) > (e.target.x - e.target.width*.20)) && ((friend1.y - friend1.height *.22) < (e.target.y + e.target.height*.20)) && ((friend1.y + friend1.height *.22) > (e.target.y - e.target.height*.20)) && (zap1.visible == false && friend1.alive == 1) ) || ( ((friend2.x - friend2.width *.22) < (e.target.x + e.target.width *.20)) && ((friend2.x + friend2.width *.22) > (e.target.x - e.target.width*.20)) && ((friend2.y - friend2.height *.22) < (e.target.y + e.target.height*.20)) && ((friend2.y + friend2.height *.22) > (e.target.y - e.target.height*.20)) && (zap2.visible == false && friend2.alive == 1) ) || ( ((friend3.x - friend3.width *.22) < (e.target.x + e.target.width *.20)) && ((friend3.x + friend3.width *.22) > (e.target.x - e.target.width*.20)) && ((friend3.y - friend3.height *.22) < (e.target.y + e.target.height*.20)) && ((friend3.y + friend3.height *.22) > (e.target.y - e.target.height*.20)) && (zap3.visible == false && friend3.alive == 1) )){
var newpuText:puText = new puText();
	e.target.removeEventListener(Event.ENTER_FRAME, ShieldFrame);
	removeChild(MovieClip(e.target));
addChildAt(newpuText,getChildIndex(black));
newpuText.riseSpeed = -5;
	newpuText.x = e.target.x;
	newpuText.y = e.target.y;
	newpuText.texty.text = "shield";
	newpuText.texty.setTextFormat(formatBigGem);
	newpuText.addEventListener(Event.ENTER_FRAME, puTextFrame);
var newshield:shield = new shield();
addChildAt(newshield,getChildIndex(black));
newshield.width = 240;
newshield.height = 240;
newshield.alpha = 0;
newshield.playin = 1;
newshield.addEventListener(Event.ENTER_FRAME, ashieldFrame);
}

//Shield hit detection
	if ((friend1.x - friend1.width *.22) < (e.target.x + e.target.width *.20)){
	if ((friend1.x + friend1.width *.22) > (e.target.x - e.target.width*.20)){
	if ((friend1.y - friend1.height *.22) < (e.target.y + e.target.height*.20)){
	if ((friend1.y + friend1.height *.22) > (e.target.y - e.target.height*.20)) {
	if (zap1.visible == false && friend1.alive == 1){
	if (friend1.shield == 1){
	newshield.removeEventListener(Event.ENTER_FRAME, ashieldFrame);
	removeChild(MovieClip(newshield));
	}
	else{
		friend1.shield = 1;
		newshield.player = 1;
		}
	}
	}
	}
	}		
	}
	if ((friend2.x - friend2.width *.22) < (e.target.x + e.target.width *.20)){
	if ((friend2.x + friend2.width *.22) > (e.target.x - e.target.width*.20)){
	if ((friend2.y - friend2.height *.22) < (e.target.y + e.target.height*.20)){
	if ((friend2.y + friend2.height *.22) > (e.target.y - e.target.height*.20)) {
	if (zap2.visible == false && friend2.alive == 1){
	if (friend2.shield == 1){
	newshield.removeEventListener(Event.ENTER_FRAME, ashieldFrame);
	removeChild(MovieClip(newshield));
	}
	else{
	friend2.shield = 1;
	newshield.player = 2;
	}
	}
	}
	}
	}		
	}
	if ((friend3.x - friend3.width *.22) < (e.target.x + e.target.width *.20)){
	if ((friend3.x + friend3.width *.22) > (e.target.x - e.target.width*.20)){
	if ((friend3.y - friend3.height *.22) < (e.target.y + e.target.height*.20)){
	if ((friend3.y + friend3.height *.22) > (e.target.y - e.target.height*.20)) {
	if (zap3.visible == false && friend3.alive == 1){
	if (friend3.shield == 1){
	newshield.removeEventListener(Event.ENTER_FRAME, ashieldFrame);
	removeChild(MovieClip(newshield));
	}
	else{
	friend3.shield = 1;
	newshield.player = 3;
	}
	}
	}
	}
	}		
	}
}//end Shield frame

function createShield(){
var newShield:puShield = new puShield();
addChildAt(newShield,getChildIndex(black));
newShield.visible = true;
newShield.addEventListener(Event.ENTER_FRAME, ShieldFrame);
newShield.x = xx;
newShield.y = xy;
newShield.playin = 1;
newShield.speed = xspeed;
newShield.direction = xdirection;
}


//actual shield every frame
function ashieldFrame(e:Event):void{
if (gameplay == 0){
e.target.removeEventListener(Event.ENTER_FRAME, ashieldFrame);
removeChild(MovieClip(e.target));
}
if (gameplay==2 && e.target.playin==1){e.target.playin = 0; e.target.stop();}
if (gameplay==1 && e.target.playin==0){e.target.playin = 1; e.target.play();}

if (gameplay==1){
if (e.target.width > 60){
	e.target.width = e.target.width - 18;
	e.target.height = e.target.height - 18;
}
if (e.target.width < 60 || e.target.height < 60){
	e.target.width = 60;
	e.target.height = 60;
}
if (e.target.alpha < .6){
	e.target.alpha = e.target.alpha + .1;
}
}//gameplay==1
if (e.target.player == 1){
	if (friend1.finished == 1){
		e.target.width = e.target.width / 2;
		e.target.height = e.target.height / 2;
	}
e.target.x = friend1.x;
e.target.y = friend1.y;
if (friend1.shield == 0){
e.target.removeEventListener(Event.ENTER_FRAME, ashieldFrame);
removeChild(MovieClip(e.target));
}
}
if (e.target.player == 2){
e.target.x = friend2.x;
e.target.y = friend2.y;
if (friend2.shield == 0){
e.target.removeEventListener(Event.ENTER_FRAME, ashieldFrame);
removeChild(MovieClip(e.target));
}
}
if (e.target.player == 3){
e.target.x = friend3.x;
e.target.y = friend3.y;
if (friend3.shield == 0){
e.target.removeEventListener(Event.ENTER_FRAME, ashieldFrame);
removeChild(MovieClip(e.target));
}
}

}//end ashield frame


//timer that spawns the Stars
var starInterval = Math.floor(Math.random() * (1+2550-100)) + 100;
var timerStarSpawn:Number = starInterval;
var timerStarSpawnCounter:Number = 1;
var timerStarSpawnEnabled:Number = 0;
/*
var StarSpawnInterval = 32000;
var StarSpawnRepeat = 1;
function restartStar(){
var fl_StarSpawn:Timer = new Timer(StarSpawnInterval, StarSpawnRepeat);
fl_StarSpawn.addEventListener(TimerEvent.TIMER, StarSpawn);
fl_StarSpawn.start();
function StarSpawn(event:TimerEvent):void
{
if (gameplay == 1) {
xspeed = defaultSpeed;
xdirection = "down";
xy = 0;
xx = Math.floor(Math.random() * (1+1050-100)) + 100;
createStar();
StarSpawnInterval = Math.floor(Math.random() * (1+20000-15000)) + 15000;
restartStar();
		}//end gameplay condition
	}//end SpawnStar timer
}//function
*/

//begin everyFrame for Star
function StarFrame(e:Event):void{
if (gameplay==1){
if (e.target.direction == "left"){e.target.x -= e.target.speed;}
if (e.target.direction == "right"){e.target.x += e.target.speed;}
if (e.target.direction == "up"){e.target.y -= e.target.speed;}
if (e.target.direction == "down"){e.target.y += e.target.speed;}
if (e.target.direction == "upleft"){e.target.x -= e.target.speed/2; e.target.y -= e.target.speed/2;}
if (e.target.direction == "upright"){e.target.x += e.target.speed/2; e.target.y -= e.target.speed/2;}
if (e.target.direction == "downright"){e.target.x += e.target.speed/2; e.target.y += e.target.speed/2;}
if (e.target.direction == "downleft"){e.target.x -= e.target.speed/2; e.target.y += e.target.speed/2;}
}
if (gameplay==2 && e.target.playin==1){e.target.playin = 0; e.target.stop();}
if (gameplay==1 && e.target.playin==0){e.target.playin = 1; e.target.play();}

if(e.target.x<-200 || e.target.x>1350 || e.target.y<-200 || e.target.y>850){ 
e.target.removeEventListener(Event.ENTER_FRAME, StarFrame);
removeChild(MovieClip(e.target));
}
if(gameplay == 0){ 
e.target.removeEventListener(Event.ENTER_FRAME, StarFrame);
removeChild(MovieClip(e.target));
}
//variable is defined in this if because of the duplicate definition error encountered.
if ( ( ((friend1.x - friend1.width *.22) < (e.target.x + e.target.width *.20)) && ((friend1.x + friend1.width *.22) > (e.target.x - e.target.width*.20)) && ((friend1.y - friend1.height *.22) < (e.target.y + e.target.height*.20)) && ((friend1.y + friend1.height *.22) > (e.target.y - e.target.height*.20)) && (zap1.visible == false && friend1.alive == 1) ) || ( ((friend2.x - friend2.width *.22) < (e.target.x + e.target.width *.20)) && ((friend2.x + friend2.width *.22) > (e.target.x - e.target.width*.20)) && ((friend2.y - friend2.height *.22) < (e.target.y + e.target.height*.20)) && ((friend2.y + friend2.height *.22) > (e.target.y - e.target.height*.20)) && (zap2.visible == false && friend2.alive == 1) ) || ( ((friend3.x - friend3.width *.22) < (e.target.x + e.target.width *.20)) && ((friend3.x + friend3.width *.22) > (e.target.x - e.target.width*.20)) && ((friend3.y - friend3.height *.22) < (e.target.y + e.target.height*.20)) && ((friend3.y + friend3.height *.22) > (e.target.y - e.target.height*.20)) && (zap3.visible == false && friend3.alive == 1) )){
var newpuText:puText = new puText();
	e.target.removeEventListener(Event.ENTER_FRAME, StarFrame);
	removeChild(MovieClip(e.target));
addChildAt(newpuText,getChildIndex(black));
newpuText.riseSpeed = -5;
	newpuText.x = e.target.x;
	newpuText.y = e.target.y;
	newpuText.texty.text = "invincible";
	newpuText.texty.setTextFormat(formatBigGem);
	newpuText.addEventListener(Event.ENTER_FRAME, puTextFrame);
	newpuText.visible = true;	
var newglow:glow = new glow();
addChildAt(newglow,3);
newglow.playin = 1;
newglow.expired = 0;
newglow.player = 0;
newglow.width = 450;
newglow.height = 450;
newglow.alpha = 0;
newglow.addEventListener(Event.ENTER_FRAME, aglowFrame);
}

//Star hit detection
	if ((friend1.x - friend1.width *.22) < (e.target.x + e.target.width *.20)){
	if ((friend1.x + friend1.width *.22) > (e.target.x - e.target.width*.20)){
	if ((friend1.y - friend1.height *.22) < (e.target.y + e.target.height*.20)){
	if ((friend1.y + friend1.height *.22) > (e.target.y - e.target.height*.20)) {
	if (zap1.visible == false && friend1.alive == 1){
	if (friend1.invincible == 1){
	newglow.removeEventListener(Event.ENTER_FRAME, aglowFrame);
	removeChild(MovieClip(newglow));
		fl_notinvince1.stop();
		fl_notinvince1.start();
		friend1.notinvince = 0;

	}
	else{
		friend1.invincible = 1;
		friend1.notinvince = 0;
		newglow.player = 1;
		fl_notinvince1.stop();
		fl_notinvince1.start();

		}
	}
	}
	}
	}		
	}
	if ((friend2.x - friend2.width *.22) < (e.target.x + e.target.width *.20)){
	if ((friend2.x + friend2.width *.22) > (e.target.x - e.target.width*.20)){
	if ((friend2.y - friend2.height *.22) < (e.target.y + e.target.height*.20)){
	if ((friend2.y + friend2.height *.22) > (e.target.y - e.target.height*.20)) {
	if (zap2.visible == false && friend2.alive == 1){
	if (friend2.invincible == 1){
	newglow.removeEventListener(Event.ENTER_FRAME, aglowFrame);
	removeChild(MovieClip(newglow));
		fl_notinvince2.stop();
		fl_notinvince2.start();
		friend2.notinvince = 0;
	}
	else{
		friend2.invincible = 1;
		friend2.notinvince = 0;
		newglow.player = 2;
		fl_notinvince2.stop();
		fl_notinvince2.start();

		}
	}
	}
	}
	}		
	}
	if ((friend3.x - friend3.width *.22) < (e.target.x + e.target.width *.20)){
	if ((friend3.x + friend3.width *.22) > (e.target.x - e.target.width*.20)){
	if ((friend3.y - friend3.height *.22) < (e.target.y + e.target.height*.20)){
	if ((friend3.y + friend3.height *.22) > (e.target.y - e.target.height*.20)) {
	if (zap3.visible == false && friend3.alive == 1){
	if (friend3.invincible == 1){
	newglow.removeEventListener(Event.ENTER_FRAME, aglowFrame);
	removeChild(MovieClip(newglow));
		fl_notinvince3.stop();
		fl_notinvince3.start();
		friend3.notinvince = 0;
	}
	else{
		friend3.invincible = 1;
		friend3.notinvince = 0;
		newglow.player = 3;
		fl_notinvince3.stop();
		fl_notinvince3.start();

		}
	}
	}
	}
	}		
	}
}//end Star frame

function createStar(){
var newStar:puStar = new puStar();
addChildAt(newStar,getChildIndex(black));
newStar.visible = true;
newStar.addEventListener(Event.ENTER_FRAME, StarFrame);
newStar.x = xx;
newStar.y = xy;
newStar.playin = 1;
newStar.speed = xspeed;
newStar.direction = xdirection;
}


//actual glow every frame aaglow
function aglowFrame(e:Event):void{
if (gameplay==2 && e.target.playin==1){e.target.playin = 0; e.target.stop();}
if (gameplay==1 && e.target.playin==0){e.target.playin = 1; e.target.play();}
if (gameplay == 0){
e.target.removeEventListener(Event.ENTER_FRAME, aglowFrame);
removeChild(MovieClip(e.target));
}

if (gameplay==1){
e.target.rotation = e.target.rotation + 25;
if (e.target.rotation > 360){e.target.rotation = 0;}

if (e.target.width > 150){
	e.target.width = e.target.width - 30;
	e.target.height = e.target.height - 30;
}
if (e.target.width < 150 || e.target.height < 150){
	e.target.width = 150;
	e.target.height = 150;
}

if (e.target.alpha < 1 && e.target.expired == 0){e.target.alpha = e.target.alpha + .1;}
if (e.target.alpha > 0 && e.target.expired == 1){e.target.alpha = e.target.alpha - .005;}
}//gameplay==1
if (e.target.player == 1){
e.target.x = friend1.x;
e.target.y = friend1.y;
if (friend1.notinvince == 1){e.target.expired = 1;}
else {e.target.expired = 0;}
if (e.target.alpha <= 0 && e.target.expired == 1){
friend1.invincible = 0;
e.target.removeEventListener(Event.ENTER_FRAME, aglowFrame);
removeChild(MovieClip(e.target));
}
}

if (e.target.player == 2){
e.target.x = friend2.x;
e.target.y = friend2.y;
if (friend2.notinvince == 1){e.target.expired = 1;}
else {e.target.expired = 0;}
if (e.target.alpha <= 0 && e.target.expired == 1){
friend2.invincible = 0;
e.target.removeEventListener(Event.ENTER_FRAME, aglowFrame);
removeChild(MovieClip(e.target));
}
}

if (e.target.player == 3){
e.target.x = friend3.x;
e.target.y = friend3.y;
if (friend3.notinvince == 1){e.target.expired = 1;}
else {e.target.expired = 0;}
if (e.target.alpha <= 0 && e.target.expired == 1){
friend3.invincible = 0;
e.target.removeEventListener(Event.ENTER_FRAME, aglowFrame);
removeChild(MovieClip(e.target));
}
}

}//end aglow frame


//pick up Text EVERY FRAME (includes disappearing)
function puTextFrame(e:Event):void{
if (gameplay==1){
e.target.alpha = e.target.alpha - .03;
e.target.y = e.target.y - e.target.riseSpeed;
e.target.riseSpeed = e.target.riseSpeed + .8;
}
if (e.target.alpha <= 0){
e.target.removeEventListener(Event.ENTER_FRAME, puTextFrame);
removeChild(MovieClip(e.target));
}
if (gameplay == 0){
e.target.removeEventListener(Event.ENTER_FRAME, puTextFrame);
removeChild(MovieClip(e.target));
}
}
//timers governing death animations

var clearWait:Timer = new Timer(100);
clearWait.addEventListener(TimerEvent.TIMER, clearWaitFunction);
function clearWaitFunction(evt:TimerEvent):void {
	clearWait.stop();
	if (gameMode == "QUEST"){restart();}
}


var player1Death:Timer = new Timer(1000);
player1Death.addEventListener(TimerEvent.TIMER, player1DeathFunction);
function player1DeathFunction(evt:TimerEvent):void {
	friend1.alive = 0;
	friend1.alpha = .4;
	if (gameMode=="QUEST"){p1deaths++;}
	friend1.fall = 0;
	friend1.mspeed = 0;
	zap1.visible = false;
	player1Death.stop();
}
var player2Death:Timer = new Timer(1000);
player2Death.addEventListener(TimerEvent.TIMER, player2DeathFunction);
function player2DeathFunction(evt:TimerEvent):void {
	friend2.alive = 0;
	friend2.alpha = .4;
	if (gameMode=="QUEST"){p2deaths++;}
	friend2.fall = 0;
	friend2.mspeed = 0;
	zap2.visible = false;
	player2Death.stop();
}
var player3Death:Timer = new Timer(1000);
player3Death.addEventListener(TimerEvent.TIMER, player3DeathFunction);
function player3DeathFunction(evt:TimerEvent):void {
	friend3.alive = 0;
	friend3.alpha = .4;
	if (gameMode=="QUEST"){p3deaths++;}
	friend3.fall = 0;
	friend3.mspeed = 0;
	zap3.visible = false;
	player3Death.stop();
}


//timer1
addEventListener(Event.ENTER_FRAME, fl_EnterFrameHandler);
function fl_EnterFrameHandler(event:Event):void{

if (gameplay == 1){

setChildIndex(zap1, 50);
setChildIndex(zap2, 50);
setChildIndex(zap3, 50);

//timers

//timer fire timer
if (timerFireSpawnEnabled==1){timerFireSpawnCounter--;}
if (timerFireSpawnCounter<=0 && timerFireSpawnEnabled == 1 && gameMode != "QUEST"){
fireSpeed = fireSpeed*1.02;
timerFireSpawn = timerFireSpawn/1.02;
timerFireSpawnCounter = timerFireSpawn;
xspeed = fireSpeed;
xdirection = "left";
xheight = Math.floor(Math.random() * (1+400-150)) + 200;
xx = 1150;
xy = Math.floor(Math.random() * (1+650-60)) + 60;
xalpha = 0;
createFire();
}//end trigger code

//timer bh timer
if (timerBhSpawnEnabled==1){timerBhSpawnCounter--;}
if (timerBhSpawnCounter<=0 && timerBhSpawnEnabled == 1 && gameMode != "QUEST"){
timerBhSpawnCounter = timerBhSpawn;
xspeed=3;
xx=1250;
xy = Math.floor(Math.random() * (1+650-60)) + 60;
createbh();
}//end trigger code


//timer gem timer
if (timerGemSpawnEnabled==1){timerGemSpawnCounter--;}
if (timerGemSpawnCounter<=0 && timerGemSpawnEnabled == 1 && gameMode != "QUEST"){
timerGemSpawnCounter = timerGemSpawn;
xspeed = fireSpeed;
xdirection = "left";
xx = 1200;
xy = Math.floor(Math.random() * (1+650-50)) + 50;
createGem();
}//end trigger code

//timer BigGem timer
if (timerBigGemSpawnEnabled==1){timerBigGemSpawnCounter--;}
if (timerBigGemSpawnCounter<=0 && timerBigGemSpawnEnabled == 1 && gameMode != "QUEST"){
timerBigGemSpawnCounter = timerBigGemSpawn;
xspeed = fireSpeed;
xdirection = "left";
xx = 1200;
xy = Math.floor(Math.random() * (1+650-50)) + 50;
createBigGem();
}//end trigger code



//timer heart timer
if (timerHeartSpawnEnabled==1){timerHeartSpawnCounter--;}
if (timerHeartSpawnCounter<=0 && timerHeartSpawnEnabled == 1 && gameMode != "QUEST"){
timerHeartSpawnCounter = Math.floor(Math.random() * (1+2000-1000)) + 1000;
xspeed = defaultSpeed;
xdirection = "down";
xy = 0;
xx = Math.floor(Math.random() * (1+1050-100)) + 100;
createHeart();
}//end trigger code

//timer lightning timer
if (timerLightningSpawnEnabled==1){timerLightningSpawnCounter--;}
if (timerLightningSpawnCounter<=0 && timerLightningSpawnEnabled == 1 && gameMode != "QUEST"){
timerLightningSpawnCounter = Math.floor(Math.random() * (1+2000-1000)) + 1000;
xspeed = defaultSpeed;
xdirection = "down";
xy = 0;
xx = Math.floor(Math.random() * (1+1050-100)) + 100;
createLightning();
}//end trigger code

//timer Random timer
if (timerRandomSpawnEnabled==1){timerRandomSpawnCounter--;}
if (timerRandomSpawnCounter<=0 && timerRandomSpawnEnabled == 1 && gameMode != "QUEST"){
timerRandomSpawnCounter = Math.floor(Math.random() * (1+2000-1000)) + 1000;
xspeed = defaultSpeed;
xdirection = "down";
xy = 0;
xx = Math.floor(Math.random() * (1+1050-100)) + 100;
createRandom();
}//end trigger code

//timer Star timer
if (timerStarSpawnEnabled==1){timerStarSpawnCounter--;}
if (timerStarSpawnCounter<=0 && timerStarSpawnEnabled == 1 && gameMode != "QUEST"){
timerStarSpawnCounter = Math.floor(Math.random() * (1+2000-1000)) + 1000;
xspeed = defaultSpeed;
xdirection = "down";
xy = 0;
xx = Math.floor(Math.random() * (1+2550-100)) + 100;
createStar();
}//end trigger code

//timer Star timer
if (timerIceSpawnEnabled==1){timerIceSpawnCounter--;}
if (timerIceSpawnCounter<=0 && timerIceSpawnEnabled == 1 && gameMode != "QUEST"){
timerIceSpawnCounter = Math.floor(Math.random() * (1+2000-1000)) + 1000;
xspeed = defaultSpeed;
xdirection = "down";
xy = 0;
xx = Math.floor(Math.random() * (1+1050-100)) + 100;
createIce();
}//end trigger code


if (altControls==1){flutterStrength=.8;}
if (gameMode == "QUEST"){p1Score.text = "GEMS: "+(p1ScoreNum+p2ScoreNum+p3ScoreNum);}

if (Title3.visible==true && Title3.alpha>0){Title3.alpha-=.001;}
if (Title3.visible==true && Title3.alpha>0 && Title3.alpha<.95){Title3.alpha-=.01;}

if (Title2.visible==true && Title2.alpha>0){Title2.alpha-=.001;}
if (Title2.visible==true && Title2.alpha>0 && Title2.alpha<.95){Title2.alpha-=.01;}

if (zap1.visible == true){
	if (zapDirection1 == "left"){zap1.x = zap1.x - zapSpeed1;}
	if (zapDirection1 == "right"){zap1.x = zap1.x + zapSpeed1;}
	if (zapDirection1 == "up"){zap1.y = zap1.y - zapSpeed1;}
	if (zapDirection1 == "down"){zap1.y = zap1.y + zapSpeed1;}
	if (zapDirection1 == "upleft"){zap1.x = zap1.x - zapSpeed1*.5; zap1.y = zap1.y - zapSpeed1*.5;}
	if (zapDirection1 == "downleft"){zap1.x = zap1.x - zapSpeed1*.5; zap1.y = zap1.y + zapSpeed1*.5;}
	if (zapDirection1 == "upright"){zap1.x = zap1.x + zapSpeed1*.5; zap1.y = zap1.y - zapSpeed1*.5;}
	if (zapDirection1 == "downright"){zap1.x = zap1.x + zapSpeed1*.5; zap1.y = zap1.y + zapSpeed1*.5;}
}
if (zap2.visible == true){
	if (zapDirection2 == "left"){zap2.x = zap2.x - zapSpeed2;}
	if (zapDirection2 == "right"){zap2.x = zap2.x + zapSpeed2;}
	if (zapDirection2 == "up"){zap2.y = zap2.y - zapSpeed2;}
	if (zapDirection2 == "down"){zap2.y = zap2.y + zapSpeed2;}
	if (zapDirection2 == "upleft"){zap2.x = zap2.x - zapSpeed2*.5; zap2.y = zap2.y - zapSpeed2*.5;}
	if (zapDirection2 == "downleft"){zap2.x = zap2.x - zapSpeed2*.5; zap2.y = zap2.y + zapSpeed2*.5;}
	if (zapDirection2 == "upright"){zap2.x = zap2.x + zapSpeed2*.5; zap2.y = zap2.y - zapSpeed2*.5;}
	if (zapDirection2 == "downright"){zap2.x = zap2.x + zapSpeed2*.5; zap2.y = zap2.y + zapSpeed2*.5;}
}
if (zap3.visible == true){
	if (zapDirection3 == "left"){zap3.x = zap3.x - zapSpeed3;}
	if (zapDirection3 == "right"){zap3.x = zap3.x + zapSpeed3;}
	if (zapDirection3 == "up"){zap3.y = zap3.y - zapSpeed3;}
	if (zapDirection3 == "down"){zap3.y = zap3.y + zapSpeed3;}
	if (zapDirection3 == "upleft"){zap3.x = zap3.x - zapSpeed3*.5; zap3.y = zap3.y - zapSpeed3*.5;}
	if (zapDirection3 == "downleft"){zap3.x = zap3.x - zapSpeed3*.5; zap3.y = zap3.y + zapSpeed3*.5;}
	if (zapDirection3 == "upright"){zap3.x = zap3.x + zapSpeed3*.5; zap3.y = zap3.y - zapSpeed3*.5;}
	if (zapDirection3 == "downright"){zap3.x = zap3.x + zapSpeed3*.5; zap3.y = zap3.y + zapSpeed3*.5;}
}
counter++;

if (white.width < 1150 && gameMode != "SURVIVAL"){
white.width = (counter/levelLength * 1150);
white.x = white.width/2;
}
	if (numPlayers >= 1 && gameMode=="SURVIVAL"){
	p1Score.text = "Blue Score: " + p1ScoreNum;
	}
	if (friend1.alive == 1 && gameMode=="SURVIVAL") {p1ScoreNum++;}
	if (numPlayers >= 2 && gameMode=="SURVIVAL"){
	p2Score.text = "red Score: " + p2ScoreNum;
	}
	if (friend2.alive == 1 && gameMode=="SURVIVAL") {p2ScoreNum++;}
	if (numPlayers >= 3 && gameMode=="SURVIVAL"){
	p3Score.text = "green Score: " + p3ScoreNum;
	}
	if (friend3.alive == 1 && gameMode=="SURVIVAL") {p3ScoreNum++;}
		if (gameMode=="SURVIVAL"){
		if (highscoreNum < p2ScoreNum){highscoreNum = p2ScoreNum;}
		if (highscoreNum < p3ScoreNum){highscoreNum = p3ScoreNum;}
		if (highscoreNum < p1ScoreNum){highscoreNum = p1ScoreNum;}
		highscore.text = "HIGHSCORE: 0000"+highscoreNum;
		}
		
	//getting sucked into the exit
	if (friend1.finished==1 && friend1.width>2){
		friend1.rotation+=15;
		friend1.height-=1.5;
		friend1.width-=1.5;
	}
	if (friend2.finished==1 && friend2.width>2){
		friend2.rotation+=15;
		friend2.height-=1.5;
		friend2.width-=1.5;
	}
	if (friend3.finished==1 && friend3.width>2){
		friend3.rotation+=15;
		friend3.height-=1.5;
		friend3.width-=1.5;
	}

	//player physics
	if (zap1.visible == false) {
	if (altControls==0){friend1.fall = friend1.fall + gravity;}
	friend1.x = friend1.x + friend1.mspeed;
	friend1.y = friend1.y + friend1.fall;
	}
	if (zap2.visible == false) {
	friend2.fall = friend2.fall + gravity;
	friend2.x = friend2.x + friend2.mspeed;
	friend2.y = friend2.y + friend2.fall;
	}
	if (zap3.visible == false) {	
	friend3.fall = friend3.fall + gravity;
	friend3.x = friend3.x + friend3.mspeed;
	friend3.y = friend3.y + friend3.fall;
	}
	if (zap1.visible == true){friend1.x = zap1.x;}
	if (zap2.visible == true){friend2.x = zap2.x;}
	if (zap3.visible == true){friend3.x = zap3.x;}
	if (zap1.visible == true){friend1.y = zap1.y;}
	if (zap2.visible == true){friend2.y = zap2.y;}
	if (zap3.visible == true){friend3.y = zap3.y;}
	
	if (zap1.visible == false && friend1.finished==0){
	if (friend1.kup == 1 && friend1.ice == 0) {
		friend1.fall = friend1.fall - flutterStrength;
	}
	if (friend1.kdown == 1 && friend1.ice == 0 && altControls==1) {
		friend1.fall = friend1.fall + flutterStrength;
	}
	if (friend1.kleft == 1 && friend1.ice == 0) {
		friend1.scaleX = -1;
		friend1.mspeed = friend1.mspeed - moveSpeed;
	}
	if (friend1.kright == 1 && friend1.ice == 0) {
		friend1.scaleX = 1;
		friend1.mspeed = friend1.mspeed + moveSpeed;
	}
	}
	if (zap2.visible == false && friend2.finished==0){
	if (friend2.kup == 1 && friend2.ice == 0) {
		friend2.fall = friend2.fall - flutterStrength;
	}
	if (friend2.kleft == 1 && friend2.ice == 0) {
		friend2.scaleX = -1;
		friend2.mspeed = friend2.mspeed - moveSpeed;
	}
	if (friend2.kright == 1 && friend2.ice == 0) {
		friend2.scaleX = 1;
		friend2.mspeed = friend2.mspeed + moveSpeed;
	}
	}
	if (zap3.visible == false && friend3.finished==0){
	if (friend3.kup == 1 && friend3.ice == 0) {
		friend3.fall = friend3.fall - flutterStrength;
	}
	if (friend3.kleft == 1 && friend3.ice == 0) {
		friend3.scaleX = -1;
		friend3.mspeed = friend3.mspeed - moveSpeed;
	}
	if (friend3.kright == 1 && friend3.ice == 0) {
		friend3.scaleX = 1;
		friend3.mspeed = friend3.mspeed + moveSpeed;
	}
	}
	
	if (friend1.finished==0){
	if (friend1.scaleX == 1 && friend1.ice == 0){friend1.rotation = friend1.fall * 6.5 - 10;} if (friend1.scaleX == 1 && friend1.rotation<-100){friend1.rotation = -100;}
	if (friend1.scaleX == -1 && friend1.ice == 0){friend1.rotation = friend1.fall * -6.5 + 10;}  if (friend1.scaleX == -1 && friend1.rotation>100){friend1.rotation = 100;}
	}
	if (friend2.finished==0){
	if (friend2.scaleX == 1 && friend2.ice == 0){friend2.rotation = friend2.fall * 6.5 - 10;} if (friend2.scaleX == 1 && friend2.rotation<-100){friend2.rotation = -100;}
	if (friend2.scaleX == -1 && friend2.ice == 0){friend2.rotation = friend2.fall * -6.5 + 10;}  if (friend2.scaleX == -1 && friend2.rotation>100){friend2.rotation = 100;}
	}
	if (friend3.finished==0){
	if (friend3.scaleX == 1 && friend3.ice == 0){friend3.rotation = friend3.fall * 6.5 - 10;} if (friend3.scaleX == 1 && friend3.rotation<-100){friend3.rotation = -100;}
	if (friend3.scaleX == -1 && friend3.ice == 0){friend3.rotation = friend3.fall * -6.5 + 10;}  if (friend3.scaleX == -1 && friend3.rotation>100){friend3.rotation = 100;}
	}
	if (altControls==1){friend1.rotation=0;}
	
	//speed limits
	if (friend1.fall > 24){friend1.fall = 24;}
	if (friend1.fall < -24){friend1.fall = -24;}
	if (friend1.mspeed > 24){friend1.mspeed = 24;}
	if (friend1.mspeed < -24){friend1.mspeed = -24;}
	if (friend2.fall > 24){friend2.fall = 24;}
	if (friend2.fall < -24){friend2.fall = -24;}
	if (friend2.mspeed > 24){friend2.mspeed = 24;}
	if (friend2.mspeed < -24){friend2.mspeed = -24;}
	if (friend3.fall > 24){friend3.fall = 24;}
	if (friend3.fall < -24){friend3.fall = -24;}
	if (friend3.mspeed > 24){friend3.mspeed = 24;}
	if (friend3.mspeed < -24){friend3.mspeed = -24;}

	//screen edge guards
	if (friend1.visible==true && friend1.finished==0){
	if (friend1.y > 650){friend1.y = 34;}
	if (friend1.x > 1150){friend1.x = 0;}
	if (friend1.x < 0){friend1.x = 1150;}
	if (friend1.y < 34){friend1.y = 650;}
	}
	if (friend2.visible==true && friend2.finished==0){
	if (friend2.y > 650){friend2.y = 34;}
	if (friend2.x > 1150){friend2.x = 0;}
	if (friend2.x < 0){friend2.x = 1150;}
	if (friend2.y < 34){friend2.y = 650;}
	}
	if (friend3.visible==true && friend3.finished==0){
	if (friend3.y > 650){friend3.y = 34;}
	if (friend3.x > 1150){friend3.x = 0;}
	if (friend3.x < 0){friend3.x = 1150;}
	if (friend3.y < 34){friend3.y = 650;}
	}

	
		
	//player hit detection
if (gameMode!="QUEST"){
	if ((friend1.x - friend1.width *.25) < (friend2.x + friend2.width *.25)){
	if ((friend1.x + friend1.width *.25) > (friend2.x - friend2.width*.25)){
	if ((friend1.y - friend1.height *.25) < (friend2.y + friend2.height *.25)){
	if ((friend1.y + friend1.height *.25) > (friend2.y - friend2.height*.25)) {
		if (friend1.alive == 1 && friend2.alive == 1 && zap1.visible == false && zap2.visible == false) {
		if (friend2.lightning == 1 && friend1.lightning == 0 && friend1.invincible == 0){
		if (friend1.shield == 1){
			friend1.shield = 0;
		}
		else { 
		player1Death.start();
		zap1.x = friend1.x;
		zap1.y = friend1.y;
		zap1.visible = true;
		}
		}
		if (friend1.lightning == 1 && friend2.lightning == 0 && friend2.invincible == 0){
		if (friend2.shield == 1){
			friend2.shield = 0;
		}
		else { 
		player2Death.start();
		zap2.x = friend2.x;
		zap2.y = friend2.y;
		zap2.visible = true;
		}
		}
		
		//spreads players out a little to avoid being caught inside each other
		if(friend1.x < friend2.x){
		friend1.x = friend1.x - 10;
		friend2.x = friend2.x + 10;}
		if(friend1.y < friend2.y){
		friend1.y = friend1.y - 10;
		friend2.y = friend2.y + 10;}
		if(friend1.x > friend2.x){
		friend1.x = friend1.x + 10;
		friend2.x = friend2.x - 10;}
		if(friend1.y > friend2.y){
		friend1.y = friend1.y + 10;
		friend2.y = friend2.y - 10;}
		
		temp1 = friend1.fall;
		temp2 = friend1.mspeed;
		friend1.fall = friend2.fall;
		friend1.mspeed = friend2.mspeed;
		friend2.fall = temp1;
		friend2.mspeed = temp2;
		}
	}
	}
	}		
	}

	if ((friend3.x - friend3.width *.25) < (friend1.x + friend1.width *.25)){
	if ((friend3.x + friend3.width *.25) > (friend1.x - friend1.width*.25)){
	if ((friend3.y - friend3.height *.25) < (friend1.y + friend1.height *.25)){
	if ((friend3.y + friend3.height *.25) > (friend1.y - friend1.height*.25)) {
		if (friend3.alive == 1 && friend1.alive == 1 && zap1.visible == false && zap3.visible == false) {
		if (friend3.lightning == 1 && friend1.lightning == 0 && friend1.invincible == 0){
		if (friend1.shield == 1){
			friend1.shield = 0;
		}
		else { 
		player1Death.start();
		zap1.x = friend1.x;
		zap1.y = friend1.y;
		zap1.visible = true;
		}
		}
		if (friend1.lightning == 1 && friend3.lightning == 0 && friend3.invincible == 0){
		if (friend3.shield == 1){
			friend3.shield = 0;
		}
		else { 
		player3Death.start();
		zap3.x = friend3.x;
		zap3.y = friend3.y;
		zap3.visible = true;
		}
		}
		//spreads players out a little to avoid being caught inside each other
		if(friend3.x < friend1.x){
		friend3.x = friend3.x - 10;
		friend1.x = friend1.x + 10;}
		if(friend3.y < friend1.y){
		friend3.y = friend3.y - 10;
		friend1.y = friend1.y + 10;}
		if(friend3.x > friend1.x){
		friend3.x = friend3.x + 10;
		friend1.x = friend1.x - 10;}
		if(friend3.y > friend1.y){
		friend3.y = friend3.y + 10;
		friend1.y = friend1.y - 10;}
		
		temp3 = friend3.fall;
		temp1 = friend3.mspeed;
		friend3.fall = friend1.fall;
		friend3.mspeed = friend1.mspeed;
		friend1.fall = temp3;
		friend1.mspeed = temp1;
		}
	}
	}
	}		
	}

	if ((friend3.x - friend3.width *.25) < (friend2.x + friend2.width *.25)){
	if ((friend3.x + friend3.width *.25) > (friend2.x - friend2.width*.25)){
	if ((friend3.y - friend3.height *.25) < (friend2.y + friend2.height *.25)){
	if ((friend3.y + friend3.height *.25) > (friend2.y - friend2.height*.25)) {
		if (friend3.alive == 1 && friend2.alive == 1 && zap3.visible == false && zap2.visible == false) {
		if (friend2.lightning == 1 && friend3.lightning == 0 && friend3.invincible == 0){
		if (friend3.shield == 1){
			friend3.shield = 0;
		}
		else { 
		player3Death.start();
		zap3.x = friend3.x;
		zap3.y = friend3.y;
		zap3.visible = true;
		}
		}
		if (friend3.lightning == 1 && friend2.lightning == 0 && friend2.invincible == 0){
		if (friend2.shield == 1){
			friend2.shield = 0;
		}
		else { 
		player2Death.start();
		zap2.x = friend2.x;
		zap2.y = friend2.y;
		zap2.visible = true;
		}
		}
		//spreads players out a little to avoid being caught inside each other
		if(friend3.x < friend2.x){
		friend3.x = friend3.x - 10;
		friend2.x = friend2.x + 10;}
		if(friend3.y < friend2.y){
		friend3.y = friend3.y - 10;
		friend2.y = friend2.y + 10;}
		if(friend3.x > friend2.x){
		friend3.x = friend3.x + 10;
		friend2.x = friend2.x - 10;}
		if(friend3.y > friend2.y){
		friend3.y = friend3.y + 10;
		friend2.y = friend2.y - 10;}
		temp3 = friend3.fall;
		temp2 = friend3.mspeed;
		friend3.fall = friend2.fall;
		friend3.mspeed = friend2.mspeed;
		friend2.fall = temp3;
		friend2.mspeed = temp2;
		}
	}
	}
	}		
	}
}
	
	

//gameover detector

if (gameMode=="QUEST"){
if (numPlayers == 1){
if (friend1.alive == 0){
	gameplay = 0;
	friend1.visible = false;
	clearWait.start();
}
if (friend1.width<=2){
	gameOver();
}
}
if (numPlayers == 2){
	if (friend1.alive == 0 || friend2.alive == 0){
	friend1.visible = false;
	friend2.visible = false;
	gameplay = 0;
	clearWait.start();
	}
	if (friend1.width<=2 && friend2.width<=2){
	gameOver();
	}
}
if (numPlayers == 3){
	if (friend1.alive == 0 || friend2.alive == 0 || friend3.alive == 0) {
	gameplay = 0;
	friend1.visible = false;
	friend2.visible = false;
	friend3.visible = false;
	clearWait.start();
	}
	if (friend1.width<=2 && friend2.width<=2 && friend3.width<=2){
	gameOver();
	}
}
	if (friend1.alive == 0 && friend2.alive == 0 && friend3.alive == 0){
	gameplay = 0;
	friend1.visible = false;
	friend2.visible = false;
	friend3.visible = false;
	clearWait.start();
	}
}//gameMode == quest



if (gameMode=="SURVIVAL"){
if (numPlayers == 1 && friend1.alive == 0){gameOver();}
if ((numPlayers > 1) && (friend1.alive + friend2.alive + friend3.alive < 2)) {gameOver();}
}//if gameMode = SURVIVAL


if (gameMode=="QUEST"){
	
//LEVEL DESIGN
if (chapter == 1 && level == 1){
par = 2500;
levelLength = 1500;
if (counter==1){xwidth = 50; xalpha=0;  xheight=200;}
	xtext = "press the up key to fly up!";
	if (counter == 1){xalpha=1; xy=350; xx=1100; xrotation=0; xdirection="left"; xspeed=3; createText();}
	xtext = "press the left and right keys to move!";
	if (counter == 150){xalpha=1; xy=350; xx=1270; xrotation=0; xdirection="left"; xspeed=3; createText();}
	xtext = "watch out for the beams!";
	if (counter == 450){xy=450; xx=1270; xrotation=0; xdirection="left"; xspeed=3; createText();}
	if (counter == 400){xalpha=0; xy=500; xx=1270; xrotation=90; xdirection="left"; xspeed=3; createFire();}
	xtext = "Collect as many gems as you can in each level";
	if (counter == 600){xy=300; xx=1270; xdirection="left"; xspeed=3; createText();}
		if (counter == 600){xy=350; xx=1210; xdirection="left"; xspeed=3; createGem();}
		if (counter == 600){xy=350; xx=1240; xdirection="left"; xspeed=3; createGem();}
		if (counter == 600){xy=350; xx=1270; xdirection="left"; xspeed=3; createGem();}
		if (counter == 600){xy=350; xx=1300; xdirection="left"; xspeed=3; createGem();}
		if (counter == 600){xy=350; xx=1330; xdirection="left"; xspeed=3; createGem();}
	xtext = "if you can get every gem in a level, you will get a 'perfect' rank for that level";
	if (counter == 800){xy=300; xx=1270; xdirection="left"; xspeed=3; createText();}
		if (counter == 800){xy=360; xx=1190; xdirection="left"; xspeed=3; createGem();}
		if (counter == 800){xy=360; xx=1230; xdirection="left"; xspeed=3; createGem();}
		if (counter == 800){xy=360; xx=1270; xdirection="left"; xspeed=3; createGem();}
		if (counter == 800){xy=360; xx=1310; xdirection="left"; xspeed=3; createGem();}
		if (counter == 800){xy=360; xx=1350; xdirection="left"; xspeed=3; createGem();}
		if (counter == 800){xy=220; xx=1190; xdirection="left"; xspeed=3; createGem();}
		if (counter == 800){xy=220; xx=1230; xdirection="left"; xspeed=3; createGem();}
		if (counter == 800){xy=220; xx=1270; xdirection="left"; xspeed=3; createGem();}
		if (counter == 800){xy=220; xx=1310; xdirection="left"; xspeed=3; createGem();}
		if (counter == 800){xy=220; xx=1350; xdirection="left"; xspeed=3; createGem();}
	xtext = "some gems are worth more than others";
	if (counter == 1000){xy=500; xx=1270; xdirection="left"; xspeed=3; createText();}
	if (counter == 1000){xy=450; xx=1270; xdirection="left"; xspeed=3; createBigGem();}
	xtext = "look out for powerups that can help you on your quest!";
	if (counter == 1200){xy=200; xx=1270; xdirection="left"; xspeed=3; createText();}
	if (counter == 1200){xy=250; xx=1270; xdirection="left"; xspeed=3; createShield();}
	xtext = "this is the level exit! Good luck!";
	if (counter == 1500){xy=480; xx=1270; xdirection="left"; xspeed=3; createText();}
	if (counter == 1500){xy=350; xx=1270; xdirection="left"; xspeed=3; createExit();}

	if (counter == 1750){xy=150; xx=1270; xdirection="left"; xspeed=3; createExit();}
	if (counter == 1750){xy=350; xx=1270; xdirection="left"; xspeed=3; createExit();}
	if (counter == 1750){xy=550; xx=1270; xdirection="left"; xspeed=3; createExit();}
}
if (chapter == 1 && level == 2){
if (counter==1){xwidth = 50; xalpha=1;  xheight=200;}
levelLength = 800;
par = 2100;
	if (counter == 1){xy=350; xx=1200; xrotation=90; xdirection="left"; xspeed=4; createFire(); xalpha=0;}
		if (counter == 100){xy=350; xx=1210; xdirection="left"; xspeed=4; createGem();}		
		if (counter == 100){xy=350; xx=1250; xdirection="left"; xspeed=4; createGem();}		
		if (counter == 100){xy=350; xx=1290; xdirection="left"; xspeed=4; createGem();}		
	if (counter == 200){xy=350; xx=1150; xrotation=0; xdirection="left"; xspeed=4; createFire(); xalpha=0;}
		if (counter == 350){xy=350; xx=1210; xdirection="left"; xspeed=4; createGem();}		
		if (counter == 350){xy=350; xx=1250; xdirection="left"; xspeed=4; createGem();}		
		if (counter == 350){xy=350; xx=1290; xdirection="left"; xspeed=4; createGem();}		
	if (counter == 400){xy=350; xx=1250; xrotation=90; xdirection="left"; xspeed=4; createFire(); xalpha=0;}
		if (counter == 550){xy=350; xx=1210; xdirection="left"; xspeed=4; createGem();}		
		if (counter == 550){xy=350; xx=1250; xdirection="left"; xspeed=4; createGem();}		
		if (counter == 550){xy=350; xx=1290; xdirection="left"; xspeed=4; createGem();}		
	if (counter == 600){xy=350; xx=1150; xrotation=0; xdirection="left"; xspeed=4; createFire(); xalpha=0;}
		if (counter == 750){xy=350; xx=1210; xdirection="left"; xspeed=4; createGem();}		
		if (counter == 750){xy=350; xx=1250; xdirection="left"; xspeed=4; createBigGem();}		
		if (counter == 750){xy=350; xx=1290; xdirection="left"; xspeed=4; createGem();}		
	if (counter == 850){xy=350; xx=1250; xdirection="left"; xspeed=4; createExit(); xalpha=0;}
}

if (chapter == 1 && level == 3){
	par = 3000;
	levelLength = 1300;
if (counter == 1){xheight = 300;}
	if (counter == 1){xalpha=0; xy=70; xx=1250; xrotation=90; xdirection="left"; xspeed=4; createFire();}
		if (counter == 1){xy=350; xx=1150; xdirection="left"; xspeed=4; createShield();}
	if (counter == 1){xalpha=0; xy=620; xx=1250; xrotation=90; xdirection="left"; xspeed=4; createExit();}
		if (counter == 150){xy=350; xx=1150; xrotation=90; xdirection="left"; xspeed=4; createGem();}
		if (counter == 150){xy=320; xx=1150; xrotation=90; xdirection="left"; xspeed=4; createGem();}
		if (counter == 150){xy=380; xx=1150; xrotation=90; xdirection="left"; xspeed=4; createGem();}
	if (counter == 150){xalpha=0; xy=70; xx=1250; xrotation=90; xdirection="left"; xspeed=4; createFire();}
	if (counter == 150){xalpha=0; xy=620; xx=1250; xrotation=90; xdirection="left"; xspeed=4; createFire();}
		if (counter == 300){xy=350; xx=1150; xdirection="left"; xspeed=4; createGem();}
		if (counter == 300){xy=320; xx=1150; xdirection="left"; xspeed=4; createGem();}
		if (counter == 300){xy=380; xx=1150; xdirection="left"; xspeed=4; createGem();}
	if (counter == 300){xalpha=0; xheight=250; xy=70; xx=1250; xrotation=90; xdirection="left"; xspeed=4; createFire();}
	if (counter == 300){xalpha=0; xy=620; xx=1250; xrotation=90; xdirection="left"; xspeed=4; createFire();}
	if (counter == 375){xalpha=0; xy=350; xx=1250; xrotation=90; xdirection="left"; xspeed=4; createFire();}
		if (counter == 450){xy=170; xx=1110; xdirection="left"; xspeed=4; createGem();}
		if (counter == 450){xy=170; xx=1150; xdirection="left"; xspeed=4; createGem();}
		if (counter == 450){xy=170; xx=1190; xdirection="left"; xspeed=4; createGem();}
	if (counter == 450){xalpha=0; xy=70; xx=1250; xrotation=90; xdirection="left"; xspeed=4; createFire();}
	if (counter == 450){xalpha=0; xy=620; xx=1250; xrotation=90; xdirection="left"; xspeed=4; createFire();}
		if (counter == 600){xy=350; xx=1150; xdirection="left"; xspeed=4; createGem();}
		if (counter == 600){xy=320; xx=1150; xdirection="left"; xspeed=4; createGem();}
		if (counter == 600){xy=380; xx=1150; xdirection="left"; xspeed=4; createGem();}
		
	if (counter == 600){xalpha=0; xy=350; xx=1150; xrotation=0; xdirection="left"; xspeed=4; createFire();}
		if (counter == 800){xy=350; xx=1150; xdirection="left"; xspeed=4; createGem();}
		if (counter == 800){xy=320; xx=1150; xdirection="left"; xspeed=4; createGem();}
		if (counter == 800){xy=380; xx=1150; xdirection="left"; xspeed=4; createGem();}
	if (counter == 800){xalpha=0; xy=350; xx=1150; xrotation=0; xdirection="left"; xspeed=4; createFire();}
	if (counter == 830){xalpha=0; xy=350; xx=1150; xrotation=0; xdirection="left"; xspeed=4; createFire();}
		if (counter == 1000){xy=350; xx=1150; xdirection="left"; xspeed=4; createGem();}
		if (counter == 1000){xy=320; xx=1150; xdirection="left"; xspeed=4; createGem();}
		if (counter == 1000){xy=380; xx=1150; xdirection="left"; xspeed=4; createGem();}
	if (counter == 1000){xalpha=0; xy=350; xx=1150; xrotation=0; xdirection="left"; xspeed=4; createFire();}
	if (counter == 1030){xalpha=0; xy=350; xx=1150; xrotation=0; xdirection="left"; xspeed=4; createFire();}
	if (counter == 1060){xalpha=0; xy=350; xx=1150; xrotation=0; xdirection="left"; xspeed=4; createFire();}
		if (counter == 1200){xy=350; xx=1150; xdirection="left"; xspeed=4; createBigGem();}
		if (counter == 1200){xy=320; xx=1150; xdirection="left"; xspeed=4; createGem();}
		if (counter == 1200){xy=380; xx=1150; xdirection="left"; xspeed=4; createGem();}

	if (counter == 1300){xalpha=0; xy=350; xx=1250; xrotation=0; xdirection="left"; xspeed=4; createExit();}
}

if (chapter == 1 && level == 4){
levelLength = 1070;
par = 4700;
	if (counter == 1){xalpha=0; xy=200; xx=1250; xrotation=0; xdirection="left"; xspeed=4; createFire();}
	if (counter == 50){xalpha=0; xy=350; xx=1250; xheight=450; xrotation=90; xdirection="left"; xspeed=4; createFire(); xheight=400;}
	if (counter == 100){xalpha=0; xy=500; xx=1250; xrotation=0; xdirection="left"; xspeed=4; createFire();}
	xtext="fall down here...";
	if (counter == 70){xalpha=0; xy=570; xx=1250; xrotation=0; xdirection="left"; xspeed=4; createText();}
	xtext="...To reappear at the top!";
	if (counter == 120){xalpha=0; xy=100; xx=1250; xrotation=0; xdirection="left"; xspeed=4; createText();}
		if (counter == 100){xy=100; xx=1200; xdirection="left"; xspeed=4; createBigGem();}

		if (counter == 250){xy=175; xx=1150; xdirection="left"; xspeed=4; createGem();}
		if (counter == 250){xy=225; xx=1150; xdirection="left"; xspeed=4; createGem();}
		if (counter == 250){xy=275; xx=1150; xdirection="left"; xspeed=4; createGem();}
		if (counter == 250){xy=325; xx=1150; xdirection="left"; xspeed=4; createGem();}
		if (counter == 250){xy=375; xx=1150; xdirection="left"; xspeed=4; createGem();}
		if (counter == 250){xy=425; xx=1150; xdirection="left"; xspeed=4; createGem();}
		if (counter == 250){xy=475; xx=1150; xdirection="left"; xspeed=4; createGem();}
		if (counter == 250){xy=525; xx=1150; xdirection="left"; xspeed=4; createGem();}

	if (counter == 300){xalpha=0; xy=500; xx=1250; xrotation=0; xdirection="left"; xspeed=4; createFire();}
	if (counter == 350){xalpha=0; xy=350; xx=1250; xheight=450; xrotation=90; xdirection="left"; xspeed=4; createFire(); xheight=400;}
	if (counter == 400){xalpha=0; xy=200; xx=1250; xrotation=0; xdirection="left"; xspeed=4; createFire();}
		if (counter == 400){xy=570; xx=1200; xdirection="left"; xspeed=4; createBigGem();}

	if (counter == 515){xheight=200; xalpha=1; xy=300; xx=1250; xrotation=90; xdirection="left"; xspeed=4; createFire();}
	if (counter == 500){xheight=200; xalpha=1; xy=350; xx=1250; xrotation=0; xdirection="left"; xspeed=4; createFire();}
	if (counter == 530){xheight=200; xalpha=1; xy=350; xx=1250; xrotation=0; xdirection="left"; xspeed=4; createFire();}
	if (counter == 515){xheight=200; xalpha=1; xy=400; xx=1250; xrotation=90; xdirection="left"; xspeed=4; createFire();}
		if (counter == 515){xy=350; xx=1250; xdirection="left"; xspeed=4; createBigGem();}

	if (counter == 600){xy=350; xx=1250; xdirection="left"; xspeed=4; createStar();}
	xtext="become invincible!!!";
	if (counter == 600){xalpha=0; xy=400; xx=1250; xrotation=0; xdirection="left"; xspeed=4; createText();}

	if (counter == 700){xalpha=0; xy=150; xx=1150; xrotation=0; xdirection="left"; xspeed=4; createFire();}
	if (counter == 700){xalpha=0; xy=350; xx=1150; xrotation=0; xdirection="left"; xspeed=4; createFire();}
	if (counter == 700){xalpha=0; xy=550; xx=1150; xrotation=0; xdirection="left"; xspeed=4; createFire();}
	if (counter == 725){xalpha=0; xy=150; xx=1150; xrotation=0; xdirection="left"; xspeed=4; createFire();}
	if (counter == 725){xalpha=0; xy=350; xx=1150; xrotation=0; xdirection="left"; xspeed=4; createFire();}
	if (counter == 725){xalpha=0; xy=550; xx=1150; xrotation=0; xdirection="left"; xspeed=4; createFire();}
	if (counter == 750){xalpha=0; xy=150; xx=1150; xrotation=0; xdirection="left"; xspeed=8; createFire();}
	if (counter == 750){xalpha=0; xy=350; xx=1150; xrotation=0; xdirection="left"; xspeed=8; createFire();}
	if (counter == 750){xalpha=0; xy=550; xx=1150; xrotation=0; xdirection="left"; xspeed=8; createFire();}
	if (counter == 775){xalpha=0; xy=150; xx=1150; xrotation=0; xdirection="left"; xspeed=8; createFire();}
	if (counter == 775){xalpha=0; xy=350; xx=1150; xrotation=0; xdirection="left"; xspeed=8; createFire();}
	if (counter == 775){xalpha=0; xy=550; xx=1150; xrotation=0; xdirection="left"; xspeed=8; createFire();}
	if (counter == 800){xalpha=0; xy=150; xx=1150; xrotation=0; xdirection="left"; xspeed=12; createFire();}
	if (counter == 800){xalpha=0; xy=350; xx=1150; xrotation=0; xdirection="left"; xspeed=12; createFire();}
	if (counter == 800){xalpha=0; xy=550; xx=1150; xrotation=0; xdirection="left"; xspeed=12; createFire();}
	if (counter == 825){xalpha=0; xy=150; xx=1150; xrotation=0; xdirection="left"; xspeed=7; createFire();}
	if (counter == 825){xalpha=0; xy=350; xx=1150; xrotation=0; xdirection="left"; xspeed=7; createFire();}
	if (counter == 825){xalpha=0; xy=550; xx=1150; xrotation=0; xdirection="left"; xspeed=7; createFire();}
	if (counter == 850){xalpha=0; xy=150; xx=1150; xrotation=0; xdirection="left"; xspeed=6; createFire();}
	if (counter == 850){xalpha=0; xy=350; xx=1150; xrotation=0; xdirection="left"; xspeed=6; createFire();}
	if (counter == 850){xalpha=0; xy=550; xx=1150; xrotation=0; xdirection="left"; xspeed=6; createFire();}
	if (counter == 875){xalpha=0; xy=150; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createFire();}
	if (counter == 875){xalpha=0; xy=350; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createFire();}
	if (counter == 875){xalpha=0; xy=550; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createFire();}
	if (counter == 900){xalpha=0; xy=150; xx=1150; xrotation=0; xdirection="left"; xspeed=4; createFire();}
	if (counter == 900){xalpha=0; xy=350; xx=1150; xrotation=0; xdirection="left"; xspeed=4; createFire();}
	if (counter == 900){xalpha=0; xy=550; xx=1150; xrotation=0; xdirection="left"; xspeed=4; createFire();}
		if (counter == 750){xy=150; xx=1250; xdirection="left"; xspeed=4; createGem();}
		if (counter == 790){xy=250; xx=1250; xdirection="left"; xspeed=4; createGem();}
		if (counter == 830){xy=350; xx=1250; xdirection="left"; xspeed=4; createGem();}
		if (counter == 870){xy=450; xx=1250; xdirection="left"; xspeed=4; createGem();}
		if (counter == 910){xy=550; xx=1250; xdirection="left"; xspeed=4; createGem();}

		if (counter == 950){xy=450; xx=1250; xdirection="left"; xspeed=4; createGem();}
		if (counter == 990){xy=350; xx=1250; xdirection="left"; xspeed=4; createGem();}
		if (counter == 1030){xy=250; xx=1250; xdirection="left"; xspeed=4; createGem();}
		if (counter == 1070){xy=150; xx=1250; xdirection="left"; xspeed=4; createGem();}
	if (counter == 1070){xy=350; xx=1250; xdirection="left"; xspeed=4; createExit();}
}

if (chapter == 1 && level == 5){
par = 5500;
levelLength = 1450;
	if (counter == 1){xalpha=1; xy=550; xx=1300; xrotation=90; xdirection="left"; xspeed=4; createFire();}
	if (counter == 30){xalpha=1; xy=500; xx=1300; xrotation=90; xdirection="left"; xspeed=4; createFire();}
	if (counter == 30){xalpha=1; xy=600; xx=1300; xrotation=90; xdirection="left"; xspeed=4; createFire();}
		if (counter == 110){xalpha=1; xy=550; xx=1300; xrotation=90; xdirection="left"; xspeed=4; createGem();}
		if (counter == 120){xalpha=1; xy=550; xx=1300; xrotation=90; xdirection="left"; xspeed=4; createGem();}
		if (counter == 130){xalpha=1; xy=550; xx=1300; xrotation=90; xdirection="left"; xspeed=4; createGem();}
		if (counter == 140){xalpha=1; xy=550; xx=1300; xrotation=90; xdirection="left"; xspeed=4; createGem();}
		if (counter == 150){xalpha=1; xy=550; xx=1300; xrotation=90; xdirection="left"; xspeed=4; createBigGem();}

	if (counter == 200){xalpha=1; xy=150; xx=1300; xrotation=90; xdirection="left"; xspeed=4; createFire();}
	if (counter == 230){xalpha=1; xy=100; xx=1300; xrotation=90; xdirection="left"; xspeed=4; createFire();}
	if (counter == 230){xalpha=1; xy=200; xx=1300; xrotation=90; xdirection="left"; xspeed=4; createFire();}
		if (counter == 310){xalpha=1; xy=150; xx=1300; xrotation=90; xdirection="left"; xspeed=4; createGem();}
		if (counter == 320){xalpha=1; xy=150; xx=1300; xrotation=90; xdirection="left"; xspeed=4; createGem();}
		if (counter == 330){xalpha=1; xy=150; xx=1300; xrotation=90; xdirection="left"; xspeed=4; createGem();}
		if (counter == 340){xalpha=1; xy=150; xx=1300; xrotation=90; xdirection="left"; xspeed=4; createGem();}
		if (counter == 350){xalpha=1; xy=150; xx=1300; xrotation=90; xdirection="left"; xspeed=4; createBigGem();}

	if (counter == 400){xalpha=1; xy=550; xx=1300; xrotation=90; xdirection="left"; xspeed=4; createFire();}
	if (counter == 430){xalpha=1; xy=500; xx=1300; xrotation=90; xdirection="left"; xspeed=4; createFire();}
	if (counter == 430){xalpha=1; xy=600; xx=1300; xrotation=90; xdirection="left"; xspeed=4; createFire();}
		if (counter == 510){xalpha=1; xy=550; xx=1300; xrotation=90; xdirection="left"; xspeed=4; createGem();}
		if (counter == 520){xalpha=1; xy=550; xx=1300; xrotation=90; xdirection="left"; xspeed=4; createGem();}
		if (counter == 530){xalpha=1; xy=550; xx=1300; xrotation=90; xdirection="left"; xspeed=4; createGem();}
		if (counter == 540){xalpha=1; xy=550; xx=1300; xrotation=90; xdirection="left"; xspeed=4; createGem();}
		if (counter == 550){xalpha=1; xy=550; xx=1300; xrotation=90; xdirection="left"; xspeed=4; createBigGem();}

	if (counter == 600){xalpha=1; xy=350; xx=1300; xrotation=90; xdirection="left"; xspeed=4; createFire();}
	if (counter == 630){xalpha=1; xy=300; xx=1300; xrotation=90; xdirection="left"; xspeed=4; createFire();}
	if (counter == 630){xalpha=1; xy=400; xx=1300; xrotation=90; xdirection="left"; xspeed=4; createFire();}
		if (counter == 710){xalpha=1; xy=350; xx=1300; xrotation=90; xdirection="left"; xspeed=4; createGem();}
		if (counter == 720){xalpha=1; xy=350; xx=1300; xrotation=90; xdirection="left"; xspeed=4; createGem();}
		if (counter == 730){xalpha=1; xy=350; xx=1300; xrotation=90; xdirection="left"; xspeed=4; createGem();}
		if (counter == 740){xalpha=1; xy=350; xx=1300; xrotation=90; xdirection="left"; xspeed=4; createGem();}
		if (counter == 750){xalpha=1; xy=350; xx=1300; xrotation=90; xdirection="left"; xspeed=4; createShield();}

	if (counter == 800){xalpha=0; xy=150; xx=1150; xrotation=0; xdirection="left"; xspeed=4; createFire();}
		if (counter == 877){xalpha=0; xy=550; xx=1150; xrotation=0; xdirection="left"; xspeed=4; createGem();}
	if (counter == 850){xalpha=0; xy=150; xx=1150; xrotation=0; xdirection="left"; xspeed=4; createFire();}
		if (counter == 927){xalpha=0; xy=550; xx=1150; xrotation=0; xdirection="left"; xspeed=4; createGem();}
	if (counter == 900){xalpha=0; xy=150; xx=1150; xrotation=0; xdirection="left"; xspeed=4; createFire();}
		if (counter == 977){xalpha=0; xy=550; xx=1150; xrotation=0; xdirection="left"; xspeed=4; createGem();}
	if (counter == 950){xalpha=0; xy=150; xx=1150; xrotation=0; xdirection="left"; xspeed=4; createFire();}

	if (counter == 1000){xalpha=0; xy=550; xx=1150; xrotation=0; xdirection="left"; xspeed=4; createFire();}
		if (counter == 1077){xalpha=0; xy=150; xx=1150; xrotation=0; xdirection="left"; xspeed=4; createGem();}
	if (counter == 1050){xalpha=0; xy=550; xx=1150; xrotation=0; xdirection="left"; xspeed=4; createFire();}
		if (counter == 1127){xalpha=0; xy=150; xx=1150; xrotation=0; xdirection="left"; xspeed=4; createGem();}
	if (counter == 1100){xalpha=0; xy=550; xx=1150; xrotation=0; xdirection="left"; xspeed=4; createFire();}
		if (counter == 1177){xalpha=0; xy=150; xx=1150; xrotation=0; xdirection="left"; xspeed=4; createGem();}
	if (counter == 1150){xalpha=0; xy=550; xx=1150; xrotation=0; xdirection="left"; xspeed=4; createFire();}

	if (counter == 1200){xalpha=0; xy=150; xx=1150; xrotation=0; xdirection="left"; xspeed=4; createFire();}
	if (counter == 1250){xalpha=0; xy=550; xx=1150; xrotation=0; xdirection="left"; xspeed=4; createFire();}
	if (counter == 1300){xalpha=0; xy=150; xx=1150; xrotation=0; xdirection="left"; xspeed=4; createFire();}
	if (counter == 1350){xalpha=0; xy=550; xx=1150; xrotation=0; xdirection="left"; xspeed=4; createFire();}

	if (counter == 1450){xalpha=0; xy=350; xx=1250; xrotation=0; xdirection="left"; xspeed=4; createExit();}
		if (counter == 1450){xalpha=0; xy=225; xx=1210; xrotation=0; xdirection="left"; xspeed=4; createGem();}
		if (counter == 1450){xalpha=0; xy=225; xx=1250; xrotation=0; xdirection="left"; xspeed=4; createGem();}
		if (counter == 1450){xalpha=0; xy=225; xx=1290; xrotation=0; xdirection="left"; xspeed=4; createGem();}

}

if (chapter == 2 && level == 1){
levelLength = 1350;
par = 5200;
	if (counter == 1){xalpha=1; xy=350; xx=0; xheight=750; xwidth = 80; xrotation=0; xspeed=0; createFire(); xheight=350; xwidth = 50; xalpha=0;}

	if (counter == 1){xalpha=1; xy=350; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createFire(); xalpha=0}

	if (counter == 80){xy=600; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createFire();}
	if (counter == 130){xy=500; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createFire();}

	if (counter == 180){xy=400; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createFire();}
	if (counter == 230){xy=300; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createFire();}
	if (counter == 280){xy=200; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createFire();}
		if (counter == 80){xy=500; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createGem();}
		if (counter == 105){xy=450; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createGem();}
		if (counter == 130){xy=400; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createGem();}
		if (counter == 155){xy=350; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createGem();}
		if (counter == 180){xy=300; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createGem();}
		if (counter == 205){xy=250; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createGem();}
		if (counter == 230){xy=200; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createGem();}
		if (counter == 255){xy=150; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createGem();}
		if (counter == 280){xy=100; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createGem();}

		if (counter == 330){xy=100; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createGem();}
		if (counter == 355){xy=100; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createGem();}
		if (counter == 380){xy=100; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createGem();}
		if (counter == 405){xy=100; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createGem();}

		if (counter == 410){xy=200; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createGem();}
		if (counter == 410){xy=300; xx=1280; xrotation=90; xdirection="left"; xspeed=5; createGem();}
		if (counter == 410){xy=400; xx=1290; xrotation=90; xdirection="left"; xspeed=5; createGem();}
		if (counter == 410){xy=500; xx=1300; xrotation=90; xdirection="left"; xspeed=5; createGem();}

		if (counter == 510){xy=600; xx=1280; xrotation=90; xdirection="left"; xspeed=5; createGem();}
		if (counter == 510){xy=500; xx=1290; xrotation=90; xdirection="left"; xspeed=5; createGem();}
		if (counter == 510){xy=400; xx=1300; xrotation=90; xdirection="left"; xspeed=5; createGem();}


	if (counter == 450){xy=100; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createFire();}
	if (counter == 500){xy=200; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createFire();}
	if (counter == 550){xy=275; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createFire();}
		if (counter == 630){xy=350; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createGem();}
		if (counter == 650){xy=350; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createGem();}
		if (counter == 670){xy=350; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createGem();}
	if (counter == 600){xy=425; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createFire();}
	if (counter == 650){xy=500; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createFire();}
		
		if (counter == 850){xy=300; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createGem();}
		if (counter == 850){xy=350; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createGem();}
		if (counter == 850){xy=400; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createGem();}
	if (counter == 850){xy=50; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createFire();}
	if (counter == 850){xy=600; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createFire();}
		if (counter == 925){xy=350; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createGem();}
		if (counter == 950){xy=350; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createGem();}
	if (counter == 900){xy=50; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createFire();}
	if (counter == 900){xy=600; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createFire();}
		if (counter == 975){xy=350; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createGem();}
		if (counter == 1000){xy=350; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createGem();}
	if (counter == 950){xy=50; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createFire();}
	if (counter == 950){xy=600; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createFire();}
		if (counter == 1025){xy=350; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createGem();}
		if (counter == 1050){xy=350; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createGem();}
	if (counter == 1000){xy=50; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createFire();}
	if (counter == 1000){xy=600; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createFire();}
		if (counter == 1075){xy=350; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createGem();}
		if (counter == 1100){xy=350; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createGem();}
	if (counter == 1050){xy=50; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createFire();}
	if (counter == 1050){xy=600; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createFire();}
		if (counter == 1125){xy=350; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createGem();}
		if (counter == 1150){xy=350; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createGem();}
	if (counter == 1100){xy=50; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createFire();}
	if (counter == 1100){xy=600; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createFire();}
		if (counter == 1175){xy=350; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createGem();}
		if (counter == 1200){xy=350; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createGem();}
	if (counter == 1150){xy=50; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createFire();}
	if (counter == 1150){xy=600; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createFire();}
		if (counter == 1225){xy=350; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createGem();}
		if (counter == 1250){xy=350; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createGem();}
	if (counter == 1200){xy=50; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createFire();}
	if (counter == 1200){xy=600; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createFire();}
		if (counter == 1275){xy=350; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createGem();}
		if (counter == 1275){xy=475; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createGem();}
		if (counter == 1275){xy=600; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createBigGem();}
	if (counter == 1250){xy=50; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createFire();}
	if (counter == 1250){xy=600; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createFire();}
	if (counter == 1350){xy=350; xx=1270; xrotation=0; xdirection="left"; xspeed=3; createExit();}
	if (counter == 1400){xy=100; xheight=400; xx=1270; xrotation=0; xdirection="left"; xspeed=3; createFire();}
	if (counter == 1400){xy=300; xheight=400; xx=1270; xrotation=0; xdirection="left"; xspeed=3; createFire();}
	if (counter == 1400){xy=500; xheight=400; xx=1270; xrotation=0; xdirection="left"; xspeed=3; createFire();}
	if (counter == 1450){xy=100; xheight=400; xx=1270; xrotation=0; xdirection="left"; xspeed=3; createFire();}
	if (counter == 1450){xy=300; xheight=400; xx=1270; xrotation=0; xdirection="left"; xspeed=3; createFire();}
	if (counter == 1450){xy=500; xheight=400; xx=1270; xrotation=0; xdirection="left"; xspeed=3; createFire();}
}//level 1

//LEVEL DESIGN2
if (chapter == 2 && level == 2){
levelLength = 1400;
par = 4700;
	if (counter == 1){xalpha=1; xy=350; xx=0; xheight=750; xwidth = 80; xrotation=0; xspeed=0; createFire(); xheight=350; xwidth = 50; xalpha=0;}
	if (counter == 1){xalpha=1; xy=350; xx=1150; xheight=750; xwidth = 80; xrotation=0; xspeed=0; createFire(); xheight=350; xwidth = 50; xalpha=0;}
	if (counter == 1){xalpha=1; xy=35; xx=580; xheight=1350; xwidth = 80; xrotation=90; xspeed=0; createFire(); xheight=350; xwidth = 50; xalpha=0; xrotation = 0;}
	if (counter == 1){xalpha=1; xy=650; xx=580; xheight=1350; xwidth = 80; xrotation=90; xspeed=0; createFire(); xheight=350; xwidth = 50; xalpha=0; xrotation = 0;}

	if (counter == 1){xalpha=1; xy=200; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createFire(); xalpha=0}
		if (counter == 1){xy=500; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createGem();}
	if (counter == 50){xalpha=1; xy=500; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createFire(); xalpha=0}
		if (counter == 50){xalpha=1; xy=200; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createGem();}
	if (counter == 100){xalpha=1; xy=200; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createFire(); xalpha=0}
		if (counter == 100){xalpha=1; xy=500; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createGem();}
	if (counter == 150){xalpha=1; xy=500; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createFire(); xalpha=0}
		if (counter == 150){xalpha=1; xy=200; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createGem();}
	if (counter == 200){xalpha=1; xy=200; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createFire(); xalpha=0}
		if (counter == 200){xalpha=1; xy=500; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createGem();}
	if (counter == 250){xalpha=1; xy=500; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createFire(); xalpha=0}
		if (counter == 205){xy=250; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createGem();}
		if (counter == 230){xy=200; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createGem();}
		if (counter == 255){xy=150; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createGem();}

	if (counter == 285 && numPlayers>1){xy=200; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createShield();}
	if (counter == 285){xy=400; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createShield();}


	if (counter == 300){xy=50; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createFire();}
	if (counter == 300){xy=650; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createFire();}
	if (counter == 310){xy=230; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createFire();}
	if (counter == 310){xy=470; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createFire();}
	if (counter == 360){xy=230; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createFire();}
	if (counter == 360){xy=470; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createFire();}
	if (counter == 410){xy=230; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createFire();}
	if (counter == 410){xy=470; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createFire();}
		if (counter == 470){xy=150; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createBigGem();}

	if (counter == 530){xy=-50; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createFire();}
	if (counter == 530){xy=550; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createFire();}
	if (counter == 560){xy=130; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createFire();}
	if (counter == 560){xy=370; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createFire();}
	if (counter == 540){xy=130; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createFire();}
	if (counter == 540){xy=370; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createFire();}
	if (counter == 620){xy=130; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createFire();}
	if (counter == 620){xy=370; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createFire();}
		if (counter == 680){xy=550; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createBigGem();}

	if (counter == 730){xy=150; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createFire();}
	if (counter == 730){xy=750; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createFire();}
	if (counter == 760){xy=330; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createFire();}
	if (counter == 760){xy=570; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createFire();}
	if (counter == 740){xy=330; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createFire();}
	if (counter == 740){xy=570; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createFire();}
	if (counter == 820){xy=330; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createFire();}
	if (counter == 820){xy=570; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createFire();}
		if (counter == 850){xy=200; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createBigGem();}

	if (counter == 900){xy=150; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createFire();}
	if (counter == 900){xy=150; xx=1150; xrotation=90; xdirection="left"; xspeed=5; createFire();}
	if (counter == 950){xy=500; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createFire();}
	if (counter == 950){xy=500; xx=1150; xrotation=90; xdirection="left"; xspeed=5; createFire();}
	if (counter == 1000){xy=350; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createFire();}
	if (counter == 1000){xy=350; xx=1150; xrotation=90; xdirection="left"; xspeed=5; createFire();}
	if (counter == 1100){xy=450; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createFire();}
	if (counter == 1100){xy=450; xx=1150; xrotation=90; xdirection="left"; xspeed=5; createFire();}
	if (counter == 1200){xy=250; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createFire();}
	if (counter == 1200){xy=250; xx=1150; xrotation=90; xdirection="left"; xspeed=5; createFire();}

	if (counter == 1400){xy=350; xx=1150; xrotation=90; xdirection="left"; xspeed=4; createExit();}
		if (counter == 1450){xy=300; xx=1150; xrotation=90; xdirection="left"; xspeed=4; createGem();}
		if (counter == 1450){xy=350; xx=1150; xrotation=90; xdirection="left"; xspeed=4; createGem();}
		if (counter == 1450){xy=400; xx=1150; xrotation=90; xdirection="left"; xspeed=4; createGem();}
		if (counter == 1470){xy=300; xx=1150; xrotation=90; xdirection="left"; xspeed=4; createGem();}
		if (counter == 1470){xy=350; xx=1150; xrotation=90; xdirection="left"; xspeed=4; createGem();}
		if (counter == 1470){xy=400; xx=1150; xrotation=90; xdirection="left"; xspeed=4; createGem();}
		if (counter == 1490){xy=300; xx=1150; xrotation=90; xdirection="left"; xspeed=4; createGem();}
		if (counter == 1490){xy=350; xx=1150; xrotation=90; xdirection="left"; xspeed=4; createGem();}
		if (counter == 1490){xy=400; xx=1150; xrotation=90; xdirection="left"; xspeed=4; createGem();}


}//level 2

if (chapter == 2 && level == 3){
levelLength = 1500;
par = 3500;
if (counter==1){xforce = 60;}
	if (counter == 1){xy=350; xx=1250; xrotation=0; xdirection="left"; xspeed=3; createbh();}
		if (counter == 50){xy=350; xx=1250; xrotation=0; xdirection="left"; xspeed=3; createBigGem();}
	if (counter == 250){xy=600; xx=1250; xrotation=0; xdirection="left"; xspeed=3; createbh();}
	if (counter == 350){xy=100; xx=1250; xrotation=0; xdirection="left"; xspeed=3; createbh();}
					if (counter == 350){xy=600; xx=1250; xrotation=0; xdirection="left"; xspeed=3; createGem();}
					if (counter == 400){xy=600; xx=1250; xrotation=0; xdirection="left"; xspeed=3; createGem();}
					if (counter == 450){xy=600; xx=1250; xrotation=0; xdirection="left"; xspeed=3; createGem();}
					if (counter == 500){xy=600; xx=1250; xrotation=0; xdirection="left"; xspeed=3; createGem();}
					if (counter == 550){xy=600; xx=1250; xrotation=0; xdirection="left"; xspeed=3; createGem();}
	if (counter == 450){xy=200; xx=1250; xrotation=0; xdirection="left"; xspeed=3; createbh();}
	if (counter == 550){xy=300; xx=1250; xrotation=0; xdirection="left"; xspeed=3; createbh();}

	if (counter == 800){xy=600; xx=1250; xrotation=0; xdirection="left"; xspeed=3; createbh();}
	if (counter == 900){xy=600; xx=1250; xrotation=0; xdirection="left"; xspeed=3; createbh();}
		if (counter == 900){xy=300; xx=1250; xrotation=0; xdirection="left"; xspeed=3; createBigGem();}
	if (counter == 1000){xy=600; xx=1250; xrotation=0; xdirection="left"; xspeed=3; createbh();}

	if (counter == 1200){xy=100; xx=1250; xrotation=0; xdirection="left"; xspeed=3; createbh();}
	if (counter == 1300){xy=100; xx=1250; xrotation=0; xdirection="left"; xspeed=3; createbh();}
		if (counter == 1300){xy=300; xx=1250; xrotation=0; xdirection="left"; xspeed=3; createBigGem();}
	if (counter == 1400){xy=100; xx=1250; xrotation=0; xdirection="left"; xspeed=3; createbh();}

	if (counter == 1500){xy=350; xx=1250; xrotation=0; xdirection="left"; xspeed=3; createExit();}
	if (counter == 1500){xy=200; xx=1250; xrotation=0; xdirection="left"; xspeed=3; createbh();}
	if (counter == 1500){xy=500; xx=1250; xrotation=0; xdirection="left"; xspeed=3; createbh();}
	if (counter == 1550){xy=350; xx=1250; xrotation=0; xdirection="left"; xspeed=3; createbh();}
}//level 3


if (chapter == 2 && level == 4){
levelLength = 1650;
par = 8800;

if (counter == 1){friend1.x = 575;friend2.x = 575;friend3.x = 575;}	
if (counter == 1){xy=40; xx=150; xheight=350; xwidth = 50; xspeed = 5; xdirection = "down"; xrotation = 90; xalpha = 1; createFire(); xalpha = 0;}
if (counter == 1){xy=40; xx=1000; xheight=350; xwidth = 50; xspeed = 5; xdirection = "down"; xrotation = 90; xalpha = 1; createFire(); xalpha = 0;}
	if (counter == 1){xy=40; xx=575; xheight=350; xwidth = 50; xspeed = 5; xdirection = "down"; xrotation = 90; xalpha = 1; createGem(); xalpha = 0;}
		if (numPlayers > 1){if (counter == 1){xx=500; createShield();}}
		if (counter == 1){xx=575; createShield();}
		if (numPlayers > 1){if (counter == 1){xx=650; createShield();}}
	if (counter == 62){xx=300; createGem();}
	if (counter == 112){xx=575; createGem();}
	if (counter == 162){xx=840; createGem();}
	if (counter == 212){xx=575; createGem();}
	if (counter == 262){xx=300; createGem();}
	if (counter == 312){xx=575; createGem();}
	if (counter == 362){xx=840; createGem();}
		if (numPlayers > 1){if (counter == 410){xx=500; createShield();}}
		if (counter == 410){xx=575; createStar();}
		if (numPlayers > 1){if (counter == 410){xx=650; createShield();}}
	if (counter == 462){xx=300; createGem();}

if (counter == 10){xx=575; createFire();}
if (counter == 60){xx=1000; createFire();}
if (counter == 60){xx=150; createFire();}
if (counter == 110){xx=575; createFire();}
if (counter == 160){xx=1000; createFire();}
if (counter == 160){xx=150; createFire();}
if (counter == 210){xx=575; createFire();}
if (counter == 260){xx=1000; createFire();}
if (counter == 260){xx=150; createFire();}
	if (counter == 300){xx=575; xy=750; xforce = 120; createKyle(); xy=40;}
if (counter == 310){xx=575; createFire();}
if (counter == 360){xx=1000; createFire();}
if (counter == 360){xx=150; createFire();}
if (counter == 410){xx=575; createFire();}
if (counter == 500){xy=-200; xheight=800; xx=575; xrotation = 0; createFire();}
if (counter == 500){xy=-200; xheight=800; xx=0; xrotation = 0; createFire();}
if (counter == 500){xy=-200; xheight=800; xx=1150; xrotation = 0; createFire();}
if (counter == 600){xy=-200; xheight=800; xx=575; xrotation = 0; createFire();}
if (counter == 600){xy=-200; xheight=800; xx=0; xrotation = 0; createFire();}
if (counter == 600){xy=-200; xheight=800; xx=1150; xrotation = 0; createFire();}
if (counter == 700){xy=-200; xheight=800; xx=575; xrotation = 0; createFire();}
if (counter == 700){xy=-200; xheight=800; xx=0; xrotation = 0; createFire();}
if (counter == 700){xy=-200; xheight=800; xx=1150; xrotation = 0; createFire();}
if (counter == 800){xy=-200; xheight=800; xx=575; xrotation = 0; createFire();}
if (counter == 800){xy=-200; xheight=800; xx=0; xrotation = 0; createFire();}
if (counter == 800){xy=-200; xheight=800; xx=1150; xrotation = 0; createFire();}
if (counter == 900){xy=-200; xheight=800; xx=575; xrotation = 0; createFire();}
if (counter == 900){xy=-200; xheight=800; xx=0; xrotation = 0; createFire();}
if (counter == 900){xy=-200; xheight=800; xx=1150; xrotation = 0; createFire();}
if (counter == 1000){xy=-200; xheight=800; xx=575; xrotation = 0; createFire();}
if (counter == 1000){xy=-200; xheight=800; xx=0; xrotation = 0; createFire();}
if (counter == 1000){xy=-200; xheight=800; xx=1150; xrotation = 0; createFire();}
if (counter == 1100){xy=-200; xheight=800; xx=575; xrotation = 0; createFire();}
if (counter == 600){xy=40; xheight=500; xx=575; xrotation=90; createFire(); xrotation=0;}
	if (counter == 650){xx=100; xy=-40; createGem();}
	if (counter == 660){xx=100; xy=-40; createGem();}
	if (counter == 670){xx=100; xy=-40; createGem();}
	if (counter == 680){xx=100; xy=-40; createBigGem();}
if (counter == 650){xy=40; xheight=400; xx=1100; xrotation=90; createFire(); xrotation=0;}
if (counter == 700){xy=40; xheight=400; xx=100; xrotation=90; createFire(); xrotation=0;}
if (counter == 750){xy=40; xheight=500; xx=575; xrotation=90; createFire(); xrotation=0;}
	if (counter == 800){xx=100; xy=-40; createGem();}
	if (counter == 810){xx=100; xy=-40; createGem();}
	if (counter == 820){xx=100; xy=-40; createGem();}
	if (counter == 830){xx=100; xy=-40; createBigGem();}
if (counter == 800){xy=40; xheight=400; xx=1100; xrotation=90; createFire(); xrotation=0;}
if (counter == 850){xy=40; xheight=400; xx=100; xrotation=90; createFire(); xrotation=0;}
if (counter == 900){xy=40; xheight=500; xx=575; xrotation=90; createFire(); xrotation=0;}
	if (counter == 950){xx=100; xy=-40; createGem();}
	if (counter == 960){xx=100; xy=-40; createGem();}
	if (counter == 970){xx=100; xy=-40; createGem();}
	if (counter == 980){xx=100; xy=-40; createBigGem();}
if (counter == 950){xy=40; xheight=400; xx=1100; xrotation=90; createFire(); xrotation=0;}
if (counter == 1000){xy=40; xheight=400; xx=100; xrotation=90; createFire(); xrotation=0;}
if (counter == 1050){xy=40; xheight=500; xx=575; xrotation=90; createFire(); xrotation=0;}
	if (counter == 1100){xx=100; xy=-40; createGem();}
	if (counter == 1110){xx=100; xy=-40; createGem();}
	if (counter == 1120){xx=100; xy=-40; createGem();}
	if (counter == 1130){xx=100; xy=-40; createBigGem();}
if (counter == 1100){xy=40; xheight=400; xx=1100; xrotation=90; createFire(); xrotation=0;}
if (counter == 1150){xy=40; xheight=400; xx=100; xrotation=90; createFire(); xrotation=0;}
if (counter == 1200){xy=40; xheight=500; xx=575; xrotation=90; createFire(); xrotation=0;}
	if (counter == 1350){xx=900; xy=-40; createGem();}
	if (counter == 1360){xx=900; xy=-40; createGem();}
	if (counter == 1370){xx=900; xy=-40; createGem();}
	if (counter == 1380){xx=900; xy=-40; createBigGem();}
	if (counter == 1540){xx=900; xy=-40; createGem();}
	if (counter == 1550){xx=900; xy=-40; createGem();}
	if (counter == 1560){xx=900; xy=-40; createGem();}
	if (counter == 1570){xx=900; xy=-40; createBigGem();}

if (counter == 1300){xy=-250; xheight=800; xx=400; xrotation = 0; createFire();}
if (counter == 1300){xy=-250; xheight=800; xx=800; xrotation = 0; createFire();}
if (counter == 1400){xy=-200; xheight=800; xx=400; xrotation = 0; createFire();}
if (counter == 1400){xy=-200; xheight=800; xx=800; xrotation = 0; createFire();}
if (counter == 1500){xy=-200; xheight=800; xx=400; xrotation = 0; createFire();}
if (counter == 1500){xy=-200; xheight=800; xx=800; xrotation = 0; createFire();}
if (counter == 1650){xy=-200; xheight=800; xx=600; xrotation = 0; createExit();}

}//level 4


if (chapter == 2 && level == 5){
levelLength = 1350;
par = 8800;
if (counter==1){xforce = 50;}
if (counter == 1){xalpha=1; xy=350; xx=0; xheight=750; xwidth = 80; xrotation=0; xspeed=0; createFire(); xheight=350; xwidth = 50; xalpha=0;}

	if (counter == 1){xalpha=1; xy=350; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createFire(); xalpha=0}

	if (counter == 80){xy=600; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createFire();}
	if (counter == 130){xy=500; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createFire();}
	if (counter == 180){xy=400; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createFire();}
	if (counter == 230){xy=300; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createFire();}
	if (counter == 280){xy=200; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createFire();}
		if (counter == 80){xy=500; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createGem();}
		if (counter == 105){xy=450; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createGem();}
		if (counter == 130){xy=400; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createGem();}
		if (counter == 155){xy=350; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createGem();}
		if (counter == 180){xy=300; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createGem();}
		if (counter == 205){xy=250; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createGem();}
		if (counter == 230){xy=200; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createGem();}
		if (counter == 255){xy=150; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createGem();}
		if (counter == 280){xy=100; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createGem();}

		if (counter == 330){xy=100; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createGem();}
		if (counter == 355){xy=100; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createGem();}
		if (counter == 380){xy=100; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createGem();}
		if (counter == 405){xy=100; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createGem();}

		if (counter == 410){xy=200; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createGem();}
		if (counter == 410){xy=300; xx=1280; xrotation=90; xdirection="left"; xspeed=5; createGem();}
		if (counter == 410){xy=400; xx=1290; xrotation=90; xdirection="left"; xspeed=5; createGem();}
		if (counter == 410){xy=500; xx=1300; xrotation=90; xdirection="left"; xspeed=5; createGem();}

		if (counter == 510){xy=600; xx=1280; xrotation=90; xdirection="left"; xspeed=5; createGem();}
		if (counter == 510){xy=500; xx=1290; xrotation=90; xdirection="left"; xspeed=5; createGem();}
		if (counter == 510){xy=400; xx=1300; xrotation=90; xdirection="left"; xspeed=5; createGem();}


	if (counter == 450){xy=100; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createFire();}
	if (counter == 500){xy=200; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createFire();}
	if (counter == 550){xy=275; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createFire();}
		if (counter == 630){xy=350; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createGem();}
		if (counter == 650){xy=350; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createGem();}
		if (counter == 670){xy=350; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createGem();}
	if (counter == 600){xy=425; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createFire();}
	if (counter == 650){xy=500; xx=1270; xrotation=90; xdirection="left"; xspeed=5; createFire();}
		
		if (counter == 850){xy=300; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createGem();}
		if (counter == 850){xy=350; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createGem();}
		if (counter == 850){xy=400; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createGem();}
	if (counter == 850){xy=50; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createFire();}
	if (counter == 850){xy=600; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createFire();}
		if (counter == 925){xy=350; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createGem();}
		if (counter == 950){xy=350; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createGem();}
	if (counter == 900){xy=50; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createFire();}
	if (counter == 900){xy=600; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createFire();}
		if (counter == 975){xy=350; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createGem();}
		if (counter == 1000){xy=350; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createGem();}
	if (counter == 950){xy=50; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createFire();}
	if (counter == 950){xy=600; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createFire();}
		if (counter == 1025){xy=350; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createGem();}
		if (counter == 1050){xy=350; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createGem();}
	if (counter == 1000){xy=50; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createFire();}
	if (counter == 1000){xy=600; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createFire();}
		if (counter == 1075){xy=350; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createGem();}
		if (counter == 1100){xy=350; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createGem();}
	if (counter == 1050){xy=50; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createFire();}
	if (counter == 1050){xy=600; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createFire();}
		if (counter == 1125){xy=350; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createGem();}
		if (counter == 1150){xy=350; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createGem();}
	if (counter == 1100){xy=50; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createFire();}
	if (counter == 1100){xy=600; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createFire();}
		if (counter == 1175){xy=350; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createGem();}
		if (counter == 1200){xy=350; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createGem();}
	if (counter == 1150){xy=50; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createFire();}
	if (counter == 1150){xy=600; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createFire();}
		if (counter == 1225){xy=350; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createGem();}
		if (counter == 1250){xy=350; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createGem();}
	if (counter == 1200){xy=50; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createFire();}
	if (counter == 1200){xy=600; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createFire();}
		if (counter == 1275){xy=350; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createGem();}
		if (counter == 1275){xy=475; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createGem();}
		if (counter == 1275){xy=600; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createBigGem();}
	if (counter == 1250){xy=50; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createFire();}
	if (counter == 1250){xy=600; xx=1150; xrotation=0; xdirection="left"; xspeed=5; createFire();}
	if (counter == 1450){xy=100; xheight=400; xx=1270; xrotation=0; xdirection="left"; xspeed=3; createFire();}
	if (counter == 1450){xy=300; xheight=400; xx=1270; xrotation=0; xdirection="left"; xspeed=3; createFire();}
	if (counter == 1450){xy=500; xheight=400; xx=1270; xrotation=0; xdirection="left"; xspeed=3; createFire();}

//L3 OVERLAY
	if (counter == 1){xy=350; xx=1250; xrotation=0; xdirection="left"; xspeed=3; createbh();}
		if (counter == 50){xy=350; xx=1250; xrotation=0; xdirection="left"; xspeed=3; createBigGem();}
	if (counter == 250){xy=600; xx=1250; xrotation=0; xdirection="left"; xspeed=3; createbh();}
	if (counter == 350){xy=100; xx=1250; xrotation=0; xdirection="left"; xspeed=3; createbh();}
	if (counter == 450){xy=200; xx=1250; xrotation=0; xdirection="left"; xspeed=3; createbh();}
	if (counter == 550){xy=300; xx=1250; xrotation=0; xdirection="left"; xspeed=3; createbh();}

	if (counter == 800){xy=600; xx=1250; xrotation=0; xdirection="left"; xspeed=3; createbh();}
	if (counter == 900){xy=600; xx=1250; xrotation=0; xdirection="left"; xspeed=3; createbh();}
		if (counter == 900){xy=300; xx=1250; xrotation=0; xdirection="left"; xspeed=3; createBigGem();}
	if (counter == 1000){xy=600; xx=1250; xrotation=0; xdirection="left"; xspeed=3; createbh();}

	if (counter == 1200){xy=100; xx=1250; xrotation=0; xdirection="left"; xspeed=3; createbh();}
	if (counter == 1300){xy=100; xx=1250; xrotation=0; xdirection="left"; xspeed=3; createbh();}
		if (counter == 1300){xy=300; xx=1250; xrotation=0; xdirection="left"; xspeed=3; createBigGem();}
	if (counter == 1400){xy=100; xx=1250; xrotation=0; xdirection="left"; xspeed=3; createbh();}

	if (counter == 1500){xy=350; xx=1250; xrotation=0; xdirection="left"; xspeed=3; createExit();}
	if (counter == 1500){xy=200; xx=1250; xrotation=0; xdirection="left"; xspeed=3; createbh();}
	if (counter == 1500){xy=500; xx=1250; xrotation=0; xdirection="left"; xspeed=3; createbh();}
	if (counter == 1550){xy=350; xx=1250; xrotation=0; xdirection="left"; xspeed=3; createbh();}


}//level 5

}//GAMEMODE==QUEST (CONTAINS ALL LEVEL DESIGN) end level design

//TESTING WALLS

	label1.text = "out";
	if ((friend1.x - 25) < (test.x + test.width *.5 - 5)){
	if ((friend1.x + 25) > (test.x - test.width*.5 + 5)){
	if ((friend1.y - 25) < (test.y + test.height*.5 - 5)){
	if ((friend1.y + 25) > (test.y - test.height*.5 + 5)) {
	if (friend1.alive == 1 && friend1.finished==0){
		label1.text = "in";
		if (friend1.mspeed>0){friend1.mspeed = 0; friend1.x = (test.x - test.width*.5 + 5);}
		if (friend1.fall>0){friend1.fall = 0; friend1.y = (test.y - test.height*.5 + 5);}
	}
	}
	}
	}		
	}


p1Score.width = 249;
}// end ULTIMATE gameplay condition

//shit that happens every frame ALWAYS, even when gameplay is not live. timer1

if (gameplay!=2){
black2.visible = false;
backdrop.x = backdrop.x - backScrollSpeed;
if (backdrop.x < -2393.5){backdrop.x = 0;}
}

//no gameplay EVERY FRAME
if (gameplay == 0){

//MENU STATUS UPDATER
p1Score.width = 550;
if (onePlayer.x < 225){
p1Score.text = "HAPPY FLUTTER FRIENDS" + " > " + numPlayers + " PLAYER" + " > " + gameMode;
}
if (menuID == "1 PLAYER" || menuID == "2 PLAYER" || menuID == "3 PLAYER"){
p1Score.text = "HAPPY FLUTTER FRIENDS" + " > " + numPlayers + " PLAYER";
}
if (menuID == "CHAPTER 1" || menuID == "CHAPTER 2" || menuID == "CHAPTER 3" || menuID == "CHAPTER 4" || menuID == "CHAPTER 5"){
p1Score.text = "HAPPY FLUTTER FRIENDS" + " > " + numPlayers + " PLAYER" + " > " + gameMode + " > " + "CHAPTER " + chapter;	
}

if (menuID == "TITLE"){
p1Score.text = "HAPPY FLUTTER FRIENDS";
}

//LEVEL FINISHED menu display
if (menuID=="LEVEL OVER"){

if (menuLevelOver.title.width<709){
	menuLevelOver.title.width= menuLevelOver.title.width*1.4;
	menuLevelOver.title.height = menuLevelOver.title.height*1.4;
}
if (menuLevelOver.title.width>709){menuLevelOver.title.width=709; menuLevelOver.title.height=114; menuLevelOver.chapter.visible = true;}

if (menuLevelOver.chapter.visible==true && menuLevelOver.totalGems.x<-500){
menuLevelOver.totalGems.x+=100;
menuLevelOver.p1Gems.x+=100;
menuLevelOver.p2Gems.x+=100;
menuLevelOver.p3Gems.x+=100;
}
if (menuLevelOver.totalGems.x>-500){menuLevelOver.totalGems.x=-500; menuLevelOver.p1Gems.x=-500; menuLevelOver.p2Gems.x=-500; menuLevelOver.p3Gems.x=-500;}

if (menuLevelOver.totalGems.x==-500 && menuTotalGems<(p1ScoreNum+p2ScoreNum+p3ScoreNum)){
	menuTotalGems+=100;
	menuLevelOver.totalGems.text = "VALUE OF GEMS COLLECTED: "+menuTotalGems;
}
if (menuTotalGems>(p1ScoreNum+p2ScoreNum+p3ScoreNum)){menuTotalGems=(p1ScoreNum+p2ScoreNum+p3ScoreNum);}

if (menuTotalGems==(p1ScoreNum+p2ScoreNum+p3ScoreNum) && menuLevelOver.totalGems.x==-500){
	if (menuTotalGems>=par && menuLevelOver.Perfect.width > 200){
		menuLevelOver.Perfect.visible = true;
		menuLevelOver.Perfect.alpha =  menuLevelOver.Perfect.alpha+.1;
		menuLevelOver.Perfect.height = menuLevelOver.Perfect.height-20;
		menuLevelOver.Perfect.width = menuLevelOver.Perfect.width-20;
		menuLevelOver.Perfect.rotation = menuLevelOver.Perfect.rotation+30;
	}
		if (menuLevelOver.Perfect.width<200){menuLevelOver.Perfect.width = 200; menuLevelOver.Perfect.height = 200; menuLevelOver.Perfect.rotation=0;}
}
if (menuLevelOver.Perfect.width==200 || (menuLevelOver.Perfect.visible==false && menuTotalGems==(p1ScoreNum+p2ScoreNum+p3ScoreNum))){
if (menuLevelOver.totalDeaths.x<-500 && menuLevelOver.totalGems.x==-500){

if (numPlayers>1){
menuLevelOver.p1Gems.visible = true;
menuLevelOver.p2Gems.visible = true;
}
if (numPlayers>2){menuLevelOver.p3Gems.visible = true;}
menuLevelOver.totalDeaths.x+=100;
menuLevelOver.p1Deaths.x+=100;
menuLevelOver.p2Deaths.x+=100;
menuLevelOver.p3Deaths.x+=100;
}	
}
if (menuLevelOver.totalDeaths.x>-500){menuLevelOver.totalDeaths.x=-500; menuLevelOver.p1Deaths.x=-500; menuLevelOver.p2Deaths.x=-500; menuLevelOver.p3Deaths.x=-500;}

if (menuLevelOver.totalDeaths.x==-500 && menuLevelOver.totalGems.x==-500 && menuTotalDeaths<(p1deaths+p2deaths+p3deaths)){
	menuTotalDeaths+=1;
	menuLevelOver.totalDeaths.text = "DEATHS THIS LEVEL: "+menuTotalDeaths;
}
if (menuTotalDeaths>(p1deaths+p2deaths+p3deaths)){menuTotalDeaths=(p1deaths+p2deaths+p3deaths);}

if (menuTotalDeaths==(p1deaths+p2deaths+p3deaths) && menuLevelOver.totalDeaths.x==-500 && menuLevelOver.gemGrandTotal.x>93){
if (numPlayers>1){
menuLevelOver.p1Deaths.visible = true;
menuLevelOver.p2Deaths.visible = true;
}
if (numPlayers>2){menuLevelOver.p3Deaths.visible = true;}
menuLevelOver.gemGrandTotal.x-=100;

menuTotalGems=(p1ScoreNum+p2ScoreNum+p3ScoreNum);
if (chapter==2 && level==1){
if ((menuTotalGems-Ch1Lv1Gems)>0){menuLevelOver.gemAdd.texty.text = String(menuTotalGems-Ch2Lv1Gems);}
else {menuLevelOver.gemAdd.texty.text = "0";}
}
else if (chapter==2 && level==2){
if ((menuTotalGems-Ch2Lv2Gems)>0){menuLevelOver.gemAdd.texty.text = String(menuTotalGems-Ch2Lv2Gems);}
else {menuLevelOver.gemAdd.texty.text = "0";}
}
else if (chapter==2 && level==3){
if ((menuTotalGems-Ch2Lv3Gems)>0){menuLevelOver.gemAdd.texty.text = String(menuTotalGems-Ch2Lv3Gems);}
else {menuLevelOver.gemAdd.texty.text = "0";}
}
else if (chapter==2 && level==4){
if ((menuTotalGems-Ch2Lv4Gems)>0){menuLevelOver.gemAdd.texty.text = String(menuTotalGems-Ch2Lv4Gems);}
else {menuLevelOver.gemAdd.texty.text = "0";}
}
else if (chapter==1 && level==1){
if ((menuTotalGems-Ch1Lv1Gems)>0){menuLevelOver.gemAdd.texty.text = String(menuTotalGems-Ch1Lv1Gems);}
else {menuLevelOver.gemAdd.texty.text = "0";}
}
else if (chapter==1 && level==2){
if ((menuTotalGems-Ch1Lv2Gems)>0){menuLevelOver.gemAdd.texty.text = String(menuTotalGems-Ch1Lv2Gems);}
else {menuLevelOver.gemAdd.texty.text = "0";}
}
else if (chapter==1 && level==3){
if ((menuTotalGems-Ch1Lv3Gems)>0){menuLevelOver.gemAdd.texty.text = String(menuTotalGems-Ch1Lv3Gems);}
else {menuLevelOver.gemAdd.texty.text = "0";}
}
else if (chapter==1 && level==4){
if ((menuTotalGems-Ch1Lv4Gems)>0){menuLevelOver.gemAdd.texty.text = String(menuTotalGems-Ch1Lv4Gems);}
else {menuLevelOver.gemAdd.texty.text = "0";}
}
else if (chapter==1 && level==5){
if ((menuTotalGems-Ch1Lv5Gems)>0){menuLevelOver.gemAdd.texty.text = String(menuTotalGems-Ch1Lv5Gems);}
else {menuLevelOver.gemAdd.texty.text = "0";}
}
//new level

}
if (menuLevelOver.gemGrandTotal.x<93){menuLevelOver.gemGrandTotal.x=93;}

if (menuLevelOver.gemGrandTotal.x==93 && menuLevelOver.gemAdd.y>-47){
menuLevelOver.gemAdd.y-=10;
menuLevelOver.gemAdd.alpha+=.2;
}

//problem


if (menuLevelOver.gemAdd.y<-47){menuLevelOver.gemAdd.y=-47;}
if (menuLevelOver.gemAdd.y==-47 && menuLevelOver.gemAdd.alpha>0){menuLevelOver.gemAdd.alpha-=.01;}

if (menuLevelOver.gemAdd.y==-47 && menuGrandTotalGems<grandTotalGems){
	menuGrandTotalGems+=100;
	menuLevelOver.gemGrandTotal.text = "TOTAL GEMS: "+menuGrandTotalGems;
}
if (menuGrandTotalGems>grandTotalGems){menuGrandTotalGems=grandTotalGems;}

if (menuGrandTotalGems==grandTotalGems && menuLevelOver.gemAdd.y==-47 && menuLevelOver.deathGrandTotal.x>93){
menuLevelOver.deathGrandTotal.x-=100;
}
if (menuLevelOver.deathGrandTotal.x<93){menuLevelOver.deathGrandTotal.x=93;}

if (menuLevelOver.deathGrandTotal.x==93 && menuGrandTotalDeaths<grandTotalDeaths){
	menuGrandTotalDeaths++;
	menuLevelOver.deathGrandTotal.text = "TOTAL DEATHS:"+menuGrandTotalDeaths;
}


if (numPlayers>1){
if (menuGrandTotalDeaths>grandTotalDeaths){menuGrandTotalDeaths=grandTotalDeaths;}
if (menuGrandTotalDeaths==grandTotalDeaths && menuLevelOver.deathGrandTotal.x==93 && menuLevelOver.mvp.x>93){
	menuLevelOver.mvp.x-=100;
}
if (menuLevelOver.mvp.x<93){menuLevelOver.mvp.x=93;}
menuLevelOver.friend1.visible = true;
menuLevelOver.friend2.visible = true;
menuLevelOver.friend3.visible = true;
if (menuLevelOver.mvp.x==93 && menuLevelOver.friend1.x>512){
menuLevelOver.friend1.x-=100;
}
if (menuLevelOver.friend1.x<512){menuLevelOver.friend1.x=512;}
}//numPlayers > 1
if (menuGrandTotalDeaths==grandTotalDeaths && menuLevelOver.deathGrandTotal.x==93 && ((menuLevelOver.friend1.x==512 || menuLevelOver.friend2.x==512 || menuLevelOver.friend3.x==512) || (menuLevelOver.friend1.visible==false && menuLevelOver.friend2.visible==false && menuLevelOver.friend3.visible==false))){
selector1.visible = true;
menuLevelOver.rec1.visible = true;
menuLevelOver.button.visible = true;
menuLevelOver.up.visible = true;
menuLevelOver.right.visible = true;
menuLevelOver.left.visible = true;	
}


//update level stats
if (selector1.visible==true){
grandTotalGems = menuGrandTotalGems;
grandTotalDeaths = menuGrandTotalDeaths;

if (chapter==2 && level==1){
if (menuLevelOver.Perfect.visible = true){Ch2Lv1Perfect = 1;}
if (Ch2Lv1Gems<menuTotalGems){Ch2Lv1Gems = menuTotalGems;}
Ch2Lv1Completed = 1;
if (numPlayers>1){Ch2Lv1Completed = 2;}
if (numPlayers>2){Ch2Lv1Completed = 3;}
}
if (chapter==2 && level==2){
if (menuLevelOver.Perfect.visible = true){Ch2Lv2Perfect = 1;}
if (Ch2Lv2Gems<menuTotalGems){Ch2Lv2Gems = menuTotalGems;}
Ch2Lv2Completed = 1;
if (numPlayers>1){Ch2Lv2Completed = 2;}
if (numPlayers>2){Ch2Lv2Completed = 3;}
}
if (chapter==2 && level==3){
if (menuLevelOver.Perfect.visible = true){Ch2Lv3Perfect = 1;}
if (Ch2Lv3Gems<menuTotalGems){Ch2Lv3Gems = menuTotalGems;}
Ch2Lv3Completed = 1;
if (numPlayers>1){Ch2Lv3Completed = 2;}
if (numPlayers>2){Ch2Lv3Completed = 3;}
}
if (chapter==2 && level==4){
if (menuLevelOver.Perfect.visible = true){Ch2Lv4Perfect = 1;}
if (Ch2Lv4Gems<menuTotalGems){Ch2Lv4Gems = menuTotalGems;}
Ch2Lv4Completed = 1;
if (numPlayers>1){Ch2Lv4Completed = 2;}
if (numPlayers>2){Ch2Lv4Completed = 3;}
}
if (chapter==1 && level==1){
if (menuLevelOver.Perfect.visible = true){Ch1Lv1Perfect = 1;}
if (Ch1Lv1Gems<menuTotalGems){Ch1Lv1Gems = menuTotalGems;}
Ch1Lv1Completed = 1;
if (numPlayers>1){Ch1Lv1Completed = 2;}
if (numPlayers>2){Ch1Lv1Completed = 3;}
}
if (chapter==1 && level==2){
if (menuLevelOver.Perfect.visible = true){Ch1Lv2Perfect = 1;}
if (Ch1Lv2Gems<menuTotalGems){Ch1Lv2Gems = menuTotalGems;}
Ch1Lv2Completed = 1;
if (numPlayers>1){Ch1Lv2Completed = 2;}
if (numPlayers>2){Ch1Lv2Completed = 3;}
}
if (chapter==1 && level==3){
if (menuLevelOver.Perfect.visible = true){Ch1Lv3Perfect = 1;}
if (Ch1Lv3Gems<menuTotalGems){Ch1Lv3Gems = menuTotalGems;}
Ch1Lv3Completed = 1;
if (numPlayers>1){Ch1Lv3Completed = 2;}
if (numPlayers>2){Ch1Lv3Completed = 3;}
}
if (chapter==1 && level==4){
if (menuLevelOver.Perfect.visible = true){Ch1Lv4Perfect = 1;}
if (Ch1Lv4Gems<menuTotalGems){Ch1Lv4Gems = menuTotalGems;}
Ch1Lv4Completed = 1;
if (numPlayers>1){Ch1Lv4Completed = 2;}
if (numPlayers>2){Ch1Lv4Completed = 3;}
}
if (chapter==1 && level==5){
if (menuLevelOver.Perfect.visible = true){Ch1Lv5Perfect = 1;}
if (Ch1Lv5Gems<menuTotalGems){Ch1Lv5Gems = menuTotalGems;}
Ch1Lv5Completed = 1;
if (numPlayers>1){Ch1Lv5Completed = 2;}
if (numPlayers>2){Ch1Lv5Completed = 3;}
}
//new level

}//if selector1 == true (end of menu Build)

}//menuID==LEVEL OVER
/*
menuLevelOver.title.width = 100;
menuLevelOver.title.height = 16;
menuLevelOver.title.visible = true;
menuLevelOver.chapter.visible = false;
menuLevelOver.totalGems.visible = false;
menuLevelOver.Perfect.visible = false;
menuLevelOver.Perfect.height = 2;
menuLevelOver.Perfect.width = 2;
menuLevelOver.p1Gems.visible = false;
menuLevelOver.p2Gems.visible = false;
menuLevelOver.p3Gems.visible = false;
menuLevelOver.totalDeaths.visible = false;
menuLevelOver.p1Deaths.visible = false;
menuLevelOver.p2Deaths.visible = false;
menuLevelOver.p3Deaths.visible = false;
menuLevelOver.gemGrandTotal.visible = false;
menuLevelOver.deathGrandTotal.visible = false;
menuLevelOver.mvp.visible = false;
menuLevelOver.friend1.visible = false;
menuLevelOver.friend2.visible = false;
menuLevelOver.friend3.visible = false;
menuLevelOver.rec1.visible = false;
menuLevelOver.button.visible = false;
menuLevelOver.up.visible = false;
menuLevelOver.right.visible = false;
menuLevelOver.left.visible = false;
*/

zap1.visible = false;
zap2.visible = false;
zap3.visible = false;

//MENU FUNCTIONALITY
white.width = 0;
if (menuID=="TITLE"){
	if (selector1.y==onePlayer.y){numPlayers=1;}
	if (selector1.y==onePlayer.y+82){numPlayers=2;}
	if (selector1.y==onePlayer.y+164){numPlayers=3;}
}
if (menuID=="DIFFICULTY"){
	if (selector1.y==onePlayer.y){difficulty="FRIENDLY";}
	if (selector1.y==onePlayer.y+82){difficulty="MILD";}
	if (selector1.y==onePlayer.y+164){difficulty="CRUEL";}
}
if (menuID=="QUEST" && menuDirection==0){
	if (selector1.y==onePlayer.y-82){chapter=1;}
	if (selector1.y==onePlayer.y){chapter=2;}
	if (selector1.y==onePlayer.y+82){chapter=3;}
	if (selector1.y==onePlayer.y+164){chapter=4;}
	if (selector1.y==onePlayer.y+246){chapter=5;}
}
if (menuDirection==0 && (menuID=="CHAPTER 1" || menuID=="CHAPTER 2" || menuID=="CHAPTER 3" || menuID=="CHAPTER 4" || menuID=="CHAPTER 5")){
	if (selector1.y==onePlayer.y-82){level=1;}
	if (selector1.y==onePlayer.y){level=2;}
	if (selector1.y==onePlayer.y+82){level=3;}
	if (selector1.y==onePlayer.y+164){level=4;}
	if (selector1.y==onePlayer.y+246){level=5;}
}

if (selector1.x == onePlayer.x && selector1.y == onePlayer.y){selector1.select = "1 PLAYER"}
if (selector1.x == twoPlayer.x && selector1.y == twoPlayer.y){selector1.select = "2 PLAYER"}
if (selector1.x == threePlayer.x && selector1.y == threePlayer.y){selector1.select = "3 PLAYER"}
if (selector1.y == onePlayer.y)

//set menuItems
if (menuID == "TITLE"){menuItems = 3;}
if (menuID == "1 PLAYER"){menuItems = 3;}
if (menuID == "2 PLAYER"){menuItems = 4;}
if (menuID == "3 PLAYER"){menuItems = 4;}
if (menuID == "QUEST"){menuItems = 5;}
if (menuID == "CHAPTER 1" || menuID == "CHAPTER 2" || menuID == "CHAPTER 3" || menuID == "CHAPTER 4" || menuID == "CHAPTER 5"){menuItems = 5;}
if (menuID == "PARTY MODE2P"){menuItems = 5;}
if (menuID == "PARTY MODE3P"){menuItems = 5;}
if (menuID == "SURVIVAL1P"){menuItems = 2;}
if (menuID == "SURVIVAL2P"){menuItems = 4;}
if (menuID == "SURVIVAL3P"){menuItems = 4;}
if (menuID == "DIFFICULTY"){menuItems = 3;}



//assigns current menu
if (onePlayer.x==575 || (onePlayer.x>575 && onePlayer.x<925 && menuDirection=="right") || (onePlayer.x>225 && onePlayer.x<575 && menuDirection=="left")){
menuID = "TITLE";
numPlayers=" ";
}
else if (numPlayers==1 && (onePlayer.x==225 || (onePlayer.x>225 && onePlayer.x<575 && menuDirection=="right") || (onePlayer.x>575 && onePlayer.x<925 && menuDirection=="left"))){
menuID = "1 PLAYER";
}
else if (numPlayers==2 && (onePlayer.x==225 || (onePlayer.x>225 && onePlayer.x<575 && menuDirection=="right") || (onePlayer.x>575 && onePlayer.x<925 && menuDirection=="left"))){
menuID = "2 PLAYER";
}
else if (numPlayers==3 && (onePlayer.x==225 || (onePlayer.x>225 && onePlayer.x<575 && menuDirection=="right") || (onePlayer.x>575 && onePlayer.x<925 && menuDirection=="left"))){
menuID = "3 PLAYER";
}
else if (gameMode=="QUEST" && (onePlayer.x==-125 || (onePlayer.x>-125 && onePlayer.x<225 && menuDirection=="right") || (onePlayer.x>-475 && onePlayer.x<-125 && menuDirection=="left"))){
menuID = "QUEST";
}
else if (gameMode=="SURVIVAL" && numPlayers==1 && (onePlayer.x==-125 || (onePlayer.x>-125 && onePlayer.x<225 && menuDirection=="right") || (onePlayer.x>-475 && onePlayer.x<-125 && menuDirection=="left"))){
menuID = "SURVIVAL1P";
}
else if (gameMode=="PARTY MODE" && numPlayers==2 && (onePlayer.x==-125 || (onePlayer.x>-125 && onePlayer.x<225 && menuDirection=="right") || (onePlayer.x>-475 && onePlayer.x<-125 && menuDirection=="left"))){
menuID = "PARTY MODE2P";
}
else if (gameMode=="PARTY MODE" && numPlayers==3 && (onePlayer.x==-125 || (onePlayer.x>-125 && onePlayer.x<225 && menuDirection=="right") || (onePlayer.x>-475 && onePlayer.x<-125 && menuDirection=="left"))){
menuID = "PARTY MODE3P";
}
else if (gameMode=="SURVIVAL" && numPlayers==2 && (onePlayer.x==-125 || (onePlayer.x>-125 && onePlayer.x<225 && menuDirection=="right") || (onePlayer.x>-475 && onePlayer.x<-125 && menuDirection=="left"))){
menuID = "SURVIVAL2P";
}
else if (gameMode=="SURVIVAL" && numPlayers==3 && (onePlayer.x==-125 || (onePlayer.x>-125 && onePlayer.x<225 && menuDirection=="right") || (onePlayer.x>-475 && onePlayer.x<-125 && menuDirection=="left"))){
menuID = "SURVIVAL3P";
}
else if (gameMode=="QUEST" && chapter==1 && (onePlayer.x==-475 || (onePlayer.x>-475 && onePlayer.x<-125 && menuDirection=="right") || (onePlayer.x>-825 && onePlayer.x<-475 && menuDirection=="left"))){
menuID = "CHAPTER 1";
}
else if (gameMode=="QUEST" && chapter==2 && (onePlayer.x==-475 || (onePlayer.x>-475 && onePlayer.x<-125 && menuDirection=="right") || (onePlayer.x>-825 && onePlayer.x<-475 && menuDirection=="left"))){
menuID = "CHAPTER 2";
}
else if (gameMode=="QUEST" && chapter==3 && (onePlayer.x==-475 || (onePlayer.x>-475 && onePlayer.x<-125 && menuDirection=="right") || (onePlayer.x>-825 && onePlayer.x<-475 && menuDirection=="left"))){
menuID = "CHAPTER 3";
}
else if (gameMode=="QUEST" && chapter==4 && (onePlayer.x==-475 || (onePlayer.x>-475 && onePlayer.x<-125 && menuDirection=="right") || (onePlayer.x>-825 && onePlayer.x<-475 && menuDirection=="left"))){
menuID = "CHAPTER 4";
}
else if (gameMode=="QUEST" && chapter==5 && (onePlayer.x==-475 || (onePlayer.x>-475 && onePlayer.x<-125 && menuDirection=="right") || (onePlayer.x>-825 && onePlayer.x<-475 && menuDirection=="left"))){
menuID = "CHAPTER 5";
}
else if ((onePlayer.x>-475 && onePlayer.x<-125 && menuDirection=="right" && selector1.y==onePlayer.y+82 && (menuID=="SURVIVAL1P" || menuID=="SURVIVAL2P" || menuID=="SURVIVAL3P")) || (onePlayer.x>-475 && onePlayer.x<-125 && menuDirection=="right" && selector1.y==onePlayer.y &&(menuID=="PARTY MODE2P" || menuID=="PARTY MODE3P"))){
menuID = "DIFFICULTY";
}

//if (menuDirection=="right" && (onePlayer.x == 525 || onePlayer.x == 175)){menuLoaded=0;}

if (menuLoaded == 0){
if (menuID == "1 PLAYER"){
if (selector1.y == onePlayer.y){
menuLoaded = 1;
newMenuQuest = new menuQuest();
addChild(newMenuQuest);
newMenuQuest.addEventListener(Event.ENTER_FRAME, menuQuestFrame);
newMenuQuest.x = onePlayer.x + 700;
newMenuQuest.y = onePlayer.y;
newMenuQuest.title.alpha = 0;
newMenuQuest.height = 1;
newMenuQuest.width = 1;
}
if (selector1.y == onePlayer.y+82){
menuLoaded = 1;
newMenuSurvival1p = new menuSurvival1p();
addChild(newMenuSurvival1p);
newMenuSurvival1p.addEventListener(Event.ENTER_FRAME, menuSurvival1pFrame);
newMenuSurvival1p.x = onePlayer.x + 700;
newMenuSurvival1p.y = onePlayer.y;
newMenuSurvival1p.title.alpha = 0;
newMenuSurvival1p.height = 1;
newMenuSurvival1p.width = 1;
}

}//1PLAYER

if (menuID == "2 PLAYER" || menuID == "3 PLAYER"){
if (selector1.y == onePlayer.y){
menuLoaded = 1;
newMenuQuest = new menuQuest();
addChild(newMenuQuest);
newMenuQuest.addEventListener(Event.ENTER_FRAME, menuQuestFrame);
newMenuQuest.x = onePlayer.x + 700;
newMenuQuest.y = onePlayer.y;
newMenuQuest.title.alpha = 0;
newMenuQuest.height = 1;
newMenuQuest.width = 1;
}
if (selector1.y == onePlayer.y+82){
menuLoaded = 1;
newMenuParty2p = new menuParty2p();
addChild(newMenuParty2p);
newMenuParty2p.addEventListener(Event.ENTER_FRAME, menuParty2pFrame);
newMenuParty2p.x = onePlayer.x + 700;
newMenuParty2p.y = onePlayer.y;
newMenuParty2p.title.alpha = 0;
newMenuParty2p.height = 1;
newMenuParty2p.width = 1;
}
if (selector1.y == onePlayer.y+164){
menuLoaded = 1;
newMenuSurvival2p = new menuSurvival2p();
addChild(newMenuSurvival2p);
newMenuSurvival2p.addEventListener(Event.ENTER_FRAME, menuSurvival2pFrame);
newMenuSurvival2p.x = onePlayer.x + 700;
newMenuSurvival2p.y = onePlayer.y;
newMenuSurvival2p.title.alpha = 0;
newMenuSurvival2p.height = 1;
newMenuSurvival2p.width = 1;
}

}//2PLAYER, 3PLAYER

if (menuID == "QUEST"){

if (selector1.y==onePlayer.y-82){
menuLoaded = 1;
newMenuChapter = new menuChapter();
addChild(newMenuChapter);
newMenuChapter.addEventListener(Event.ENTER_FRAME, menuChapterFrame);
newMenuChapter.x = onePlayer.x + 1050;
newMenuChapter.y = onePlayer.y;
newMenuChapter.title.alpha = 0;
newMenuChapter.title.text = "CHAPTER 1";
newMenuChapter.button0.text = "1-1";
newMenuChapter.button1.text = "1-2";
newMenuChapter.button2.text = "1-3";
newMenuChapter.button3.text = "1-4";
newMenuChapter.button4.text = "1-5";

newMenuChapter.height = 1;
newMenuChapter.width = 1;
}

if (selector1.y==onePlayer.y){
menuLoaded = 1;
newMenuChapter = new menuChapter();
addChild(newMenuChapter);
newMenuChapter.addEventListener(Event.ENTER_FRAME, menuChapterFrame);
newMenuChapter.x = onePlayer.x + 1050;
newMenuChapter.y = onePlayer.y;
newMenuChapter.title.alpha = 0;
newMenuChapter.title.text = "CHAPTER 2";
newMenuChapter.button0.text = "2-1";
newMenuChapter.button1.text = "2-2";
newMenuChapter.button2.text = "2-3";
newMenuChapter.button3.text = "2-4";
newMenuChapter.button4.text = "2-5";
newMenuChapter.height = 1;
newMenuChapter.width = 1;
}
if (selector1.y==onePlayer.y+82){
menuLoaded = 1;
newMenuChapter = new menuChapter();
addChild(newMenuChapter);
newMenuChapter.addEventListener(Event.ENTER_FRAME, menuChapterFrame);
newMenuChapter.x = onePlayer.x + 1050;
newMenuChapter.y = onePlayer.y;
newMenuChapter.title.alpha = 0;
newMenuChapter.title.text = "CHAPTER 3";
newMenuChapter.button0.text = "3-1";
newMenuChapter.button1.text = "3-2";
newMenuChapter.button2.text = "3-3";
newMenuChapter.button3.text = "3-4";
newMenuChapter.button4.text = "3-5";
newMenuChapter.height = 1;
newMenuChapter.width = 1;
}
if (selector1.y==onePlayer.y+164){
menuLoaded = 1;
newMenuChapter = new menuChapter();
addChild(newMenuChapter);
newMenuChapter.addEventListener(Event.ENTER_FRAME, menuChapterFrame);
newMenuChapter.x = onePlayer.x + 1050;
newMenuChapter.y = onePlayer.y;
newMenuChapter.title.alpha = 0;
newMenuChapter.title.text = "CHAPTER 4";
newMenuChapter.button0.text = "4-1";
newMenuChapter.button1.text = "4-2";
newMenuChapter.button2.text = "4-3";
newMenuChapter.button3.text = "4-4";
newMenuChapter.button4.text = "4-5";
newMenuChapter.height = 1;
newMenuChapter.width = 1;
}
if (selector1.y==onePlayer.y+246){
menuLoaded = 1;
newMenuChapter = new menuChapter();
addChild(newMenuChapter);
newMenuChapter.addEventListener(Event.ENTER_FRAME, menuChapterFrame);
newMenuChapter.x = onePlayer.x + 1050;
newMenuChapter.y = onePlayer.y;
newMenuChapter.title.alpha = 0;
newMenuChapter.title.text = "CHAPTER 5";
newMenuChapter.button0.text = "5-1";
newMenuChapter.button1.text = "5-2";
newMenuChapter.button2.text = "5-3";
newMenuChapter.button3.text = "5-4";
newMenuChapter.button4.text = "5-5";
newMenuChapter.height = 1;
newMenuChapter.width = 1;
}

}//Quest

if (menuDirection!="left" && ((menuID == "SURVIVAL2P" || menuID == "SURVIVAL1P" && selector1.y == onePlayer.y+82) || (menuID == "PARTY MODE2P" && selector1.y == onePlayer.y))){
menuLoaded = 1;
newMenuDifficulty = new menuDifficulty();
addChild(newMenuDifficulty);
newMenuDifficulty.addEventListener(Event.ENTER_FRAME, menuDifficultyFrame);
newMenuDifficulty.x = onePlayer.x + 1050;
newMenuDifficulty.y = onePlayer.y;
newMenuDifficulty.title.alpha = 0;
newMenuDifficulty.height = 1;
newMenuDifficulty.width = 1;
}//2PLAYER, 3PLAYER


}//menuLoaded == 0

if (menuID=="DIFFICULTY"){selector1.rarrow.visible=false;}
//selector1 hitting a new menupoint code
if (onePlayer.x == 225 || onePlayer.x == 575 || onePlayer.x == 925 || onePlayer.x == -125 || onePlayer.x == -475 || onePlayer.x == -825){
//decides where selector ends up when moving right to new menu
	if (menuDirection == "right"){
		if (menuItems!=5){selector1.y=onePlayer.y;}
		else {selector1.y=onePlayer.y-82;}

if (menuDirection=="right" && (menuID == "1 PLAYER" || menuID == "2 PLAYER" || menuID == "3 PLAYER")){
menuLoaded = 1;
newMenuQuest = new menuQuest();
addChild(newMenuQuest);
newMenuQuest.addEventListener(Event.ENTER_FRAME, menuQuestFrame);
newMenuQuest.x = onePlayer.x + 700;
newMenuQuest.y = onePlayer.y;
newMenuQuest.title.alpha = 0;
newMenuQuest.height = 1;
newMenuQuest.width = 1;
}
if (menuID == "QUEST" && menuDirection=="right"){
menuLoaded = 1;
newMenuChapter = new menuChapter();
addChild(newMenuChapter);
newMenuChapter.addEventListener(Event.ENTER_FRAME, menuChapterFrame);
newMenuChapter.x = onePlayer.x + 1050;
newMenuChapter.y = onePlayer.y;
newMenuChapter.title.alpha = 0;
newMenuChapter.title.text = "CHAPTER 1";
newMenuChapter.button0.text = "1-1";
newMenuChapter.button1.text = "1-2";
newMenuChapter.button2.text = "1-3";
newMenuChapter.button3.text = "1-4";
newMenuChapter.button4.text = "1-5";
newMenuChapter.height = 1;
newMenuChapter.width = 1;
	}//==QUEST
}//menu direction == right
	if (menuID!="OPTIONS"){selector1.visible = true;} 
	if (menuID!="DIFFICULTY"){selector1.rarrow.visible = true;}
	selector1.larrow.visible = true; 
	menuDirection = 0;
}//if onePlayer.x == one of the notches
else if(menuID!="ROUND OVER" && menuID!="LEVEL OVER"){selector1.visible = false;}
if (menuID!="ROUND OVER" && menuID!="LEVEL OVER"){
Title.x=onePlayer.x-336;
text1.x=onePlayer.x-336;
}
if ((menuDirection == "right" && Title.visible == true && onePlayer.x<575 && onePlayer.x>225)){
	Title.alpha-=.2;
	text1.alpha-=.2;
}
if (menuDirection == "left" && Title.visible == true && onePlayer.x>575 && onePlayer.x<925){
	Title.alpha-=.2;
	text1.alpha-=.2;
	onePlayer.alpha-=.2;	
	twoPlayer.alpha-=.2;	
	threePlayer.alpha-=.2;	
}
if ((menuDirection == "left" && Title.visible == true && onePlayer.x<575 && onePlayer.x>225)){
	Title.alpha+=.2;
	text1.alpha+=.2;
}
if (menuDirection == "right" && onePlayer.x>575 && onePlayer.x<925){
	Title.alpha+=.2;
	text1.alpha+=.2;
	onePlayer.alpha+=.2;	
	twoPlayer.alpha+=.2;	
	threePlayer.alpha+=.2;		
}
if (Title.x == 225-336){Title.alpha = 0; text1.alpha = 0;}
if (Title.x == 575-336 && Title.visible == true){Title.alpha = 1; text1.alpha = 1;}

if (menuDirection == "right" && onePlayer.visible == true && onePlayer.x!=575 && onePlayer.x!=225 && onePlayer.x!=925 && onePlayer.x!=-125 && onePlayer.x!=-475 && onePlayer.x!=-825){
	onePlayer.x-=50;
}
if (menuDirection == "left" && onePlayer.visible == true && onePlayer.x!=575 && onePlayer.x!=225 && onePlayer.x!=925 && onePlayer.x!=-125 && onePlayer.x!=-475 && onePlayer.x!=-825){
	onePlayer.x+=50;
}
twoPlayer.x = onePlayer.x;
threePlayer.x = onePlayer.x;

// grey selected menu block code 
	whiteRect.x = onePlayer.x;
if (selector1.x != onePlayer.x){
if (numPlayers == 1){
	whiteRect.visible = true;
	whiteRect.y = onePlayer.y;
}
if (numPlayers == 2){
	whiteRect.visible = true;
	whiteRect.y = onePlayer.y + 82;
}
if (numPlayers == 3){
	whiteRect.visible = true;
	whiteRect.y = onePlayer.y + 164;
}
}//selector1.x != onePlayer.x
else{whiteRect.visible = false;}

}//end condition for gameplay inactive
if (gameplay==1){onePlayer.x=-10000; menuID=0;}
if (gameplay==1){selector1.visible = false;}
if (menuID==0){selector1.visible=false;}
if (gameplay==2){
menuID="PAUSE";
label1.text = String(Title.visible);
label2.text = String(Title.x);
label3.text = String(Title.y);
label4.text = Title.text;
}

} //end ULTIMATE every frame

function menuUp(){ 
if (menuID=="LEVEL OVER" && selector1.visible==true){
p1deaths = 0;
p2deaths = 0;
p3deaths = 0;
restart();
selector1.visible = false;
}
if (selector1.visible==true){
selector1.y-=82;
menuLoaded = 0;
menuChanged = 0;
}
}//end menu up

function menuDown(){
if (selector1.visible==true){
selector1.y+=82;
menuLoaded = 0;
menuChanged = 0;
}
}

function menuLeft(){
if (onePlayer.x<925 && menuDirection!="left"){
menuDirection = "left";
menuChanged = 0;
if (menuChanged == 0 && (menuID=="1 PLAYER" || menuID=="2 PLAYER" || menuID=="3 PLAYER")){
	menuID = "TITLE";
	menuChanged = 1;
	if (numPlayers==1){selector1.y=onePlayer.y;}
	else if (numPlayers==2){selector1.y=onePlayer.y+82;}
	else if (numPlayers==3){selector1.y=onePlayer.y+164;}
}

if (onePlayer.x==-125 && gameMode=="SURVIVAL"){

if (numPlayers==1){selector1.y=onePlayer.y+82;}
	else{selector1.y=onePlayer.y+164;}
}
if (onePlayer.x==-125 && gameMode=="PARTY MODE"){
	selector1.y=onePlayer.y+82;
}
if (onePlayer.x==-125 && gameMode=="QUEST"){
	selector1.y=onePlayer.y;
}
if (menuID=="DIFFICULTY" && gameMode=="SURVIVAL"){
	selector1.y=onePlayer.y+82;
}
if (menuID=="DIFFICULTY" && gameMode=="PARTY MODE"){
	selector1.y=onePlayer.y;
}
if (menuID=="CHAPTER 1"){
	selector1.y=onePlayer.y-82;
}
if (menuID=="CHAPTER 2"){
	selector1.y=onePlayer.y;
}
if (menuID=="CHAPTER 3"){
	selector1.y=onePlayer.y+82;
}
if (menuID=="CHAPTER 4"){
	selector1.y=onePlayer.y+164;
}
if (menuID=="CHAPTER 5"){
	selector1.y=onePlayer.y+246;
}


if (menuChanged == 0 && (menuID=="SURVIVAL1P" || (menuID=="QUEST" && numPlayers==1))){
	menuID = "1 PLAYER";
	menuChanged = 1;
	if (gameMode=="QUEST"){selector1.y=onePlayer.y;}
	else if (gameMode=="SURVIVAL"){selector1.y=onePlayer.y+82;}
	else{selector1.y=onePlayer.y;}
}
if (menuChanged == 0 && (numPlayers==2 && (menuID=="SURVIVAL2P" || menuID=="QUEST" || menuID=="PARTY MODE2P" || menuID=="MINI-GAMES"))){
	menuID = "2 PLAYER";
	menuChanged = 1;
}
if (menuChanged == 0 && (numPlayers==3 && (menuID=="SURVIVAL3P" || menuID=="QUEST" || menuID=="PARTY MODE3P" || menuID=="MINI-GAMES"))){
	menuID = "3 PLAYER";
	menuChanged = 1;
}
if (menuChanged == 0 && (menuID=="TITLE")){
	menuID = "OPTIONS";
	menuChanged = 1;
}

if (menuChanged == 0 && (menuID=="DIFFICULTY")){
	if (numPlayers==1){
		if (gameMode=="SURVIVAL"){
			menuID="SURVIVAL1P";
			menuChanged = 1;
		}
	}
	if (numPlayers==2){
		if (gameMode=="SURVIVAL"){
			menuID="SURVIVAL2P";
			menuChanged = 1;
		}
		if (gameMode=="PARTY MODE"){
			menuID="PARTY MODE2P";			
			menuChanged = 1;
		}
	}
	if (numPlayers==3){
		if (gameMode=="SURVIVAL"){
			menuID="SURVIVAL3P";
			menuChanged = 1;
		}
		if (gameMode=="PARTY MODE"){
			menuID="PARTY MODE3P";
			menuChanged = 1;
		}
		
	}

}

if (onePlayer.visible == true){
	onePlayer.x+=50;
	twoPlayer.x+=50;
	Title.x+=50;
	text1.x+=50;
	threePlayer.x+=50;
}
}//is oneplayer < 925?

if ((menuID=="LEVEL OVER" && selector1.visible==true) || menuID=="ROUND OVER" || gameplay==2){
loadMenu();
}
}

function menuRight(){
if (menuID=="LEVEL OVER" && selector1.visible==true){
level++;
if (level==6){chapter++; level=1;}
if (chapter==3){gameMode="SURVIVAL";}
p1deaths = 0;
p2deaths = 0;
p3deaths = 0;
restart();
}
if (menuID=="ROUND OVER"){restart();}

if (menuID!="DIFFICULTY" && menuDirection!="right"){
menuDirection = "right";
if (menuID=="2 PLAYER" && (selector1.y==onePlayer.y+82 || selector1.y==onePlayer.y+246)){
	menuDirection=0;
}
if (menuID=="1 PLAYER" && selector1.y==onePlayer.y+164){
	menuDirection=0;
}
if (menuID=="CHAPTER 3" || menuID=="CHAPTER 4" || menuID=="CHAPTER 5"){
	menuDirection=0;
}
if (menuDirection=="right"){

menuLoaded = 0;
menuChanged = 0;
//GAME STARTERS
if (menuID=="CHAPTER 1" || menuID=="CHAPTER 2" || menuID=="CHAPTER 3" || menuID=="CHAPTER 4" || menuID=="CHAPTER 5"){
restart();
}
if (selector1.y==onePlayer.y && (menuID=="SURVIVAL1P" || menuID=="SURVIVAL2P" || menuID=="SURVIVAL3P")){
restart();
}

if (selector1.y == onePlayer.y && menuID=="TITLE" && menuChanged == 0){
numPlayers = 1;
menuID = "1 PLAYER";
newMenu1p = new menu1p();
addChild(newMenu1p);
newMenu1p.addEventListener(Event.ENTER_FRAME, menu1pFrame);
newMenu1p.x = onePlayer.x + 350;
newMenu1p.y = onePlayer.y;
newMenu1p.title.alpha = 0;
menuChanged = 1;
}
if (selector1.y == onePlayer.y + 82 && menuID=="TITLE" && menuChanged == 0){
numPlayers = 2;
menuID = "2 PLAYER";
newMenu2p = new menu2p();
addChild(newMenu2p);
newMenu2p.addEventListener(Event.ENTER_FRAME, menu2pFrame);
newMenu2p.x = onePlayer.x + 350;
newMenu2p.y = onePlayer.y;
newMenu2p.title.alpha = 0;
menuChanged = 1;
}
if (selector1.y == onePlayer.y + 164 && menuID=="TITLE" && menuChanged == 0){
numPlayers = 3;
menuID = "3 PLAYER";
newMenu2p = new menu2p();
addChild(newMenu2p);
newMenu2p.addEventListener(Event.ENTER_FRAME, menu2pFrame);
newMenu2p.x = onePlayer.x + 350;
newMenu2p.y = onePlayer.y;
newMenu2p.title.alpha = 0;
menuChanged = 1;
}
if (menuID=="OPTIONS" && menuChanged == 0){
menuID = "TITLE";
menuChanged = 1;
}
if (selector1.y == onePlayer.y && (menuID=="1 PLAYER" || menuID=="2 PLAYER" || menuID=="3 PLAYER") && menuChanged == 0){
menuID = "QUEST";
gameMode = "QUEST";
menuChanged = 1;
}
if (selector1.y == onePlayer.y+82 && menuID=="1 PLAYER" && menuChanged == 0){
menuID = "SURVIVAL1P";
gameMode = "SURVIVAL";
menuChanged = 1;
}
if (selector1.y == onePlayer.y+82 && menuID=="2 PLAYER" && menuChanged == 0){
menuID = "PARTY MODE2P";
gameMode = "PARTY MODE";
menuChanged = 1;
}
if (selector1.y == onePlayer.y+82 && menuID=="3 PLAYER" && menuChanged == 0){
menuID = "PARTY MODE3P";
gameMode = "PARTY MODE";
menuChanged = 1;
}
if (selector1.y == onePlayer.y+164 && menuID=="2 PLAYER" && menuChanged == 0){
menuID = "SURVIVAL2P";
gameMode = "SURVIVAL";
menuChanged = 1;
}
if (selector1.y == onePlayer.y+164 && menuID=="3 PLAYER" && menuChanged == 0){
menuID = "SURVIVAL3P";
gameMode = "SURVIVAL";
menuChanged = 1;
}
if (selector1.y == onePlayer.y-82 && menuID=="QUEST" && menuChanged == 0){
menuID = "CHAPTER 1";
chapter = 1;
menuChanged = 1;
}
if (selector1.y == onePlayer.y && menuID=="QUEST" && menuChanged == 0){
menuID = "CHAPTER 2";
chapter = 2;
menuChanged = 1;
}
if (selector1.y == onePlayer.y+82 && menuID=="QUEST" && menuChanged == 0){
menuID = "CHAPTER 3";
chapter = 3;
menuChanged = 1;
}
if (selector1.y == onePlayer.y+164 && menuID=="QUEST" && menuChanged == 0){
menuID = "CHAPTER 4";
chapter = 4;
menuChanged = 1;
}
if (selector1.y == onePlayer.y+246 && menuID=="QUEST" && menuChanged == 0){
menuID = "CHAPTER 5";
chapter = 5;
menuChanged = 1;
}
if (selector1.y == onePlayer.y+82 && menuID=="PARTY MODE2P" && menuChanged == 0){
menuID = "DIFFICULTY";
menuChanged = 1;
}
if (selector1.y == onePlayer.y+82 && menuID=="PARTY MODE3P" && menuChanged == 0){
menuID = "DIFFICULTY";
menuChanged = 1;
}
if (selector1.y == onePlayer.y+82 && menuID=="SURVIVAL1P" && menuChanged == 0){
menuID = "DIFFICULTY";
menuChanged = 1;
}
if (selector1.y == onePlayer.y+82 && menuID=="SURVIVAL2P" && menuChanged == 0){
menuID = "DIFFICULTY";
menuChanged = 1;
}
if (selector1.y == onePlayer.y+82 && menuID=="SURVIVAL3P" && menuChanged == 0){
menuID = "DIFFICULTY";
menuChanged = 1;
}
if (onePlayer.visible == true){
onePlayer.x-=50;
}
}//end if statement is menu direction == right? (TEMPORARY dead end detector)
}//end If statement conditions of if menu is going to go right (has it reached a dead end?)
}//end MENU RIGHT

//menuFrames
function menu1pFrame(e:Event):void{
if (e.target.x<925 && e.target.x>575 && menuDirection == "right"){e.target.title.alpha+=.2;}
if (e.target.x<925 && e.target.x>575 && menuDirection == "left"){e.target.title.alpha-=.2;}
if (e.target.x<575 && e.target.x>225 && menuDirection == "right"){e.target.title.alpha-=.2;}
if (e.target.x<575 && e.target.x>225 && menuDirection == "left"){e.target.title.alpha+=.2;}
if (e.target.x == 575){	e.target.title.alpha = 1;}
if (e.target.x>=925 || e.target.x<=225){e.target.title.alpha = 0;}
if (selector1.x == onePlayer.x || gameplay==1){
e.target.removeEventListener(Event.ENTER_FRAME, menu1pFrame);
removeChild(MovieClip(e.target));
}
if (e.target.x>575){menuLoaded=1;}
e.target.width = 672.15 - Math.abs(e.target.x - 575) * .5;
e.target.height = e.target.width * (430.8 / 672.15);
e.target.x = onePlayer.x + 350;
e.target.y = onePlayer.y;
if (e.target.x < 575){
	e.target.whiteRect.visible = true;
	if(gameMode == "QUEST"){
	e.target.whiteRect.y = onePlayer.y - 298;
	}
	if(gameMode == "SURVIVAL"){
	e.target.whiteRect.y = onePlayer.y - 216;	
	}
	if(gameMode == "HOWTOPLAY"){
	e.target.whiteRect.y = onePlayer.y - 134;
	}
}//<575
else{e.target.whiteRect.visible = false;}
}

function menu2pFrame(e:Event):void{
if (e.target.x<925 && e.target.x>575 && menuDirection == "right"){e.target.title.alpha+=.2;}
if (e.target.x<925 && e.target.x>575 && menuDirection == "left"){e.target.title.alpha-=.2;}
if (e.target.x<575 && e.target.x>225 && menuDirection == "right"){e.target.title.alpha-=.2;}
if (e.target.x<575 && e.target.x>225 && menuDirection == "left"){e.target.title.alpha+=.2;}
if (e.target.x == 575){	e.target.title.alpha = 1;}
if (e.target.x>=925 || e.target.x<=225){e.target.title.alpha = 0;}
if (e.target.x>575){menuLoaded=1;}

e.target.width = 672.15 - Math.abs(e.target.x - 575) * .5;
e.target.height = e.target.width * (512.75 / 672.15);
e.target.x = onePlayer.x + 350;
e.target.y = onePlayer.y;
if (selector1.x == onePlayer.x || gameplay==1){
e.target.removeEventListener(Event.ENTER_FRAME, menu2pFrame);
removeChild(MovieClip(e.target));
}
if (e.target.x < 575){
	e.target.whiteRect.visible = true;
	if(gameMode == "QUEST"){
	e.target.whiteRect.y = onePlayer.y - 298;
	}
	if(gameMode == "PARTY MODE"){
	e.target.whiteRect.y = onePlayer.y - 216;	
	}
	if(gameMode == "SURVIVAL"){
	e.target.whiteRect.y = onePlayer.y - 134;	
	}
	if(gameMode == "MINI-GAMES"){
	e.target.whiteRect.y = onePlayer.y - 52;
	}
}//<575
else{e.target.whiteRect.visible = false;}

}

function menuQuestFrame(e:Event):void{
if (e.target.x<925 && e.target.x>575 && menuDirection == "right"){e.target.title.alpha+=.2;}
if (e.target.x<925 && e.target.x>575 && menuDirection == "left"){e.target.title.alpha-=.2;}
if (e.target.x<575 && e.target.x>225 && menuDirection == "right"){e.target.title.alpha-=.2;}
if (e.target.x<575 && e.target.x>225 && menuDirection == "left"){e.target.title.alpha+=.2;}
if (e.target.x == 575){	e.target.title.alpha = 1;}
if (e.target.x>=925 || e.target.x<=225){e.target.title.alpha = 0;}
if (((menuID=="1 PLAYER" || menuID=="2 PLAYER" || menuID=="3 PLAYER") && selector1.y!=onePlayer.y) || e.target.x>925){
e.target.removeEventListener(Event.ENTER_FRAME, menuQuestFrame);
removeChild(MovieClip(e.target));
}
if (selector1.x == onePlayer.x || gameplay==1){
e.target.removeEventListener(Event.ENTER_FRAME, menuQuestFrame);
removeChild(MovieClip(e.target));
}
if (e.target.x>575){menuLoaded=1;}

e.target.width = 672.15 - Math.abs(e.target.x - 575) * .5;
e.target.height = e.target.width * (552.1 / 672.15);
e.target.x = onePlayer.x + 700;
e.target.y = onePlayer.y;
if (e.target.x < 575){
	e.target.whiteRect.visible = true;
	if(chapter == 1){
	e.target.whiteRect.y = onePlayer.y - 380;
	}
	if(chapter == 2){
	e.target.whiteRect.y = onePlayer.y - 298;
	}
	if(chapter == 3){
	e.target.whiteRect.y = onePlayer.y - 216;	
	}
	if(chapter == 4){
	e.target.whiteRect.y = onePlayer.y - 134;	
	}
	if(chapter == 5){
	e.target.whiteRect.y = onePlayer.y - 52;
	}
}//<575
else{e.target.whiteRect.visible = false;}
}//end Quest

function menuSurvival1pFrame(e:Event):void{
if (e.target.x<925 && e.target.x>575 && menuDirection == "right"){e.target.title.alpha+=.2;}
if (e.target.x<925 && e.target.x>575 && menuDirection == "left"){e.target.title.alpha-=.2;}
if (e.target.x<575 && e.target.x>225 && menuDirection == "right"){e.target.title.alpha-=.2;}
if (e.target.x<575 && e.target.x>225 && menuDirection == "left"){e.target.title.alpha+=.2;}
if (e.target.x == 575){	e.target.title.alpha = 1;}
if (e.target.x>=925 || e.target.x<=225){e.target.title.alpha = 0;}
if ((menuID=="1 PLAYER" && selector1.y!=onePlayer.y+82) || e.target.x>925){
e.target.removeEventListener(Event.ENTER_FRAME, menuSurvival1pFrame);
removeChild(MovieClip(e.target));
}
if (selector1.x == onePlayer.x || gameplay==1){
e.target.removeEventListener(Event.ENTER_FRAME, menuSurvival1pFrame);
removeChild(MovieClip(e.target));
}
if (e.target.x>575){menuLoaded=1;}

e.target.width = 672.15 - Math.abs(e.target.x - 575) * .5;
e.target.height = e.target.width * (340.1 / 672.15);
e.target.x = onePlayer.x + 700;
e.target.y = onePlayer.y;
}//end survival1pFrame

function menuSurvival2pFrame(e:Event):void{
if (e.target.x<925 && e.target.x>575 && menuDirection == "right"){e.target.title.alpha+=.2;}
if (e.target.x<925 && e.target.x>575 && menuDirection == "left"){e.target.title.alpha-=.2;}
if (e.target.x<575 && e.target.x>225 && menuDirection == "right"){e.target.title.alpha-=.2;}
if (e.target.x<575 && e.target.x>225 && menuDirection == "left"){e.target.title.alpha+=.2;}
if (e.target.x == 575){	e.target.title.alpha = 1;}
if (e.target.x>=925 || e.target.x<=225){e.target.title.alpha = 0;}
if (((menuID=="2 PLAYER" || menuID=="3 PLAYER") && selector1.y!=onePlayer.y+164) || e.target.x>925){
e.target.removeEventListener(Event.ENTER_FRAME, menuSurvival2pFrame);
removeChild(MovieClip(e.target));
}
if (selector1.x == onePlayer.x || gameplay==1){
e.target.removeEventListener(Event.ENTER_FRAME, menuSurvival2pFrame);
removeChild(MovieClip(e.target));
}
if (e.target.x>575){menuLoaded=1;}

e.target.width = 672.15 - Math.abs(e.target.x - 575) * .5;
e.target.height = e.target.width * (512.75 / 672.15);
e.target.x = onePlayer.x + 700;
e.target.y = onePlayer.y;
}//end survival2pFrame

function menuParty2pFrame(e:Event):void{
if (e.target.x<925 && e.target.x>575 && menuDirection == "right"){e.target.title.alpha+=.2;}
if (e.target.x<925 && e.target.x>575 && menuDirection == "left"){e.target.title.alpha-=.2;}
if (e.target.x<575 && e.target.x>225 && menuDirection == "right"){e.target.title.alpha-=.2;}
if (e.target.x<575 && e.target.x>225 && menuDirection == "left"){e.target.title.alpha+=.2;}
if (e.target.x == 575){	e.target.title.alpha = 1;}
if (e.target.x>=925 || e.target.x<=225){e.target.title.alpha = 0;}
if (((menuID=="2 PLAYER" || menuID=="3 PLAYER") && selector1.y!=onePlayer.y+82) || e.target.x>925){
e.target.removeEventListener(Event.ENTER_FRAME, menuParty2pFrame);
removeChild(MovieClip(e.target));
}
if (selector1.x == onePlayer.x || gameplay==1){
e.target.removeEventListener(Event.ENTER_FRAME, menuParty2pFrame);
removeChild(MovieClip(e.target));
}
if (e.target.x>575){menuLoaded=1;}

e.target.width = 672.15 - Math.abs(e.target.x - 575) * .5;
e.target.height = e.target.width * (552.1 / 672.15);
e.target.x = onePlayer.x + 700;
e.target.y = onePlayer.y;
}//end party2pFrame

function menuChapterFrame(e:Event):void{
if (e.target.x<925 && e.target.x>575 && menuDirection == "right"){e.target.title.alpha+=.2;}
if (e.target.x<925 && e.target.x>575 && menuDirection == "left"){e.target.title.alpha-=.2;}
if (e.target.x<575 && e.target.x>225 && menuDirection == "right"){e.target.title.alpha-=.2;}
if (e.target.x<575 && e.target.x>225 && menuDirection == "left"){e.target.title.alpha+=.2;}
if (e.target.x == 575){	e.target.title.alpha = 1;}
if (e.target.x>=925 || e.target.x<=225){e.target.title.alpha = 0;}
if (e.target.x==925 && (selector1.y==onePlayer.y-82 && e.target.title.text!="CHAPTER 1")){
e.target.removeEventListener(Event.ENTER_FRAME, menuChapterFrame);
removeChild(MovieClip(e.target));
}
if (e.target.x==925 && (selector1.y==onePlayer.y && e.target.title.text!="CHAPTER 2")){
e.target.removeEventListener(Event.ENTER_FRAME, menuChapterFrame);
removeChild(MovieClip(e.target));
}
if (e.target.x==925 && (selector1.y==onePlayer.y+82 && e.target.title.text!="CHAPTER 3")){
e.target.removeEventListener(Event.ENTER_FRAME, menuChapterFrame);
removeChild(MovieClip(e.target));
}
if (e.target.x==925 && (selector1.y==onePlayer.y+164 && e.target.title.text!="CHAPTER 4")){
e.target.removeEventListener(Event.ENTER_FRAME, menuChapterFrame);
removeChild(MovieClip(e.target));
}
if (e.target.x==925 && (selector1.y==onePlayer.y+246 && e.target.title.text!="CHAPTER 5")){
e.target.removeEventListener(Event.ENTER_FRAME, menuChapterFrame);
removeChild(MovieClip(e.target));
}

if (e.target.x>925){
e.target.removeEventListener(Event.ENTER_FRAME, menuChapterFrame);
removeChild(MovieClip(e.target));
}
if (selector1.x == onePlayer.x || gameplay==1){
e.target.removeEventListener(Event.ENTER_FRAME, menuChapterFrame);
removeChild(MovieClip(e.target));
}
if (e.target.x>575){menuLoaded=1;}

e.target.width = 672.15 - Math.abs(e.target.x - 575) * .5;
e.target.height = e.target.width * (552.1 / 672.15);
e.target.x = onePlayer.x + 1050;
e.target.y = onePlayer.y;

if (chapter==1){
if (Ch1Lv1Perfect==1){e.target.perfect1.visible = true;}else{e.target.perfect1.visible = false;}
if (Ch1Lv1Completed==1){e.target.check1.visible = true;}else{e.target.check1.visible = false;}
if (Ch1Lv2Perfect==1){e.target.perfect2.visible = true;}else{e.target.perfect2.visible = false;}
if (Ch1Lv2Completed==1){e.target.check2.visible = true;}else{e.target.check2.visible = false;}
if (Ch1Lv3Perfect==1){e.target.perfect3.visible = true;}else{e.target.perfect3.visible = false;}
if (Ch1Lv3Completed==1){e.target.check3.visible = true;}else{e.target.check3.visible = false;}
if (Ch1Lv4Perfect==1){e.target.perfect4.visible = true;}else{e.target.perfect4.visible = false;}
if (Ch1Lv4Completed==1){e.target.check4.visible = true;}else{e.target.check4.visible = false;}
if (Ch1Lv5Perfect==1){e.target.perfect5.visible = true;}else{e.target.perfect5.visible = false;}
if (Ch1Lv5Completed==1){e.target.check5.visible = true;}else{e.target.check5.visible = false;}
}
if (chapter==2){
if (Ch2Lv1Perfect==1){e.target.perfect1.visible = true;}else{e.target.perfect1.visible = false;}
if (Ch2Lv1Completed==1){e.target.check1.visible = true;}else{e.target.check1.visible = false;}
if (Ch2Lv2Perfect==1){e.target.perfect2.visible = true;}else{e.target.perfect2.visible = false;}
if (Ch2Lv2Completed==1){e.target.check2.visible = true;}else{e.target.check2.visible = false;}
if (Ch2Lv3Perfect==1){e.target.perfect3.visible = true;}else{e.target.perfect3.visible = false;}
if (Ch2Lv3Completed==1){e.target.check3.visible = true;}else{e.target.check3.visible = false;}
if (Ch2Lv4Perfect==1){e.target.perfect4.visible = true;}else{e.target.perfect4.visible = false;}
if (Ch2Lv4Completed==1){e.target.check4.visible = true;}else{e.target.check4.visible = false;}
if (Ch2Lv5Perfect==1){e.target.perfect5.visible = true;}else{e.target.perfect5.visible = false;}
if (Ch2Lv5Completed==1){e.target.check5.visible = true;}else{e.target.check5.visible = false;}
}
if (chapter==3){
if (Ch3Lv1Perfect==1){e.target.perfect1.visible = true;}else{e.target.perfect1.visible = false;}
if (Ch3Lv1Completed==1){e.target.check1.visible = true;}else{e.target.check1.visible = false;}
if (Ch3Lv2Perfect==1){e.target.perfect2.visible = true;}else{e.target.perfect2.visible = false;}
if (Ch3Lv2Completed==1){e.target.check2.visible = true;}else{e.target.check2.visible = false;}
if (Ch3Lv3Perfect==1){e.target.perfect3.visible = true;}else{e.target.perfect3.visible = false;}
if (Ch3Lv3Completed==1){e.target.check3.visible = true;}else{e.target.check3.visible = false;}
if (Ch3Lv4Perfect==1){e.target.perfect4.visible = true;}else{e.target.perfect4.visible = false;}
if (Ch3Lv4Completed==1){e.target.check4.visible = true;}else{e.target.check4.visible = false;}
if (Ch3Lv5Perfect==1){e.target.perfect5.visible = true;}else{e.target.perfect5.visible = false;}
if (Ch3Lv5Completed==1){e.target.check5.visible = true;}else{e.target.check5.visible = false;}
}
if (chapter==4){
if (Ch4Lv1Perfect==1){e.target.perfect1.visible = true;}else{e.target.perfect1.visible = false;}
if (Ch4Lv1Completed==1){e.target.check1.visible = true;}else{e.target.check1.visible = false;}
if (Ch4Lv2Perfect==1){e.target.perfect2.visible = true;}else{e.target.perfect2.visible = false;}
if (Ch4Lv2Completed==1){e.target.check2.visible = true;}else{e.target.check2.visible = false;}
if (Ch4Lv3Perfect==1){e.target.perfect3.visible = true;}else{e.target.perfect3.visible = false;}
if (Ch4Lv3Completed==1){e.target.check3.visible = true;}else{e.target.check3.visible = false;}
if (Ch4Lv4Perfect==1){e.target.perfect4.visible = true;}else{e.target.perfect4.visible = false;}
if (Ch4Lv4Completed==1){e.target.check4.visible = true;}else{e.target.check4.visible = false;}
if (Ch4Lv5Perfect==1){e.target.perfect5.visible = true;}else{e.target.perfect5.visible = false;}
if (Ch4Lv5Completed==1){e.target.check5.visible = true;}else{e.target.check5.visible = false;}
}
if (chapter==5){
if (Ch5Lv1Perfect==1){e.target.perfect1.visible = true;}else{e.target.perfect1.visible = false;}
if (Ch5Lv1Completed==1){e.target.check1.visible = true;}else{e.target.check1.visible = false;}
if (Ch5Lv2Perfect==1){e.target.perfect2.visible = true;}else{e.target.perfect2.visible = false;}
if (Ch5Lv2Completed==1){e.target.check2.visible = true;}else{e.target.check2.visible = false;}
if (Ch5Lv3Perfect==1){e.target.perfect3.visible = true;}else{e.target.perfect3.visible = false;}
if (Ch5Lv3Completed==1){e.target.check3.visible = true;}else{e.target.check3.visible = false;}
if (Ch5Lv4Perfect==1){e.target.perfect4.visible = true;}else{e.target.perfect4.visible = false;}
if (Ch5Lv4Completed==1){e.target.check4.visible = true;}else{e.target.check4.visible = false;}
if (Ch5Lv5Perfect==1){e.target.perfect5.visible = true;}else{e.target.perfect5.visible = false;}
if (Ch5Lv5Completed==1){e.target.check5.visible = true;}else{e.target.check5.visible = false;}
}
}//end menuChapterFrame

function menuDifficultyFrame(e:Event):void{
if (e.target.x<925 && e.target.x>575 && menuDirection == "right"){e.target.title.alpha+=.2;}
if (e.target.x<925 && e.target.x>575 && menuDirection == "left"){e.target.title.alpha-=.2;}
if (e.target.x<575 && e.target.x>225 && menuDirection == "right"){e.target.title.alpha-=.2;}
if (e.target.x<575 && e.target.x>225 && menuDirection == "left"){e.target.title.alpha+=.2;}
if (e.target.x == 575){	e.target.title.alpha = 1;}
if (e.target.x>=925 || e.target.x<=225){e.target.title.alpha = 0;}

if ((menuID=="SURVIVAL2P" || menuID=="SURVIVAL1P") && selector1.y!=onePlayer.y+82){
e.target.removeEventListener(Event.ENTER_FRAME, menuDifficultyFrame);
removeChild(MovieClip(e.target));
}
if (menuID=="PARTY MODE2P" && selector1.y!=onePlayer.y){
e.target.removeEventListener(Event.ENTER_FRAME, menuDifficultyFrame);
removeChild(MovieClip(e.target));	
}
if (selector1.x == onePlayer.x || e.target.x>925 || gameplay==1){
e.target.removeEventListener(Event.ENTER_FRAME, menuDifficultyFrame);
removeChild(MovieClip(e.target));
}
if (e.target.x>575){menuLoaded=1;}
e.target.width = 672.15 - Math.abs(e.target.x - 575) * .5;
e.target.height = e.target.width * (430.8 / 672.15);
e.target.x = onePlayer.x + 1050;
e.target.y = onePlayer.y;
if (e.target.x != 575){
	e.target.whiteRect.visible = true;
	if(difficulty == "FRIENDLY"){
	e.target.whiteRect.y = onePlayer.y - 298;
	}
	if(difficulty == "MILD"){
	e.target.whiteRect.y = onePlayer.y - 216;	
	}
	if(difficulty == "CRUEL"){
	e.target.whiteRect.y = onePlayer.y - 134;	
	}
}//!575
else{e.target.whiteRect.visible = false;}
}//end menuDifficultyFrame

//gameover function
function gameOver(){
	
gameplay = 0;
timerFireSpawnCounter = timerFireSpawn;
timerFireSpawnEnabled = 0;
timerBhSpawnEnabled = 0;
timerShieldSpawnEnabled = 0;
timerStarSpawnEnabled = 0;
timerGemSpawnEnabled = 0;
timerBigGemSpawnEnabled = 0;
timerLightningSpawnEnabled = 0;
timerHeartSpawnEnabled = 0;
timerIceSpawnEnabled = 0;
timerRandomSpawnEnabled = 0;

counter = 0;
white.width=0;
friend1.invincible = 0;
friend2.invincible = 0;
friend3.invincible = 0;
friend1.notinvince = 1;
friend2.notinvince = 1;
friend3.notinvince = 1;
friend1.lightning = 0;
friend2.lightning = 0;
friend3.lightning = 0;
friend1.notlightning = 1;
friend2.notlightning = 1;
friend3.notlightning = 1;
friend1.shield = 0;
friend2.shield = 0;
friend3.shield = 0;
friend1.ice = 0;
friend2.ice = 0;
friend3.ice = 0;
player1Death.stop();
player2Death.stop();
player3Death.stop();
timerBhSpawnEnabled = 0;
friend1.visible = false;
friend2.visible = false;
friend3.visible = false;
p1Score.visible = false;
p2Score.visible = false;
p3Score.visible = false;
zap1.visible = false;
zap2.visible = false;
zap3.visible = false;

Title.y = 200;
Title.visible = true;

if (gameMode=="QUEST"){
menuID="LEVEL OVER";
menuLevelOver.x = 577.5;
//butt
menuLevelOver.title.visible = true;
menuLevelOver.title.width = 70.9;
menuLevelOver.title.height = 11.4;
menuLevelOver.chapter.visible = false;
menuLevelOver.Perfect.visible = false;
menuLevelOver.Perfect.height = 400;
menuLevelOver.Perfect.width = 400;
menuLevelOver.Perfect.alpha = 0;
menuLevelOver.gemAdd.y = 3;
menuLevelOver.gemAdd.alpha = 0;

menuTotalDeaths = 0;
menuTotalGems = 0;
menuLevelOver.totalGems.x = -1200;
menuLevelOver.p1Gems.x = -1200;
menuLevelOver.p2Gems.x = -1200;
menuLevelOver.p3Gems.x = -1200;
menuLevelOver.totalDeaths.x = -1200;
menuLevelOver.totalDeaths.y = 31;
if (numPlayers>1){menuLevelOver.totalDeaths.y = 170.2;}
menuLevelOver.p1Deaths.x = -1200;
menuLevelOver.p2Deaths.x = -1200;
menuLevelOver.p3Deaths.x = -1200;

menuLevelOver.p1Deaths.visible = false;
menuLevelOver.p2Deaths.visible = false;
menuLevelOver.p3Deaths.visible = false;
menuLevelOver.p1Gems.visible = false;
menuLevelOver.p2Gems.visible = false;
menuLevelOver.p3Gems.visible = false;


menuLevelOver.gemGrandTotal.x = 793;
menuLevelOver.deathGrandTotal.x = 793;
menuLevelOver.mvp.x = 793;

menuLevelOver.friend1.visible = false;
menuLevelOver.friend2.visible = false;
menuLevelOver.friend3.visible = false;

menuLevelOver.friend1.x = 2512;
menuLevelOver.friend1.y = 140;
menuLevelOver.friend2.x = 2512;
menuLevelOver.friend2.y = 140;
menuLevelOver.friend3.x = 2512;
menuLevelOver.friend3.y = 140;

menuLevelOver.rec1.visible = false;
menuLevelOver.button.visible = false;
menuLevelOver.up.visible = false;
menuLevelOver.right.visible = false;
menuLevelOver.left.visible = false;

menuGrandTotalGems = grandTotalGems;
menuGrandTotalDeaths = grandTotalDeaths;

menuLevelOver.chapter.text = "CHAPTER:"+chapter;
menuLevelOver.title.title.text = "Level:"+level+" COMPLETE!!!";
menuLevelOver.totalGems.text = "VALUE OF GEMS COLLECTED: "+"0";
menuLevelOver.p1Gems.text = "BLUE PLAYER GEMS: "+p1ScoreNum;
menuLevelOver.p2Gems.text = "RED PLAYER GEMS: "+p2ScoreNum;
menuLevelOver.p3Gems.text = "GREEN PLAYER GEMS: "+p3ScoreNum;
menuLevelOver.totalDeaths.text = "DEATHS THIS LEVEL: "+"0";
menuLevelOver.p1Deaths.text = "BLUE PLAYER DEATHS: "+p1deaths;
menuLevelOver.p2Deaths.text = "RED PLAYER DEATHS: "+p2deaths;
menuLevelOver.p3Deaths.text = "GREEN PLAYER DEATHS: "+p3deaths;
menuLevelOver.gemGrandTotal.text = "TOTAL GEMS: "+menuGrandTotalGems;
menuLevelOver.deathGrandTotal.text = "TOTAL DEATHS: "+menuGrandTotalDeaths;
selector1.x = 867;
selector1.y = 578;
selector1.uarrow.visible = true;
menuLevelOver.visible = true;

if (chapter==2 && level==1){
if (((p1ScoreNum+p2ScoreNum+p3ScoreNum)-Ch2Lv1Gems)>0){grandTotalGems+=((p1ScoreNum+p2ScoreNum+p3ScoreNum)-Ch2Lv1Gems);} 
}
if (chapter==2 && level==2){
if (((p1ScoreNum+p2ScoreNum+p3ScoreNum)-Ch2Lv2Gems)>0){grandTotalGems+=((p1ScoreNum+p2ScoreNum+p3ScoreNum)-Ch2Lv2Gems);} 
}
if (chapter==2 && level==3){
if (((p1ScoreNum+p2ScoreNum+p3ScoreNum)-Ch2Lv3Gems)>0){grandTotalGems+=((p1ScoreNum+p2ScoreNum+p3ScoreNum)-Ch2Lv3Gems);} 
}
if (chapter==2 && level==4){
if (((p1ScoreNum+p2ScoreNum+p3ScoreNum)-Ch2Lv4Gems)>0){grandTotalGems+=((p1ScoreNum+p2ScoreNum+p3ScoreNum)-Ch2Lv4Gems);} 
}
if (chapter==1 && level==1){
if (((p1ScoreNum+p2ScoreNum+p3ScoreNum)-Ch1Lv1Gems)>0){grandTotalGems+=((p1ScoreNum+p2ScoreNum+p3ScoreNum)-Ch1Lv1Gems);} 
}
if (chapter==1 && level==2){
if (((p1ScoreNum+p2ScoreNum+p3ScoreNum)-Ch1Lv2Gems)>0){grandTotalGems+=((p1ScoreNum+p2ScoreNum+p3ScoreNum)-Ch1Lv2Gems);} 
}
if (chapter==1 && level==3){
if (((p1ScoreNum+p2ScoreNum+p3ScoreNum)-Ch1Lv3Gems)>0){grandTotalGems+=((p1ScoreNum+p2ScoreNum+p3ScoreNum)-Ch1Lv3Gems);} 
}
if (chapter==1 && level==4){
if (((p1ScoreNum+p2ScoreNum+p3ScoreNum)-Ch1Lv4Gems)>0){grandTotalGems+=((p1ScoreNum+p2ScoreNum+p3ScoreNum)-Ch1Lv4Gems);} 
}
if (chapter==1 && level==5){
if (((p1ScoreNum+p2ScoreNum+p3ScoreNum)-Ch1Lv5Gems)>0){grandTotalGems+=((p1ScoreNum+p2ScoreNum+p3ScoreNum)-Ch1Lv5Gems);} 
}
//new level

grandTotalDeaths+=((p1deaths+p2deaths+p3deaths)); 

}

if (gameMode=="SURVIVAL"){
menuID="ROUND OVER";
Title3.y = 400;
Title3.alpha = 1;
Title3.setTextFormat(format91);
	if (highscoreNum <= p2ScoreNum){
		highscoreNum = p2ScoreNum;
	}
	if (highscoreNum <= p3ScoreNum){
		highscoreNum = p3ScoreNum;
	}
	if (highscoreNum <= p1ScoreNum){
		highscoreNum = p1ScoreNum;
	}
	highscore.text = "HIGHSCORE: 0000"+highscoreNum;
	
if (numPlayers == 1){
Title.y = 180;
Title3.y = 100;
Title3.text = "you scored: " + p1ScoreNum;
Title.text = "Rank: F"
if (p1ScoreNum >= 500) {Title.text = "Rank: D"}
if (p1ScoreNum >= 1000) {Title.text = "Rank: C"}
if (p1ScoreNum >= 1500) {Title.text = "Rank: B"}
if (p1ScoreNum >= 2000) {Title.text = "Rank: A"}
if (p1ScoreNum >= 2500) {Title.text = "Rank: super"}
if (p1ScoreNum >= 3000) {Title.text = "Rank: incredible!!!"}
Title.visible = true;
Title3.visible = true;
}//end 1player

if (numPlayers == 2){
Title.alpha=1;
Title.x=(1150/2-Title.width/2);
Title.y = 180;
Title.visible = true;
Title3.y = 100;
if (friend1.alive==1){
Title3.text = "blue is the winner!!!";
player1Wins++;
Title.text = "blue scored: " + p1ScoreNum;
player1TotalScore = player1TotalScore + p1ScoreNum;
}
else{
Title3.text = "red is the winner!!!";
player2Wins++;
Title.text = "red scored: " + p2ScoreNum;
player2TotalScore = player2TotalScore + p2ScoreNum;
}
Title3.visible = true;
text2.y = 300;
text2.x = 0;
text2.width = (1150 / 2);
text2.height = 100;
text2.text = "red wins: " + player2Wins + "\n" + "red total score: " + player2TotalScore;
text2.visible = true;
text3.y = 300;
text3.x = (1150 / 2);
text3.width = (1150 / 2);
text3.height = 100;
text3.text = "blue wins: " + player1Wins + "\n" + "blue total score: " + player1TotalScore;
text3.visible = true;

}//2players

if (numPlayers == 3){
Title.alpha=1;
Title.x=(1150/2-Title.width/2);
Title.y = 180;
Title.visible = true;
Title3.y = 100;
if (friend1.alive == 1){
Title3.text = "blue is the winner!!!";
player1Wins++;
Title.text = "blue scored: " + p1ScoreNum;
player1TotalScore = player1TotalScore + p1ScoreNum;
}
else if (friend2.alive == 1){
Title3.text = "red is the winner!!!";
player2Wins++;
Title.text = "red scored: " + p2ScoreNum;
player2TotalScore = player2TotalScore + p2ScoreNum;
}
else{
Title3.text = "green is the winner!!!";
player3Wins++;
Title.text = "green scored: " + p3ScoreNum;
player3TotalScore = player3TotalScore + p3ScoreNum;
}

Title3.visible = true;
text2.y = 300;
text2.x = 0;
text2.width = (1150 / 3);
text2.height = 100;
text2.text = "red wins: " + player2Wins + "\n" + "red total score: " + player2TotalScore;
text2.visible = true;
text3.y = 300;
text3.x = (1150 * (2/3));
text3.width = (1150 / 3);
text3.height = 100;
text3.text = "blue wins: " + player1Wins + "\n" + "blue total score: " + player1TotalScore;
text3.visible = true;
text4.y = 300;
text4.x = (1150 / 3);
text4.width = (1150 / 3);
text4.height = 100;
text4.text = "green wins: " + player3Wins + "\n" + "green total score: " + player3TotalScore;
text4.visible = true;
}//3players
}
System.gc();
}//end gameover function




function pauseGame(){
if (gameplay==1){

black2.pauseMenu.pauseSelector.uarrow.visible = false;
	
//whiteOutline.visible = true;
text3.setTextFormat(formatSmallText);
//text3.visible = true;
text3.y=500;
text2.x = 200;
text3.x = 500;
black2.visible = true;

gameplay=2;
menuID="PAUSE";
selector1.x = 575;
selector1.y = 600;
//selector1.visible = true;
friend1.stop();
friend2.stop();
friend3.stop();
zap1.stop();
zap2.stop();
zap3.stop();
if (gameMode=="SURVIVAL"){timerFireSpawnEnabled = 0;}
}//gameplay==1

//UNPAUSE
else if (gameplay==2){
black2.visible = false;
whiteOutline.visible = false;
gameplay=1;
menuID=0;
friend1.play();
friend2.play();
friend3.play();
zap1.play();
zap2.play();
zap3.play();
if (gameMode=="SURVIVAL"){timerFireSpawnEnabled = 1;}
}
}//end pause game







stage.addEventListener(KeyboardEvent.KEY_DOWN, fl_KeyboardDownHandler_4);
function fl_KeyboardDownHandler_4(event:KeyboardEvent):void
{
	if (event.keyCode == Keyboard.UP)	{
		friend1.kup = 1;
		if (menuItems == 2 && selector1.y > 298){
		if (gameplay == 0){menuUp();}
		}
		if (menuItems == 3 && selector1.y > 298){
		if (gameplay == 0){menuUp();}
		}
		if (menuItems == 4 && selector1.y > 298){
		if (gameplay == 0){menuUp();}
		}
		if (menuItems == 5 && selector1.y > 216){
		if (gameplay == 0){menuUp();}
		}


	}
	if (event.keyCode == Keyboard.DOWN)	{
		if (menuItems == 2 && selector1.y < 380){
		if (gameplay == 0){menuDown();}
		}
		if (menuItems == 3 && selector1.y < 462){
		if (gameplay == 0){menuDown();}
		}
		if (menuItems == 4 && selector1.y < 544){
		if (gameplay == 0){menuDown();}
		}
		if (menuItems == 5 && selector1.y < 544){
		if (gameplay == 0){menuDown();}
		}
	}
	if (event.keyCode == Keyboard.LEFT)	{	
		friend1.kleft = 1;
		if (gameplay != 1){menuLeft();}
	}

if (event.keyCode == Keyboard.RIGHT){
		friend1.kright = 1;
		if (gameplay == 0){menuRight();}
				if (gameplay==2){pauseGame();}
	}
	if (event.keyCode == Keyboard.DOWN){
		friend1.kdown = 1;
	}
	if (event.keyCode == Keyboard.ENTER)	{
		label1.x+=100;
	}

}
stage.addEventListener(KeyboardEvent.KEY_DOWN, fl_KeyboardDownHandler_5);
function fl_KeyboardDownHandler_5(event:KeyboardEvent):void
{
	if (event.keyCode == Keyboard.W){	
		friend2.kup = 1;
	}

	if (event.keyCode == Keyboard.A){
		friend2.kleft = 1;
	}

	if (event.keyCode == Keyboard.D){	
		friend2.kright = 1;
	}
}

stage.addEventListener(KeyboardEvent.KEY_DOWN, fl_KeyboardDownHandler_6);
function fl_KeyboardDownHandler_6(event:KeyboardEvent):void
{
	if (event.keyCode == Keyboard.U){	
		friend3.kup = 1;
	}

	if (event.keyCode == Keyboard.H){
		friend3.kleft = 1;
	}

	if (event.keyCode == Keyboard.K){	
		friend3.kright = 1;
	}
	if (event.keyCode == Keyboard.ENTER){	
		if (gameplay == 0){
		menuRight();
		}
	}
	if (event.keyCode == Keyboard.P){	
		if (gameplay!=0){
			pauseGame();
		}
	}

	if (event.keyCode == Keyboard.SPACE){	
		if (gameplay==0 && menuID=="ROUND OVER"){
			restart();
		}
	}
	if (event.keyCode == Keyboard.O){	
		if (altControls==0){
			altControls=1;
		}
		else if (altControls==1){
			altControls=0;
		}
	}

}//end keydown Handler


stage.addEventListener(KeyboardEvent.KEY_UP, fl_KeyboardUpHandler_4);
function fl_KeyboardUpHandler_4(event:KeyboardEvent):void
{
	if (event.keyCode == Keyboard.UP)	{
		friend1.kup = 0;
	}
	if (event.keyCode == Keyboard.LEFT)	{	
		friend1.kleft = 0;
	}
	if (event.keyCode == Keyboard.RIGHT){
		friend1.kright = 0;
	}
	if (event.keyCode == Keyboard.DOWN){
		friend1.kdown = 0;
	}
}
stage.addEventListener(KeyboardEvent.KEY_UP, fl_KeyboardUpHandler_5);
function fl_KeyboardUpHandler_5(event:KeyboardEvent):void
{
		if (event.keyCode == Keyboard.W){	
		friend2.kup = 0;
	}
	if (event.keyCode == Keyboard.A){
		friend2.kleft = 0;
	}
	if (event.keyCode == Keyboard.D){	
		friend2.kright = 0;
	}
}

stage.addEventListener(KeyboardEvent.KEY_UP, fl_KeyboardUpHandler_6);
function fl_KeyboardUpHandler_6(event:KeyboardEvent):void
{

	if (event.keyCode == Keyboard.U){	
		friend3.kup = 0;
	}

	if (event.keyCode == Keyboard.H){
		friend3.kleft = 0;
	}

	if (event.keyCode == Keyboard.K){	
		friend3.kright = 0;
	}

}//end keyUp Handler

//restart game
function restart() {
gameplay = 1;
counter = 0;
xrotation = 0;
xheight = 400;
xwidth = 50;
white.width = 0;
friend1.kup = 0;
friend2.kup = 0;
friend3.kup = 0;
friend1.kright = 0;
friend2.kright = 0;
friend3.kright = 0;
friend1.kleft = 0;
friend2.kleft = 0;
friend3.kleft = 0;
friend1.play();
friend2.play();
friend3.play();
zap1.play();
zap2.play();
zap3.play();
friend1.shield = 0;
friend2.shield = 0;
friend3.shield = 0;
friend1.invincible = 0;
friend2.invincible = 0;
friend3.invincible = 0;
friend1.lightning = 0;
friend2.lightning = 0;
friend3.lightning = 0;

//clear menu
Title.visible = false;
Title2.visible = false
Title3.visible = false;
text1.visible = false;
text2.visible = false;
text3.visible = false;
text4.visible = false;
text5.visible = false;
onePlayer.visible = false;
twoPlayer.visible = false;
threePlayer.visible = false;
menuLevelOver.visible = false;

friend1.finished = 0;
friend2.finished = 0;
friend3.finished = 0;
player1Death.stop();
player2Death.stop();
player3Death.stop();
friend1.fall = -15;
friend2.fall = -15;
friend3.fall = -15;
friend1.mspeed = 1.5;
friend2.mspeed = 1.5;
friend3.mspeed = 1.5;
p1ScoreNum = 0;
p2ScoreNum = 0;
p3ScoreNum = 0;

friend1.x = 176;
friend2.x = 176;
friend3.x = 176;
friend1.y = 420;
friend2.y = 470;
friend3.y = 520;
friend1.rotation = 0;
friend2.rotation = 0;
friend3.rotation = 0;
friend1.height = 50;
friend2.height = 50;
friend3.height = 50;
friend1.width = 50;
friend2.width = 50;
friend3.width = 50;
fireSpeed = fireSpeedStandard;
p1Score.visible = true;
Title3.x = 575-Title3.width/2;
timerGemSpawnEnabled = 0;
timerBigGemSpawnEnabled=0;
timerShieldSpawnEnabled=0;
timerFireSpawnEnabled = 0;
timerLightningSpawnEnabled=0;
timerRandomSpawnEnabled=0;
timerStarSpawnEnabled=0;
timerHeartSpawnEnabled=0;
timerIceSpawnEnabled=0;

if (gameMode=="SURVIVAL"){
Title3.text = "SURVIVAL";
timerBigGemSpawnEnabled=1;
timerBigGemSpawnCounter = timerBigGemSpawn;
timerGemSpawnEnabled=1;
timerGemSpawnCounter = timerGemSpawn;
timerShieldSpawnEnabled = 1;
timerShieldSpawnCounter = timerShieldSpawn;
timerFireSpawnEnabled = 1;
timerFireSpawnCounter = 1;
timerFireSpawn = fireInterval;
fireSpeed = fireSpeedStandard;
timerBhSpawnEnabled = 1;
timerBhSpawnCounter = timerBhSpawn;
p1Score.visible = true;
if (numPlayers>1){
p2Score.visible = true;
timerLightningSpawnEnabled=1;
timerRandomSpawnEnabled=1;
timerStarSpawnEnabled=1;
timerHeartSpawnEnabled=1;
timerIceSpawnEnabled=1;
timerHeartSpawnCounter = timerHeartSpawn;
timerRandomSpawnCounter = timerRandomSpawn;
timerLightningSpawnCounter = timerLightningSpawn;
timerStarSpawnCounter = timerStarSpawn;
timerIceSpawnCounter = timerIceSpawn;
}//players>1 (SURVIVAL)
if (numPlayers<2){
p3Score.visible = true;	
}
highscore.visible = true;
}//survival
if (gameMode=="QUEST"){
highscore.visible = true;
highscore.text = "CHAPTER:" + chapter + " LEVEL:" + level;
p1Score.text = "GEMS: "+(p1ScoreNum+p2ScoreNum+p3ScoreNum);
Title2.alpha=1;
Title2.y = 150;
Title2.text = "Chapter"+chapter;
Title2.visible = true;
Title3.text = "Level"+level;
}
Title3.y = 200;
Title3.setTextFormat(formatLevel);
Title3.alpha=1;
Title3.visible = true;

friend1.alpha = 1;
friend1.visible = true;
friend1.alive = 1;
if (numPlayers>1){
friend2.alpha = 1;
friend2.visible = true;
friend2.alive = 1;
if (numPlayers>2){
friend3.alpha = 1;
friend3.visible = true;
friend3.alive = 1;	
}
}
if (numPlayers==1){timerFireSpawn = timerFireSpawn/1.2;}

}//end restart

//Copyright Treat Metcalf 2011