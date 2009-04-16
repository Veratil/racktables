-- This file is intentionally kept in extended INSERT syntax
-- (1 query = N rows) to generate less diff noise on column
-- name change.

INSERT INTO `Attribute` (`id`, `type`, `name`) VALUES
(1,'string','OEM S/N 1'),
(2,'dict','HW type'),
(3,'string','FQDN'),
(4,'dict','SW type'),
(5,'string','SW version'),
(6,'uint','number of ports'),
(7,'float','max. current, Ampers'),
(8,'float','power load, percents'),
(14,'string','contact person'),
(13,'float','max power, Watts'),
(16,'uint','flash memory, MB'),
(17,'uint','DRAM, MB'),
(18,'uint','CPU, MHz'),
(20,'string','OEM S/N 2'),
(21,'string','support contract expiration'),
(22,'string','HW warranty expiration'),
(24,'string','SW warranty expiration'),
(25,'string','UUID');

INSERT INTO `AttributeMap` (`objtype_id`, `attr_id`, `chapter_id`) VALUES
(4,1,0),
(4,2,11),
(4,3,0),
(4,4,13),
(4,14,0),
(4,21,0),
(4,22,0),
(4,25,0),
(4,24,0),
(5,1,0),
(5,2,18),
(6,1,0),
(6,2,19),
(6,20,0),
(7,1,0),
(7,2,17),
(7,3,0),
(7,4,16),
(7,5,0),
(7,14,0),
(7,16,0),
(7,17,0),
(7,18,0),
(7,21,0),
(7,22,0),
(7,24,0),
(8,1,0),
(8,2,12),
(8,3,0),
(8,4,14),
(8,5,0),
(8,14,0),
(8,16,0),
(8,17,0),
(8,18,0),
(8,20,0),
(8,21,0),
(8,22,0),
(8,24,0),
(9,6,0),
(12,1,0),
(12,3,0),
(12,7,0),
(12,8,0),
(12,13,0),
(12,20,0),
(445,1,0),
(445,2,21),
(445,3,0),
(445,5,0),
(445,14,0),
(445,22,0),
(447,1,0),
(447,2,22),
(447,3,0),
(447,5,0),
(447,14,0),
(447,22,0),
(15,2,23),
(798,1,0),
(798,2,24),
(798,3,0),
(798,5,0),
(798,14,0),
(798,16,0),
(798,17,0),
(798,18,0),
(798,20,0),
(798,21,0),
(798,22,0),
(798,24,0),
(965,1,0),
(965,3,0),
(965,2,25);

INSERT INTO `Chapter` (`id`, `sticky`, `name`) VALUES
(11,'no','server models'),
(12,'no','network switch models'),
(13,'no','server OS type'),
(14,'no','switch OS type'),
(1,'yes','RackObjectType'),
(2,'yes','PortType'),
(3,'yes','RackRow'),
(16,'no','router OS type'),
(17,'no','router models'),
(18,'no','disk array models'),
(19,'no','tape library models'),
(21,'no','KVM switch models'),
(22,'no','multiplexer models'),
(23,'no','console models'),
(24,'no','network security models'),
(25,'no','wireless models');

INSERT INTO `PortCompat` (`type1`, `type2`) VALUES
(17,17),
(18,18),
(19,19),
(20,20),
(21,21),
(22,22),
(23,23),
(24,24),
(25,25),
(26,26),
(27,27),
(28,28),
(18,19),
(19,18),
(18,24),
(24,18),
(19,24),
(24,19),
(29,29),
(20,21),
(21,20),
(22,23),
(23,22),
(25,26),
(26,25),
(27,28),
(28,27),
(30,30),
(16,16),
(17,17),
(18,18),
(19,19),
(20,20),
(21,21),
(22,22),
(23,23),
(24,24),
(25,25),
(26,26),
(27,27),
(28,28),
(18,19),
(19,18),
(18,24),
(24,18),
(19,24),
(24,19),
(29,29),
(29,681),
(29,682),
(20,21),
(21,20),
(22,23),
(23,22),
(25,26),
(26,25),
(27,28),
(28,27),
(30,30),
(16,16),
(32,32),
(33,446),
(34,34),
(35,35),
(36,36),
(37,37),
(38,38),
(39,39),
(40,40),
(41,41),
(439,439),
(446,33),
(681,29),
(681,681),
(681,682),
(682,29),
(682,681),
(682,682);

INSERT INTO `Dictionary` (`chapter_id`, `dict_key`, `dict_value`) VALUES
(1,1,'BlackBox'),
(1,2,'PDU'),
(1,3,'Shelf'),
(1,4,'Server'),
(1,5,'DiskArray'),
(1,6,'TapeLibrary'),
(1,7,'Router'),
(1,8,'Network switch'),
(1,9,'PatchPanel'),
(1,10,'CableOrganizer'),
(1,11,'spacer'),
(1,12,'UPS'),
(1,13,'Modem'),
(1,14,'MediaConverter'),
(1,15,'console'),
(2,16,'power plug'),
(2,17,'BNC/10Base2'),
(2,18,'RJ-45/10Base-T'),
(2,19,'RJ-45/100Base-TX'),
(2,20,'SC/100Base-FX'),
(2,21,'LC/100Base-FX'),
(2,22,'SC/100Base-SX'),
(2,23,'LC/100Base-SX'),
(2,24,'RJ-45/1000Base-T'),
(2,25,'SC/1000Base-SX'),
(2,26,'LC/1000Base-SX'),
(2,27,'SC/1000Base-LX'),
(2,28,'LC/1000Base-LX'),
(2,29,'async serial (RJ-45)'),
(2,30,'LC/10GBase-SR'),
(2,31,'veth (Xen bridge)'),
(2,32,'sync serial'),
(2,33,'KVM (host)'),
(2,34,'1000Base-ZX'),
(2,35,'10GBase-ER'),
(2,36,'10GBase-LR'),
(2,37,'10GBase-LRM'),
(2,38,'10GBase-ZR'),
(2,39,'10GBase-LX4'),
(2,40,'10GBase-CX4'),
(2,41,'10GBase-Kx'),
(2,439,'dry contact'),
(2,440,'unknown'),
(1,445,'KVM switch'),
(2,446,'KVM (console)'),
(1,447,'multiplexer'),
(2,681,'async serial (DB-9)'),
(2,682,'async serial (DB-25)'),
(1,798,'Network security'),
(1,965,'Wireless');

