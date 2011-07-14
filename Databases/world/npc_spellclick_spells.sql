
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
DROP TABLE IF EXISTS `npc_spellclick_spells`;
CREATE TABLE `npc_spellclick_spells` (
  `npc_entry` int(10) unsigned NOT NULL COMMENT 'reference to creature_template',
  `spell_id` int(10) unsigned NOT NULL COMMENT 'spell which should be casted ',
  `quest_start` mediumint(8) unsigned NOT NULL COMMENT 'reference to quest_template',
  `quest_start_active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `quest_end` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `cast_flags` tinyint(3) unsigned NOT NULL COMMENT 'first bit defines caster: 1=player, 0=creature; second bit defines target, same mapping as caster bit',
  `aura_required` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'player without aura cant click',
  `aura_forbidden` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'player with aura cant click',
  `user_type` smallint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'relation with summoner: 0-no 1-friendly 2-raid 3-party player can click'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='CTDB Npc Spells on click';

LOCK TABLES `npc_spellclick_spells` WRITE;
/*!40000 ALTER TABLE `npc_spellclick_spells` DISABLE KEYS */;
INSERT INTO `npc_spellclick_spells` VALUES (28389,51592,12605,1,12605,1,0,0,0),(28389,51593,12605,1,12605,3,0,0,0),(28833,52447,12701,1,12701,1,0,0,0),(28782,52280,12687,1,12687,1,0,0,0),(29856,55363,12643,1,12643,2,0,0,0),(29856,55363,12629,1,12629,2,0,0,0),(28202,50927,12527,1,12527,2,0,0,0),(28202,50926,12527,1,12527,1,0,0,0),(28607,52263,12680,1,12680,1,0,0,0),(28606,52263,12680,1,12680,1,0,0,0),(28605,52263,12680,1,12680,1,0,0,0),(29501,54575,0,0,0,3,0,0,0),(29488,54568,12670,1,0,3,0,0,0),(29912,55479,0,0,0,3,0,0,0),(31897,60123,0,0,0,2,0,7001,2),(33143,62399,0,0,0,0,0,0,0),(28162,61286,12519,1,12519,2,0,0,0),(28162,39996,12519,1,12519,1,0,0,0),(26200,61286,11960,1,11960,2,0,0,0),(26200,39996,11960,1,11960,1,0,0,0),(28203,50918,12527,1,12527,1,0,0,0),(28203,50919,12527,1,12527,2,0,0,0),(35433,46598,0,0,0,1,0,0,0),(35431,46598,0,0,0,1,0,0,0),(35419,68503,0,0,0,1,0,0,0),(35413,60968,0,0,0,1,0,0,0),(33843,63792,13679,1,13679,1,0,0,0),(33842,63791,13680,1,13680,1,0,0,0),(26421,47575,12096,1,12096,1,0,0,0),(26421,47575,12092,1,12092,1,0,0,0),(28161,51961,12702,1,12702,1,0,0,0),(28161,51961,12532,1,12532,1,0,0,0),(24896,50400,11509,1,11509,3,0,0,0),(50047,93072,28812,1,0,1,0,0,0),(50047,93072,28813,1,0,1,0,0,0),(35905,63151,0,0,0,1,0,0,0),(50047,93072,28811,1,0,1,0,0,0),(50047,93072,28810,1,0,1,0,0,0),(50047,93072,28808,1,0,1,0,0,0),(50047,93072,28809,1,0,1,0,0,0),(50047,93072,28806,1,0,1,0,0,0),(35905,63151,0,0,0,1,0,0,0),(29929,58961,0,0,0,1,0,0,0),(38412,58961,0,0,0,1,0,0,0),(38542,58961,0,0,0,1,0,0,0),(41327,58961,0,0,0,1,0,0,0),(42175,58961,0,0,0,1,0,0,0),(44579,58961,0,0,0,1,0,0,0),(44731,58961,0,0,0,1,0,0,0),(44764,58961,0,0,0,1,0,0,0),(46085,58961,0,0,0,1,0,0,0),(46165,58961,0,0,0,1,0,0,0),(46411,58961,0,0,0,1,0,0,0),(47403,58961,0,0,0,1,0,0,0),(47404,58961,0,0,0,1,0,0,0),(47814,58961,0,0,0,1,0,0,0),(47820,58961,0,0,0,1,0,0,0),(47821,58961,0,0,0,1,0,0,0),(47822,58961,0,0,0,1,0,0,0),(48266,58961,0,0,0,1,0,0,0),(48341,58961,0,0,0,1,0,0,0),(48342,58961,0,0,0,1,0,0,0),(48343,58961,0,0,0,1,0,0,0),(29929,58961,0,0,0,1,0,0,0),(38412,58961,0,0,0,1,0,0,0),(38542,58961,0,0,0,1,0,0,0),(41327,58961,0,0,0,1,0,0,0),(42175,58961,0,0,0,1,0,0,0),(44579,58961,0,0,0,1,0,0,0),(44731,58961,0,0,0,1,0,0,0),(44764,58961,0,0,0,1,0,0,0),(46085,58961,0,0,0,1,0,0,0),(46165,58961,0,0,0,1,0,0,0),(46411,58961,0,0,0,1,0,0,0),(47403,58961,0,0,0,1,0,0,0),(47404,58961,0,0,0,1,0,0,0),(47814,58961,0,0,0,1,0,0,0),(47820,58961,0,0,0,1,0,0,0),(47821,58961,0,0,0,1,0,0,0),(47822,58961,0,0,0,1,0,0,0),(48266,58961,0,0,0,1,0,0,0),(48341,58961,0,0,0,1,0,0,0),(48342,58961,0,0,0,1,0,0,0),(48343,58961,0,0,0,1,0,0,0),(44427,82992,0,0,0,1,0,0,0),(44429,67001,0,0,0,1,0,0,0),(33842,63791,13829,1,0,3,0,0,0),(33842,63791,13839,1,0,3,0,0,0),(33842,63791,13838,1,0,3,0,0,0),(33843,63792,13828,1,0,3,0,0,0),(33843,63792,13837,1,0,3,0,0,0),(33843,63792,13835,1,0,3,0,0,0),(35421,68503,0,0,0,1,0,0,0),(35415,66245,0,0,0,1,0,0,0),(33217,63151,0,0,0,1,0,0,0),(26191,46978,11956,1,11956,1,0,0,0),(26200,46167,11960,1,11960,1,0,0,0),(33519,63163,0,0,0,1,0,0,0),(27587,49078,12326,1,12326,1,0,0,0),(33844,63151,0,0,0,1,0,0,0),(33845,63151,0,0,0,1,0,0,0),(27850,60968,0,0,0,3,0,0,0),(33320,63151,0,0,0,1,0,0,0),(27881,60968,0,0,0,1,0,0,0),(28162,51026,12519,1,12519,1,0,0,0),(30645,57612,0,0,0,1,0,0,0),(28094,60968,0,0,0,1,0,0,0),(30585,57418,0,0,0,1,0,0,0),(30564,57401,0,0,0,1,0,0,0),(30470,56839,0,0,0,1,0,0,0),(30468,56795,0,0,0,1,0,0,0),(28782,52280,12687,1,12687,3,0,0,0),(29918,54301,0,0,0,1,0,0,0),(28887,52447,12701,1,12701,1,0,0,0),(29488,54568,12670,1,0,3,0,0,0),(29501,54575,0,0,0,3,0,0,0),(29358,46598,0,0,0,1,0,0,0),(29598,54768,12851,1,12851,1,0,0,0),(29708,43671,12856,1,12856,1,0,0,0),(29856,55364,12629,1,12629,1,0,0,0),(29856,55364,12643,1,12643,1,0,0,0),(30123,55957,12967,1,12967,1,0,0,0),(30236,46598,13086,1,13086,1,0,0,0),(30272,61286,13071,1,13071,2,0,0,0),(30500,56679,13045,1,13045,1,0,0,0),(29679,54952,0,0,0,1,0,0,0),(29460,54513,0,0,0,1,0,0,0),(29414,18277,0,0,0,1,0,0,0),(27755,49459,0,0,0,2,0,0,0),(32788,57539,13075,1,0,1,0,0,1),(32790,57654,13073,1,0,1,0,0,1),(26421,47575,12092,1,12092,1,0,0,0),(26421,47575,12096,1,12096,1,0,0,0),(28203,50918,12527,1,12527,1,0,0,0),(28161,51961,12702,1,12702,1,0,0,0),(28161,51961,12532,1,12532,1,0,0,0),(24896,50400,11509,1,11509,3,0,0,0),(36557,67830,0,0,0,0,0,0,0),(29912,55479,0,0,0,3,0,0,0),(31897,60123,0,0,0,2,0,7001,2),(31883,60123,0,0,0,2,0,0,2),(31893,60123,0,0,0,2,0,0,2),(31894,60123,0,0,0,2,0,0,2),(31895,60123,0,0,0,2,0,0,2),(31896,60123,0,0,0,2,0,0,2),(33143,62399,0,0,0,0,0,0,0),(28389,51593,12605,1,12605,3,0,0,0),(28389,51592,12605,1,12605,1,0,0,0),(28782,52349,12687,1,12687,3,0,0,0),(29856,55363,12643,1,12643,2,0,0,0),(29856,55363,12629,1,12629,2,0,0,0),(28202,50927,12527,1,12527,2,0,0,0),(28202,50926,12527,1,12527,1,0,0,0),(27756,49463,0,0,0,2,0,0,0),(28864,52589,0,0,0,1,0,0,0),(28817,52462,0,0,0,1,0,0,0),(28162,61286,12519,1,12519,2,0,0,0),(28162,39996,12519,1,12519,1,0,0,0),(26200,61286,11960,1,11960,2,0,0,0),(26200,39996,11960,1,11960,1,0,0,0),(28203,50919,12527,1,12527,2,0,0,0),(26477,61832,11999,1,12000,0,0,0,0),(26477,61832,12000,1,12000,0,0,0,0),(28670,53173,0,0,0,1,0,0,0),(34125,63215,13847,1,13847,1,0,0,0),(32370,59724,13305,1,13305,1,0,0,0),(40305,46598,0,0,0,1,0,0,0),(39715,74204,25285,1,25285,1,0,0,0),(39716,74203,25289,1,25289,1,0,0,0),(39717,74205,25295,1,25295,1,0,0,0),(25841,46166,11795,1,0,3,0,0,0),(25841,46362,11887,1,0,3,0,0,0),(33843,63792,13667,0,0,1,62853,0,0),(33842,63791,13668,0,0,1,62853,0,0),(33800,62774,13684,0,0,1,62853,0,0),(33799,62783,13691,0,0,1,62853,0,0),(33798,62787,13695,0,0,1,62853,0,0),(33796,62784,13693,0,0,1,62853,0,0),(33795,62779,13685,0,0,1,62853,0,0),(33794,62782,13689,0,0,1,62853,0,0),(33793,62780,13688,0,0,1,62853,0,0),(33792,62785,13694,0,0,1,62853,0,0),(33791,62786,13696,0,0,1,62853,0,0),(33790,62781,13690,0,0,1,62853,0,0),(33870,63663,13664,1,1,1,62853,0,0),(38430,70766,0,0,0,3,0,0,0),(37945,70766,0,0,0,3,0,0,0),(29598,54768,12851,1,12851,3,0,0,0),(28669,52190,0,0,0,1,0,0,0),(33498,63126,13654,1,13654,3,0,0,0),(34125,63215,13851,1,13851,1,0,0,0),(34125,63215,13852,1,13852,1,0,0,0),(34125,63215,13854,1,13854,1,0,0,0),(34125,63215,13855,1,13855,1,0,0,0),(34125,63215,13856,1,13856,1,0,0,0),(34125,63215,13857,1,13857,1,0,0,0),(34125,63215,13858,1,13858,1,0,0,0),(34125,63215,13859,1,13859,1,0,0,0),(34125,63215,13860,1,13860,1,0,0,0),(34125,63215,13861,1,13861,1,0,0,0),(34125,63215,13862,1,13862,1,0,0,0),(34125,63215,13863,1,13863,1,0,0,0),(34125,63215,13864,1,13864,1,0,0,0),(29598,54768,0,1,12856,1,0,0,0),(28192,50860,0,0,0,1,0,0,0),(28061,50557,0,0,0,1,0,0,0),(27924,50007,0,0,0,1,0,0,0),(35273,68503,0,0,0,1,0,0,0),(34775,66245,0,0,0,1,0,0,0),(34935,43671,0,0,0,1,0,0,0),(27629,49207,0,0,0,1,0,0,0),(34944,68458,0,0,0,1,0,0,0),(33109,62309,0,0,0,1,0,0,0),(33062,65030,0,0,0,1,0,0,0),(33067,65031,0,0,0,1,0,0,0),(33060,65031,0,0,0,1,0,0,0),(28319,46598,0,0,0,1,0,0,0),(28312,46598,0,0,0,1,0,0,0),(28366,60962,0,0,0,1,0,0,0),(32629,46598,0,0,0,1,0,0,0),(30066,56678,0,0,0,1,0,0,0),(28833,52447,0,0,0,1,0,0,0),(28607,52263,0,0,0,1,0,0,0),(28606,52263,0,0,0,1,0,0,0),(34944,68458,0,0,0,1,0,0,0),(30234,46598,0,0,0,1,0,0,0),(28605,52263,0,0,0,1,0,0,0),(27996,50343,0,0,0,1,0,0,0),(27714,49584,0,0,0,1,0,0,0),(27496,48881,0,0,0,1,0,0,0),(26523,48296,0,0,0,1,0,0,0),(26813,47424,0,0,0,1,0,0,0),(30403,56699,0,0,0,1,0,0,0),(29414,18277,0,0,0,1,0,0,0),(34120,55089,0,0,0,1,0,0,0),(28851,52600,0,0,0,1,0,0,0),(27626,49138,0,0,0,1,0,0,0),(29709,55029,0,0,0,1,0,0,0),(29602,54908,0,0,0,1,0,0,0),(30564,57401,0,0,0,1,0,0,0),(29929,58961,0,0,0,1,0,0,0),(32286,61666,0,0,0,1,0,0,0),(33324,63151,0,0,0,1,0,0,0),(33321,63151,0,0,0,1,0,0,0),(33316,63151,0,0,0,1,0,0,0),(40725,75953,0,0,0,1,0,0,0),(33319,63151,0,0,0,1,0,0,0),(33317,63151,0,0,0,1,0,0,0),(27692,49427,0,0,0,2,0,0,0),(33357,75648,0,0,0,1,0,0,0),(32627,60968,0,0,0,1,0,0,0),(27894,60682,0,0,0,1,0,0,0),(28781,60683,0,0,0,1,0,0,0),(30337,43671,13069,1,13069,1,0,0,0),(30895,46598,0,0,0,1,0,0,0),(36558,67830,0,0,0,1,0,0,0),(35644,67830,0,0,0,1,0,0,0),(28614,46598,0,0,0,1,0,0,0),(29555,47020,0,0,0,1,0,0,0),(29433,47020,0,0,0,1,0,0,0),(25460,46598,0,0,0,1,0,0,0),(29625,46598,0,0,0,1,0,0,0),(30330,46598,0,0,0,1,0,0,0),(32189,46598,0,0,0,1,0,0,0),(29351,46598,0,0,0,1,0,0,0),(33909,65343,0,0,0,0,0,0,0),(33687,46598,0,0,0,1,0,0,0),(35427,43671,0,0,0,1,0,0,0),(35429,68458,0,0,0,1,0,0,0),(37626,46598,0,0,0,1,0,0,0),(37627,46598,0,0,0,1,0,0,0),(37636,46598,0,0,0,1,0,0,0),(28018,46598,0,0,0,1,0,0,0),(27241,46598,0,0,0,1,0,0,0),(24750,46598,0,0,0,1,0,0,0),(28222,52082,0,0,0,1,0,0,0),(29563,56795,12983,1,1,2,0,0,0),(31269,46598,0,0,0,1,0,0,0),(31269,46598,0,0,0,1,0,0,0),(30228,56678,0,0,0,1,0,0,0),(30174,46598,0,0,0,1,0,0,0),(30013,43671,0,0,0,1,0,0,0),(29500,46598,0,0,0,1,0,0,0),(28054,50556,0,0,0,1,0,0,0),(27761,43671,0,0,0,1,0,0,0),(26572,46598,0,0,0,1,0,0,0),(37636,46598,0,0,0,1,0,0,0),(37627,46598,0,0,0,1,0,0,0),(37626,46598,0,0,0,1,0,0,0),(30936,46598,0,0,0,1,0,0,0),(35429,68458,0,0,0,1,0,0,0),(35427,43671,0,0,0,1,0,0,0),(35421,68503,0,0,0,1,0,0,0),(35415,66245,0,0,0,1,0,0,0),(25765,43671,0,0,0,1,0,0,0),(24418,43768,0,0,0,3,0,0,0),(33669,46598,0,0,0,1,0,0,0),(34003,46598,0,0,0,1,0,0,0),(35634,46598,0,0,0,1,0,0,0),(35641,46598,0,0,0,1,0,0,0),(35640,46598,0,0,0,1,0,0,0),(35635,46598,0,0,0,1,0,0,0),(35638,46598,0,0,0,1,0,0,0),(35636,46598,0,0,0,1,0,0,0),(34658,46598,0,0,0,1,0,0,0),(35768,46598,0,0,0,1,0,0,0),(35633,46598,0,0,0,1,0,0,0),(35637,46598,0,0,0,1,0,0,0),(33214,46598,0,0,0,1,0,0,0),(36678,46598,0,0,0,1,0,0,0),(34003,46598,0,0,0,1,0,0,0),(33113,46598,0,0,0,1,0,0,0),(24418,46598,0,0,0,1,0,0,0),(33322,63151,0,0,0,1,0,0,0),(33323,63151,0,0,0,1,0,0,0),(33318,63151,0,0,0,1,0,0,0),(33782,63151,0,0,0,1,0,0,0),(34045,65030,0,0,0,1,0,0,0),(32796,60683,0,0,0,1,0,0,0),(33778,43671,0,0,0,1,0,0,0),(32795,60682,0,0,0,1,0,0,0),(27258,48365,0,0,0,1,0,0,0),(31748,46598,0,0,0,1,0,0,0),(30021,55785,0,0,0,3,0,0,0),(27661,48365,0,0,0,1,0,0,0),(25743,46260,0,0,0,1,0,0,0),(31862,61466,0,0,0,1,0,0,0),(31861,61466,0,0,0,1,0,0,0),(32633,61424,0,0,0,1,0,0,0),(35491,47020,0,0,0,1,0,0,0),(28009,47020,0,0,0,1,0,0,0),(28451,47020,0,0,0,1,0,0,0),(25968,47020,0,0,0,1,0,0,0),(38431,47020,0,0,0,1,0,0,0),(38585,47020,0,0,0,1,0,0,0),(38586,47020,0,0,0,1,0,0,0),(39860,47020,0,0,0,1,0,0,0),(27061,46598,0,0,0,1,0,0,0),(26477,61286,12000,1,12000,2,0,0,0),(26477,61286,11999,1,11999,2,0,0,0),(26477,47096,12000,1,12000,2,0,0,0),(26477,47096,11999,1,11999,2,0,0,0),(30248,61421,0,0,0,0,0,0,0),(40176,74905,25444,1,25444,3,0,0,0),(40176,74904,25444,1,25444,1,0,0,0),(25596,45875,11690,1,11690,0,0,0,0),(28379,51658,12607,1,12607,0,0,0,0),(38248,71462,0,0,0,1,0,71443,2),(38186,70766,0,0,0,3,0,0,0),(38429,70766,0,0,0,3,0,0,0),(29912,55479,0,0,0,3,0,0,0),(32640,61424,0,0,0,1,0,0,0),(28887,52447,12701,1,12701,1,0,0,0),(31857,60078,0,0,0,0,0,0,0),(30021,46598,0,0,0,1,0,0,0),(39714,74205,0,0,0,1,0,0,0),(33909,65343,0,0,0,0,0,0,0),(32930,65343,0,0,0,0,0,0,0),(29698,46598,0,0,0,1,0,0,0),(29931,46598,0,0,0,1,0,0,0),(30936,46598,0,0,0,1,0,0,0),(30204,46598,0,0,0,1,0,0,0),(33299,47020,0,0,0,1,0,0,0),(36794,46598,0,0,0,1,0,0,0),(36891,46598,0,0,0,1,0,0,0),(36896,46598,0,0,0,1,0,0,0),(38500,46598,0,0,0,1,0,0,0),(36476,46598,0,0,0,1,0,0,0),(36661,46598,0,0,0,1,0,0,0),(35491,47020,0,0,0,1,0,0,0),(28009,47020,0,0,0,1,0,0,0),(28451,47020,0,0,0,1,0,0,0),(25968,47020,0,0,0,1,0,0,0),(38431,47020,0,0,0,1,0,0,0),(38585,47020,0,0,0,1,0,0,0),(38586,47020,0,0,0,1,0,0,0),(38431,47020,0,0,0,1,0,0,0),(38585,47020,0,0,0,1,0,0,0),(38586,47020,0,0,0,1,0,0,0),(39860,47020,0,0,0,1,0,0,0),(33418,47020,0,0,0,1,0,0,0),(33409,47020,0,0,0,1,0,0,0),(33300,47020,0,0,0,1,0,0,0),(33408,47020,0,0,0,1,0,0,0),(33301,47020,0,0,0,1,0,0,0),(33414,47020,0,0,0,1,0,0,0),(33297,47020,0,0,0,1,0,0,0),(33416,47020,0,0,0,1,0,0,0),(33298,47020,0,0,0,1,0,0,0),(33843,63792,13679,1,13686,1,0,0,0),(33842,63791,13680,1,13687,1,0,0,0),(27755,46598,0,0,0,1,0,0,0),(27756,46598,0,0,0,1,0,0,0),(27692,46598,0,0,0,1,0,0,0),(50047,93072,29082,1,0,1,0,0,0),(50047,93072,29082,1,0,1,0,0,0),(50047,93072,29082,1,0,1,0,0,0),(36756,69261,14469,1,14469,0,0,0,0);
/*!40000 ALTER TABLE `npc_spellclick_spells` ENABLE KEYS */;
UNLOCK TABLES;
DELIMITER ;;
DELIMITER ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