INSERT INTO `Config` (varname, varvalue, vartype, emptyok, is_hidden, description) VALUES
('color_F','8fbfbf','string','no','yes','HSV: 180-25-75. Free atoms, they are available for allocation to objects.'),
('color_A','bfbfbf','string','no','yes','HSV: 0-0-75. Absent atoms.'),
('color_U','bf8f8f','string','no','yes','HSV: 0-25-75. Unusable atoms. Some problems keep them from being free.'),
('color_T','408080','string','no','yes','HSV: 180-50-50. Taken atoms, object_id should be set for such.'),
('color_Th','80ffff','string','no','yes','HSV: 180-50-100. Taken atoms with highlight. They are not stored in the database and are only used for highlighting.'),
('color_Tw','804040','string','no','yes','HSV: 0-50-50. Taken atoms with object problem. This is detected at runtime.'),
('color_Thw','ff8080','string','no','yes','HSV: 0-50-100. An object can be both current and problematic. We run highlightObject() first and markupObjectProblems() second.'),
('default_port_type','24','uint','no','no','Default port type'),
('MASSCOUNT','15','uint','no','no','&quot;Fast&quot; form is this many records tall'),
('MAXSELSIZE','30','uint','no','no','&lt;SELECT&gt; lists height'),
('enterprise','MyCompanyName','string','no','no','Organization name'),
('ROW_SCALE','2','uint','no','no','Picture scale for rack row display'),
('PORTS_PER_ROW','12','uint','no','no','Ports per row in VLANs tab'),
('IPV4_ADDRS_PER_PAGE','256','uint','no','no','IPv4 addresses per page'),
('DEFAULT_RACK_HEIGHT','42','uint','yes','no','Default rack height'),
('DEFAULT_SLB_VS_PORT','','uint','yes','no','Default port of SLB virtual service'),
('DEFAULT_SLB_RS_PORT','','uint','yes','no','Default port of SLB real server'),
('DETECT_URLS','no','string','yes','no','Detect URLs in text fields'),
('RACK_PRESELECT_THRESHOLD','1','uint','no','no','Rack pre-selection threshold'),
('DEFAULT_IPV4_RS_INSERVICE','no','string','no','no','Inservice status for new SLB real servers'),
('AUTOPORTS_CONFIG','4 = 1*33*kvm + 2*24*eth%u;15 = 1*446*kvm','string','yes','no','AutoPorts configuration'),
('DEFAULT_OBJECT_TYPE','4','uint','yes','no','Default object type for new objects'),
('SHOW_EXPLICIT_TAGS','yes','string','no','no','Show explicit tags'),
('SHOW_IMPLICIT_TAGS','yes','string','no','no','Show implicit tags'),
('SHOW_AUTOMATIC_TAGS','no','string','no','no','Show automatic tags'),
('IPV4_AUTO_RELEASE','1','uint','no','no','Auto-release IPv4 addresses on allocation'),
('SHOW_LAST_TAB','no','string','yes','no','Remember last tab shown for each page'),
('EXT_IPV4_VIEW','yes','string','no','no','Extended IPv4 view'),
('TREE_THRESHOLD','25','uint','yes','no','Tree view auto-collapse threshold'),
('IPV4_JAYWALK','no','string','no','no','Enable IPv4 address allocations w/o covering network'),
('ADDNEW_AT_TOP','yes','string','no','no','Render "add new" line at top of the list'),
('IPV4_TREE_SHOW_USAGE','yes','string','no','no','Show address usage in IPv4 tree'),
('PREVIEW_TEXT_MAXCHARS','10240','uint','yes','no','Max chars for text file preview'),
('PREVIEW_TEXT_ROWS','25','uint','yes','no','Rows for text file preview'),
('PREVIEW_TEXT_COLS','80','uint','yes','no','Columns for text file preview'),
('PREVIEW_IMAGE_MAXPXS','320','uint','yes','no','Max pixels per axis for image file preview'),
('VENDOR_SIEVE','','string','yes','no','Vendor sieve configuration'),
('IPV4LB_LISTSRC','{$typeid_4}','string','yes','no','List source: IPv4 load balancers'),
('IPV4OBJ_LISTSRC','{$typeid_4} or {$typeid_7} or {$typeid_8} or {$typeid_12} or {$typeid_445} or {$typeid_447}','string','yes','no','List source: IPv4-enabled objects'),
('IPV4NAT_LISTSRC','{$typeid_4} or {$typeid_7} or {$typeid_8}','string','yes','no','List source: IPv4 NAT performers'),
('ASSETWARN_LISTSRC','{$typeid_4} or {$typeid_7} or {$typeid_8}','string','yes','no','List source: object, for which asset tag should be set'),
('NAMEWARN_LISTSRC','{$typeid_4} or {$typeid_7} or {$typeid_8}','string','yes','no','List source: object, for which common name should be set'),
('RACKS_PER_ROW','12','unit','yes','no','Racks per row'),
('DB_VERSION','0.17.0','string','no','yes','Database version.');

INSERT INTO `Script` VALUES ('RackCode','allow {$userid_1}');
