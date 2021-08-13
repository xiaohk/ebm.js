(module
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_=>_f64 (func (param i32 i32) (result f64)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_=>_f64 (func (param i32) (result f64)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_f64_=>_i32 (func (param i32 f64) (result i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $f64_=>_i32 (func (param f64) (result i32)))
 (type $i32_i32_f64_=>_none (func (param i32 i32 f64)))
 (type $f64_=>_f64 (func (param f64) (result f64)))
 (type $i32_f64_=>_none (func (param i32 f64)))
 (type $i32_i32_i32_i32_i32_i32_f64_i32_i32_i32_i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32 i32 i32 f64 i32 i32 i32 i32 i32 i32 i32) (result i32)))
 (type $i32_i32_f64_=>_i32 (func (param i32 i32 f64) (result i32)))
 (type $i64_i32_i64_i32_i64_i32_=>_i32 (func (param i64 i32 i64 i32 i64 i32) (result i32)))
 (type $f64_i32_=>_f64 (func (param f64 i32) (result f64)))
 (type $f64_f64_=>_f64 (func (param f64 f64) (result f64)))
 (type $i32_i32_f64_f64_f64_f64_f64_=>_none (func (param i32 i32 f64 f64 f64 f64 f64)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "consoleBindings" "_log" (func $~lib/as-console/index/_log (param i32)))
 (import "env" "trace" (func $~lib/builtins/trace (param i32 i32 f64 f64 f64 f64 f64)))
 (global $assembly/ebm/Int32Array_ID i32 (i32.const 3))
 (global $assembly/ebm/Int32Array2D_ID i32 (i32.const 4))
 (global $assembly/ebm/Float64Array_ID i32 (i32.const 5))
 (global $assembly/ebm/Float64Array2D_ID i32 (i32.const 6))
 (global $assembly/ebm/Float64Array3D_ID i32 (i32.const 7))
 (global $assembly/ebm/StringArray_ID i32 (i32.const 8))
 (global $assembly/ebm/StringArray2D_ID i32 (i32.const 9))
 (global $~lib/rt/itcms/white (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/iter (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/toSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/state (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/total (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/threshold (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/visitCount (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/pinSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/util/number/_frc_plus (mut i64) (i64.const 0))
 (global $~lib/util/number/_frc_minus (mut i64) (i64.const 0))
 (global $~lib/util/number/_exp (mut i32) (i32.const 0))
 (global $~lib/util/number/_K (mut i32) (i32.const 0))
 (global $~lib/util/number/_frc_pow (mut i64) (i64.const 0))
 (global $~lib/util/number/_exp_pow (mut i32) (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $assembly/ebm/__EBM i32 (i32.const 10))
 (global $~lib/rt/__rtti_base i32 (i32.const 4672))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 21188))
 (memory $0 1)
 (data (i32.const 1036) "\1c")
 (data (i32.const 1048) "\01\00\00\00\08\00\00\00n\00u\00l\00l")
 (data (i32.const 1068) "<")
 (data (i32.const 1080) "\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 1132) ",")
 (data (i32.const 1144) "\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 1180) "<")
 (data (i32.const 1192) "\01\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s")
 (data (i32.const 1276) ",")
 (data (i32.const 1288) "\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (data (i32.const 1324) ",")
 (data (i32.const 1336) "\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data (i32.const 1372) "<")
 (data (i32.const 1384) "\01\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 1500) "<")
 (data (i32.const 1512) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data (i32.const 1564) "|")
 (data (i32.const 1576) "\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
 (data (i32.const 1692) "<")
 (data (i32.const 1704) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 1756) ",")
 (data (i32.const 1768) "\01\00\00\00\14\00\00\00c\00o\00n\00t\00i\00n\00u\00o\00u\00s")
 (data (i32.const 1804) "\\")
 (data (i32.const 1816) "\01\00\00\00B\00\00\00[\00W\00A\00S\00M\00]\00 \00U\00n\00s\00e\00e\00n\00 \00c\00a\00t\00e\00g\00o\00r\00i\00c\00a\00l\00 \00l\00e\00v\00e\00l\00:\00 ")
 (data (i32.const 1900) "\1c")
 (data (i32.const 1912) "\01\00\00\00\04\00\00\00,\00 ")
 (data (i32.const 1932) "\1c")
 (data (i32.const 1944) "\01")
 (data (i32.const 1964) "<")
 (data (i32.const 1976) "\0c\00\00\00$\00\00\00 \07\00\00\00\00\00\00\80\07\00\00\00\00\00\00\80\07\00\00\00\00\00\00\80\07\00\00\00\00\00\00\a0\07")
 (data (i32.const 2028) "|")
 (data (i32.const 2040) "\01\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006")
 (data (i32.const 2156) "<")
 (data (i32.const 2168) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s")
 (data (i32.const 2220) "\1c")
 (data (i32.const 2232) "\01\00\00\00\02\00\00\000")
 (data (i32.const 2252) "\\")
 (data (i32.const 2264) "\01\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data (i32.const 2348) "\1c")
 (data (i32.const 2360) "\01\00\00\00\06\00\00\000\00.\000")
 (data (i32.const 2380) "\1c")
 (data (i32.const 2392) "\01\00\00\00\06\00\00\00N\00a\00N")
 (data (i32.const 2412) ",")
 (data (i32.const 2424) "\01\00\00\00\12\00\00\00-\00I\00n\00f\00i\00n\00i\00t\00y")
 (data (i32.const 2460) ",")
 (data (i32.const 2472) "\01\00\00\00\10\00\00\00I\00n\00f\00i\00n\00i\00t\00y")
 (data (i32.const 2568) "\88\02\1c\08\a0\d5\8f\fav\bf>\a2\7f\e1\ae\bav\acU0 \fb\16\8b\ea5\ce]J\89B\cf-;eU\aa\b0k\9a\dfE\1a=\03\cf\1a\e6\ca\c6\9a\c7\17\fep\abO\dc\bc\be\fc\b1w\ff\0c\d6kA\ef\91V\be<\fc\7f\90\ad\1f\d0\8d\83\9aU1(\\Q\d3\b5\c9\a6\ad\8f\acq\9d\cb\8b\ee#w\"\9c\eamSx@\91I\cc\aeW\ce\b6]y\12<\827V\fbM6\94\10\c2O\98H8o\ea\96\90\c7:\82%\cb\85t\d7\f4\97\bf\97\cd\cf\86\a0\e5\ac*\17\98\n4\ef\8e\b25*\fbg8\b2;?\c6\d2\df\d4\c8\84\ba\cd\d3\1a\'D\dd\c5\96\c9%\bb\ce\9fk\93\84\a5b}$l\ac\db\f6\da_\0dXf\ab\a3&\f1\c3\de\93\f8\e2\f3\b8\80\ff\aa\a8\ad\b5\b5\8bJ|l\05_b\87S0\c14`\ff\bc\c9U&\ba\91\8c\85N\96\bd~)p$w\f9\df\8f\b8\e5\b8\9f\bd\df\a6\94}t\88\cf_\a9\f8\cf\9b\a8\8f\93pD\b9k\15\0f\bf\f8\f0\08\8a\b611eU%\b0\cd\ac\7f{\d0\c6\e2?\99\06;+*\c4\10\\\e4\d3\92si\99$$\aa\0e\ca\00\83\f2\b5\87\fd\eb\1a\11\92d\08\e5\bc\cc\88Po\t\cc\bc\8c,e\19\e2X\17\b7\d1\00\00\00\00\00\00@\9c\00\00\00\00\10\a5\d4\e8\00\00b\ac\c5\ebx\ad\84\t\94\f8x9?\81\b3\15\07\c9{\ce\97\c0p\\\ea{\ce2~\8fh\80\e9\ab\a48\d2\d5E\"\9a\17&\'O\9f\'\fb\c4\d41\a2c\ed\a8\ad\c8\8c8e\de\b0\dbe\ab\1a\8e\08\c7\83\9a\1dqB\f9\1d]\c4X\e7\1b\a6,iM\92\ea\8dp\1ad\ee\01\daJw\ef\9a\99\a3m\a2\85k}\b4{x\t\f2w\18\ddy\a1\e4T\b4\c2\c5\9b[\92\86[\86=]\96\c8\c5S5\c8\b3\a0\97\fa\\\b4*\95\e3_\a0\99\bd\9fF\de%\8c9\db4\c2\9b\a5\\\9f\98\a3r\9a\c6\f6\ce\be\e9TS\bf\dc\b7\e2A\"\f2\17\f3\fc\88\a5x\\\d3\9b\ce \cc\dfS!{\f3Z\16\98:0\1f\97\dc\b5\a0\e2\96\b3\e3\\S\d1\d9\a8<D\a7\a4\d9|\9b\fb\10D\a4\a7LLv\bb\1a\9c@\b6\ef\8e\ab\8b,\84W\a6\10\ef\1f\d0)1\91\e9\e5\a4\10\9b\9d\0c\9c\a1\fb\9b\10\e7)\f4;b\d9 (\ac\85\cf\a7z^KD\80-\dd\ac\03@\e4!\bf\8f\ffD^/\9cg\8eA\b8\8c\9c\9d\173\d4\a9\1b\e3\b4\92\db\19\9e\d9w\df\ban\bf\96\ebk\ee\f0\9b;\02\87\af")
 (data (i32.const 3264) "<\fbW\fbr\fb\8c\fb\a7\fb\c1\fb\dc\fb\f6\fb\11\fc,\fcF\fca\fc{\fc\96\fc\b1\fc\cb\fc\e6\fc\00\fd\1b\fd5\fdP\fdk\fd\85\fd\a0\fd\ba\fd\d5\fd\ef\fd\n\fe%\fe?\feZ\fet\fe\8f\fe\a9\fe\c4\fe\df\fe\f9\fe\14\ff.\ffI\ffc\ff~\ff\99\ff\b3\ff\ce\ff\e8\ff\03\00\1e\008\00S\00m\00\88\00\a2\00\bd\00\d8\00\f2\00\0d\01\'\01B\01\\\01w\01\92\01\ac\01\c7\01\e1\01\fc\01\16\021\02L\02f\02\81\02\9b\02\b6\02\d0\02\eb\02\06\03 \03;\03U\03p\03\8b\03\a5\03\c0\03\da\03\f5\03\0f\04*\04")
 (data (i32.const 3440) "\01\00\00\00\n\00\00\00d\00\00\00\e8\03\00\00\10\'\00\00\a0\86\01\00@B\0f\00\80\96\98\00\00\e1\f5\05\00\ca\9a;")
 (data (i32.const 3484) "\1c")
 (data (i32.const 3496) "\0c\00\00\00\0c\00\00\00\a0\07\00\00\00\00\00\00\a0\07")
 (data (i32.const 3516) "\1c")
 (data (i32.const 3548) "l")
 (data (i32.const 3560) "\01\00\00\00\\\00\00\00[\00W\00A\00S\00M\00]\00 \00U\00n\00s\00e\00e\00n\00 \00c\00a\00t\00e\00g\00o\00r\00i\00c\00a\00l\00 \00l\00e\00v\00e\00l\00 \00i\00n\00 \00h\00i\00s\00t\00o\00g\00r\00a\00m\00:\00 ")
 (data (i32.const 3660) ",")
 (data (i32.const 3672) "\0c\00\00\00\1c\00\00\00\f0\0d\00\00\00\00\00\00\80\07\00\00\00\00\00\00\80\07\00\00\00\00\00\00\a0\07")
 (data (i32.const 3708) "<")
 (data (i32.const 3720) "\01\00\00\00$\00\00\00K\00e\00y\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t")
 (data (i32.const 3772) ",")
 (data (i32.const 3784) "\01\00\00\00\16\00\00\00~\00l\00i\00b\00/\00m\00a\00p\00.\00t\00s")
 (data (i32.const 3820) "<")
 (data (i32.const 3832) "\01\00\00\00&\00\00\00>\00>\00 \00U\00n\00s\00e\00e\00n\00 \00f\00e\00a\00t\00u\00r\00e\00:\00 ")
 (data (i32.const 3884) ",")
 (data (i32.const 3896) "\0c\00\00\00\1c\00\00\00\00\0f\00\00\00\00\00\00\80\07\00\00\00\00\00\00\80\07\00\00\00\00\00\00\a0\07")
 (data (i32.const 3932) "\1c")
 (data (i32.const 3944) "\0e\00\00\00\08\00\00\00\01")
 (data (i32.const 3964) ",")
 (data (i32.const 3980) "\10")
 (data (i32.const 4012) "<")
 (data (i32.const 4028) " ")
 (data (i32.const 4076) "l")
 (data (i32.const 4088) "\01\00\00\00P\00\00\00[\00W\00A\00S\00M\00]\00 \00C\00a\00n\00n\00o\00t\00 \00s\00l\00i\00c\00e\00 \00c\00o\00n\00t\00i\00n\00u\00o\00u\00s\00 \00v\00a\00r\00i\00a\00b\00l\00e\00 ")
 (data (i32.const 4188) "\1c")
 (data (i32.const 4220) ",")
 (data (i32.const 4232) "\01\00\00\00\0e\00\00\00e\00d\00i\00t\00i\00n\00g")
 (data (i32.const 4268) "\1c")
 (data (i32.const 4284) "\0c\00\00\00\01\00\00\00\02\00\00\00\03")
 (data (i32.const 4300) "\1c")
 (data (i32.const 4312) "\01\00\00\00\02\00\00\00[")
 (data (i32.const 4332) "\1c")
 (data (i32.const 4344) "\0c\00\00\00\0c\00\00\00\a0\07\00\00\00\00\00\00\80\07")
 (data (i32.const 4364) "\1c")
 (data (i32.const 4376) "\0c\00\00\00\0c\00\00\00\a0\07\00\00\00\00\00\00\a0\07")
 (data (i32.const 4396) "\1c")
 (data (i32.const 4408) "\01\00\00\00\02\00\00\00]")
 (data (i32.const 4428) "\1c")
 (data (i32.const 4440) "\0c\00\00\00\0c\00\00\00\a0\07\00\00\00\00\00\00@\11")
 (data (i32.const 4460) "\1c")
 (data (i32.const 4476) "\08\00\00\00\00\00\00\00\01")
 (data (i32.const 4492) ",")
 (data (i32.const 4508) "\10")
 (data (i32.const 4518) "\f0?")
 (data (i32.const 4540) "<")
 (data (i32.const 4552) "\01\00\00\00*\00\00\00O\00b\00j\00e\00c\00t\00 \00a\00l\00r\00e\00a\00d\00y\00 \00p\00i\00n\00n\00e\00d")
 (data (i32.const 4604) "<")
 (data (i32.const 4616) "\01\00\00\00(\00\00\00O\00b\00j\00e\00c\00t\00 \00i\00s\00 \00n\00o\00t\00 \00p\00i\00n\00n\00e\00d")
 (data (i32.const 4672) "\10\00\00\00 \00\00\00\00\00\00\00 ")
 (data (i32.const 4700) "\02\t\00\00\00\00\00\00\02A\00\00\00\00\00\00\02\1a\00\00\00\00\00\00\02A\00\00\00\00\00\00\02A\00\00\00\00\00\00\02A\00\00\00\00\00\00\02A")
 (data (i32.const 4764) "\10A\12\00\00\00\00\00\04A")
 (data (i32.const 4796) "\02A")
 (table $0 2 funcref)
 (elem $0 (i32.const 1) $assembly/metrics/countByThreshold~anonymous|0)
 (export "__EBM" (global $assembly/ebm/__EBM))
 (export "Int32Array_ID" (global $assembly/ebm/Int32Array_ID))
 (export "Int32Array2D_ID" (global $assembly/ebm/Int32Array2D_ID))
 (export "Float64Array_ID" (global $assembly/ebm/Float64Array_ID))
 (export "Float64Array2D_ID" (global $assembly/ebm/Float64Array2D_ID))
 (export "Float64Array3D_ID" (global $assembly/ebm/Float64Array3D_ID))
 (export "StringArray_ID" (global $assembly/ebm/StringArray_ID))
 (export "StringArray2D_ID" (global $assembly/ebm/StringArray2D_ID))
 (export "__new" (func $~lib/rt/itcms/__new))
 (export "__pin" (func $~lib/rt/itcms/__pin))
 (export "__unpin" (func $~lib/rt/itcms/__unpin))
 (export "__collect" (func $~lib/rt/itcms/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "memory" (memory $0))
 (export "__setArgumentsLength" (func $~setArgumentsLength))
 (export "searchSortedLowerIndex" (func $export:assembly/ebm/searchSortedLowerIndex))
 (export "__EBM#get:featureNames" (func $export:assembly/ebm/__EBM#get:featureNames))
 (export "__EBM#set:featureNames" (func $export:assembly/ebm/__EBM#set:featureNames))
 (export "__EBM#get:featureTypes" (func $export:assembly/ebm/__EBM#get:featureTypes))
 (export "__EBM#set:featureTypes" (func $export:assembly/ebm/__EBM#set:featureTypes))
 (export "__EBM#get:binEdges" (func $export:assembly/ebm/__EBM#get:binEdges))
 (export "__EBM#set:binEdges" (func $export:assembly/ebm/__EBM#set:binEdges))
 (export "__EBM#get:scores" (func $export:assembly/ebm/__EBM#get:scores))
 (export "__EBM#set:scores" (func $export:assembly/ebm/__EBM#set:scores))
 (export "__EBM#get:histBinEdges" (func $export:assembly/ebm/__EBM#get:histBinEdges))
 (export "__EBM#set:histBinEdges" (func $export:assembly/ebm/__EBM#set:histBinEdges))
 (export "__EBM#get:intercept" (func $export:assembly/ebm/__EBM#get:intercept))
 (export "__EBM#set:intercept" (func $export:assembly/ebm/__EBM#set:intercept))
 (export "__EBM#get:interactionIndexes" (func $export:assembly/ebm/__EBM#get:interactionIndexes))
 (export "__EBM#set:interactionIndexes" (func $export:assembly/ebm/__EBM#set:interactionIndexes))
 (export "__EBM#get:interactionScores" (func $export:assembly/ebm/__EBM#get:interactionScores))
 (export "__EBM#set:interactionScores" (func $export:assembly/ebm/__EBM#set:interactionScores))
 (export "__EBM#get:interactionBinEdges" (func $export:assembly/ebm/__EBM#get:interactionBinEdges))
 (export "__EBM#set:interactionBinEdges" (func $export:assembly/ebm/__EBM#set:interactionBinEdges))
 (export "__EBM#get:samples" (func $export:assembly/ebm/__EBM#get:samples))
 (export "__EBM#set:samples" (func $export:assembly/ebm/__EBM#set:samples))
 (export "__EBM#get:labels" (func $export:assembly/ebm/__EBM#get:labels))
 (export "__EBM#set:labels" (func $export:assembly/ebm/__EBM#set:labels))
 (export "__EBM#get:editingFeatureIndex" (func $export:assembly/ebm/__EBM#get:editingFeatureIndex))
 (export "__EBM#set:editingFeatureIndex" (func $export:assembly/ebm/__EBM#set:editingFeatureIndex))
 (export "__EBM#get:isClassification" (func $export:assembly/ebm/__EBM#get:isClassification))
 (export "__EBM#set:isClassification" (func $export:assembly/ebm/__EBM#set:isClassification))
 (export "__EBM#get:predLabels" (func $export:assembly/ebm/__EBM#get:predLabels))
 (export "__EBM#set:predLabels" (func $export:assembly/ebm/__EBM#set:predLabels))
 (export "__EBM#get:predProbs" (func $export:assembly/ebm/__EBM#get:predProbs))
 (export "__EBM#set:predProbs" (func $export:assembly/ebm/__EBM#set:predProbs))
 (export "__EBM#get:editingFeatureSampleMap" (func $export:assembly/ebm/__EBM#get:editingFeatureSampleMap))
 (export "__EBM#set:editingFeatureSampleMap" (func $export:assembly/ebm/__EBM#set:editingFeatureSampleMap))
 (export "__EBM#get:editingFeatureSampleMaps" (func $export:assembly/ebm/__EBM#get:editingFeatureSampleMaps))
 (export "__EBM#set:editingFeatureSampleMaps" (func $export:assembly/ebm/__EBM#set:editingFeatureSampleMaps))
 (export "__EBM#get:histBinCounts" (func $export:assembly/ebm/__EBM#get:histBinCounts))
 (export "__EBM#set:histBinCounts" (func $export:assembly/ebm/__EBM#set:histBinCounts))
 (export "__EBM#get:sliceSampleIDs" (func $export:assembly/ebm/__EBM#get:sliceSampleIDs))
 (export "__EBM#set:sliceSampleIDs" (func $export:assembly/ebm/__EBM#set:sliceSampleIDs))
 (export "__EBM#constructor" (func $export:assembly/ebm/__EBM#constructor))
 (export "__EBM#getSelectedSampleNum" (func $export:assembly/ebm/__EBM#getSelectedSampleNum))
 (export "__EBM#getSelectedSampleDist" (func $export:assembly/ebm/__EBM#getSelectedSampleDist))
 (export "__EBM#updateModel" (func $export:assembly/ebm/__EBM#updateModel))
 (export "__EBM#updatePredictionPartial" (func $export:assembly/ebm/__EBM#updatePredictionPartial))
 (export "__EBM#setModel" (func $export:assembly/ebm/__EBM#setModel))
 (export "__EBM#getPrediction" (func $export:assembly/ebm/__EBM#getPrediction))
 (export "__EBM#getMetrics" (func $export:assembly/ebm/__EBM#getMetrics))
 (export "__EBM#getMetricsOnSelectedSamples" (func $export:assembly/ebm/__EBM#getMetricsOnSelectedSamples))
 (export "__EBM#getMetricsOnSelectedBins" (func $export:assembly/ebm/__EBM#getMetricsOnSelectedBins))
 (export "__EBM#getMetricsOnSelectedSlice" (func $export:assembly/ebm/__EBM#getMetricsOnSelectedSlice))
 (export "__EBM#setSliceData" (func $export:assembly/ebm/__EBM#setSliceData))
 (export "__EBM#setEditingFeature" (func $export:assembly/ebm/__EBM#setEditingFeature))
 (export "__EBM#printName" (func $export:assembly/ebm/__EBM#printName))
 (export "rootMeanSquaredError" (func $export:assembly/metrics/rootMeanSquaredError))
 (export "meanAbsoluteError" (func $export:assembly/metrics/meanAbsoluteError))
 (export "meanAbsolutePercentageError" (func $export:assembly/metrics/meanAbsolutePercentageError))
 (export "countByThreshold" (func $export:assembly/metrics/countByThreshold))
 (export "getROCCurve" (func $export:assembly/metrics/getROCCurve))
 (export "getPRCurve" (func $export:assembly/metrics/getPRCurve))
 (export "getROCAuc" (func $export:assembly/metrics/getROCAuc))
 (export "getAveragePrecision" (func $export:assembly/metrics/getAveragePrecision))
 (export "getAccuracy" (func $export:assembly/metrics/getAccuracy))
 (export "getConfusionMatrix" (func $export:assembly/metrics/getConfusionMatrix@varargs))
 (export "getBalancedAccuracy" (func $export:assembly/metrics/getBalancedAccuracy))
 (start $~start)
 (func $~lib/array/Array<f64>#__get (param $0 i32) (param $1 i32) (result f64)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 1088
   i32.const 1152
   i32.const 99
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  f64.load
 )
 (func $assembly/ebm/searchSortedLowerIndex (param $0 i32) (param $1 f64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=12
  i32.const 1
  i32.sub
  local.set $3
  loop $while-continue|0
   local.get $3
   local.get $4
   i32.sub
   i32.const 1
   i32.gt_s
   if
    local.get $0
    local.get $4
    f64.convert_i32_s
    local.get $3
    local.get $4
    i32.sub
    i32.const 2
    i32.div_s
    f64.convert_i32_s
    f64.floor
    f64.add
    i32.trunc_f64_s
    local.tee $2
    call $~lib/array/Array<f64>#__get
    local.get $1
    f64.lt
    if
     local.get $2
     local.set $4
    else
     local.get $0
     local.get $2
     call $~lib/array/Array<f64>#__get
     local.get $1
     f64.gt
     i32.eqz
     if
      local.get $2
      return
     end
     local.get $2
     local.set $3
    end
    br $while-continue|0
   end
  end
  local.get $0
  local.get $3
  call $~lib/array/Array<f64>#__get
  local.get $1
  f64.le
  if
   local.get $3
   return
  end
  local.get $0
  local.get $4
  call $~lib/array/Array<f64>#__get
  local.get $1
  f64.gt
  if
   local.get $4
   return
  end
  local.get $3
  i32.const 1
  i32.sub
 )
 (func $~lib/rt/itcms/Object#set:next (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.and
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/itcms/Object#unlink (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  i32.const -4
  i32.and
  local.tee $1
  i32.eqz
  if
   i32.const 0
   local.get $0
   i32.const 21188
   i32.lt_u
   local.get $0
   i32.load offset=8
   select
   i32.eqz
   if
    i32.const 0
    i32.const 1200
    i32.const 127
    i32.const 18
    call $~lib/builtins/abort
    unreachable
   end
   return
  end
  local.get $0
  i32.load offset=8
  local.tee $0
  i32.eqz
  if
   i32.const 0
   i32.const 1200
   i32.const 131
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.store offset=8
  local.get $0
  local.get $1
  call $~lib/rt/itcms/Object#set:next
 )
 (func $~lib/rt/itcms/initLazy (param $0 i32) (result i32)
  local.get $0
  local.get $0
  i32.store offset=4
  local.get $0
  local.get $0
  i32.store offset=8
  local.get $0
 )
 (func $~lib/rt/itcms/Object#linkTo (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  i32.load offset=8
  local.set $3
  local.get $0
  local.get $1
  local.get $2
  i32.or
  i32.store offset=4
  local.get $0
  local.get $3
  i32.store offset=8
  local.get $3
  local.get $0
  call $~lib/rt/itcms/Object#set:next
  local.get $1
  local.get $0
  i32.store offset=8
 )
 (func $~lib/rt/itcms/Object#makeGray (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  global.get $~lib/rt/itcms/iter
  i32.eq
  if
   local.get $0
   i32.load offset=8
   local.tee $1
   i32.eqz
   if
    i32.const 0
    i32.const 1200
    i32.const 147
    i32.const 30
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   global.set $~lib/rt/itcms/iter
  end
  local.get $0
  call $~lib/rt/itcms/Object#unlink
  global.get $~lib/rt/itcms/toSpace
  local.set $2
  local.get $0
  local.tee $1
  i32.load offset=12
  local.tee $0
  i32.const 1
  i32.le_u
  if (result i32)
   i32.const 1
  else
   local.get $0
   i32.const 4672
   i32.load
   i32.gt_u
   if
    i32.const 1088
    i32.const 1296
    i32.const 22
    i32.const 28
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 3
   i32.shl
   i32.const 4676
   i32.add
   i32.load
   i32.const 32
   i32.and
  end
  if (result i32)
   global.get $~lib/rt/itcms/white
   i32.eqz
  else
   i32.const 2
  end
  local.set $0
  local.get $1
  local.get $2
  local.get $0
  call $~lib/rt/itcms/Object#linkTo
 )
 (func $~lib/rt/itcms/__link (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.eqz
  if
   return
  end
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 1200
   i32.const 294
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/white
  local.get $1
  i32.const 20
  i32.sub
  local.tee $1
  i32.load offset=4
  i32.const 3
  i32.and
  i32.eq
  if
   local.get $0
   i32.const 20
   i32.sub
   local.tee $0
   i32.load offset=4
   i32.const 3
   i32.and
   local.tee $3
   local.set $4
   local.get $3
   global.get $~lib/rt/itcms/white
   i32.eqz
   i32.eq
   if
    local.get $0
    local.get $1
    local.get $2
    select
    call $~lib/rt/itcms/Object#makeGray
   else
    global.get $~lib/rt/itcms/state
    i32.const 1
    i32.eq
    i32.const 0
    local.get $4
    i32.const 3
    i32.eq
    select
    if
     local.get $1
     call $~lib/rt/itcms/Object#makeGray
    end
   end
  end
 )
 (func $assembly/ebm/__EBM#set:featureNames (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/ebm/__EBM#set:featureTypes (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/ebm/__EBM#set:binEdges (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/ebm/__EBM#set:scores (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/ebm/__EBM#set:histBinEdges (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=16
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/ebm/__EBM#set:interactionIndexes (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=32
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/ebm/__EBM#set:interactionBinEdges (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=40
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/ebm/__EBM#set:interactionScores (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=36
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/ebm/__EBM#set:samples (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=44
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/ebm/__EBM#set:labels (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=48
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/rt/itcms/visitRoots
  (local $0 i32)
  (local $1 i32)
  i32.const 1088
  call $~lib/rt/itcms/__visit
  i32.const 1344
  call $~lib/rt/itcms/__visit
  i32.const 1584
  call $~lib/rt/itcms/__visit
  i32.const 3728
  call $~lib/rt/itcms/__visit
  i32.const 1392
  call $~lib/rt/itcms/__visit
  i32.const 4560
  call $~lib/rt/itcms/__visit
  i32.const 4624
  call $~lib/rt/itcms/__visit
  i32.const 2272
  call $~lib/rt/itcms/__visit
  i32.const 1056
  call $~lib/rt/itcms/__visit
  global.get $~lib/rt/itcms/pinSpace
  local.tee $1
  i32.load offset=4
  i32.const -4
  i32.and
  local.set $0
  loop $while-continue|0
   local.get $0
   local.get $1
   i32.ne
   if
    local.get $0
    i32.load offset=4
    i32.const 3
    i32.and
    i32.const 3
    i32.ne
    if
     i32.const 0
     i32.const 1200
     i32.const 159
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 20
    i32.add
    call $~lib/rt/__visit_members
    local.get $0
    i32.load offset=4
    i32.const -4
    i32.and
    local.set $0
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/itcms/Object#set:color (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=4
  i32.const -4
  i32.and
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/itcms/__visit (param $0 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  global.get $~lib/rt/itcms/white
  local.get $0
  i32.const 20
  i32.sub
  local.tee $0
  i32.load offset=4
  i32.const 3
  i32.and
  i32.eq
  if
   local.get $0
   call $~lib/rt/itcms/Object#makeGray
   global.get $~lib/rt/itcms/visitCount
   i32.const 1
   i32.add
   global.set $~lib/rt/itcms/visitCount
  end
 )
 (func $~lib/rt/tlsf/removeBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.tee $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1520
   i32.const 268
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const -4
  i32.and
  local.tee $2
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 1520
   i32.const 270
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 256
  i32.lt_u
  if
   local.get $2
   i32.const 4
   i32.shr_u
   local.set $2
  else
   i32.const 31
   local.get $2
   i32.const 1073741820
   local.get $2
   i32.const 1073741820
   i32.lt_u
   select
   local.tee $2
   i32.clz
   i32.sub
   local.set $3
   local.get $2
   local.get $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $2
   local.get $3
   i32.const 7
   i32.sub
   local.set $3
  end
  local.get $2
  i32.const 16
  i32.lt_u
  i32.const 0
  local.get $3
  i32.const 23
  i32.lt_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1520
   i32.const 284
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  local.set $4
  local.get $1
  i32.load offset=4
  local.tee $5
  if
   local.get $5
   local.get $4
   i32.store offset=8
  end
  local.get $4
  if
   local.get $4
   local.get $5
   i32.store offset=4
  end
  local.get $1
  local.get $0
  local.get $2
  local.get $3
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  i32.eq
  if
   local.get $0
   local.get $2
   local.get $3
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $4
   i32.store offset=96
   local.get $4
   i32.eqz
   if
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    local.tee $4
    i32.load offset=4
    i32.const -2
    local.get $2
    i32.rotl
    i32.and
    local.set $1
    local.get $4
    local.get $1
    i32.store offset=4
    local.get $1
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const -2
     local.get $3
     i32.rotl
     i32.and
     i32.store
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 1520
   i32.const 201
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  local.tee $3
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1520
   i32.const 203
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.add
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.add
  local.tee $4
  i32.load
  local.tee $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.get $4
   call $~lib/rt/tlsf/removeBlock
   local.get $1
   local.get $3
   i32.const 4
   i32.add
   local.get $2
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   i32.store
   local.get $1
   i32.const 4
   i32.add
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.tee $4
   i32.load
   local.set $2
  end
  local.get $3
  i32.const 2
  i32.and
  if
   local.get $1
   i32.const 4
   i32.sub
   i32.load
   local.tee $1
   i32.load
   local.tee $6
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 1520
    i32.const 221
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/removeBlock
   local.get $1
   local.get $6
   i32.const 4
   i32.add
   local.get $3
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   i32.store
  end
  local.get $4
  local.get $2
  i32.const 2
  i32.or
  i32.store
  local.get $3
  i32.const -4
  i32.and
  local.tee $3
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 1520
   i32.const 233
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $3
  local.get $1
  i32.const 4
  i32.add
  i32.add
  i32.ne
  if
   i32.const 0
   i32.const 1520
   i32.const 234
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $3
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $3
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   local.get $3
   i32.const 1073741820
   local.get $3
   i32.const 1073741820
   i32.lt_u
   select
   local.tee $3
   i32.clz
   i32.sub
   local.tee $4
   i32.const 7
   i32.sub
   local.set $5
   local.get $3
   local.get $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $3
  i32.const 16
  i32.lt_u
  i32.const 0
  local.get $5
  i32.const 23
  i32.lt_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1520
   i32.const 251
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $3
  local.get $5
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  local.set $4
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  local.get $4
  i32.store offset=8
  local.get $4
  if
   local.get $4
   local.get $1
   i32.store offset=4
  end
  local.get $0
  local.get $3
  local.get $5
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store offset=96
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $5
  i32.shl
  i32.or
  i32.store
  local.get $0
  local.get $5
  i32.const 2
  i32.shl
  i32.add
  local.tee $0
  local.get $0
  i32.load offset=4
  i32.const 1
  local.get $3
  i32.shl
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  local.get $2
  i32.gt_u
  if
   i32.const 0
   i32.const 1520
   i32.const 377
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.set $1
  local.get $2
  i32.const -16
  i32.and
  local.get $0
  i32.load offset=1568
  local.tee $2
  if
   local.get $1
   local.get $2
   i32.const 4
   i32.add
   i32.lt_u
   if
    i32.const 0
    i32.const 1520
    i32.const 384
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   local.get $1
   i32.const 16
   i32.sub
   i32.eq
   if
    local.get $2
    i32.load
    local.set $4
    local.get $1
    i32.const 16
    i32.sub
    local.set $1
   end
  else
   local.get $1
   local.get $0
   i32.const 1572
   i32.add
   i32.lt_u
   if
    i32.const 0
    i32.const 1520
    i32.const 397
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $1
  i32.sub
  local.tee $2
  i32.const 20
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $4
  i32.const 2
  i32.and
  local.get $2
  i32.const 8
  i32.sub
  local.tee $2
  i32.const 1
  i32.or
  i32.or
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $2
  local.get $1
  i32.const 4
  i32.add
  i32.add
  local.tee $2
  i32.const 2
  i32.store
  local.get $0
  local.get $2
  i32.store offset=1568
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/initialize
  (local $0 i32)
  (local $1 i32)
  memory.size
  local.tee $0
  i32.const 1
  i32.lt_s
  if (result i32)
   i32.const 1
   local.get $0
   i32.sub
   memory.grow
   i32.const 0
   i32.lt_s
  else
   i32.const 0
  end
  if
   unreachable
  end
  i32.const 21200
  i32.const 0
  i32.store
  i32.const 22768
  i32.const 0
  i32.store
  loop $for-loop|0
   local.get $1
   i32.const 23
   i32.lt_u
   if
    local.get $1
    i32.const 2
    i32.shl
    i32.const 21200
    i32.add
    i32.const 0
    i32.store offset=4
    i32.const 0
    local.set $0
    loop $for-loop|1
     local.get $0
     i32.const 16
     i32.lt_u
     if
      local.get $0
      local.get $1
      i32.const 4
      i32.shl
      i32.add
      i32.const 2
      i32.shl
      i32.const 21200
      i32.add
      i32.const 0
      i32.store offset=96
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $for-loop|1
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  i32.const 21200
  i32.const 22772
  memory.size
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 21200
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/itcms/step (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  block $folding-inner0
   block $break|0
    block $case2|0
     block $case1|0
      block $case0|0
       global.get $~lib/rt/itcms/state
       br_table $case0|0 $case1|0 $case2|0 $break|0
      end
      i32.const 1
      global.set $~lib/rt/itcms/state
      i32.const 0
      global.set $~lib/rt/itcms/visitCount
      call $~lib/rt/itcms/visitRoots
      global.get $~lib/rt/itcms/toSpace
      global.set $~lib/rt/itcms/iter
      br $folding-inner0
     end
     global.get $~lib/rt/itcms/white
     i32.eqz
     local.set $1
     global.get $~lib/rt/itcms/iter
     i32.load offset=4
     i32.const -4
     i32.and
     local.set $0
     loop $while-continue|1
      local.get $0
      global.get $~lib/rt/itcms/toSpace
      i32.ne
      if
       local.get $0
       global.set $~lib/rt/itcms/iter
       local.get $1
       local.get $0
       i32.load offset=4
       i32.const 3
       i32.and
       i32.ne
       if
        local.get $0
        local.get $1
        call $~lib/rt/itcms/Object#set:color
        i32.const 0
        global.set $~lib/rt/itcms/visitCount
        local.get $0
        i32.const 20
        i32.add
        call $~lib/rt/__visit_members
        br $folding-inner0
       end
       local.get $0
       i32.load offset=4
       i32.const -4
       i32.and
       local.set $0
       br $while-continue|1
      end
     end
     i32.const 0
     global.set $~lib/rt/itcms/visitCount
     call $~lib/rt/itcms/visitRoots
     global.get $~lib/rt/itcms/toSpace
     global.get $~lib/rt/itcms/iter
     i32.load offset=4
     i32.const -4
     i32.and
     i32.eq
     if
      global.get $~lib/memory/__stack_pointer
      local.set $0
      loop $while-continue|0
       local.get $0
       i32.const 21188
       i32.lt_u
       if
        local.get $0
        i32.load
        call $~lib/rt/itcms/__visit
        local.get $0
        i32.const 4
        i32.add
        local.set $0
        br $while-continue|0
       end
      end
      global.get $~lib/rt/itcms/iter
      i32.load offset=4
      i32.const -4
      i32.and
      local.set $0
      loop $while-continue|2
       local.get $0
       global.get $~lib/rt/itcms/toSpace
       i32.ne
       if
        local.get $1
        local.get $0
        i32.load offset=4
        i32.const 3
        i32.and
        i32.ne
        if
         local.get $0
         local.get $1
         call $~lib/rt/itcms/Object#set:color
         local.get $0
         i32.const 20
         i32.add
         call $~lib/rt/__visit_members
        end
        local.get $0
        i32.load offset=4
        i32.const -4
        i32.and
        local.set $0
        br $while-continue|2
       end
      end
      global.get $~lib/rt/itcms/fromSpace
      local.set $0
      global.get $~lib/rt/itcms/toSpace
      global.set $~lib/rt/itcms/fromSpace
      local.get $0
      global.set $~lib/rt/itcms/toSpace
      local.get $1
      global.set $~lib/rt/itcms/white
      local.get $0
      i32.load offset=4
      i32.const -4
      i32.and
      global.set $~lib/rt/itcms/iter
      i32.const 2
      global.set $~lib/rt/itcms/state
     end
     br $folding-inner0
    end
    global.get $~lib/rt/itcms/iter
    local.tee $0
    global.get $~lib/rt/itcms/toSpace
    i32.ne
    if
     local.get $0
     i32.load offset=4
     i32.const -4
     i32.and
     global.set $~lib/rt/itcms/iter
     global.get $~lib/rt/itcms/white
     i32.eqz
     local.get $0
     i32.load offset=4
     i32.const 3
     i32.and
     i32.ne
     if
      i32.const 0
      i32.const 1200
      i32.const 228
      i32.const 20
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     i32.const 21188
     i32.lt_u
     if
      local.get $0
      i32.const 0
      i32.store offset=4
      local.get $0
      i32.const 0
      i32.store offset=8
     else
      global.get $~lib/rt/itcms/total
      local.get $0
      i32.load
      i32.const -4
      i32.and
      i32.const 4
      i32.add
      i32.sub
      global.set $~lib/rt/itcms/total
      local.get $0
      i32.const 4
      i32.add
      local.tee $1
      i32.const 21188
      i32.ge_u
      if
       global.get $~lib/rt/tlsf/ROOT
       i32.eqz
       if
        call $~lib/rt/tlsf/initialize
       end
       global.get $~lib/rt/tlsf/ROOT
       local.get $1
       i32.const 4
       i32.sub
       local.set $0
       local.get $1
       i32.const 15
       i32.and
       i32.const 1
       local.get $1
       select
       if (result i32)
        i32.const 1
       else
        local.get $0
        i32.load
        i32.const 1
        i32.and
       end
       if
        i32.const 0
        i32.const 1520
        i32.const 559
        i32.const 3
        call $~lib/builtins/abort
        unreachable
       end
       local.get $0
       local.get $0
       i32.load
       i32.const 1
       i32.or
       i32.store
       local.get $0
       call $~lib/rt/tlsf/insertBlock
      end
     end
     i32.const 10
     return
    end
    global.get $~lib/rt/itcms/toSpace
    global.get $~lib/rt/itcms/toSpace
    i32.store offset=4
    global.get $~lib/rt/itcms/toSpace
    global.get $~lib/rt/itcms/toSpace
    i32.store offset=8
    i32.const 0
    global.set $~lib/rt/itcms/state
   end
   i32.const 0
   return
  end
  global.get $~lib/rt/itcms/visitCount
 )
 (func $~lib/rt/tlsf/searchBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if
   local.get $1
   i32.const 4
   i32.shr_u
   local.set $1
  else
   i32.const 31
   local.get $1
   i32.const 1
   i32.const 27
   local.get $1
   i32.clz
   i32.sub
   i32.shl
   i32.add
   i32.const 1
   i32.sub
   local.get $1
   local.get $1
   i32.const 536870910
   i32.lt_u
   select
   local.tee $1
   i32.clz
   i32.sub
   local.set $2
   local.get $1
   local.get $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $1
   local.get $2
   i32.const 7
   i32.sub
   local.set $2
  end
  local.get $1
  i32.const 16
  i32.lt_u
  i32.const 0
  local.get $2
  i32.const 23
  i32.lt_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1520
   i32.const 330
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const -1
  local.get $1
  i32.shl
  i32.and
  local.tee $1
  if (result i32)
   local.get $0
   local.get $1
   i32.ctz
   local.get $2
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
  else
   local.get $0
   i32.load
   i32.const -1
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.tee $1
   if (result i32)
    local.get $0
    local.get $1
    i32.ctz
    local.tee $1
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.tee $2
    i32.eqz
    if
     i32.const 0
     i32.const 1520
     i32.const 343
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $2
    i32.ctz
    local.get $1
    i32.const 4
    i32.shl
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=96
   else
    i32.const 0
   end
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1392
   i32.const 1520
   i32.const 458
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 12
  local.get $1
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.get $1
  i32.const 12
  i32.le_u
  select
  local.tee $2
  call $~lib/rt/tlsf/searchBlock
  local.tee $1
  i32.eqz
  if
   i32.const 4
   memory.size
   local.tee $1
   i32.const 16
   i32.shl
   i32.const 4
   i32.sub
   local.get $0
   i32.load offset=1568
   i32.ne
   i32.shl
   local.get $2
   i32.const 1
   i32.const 27
   local.get $2
   i32.clz
   i32.sub
   i32.shl
   i32.const 1
   i32.sub
   i32.add
   local.get $2
   local.get $2
   i32.const 536870910
   i32.lt_u
   select
   i32.add
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.set $3
   local.get $1
   local.get $3
   local.get $1
   local.get $3
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $3
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
   local.get $0
   local.get $1
   i32.const 16
   i32.shl
   memory.size
   i32.const 16
   i32.shl
   call $~lib/rt/tlsf/addMemory
   local.get $0
   local.get $2
   call $~lib/rt/tlsf/searchBlock
   local.tee $1
   i32.eqz
   if
    i32.const 0
    i32.const 1520
    i32.const 496
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.gt_u
  if
   i32.const 0
   i32.const 1520
   i32.const 498
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/removeBlock
  local.get $1
  i32.load
  local.set $3
  local.get $2
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  if
   i32.const 0
   i32.const 1520
   i32.const 357
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const -4
  i32.and
  local.get $2
  i32.sub
  local.tee $4
  i32.const 16
  i32.ge_u
  if
   local.get $1
   local.get $2
   local.get $3
   i32.const 2
   i32.and
   i32.or
   i32.store
   local.get $2
   local.get $1
   i32.const 4
   i32.add
   i32.add
   local.tee $2
   local.get $4
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $0
   local.get $2
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $1
   local.get $3
   i32.const -2
   i32.and
   i32.store
   local.get $1
   i32.const 4
   i32.add
   local.tee $0
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.get $0
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   i32.load
   i32.const -3
   i32.and
   i32.store
  end
  local.get $1
 )
 (func $~lib/memory/memory.fill (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $~lib/util/memory/memset|inlined.0
   local.get $1
   i32.eqz
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8
   local.get $0
   local.get $1
   i32.add
   local.tee $2
   i32.const 1
   i32.sub
   i32.const 0
   i32.store8
   local.get $1
   i32.const 2
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8 offset=1
   local.get $0
   i32.const 0
   i32.store8 offset=2
   local.get $2
   i32.const 2
   i32.sub
   i32.const 0
   i32.store8
   local.get $2
   i32.const 3
   i32.sub
   i32.const 0
   i32.store8
   local.get $1
   i32.const 6
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8 offset=3
   local.get $2
   i32.const 4
   i32.sub
   i32.const 0
   i32.store8
   local.get $1
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   local.get $0
   i32.sub
   i32.const 3
   i32.and
   local.tee $2
   i32.add
   local.tee $0
   i32.const 0
   i32.store
   local.get $0
   local.get $1
   local.get $2
   i32.sub
   i32.const -4
   i32.and
   local.tee $2
   i32.add
   local.tee $1
   i32.const 4
   i32.sub
   i32.const 0
   i32.store
   local.get $2
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=8
   local.get $1
   i32.const 12
   i32.sub
   i32.const 0
   i32.store
   local.get $1
   i32.const 8
   i32.sub
   i32.const 0
   i32.store
   local.get $2
   i32.const 24
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store offset=12
   local.get $0
   i32.const 0
   i32.store offset=16
   local.get $0
   i32.const 0
   i32.store offset=20
   local.get $0
   i32.const 0
   i32.store offset=24
   local.get $1
   i32.const 28
   i32.sub
   i32.const 0
   i32.store
   local.get $1
   i32.const 24
   i32.sub
   i32.const 0
   i32.store
   local.get $1
   i32.const 20
   i32.sub
   i32.const 0
   i32.store
   local.get $1
   i32.const 16
   i32.sub
   i32.const 0
   i32.store
   local.get $0
   local.get $0
   i32.const 4
   i32.and
   i32.const 24
   i32.add
   local.tee $1
   i32.add
   local.set $0
   local.get $2
   local.get $1
   i32.sub
   local.set $1
   loop $while-continue|0
    local.get $1
    i32.const 32
    i32.ge_u
    if
     local.get $0
     i64.const 0
     i64.store
     local.get $0
     i64.const 0
     i64.store offset=8
     local.get $0
     i64.const 0
     i64.store offset=16
     local.get $0
     i64.const 0
     i64.store offset=24
     local.get $1
     i32.const 32
     i32.sub
     local.set $1
     local.get $0
     i32.const 32
     i32.add
     local.set $0
     br $while-continue|0
    end
   end
  end
 )
 (func $~lib/rt/itcms/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 1392
   i32.const 1200
   i32.const 260
   i32.const 31
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.ge_u
  if
   block $__inlined_func$~lib/rt/itcms/interrupt
    i32.const 2048
    local.set $2
    loop $do-continue|0
     local.get $2
     call $~lib/rt/itcms/step
     i32.sub
     local.set $2
     global.get $~lib/rt/itcms/state
     i32.eqz
     if
      global.get $~lib/rt/itcms/total
      i64.extend_i32_u
      i64.const 200
      i64.mul
      i64.const 100
      i64.div_u
      i32.wrap_i64
      i32.const 1024
      i32.add
      global.set $~lib/rt/itcms/threshold
      br $__inlined_func$~lib/rt/itcms/interrupt
     end
     local.get $2
     i32.const 0
     i32.gt_s
     br_if $do-continue|0
    end
    global.get $~lib/rt/itcms/total
    global.get $~lib/rt/itcms/total
    global.get $~lib/rt/itcms/threshold
    i32.sub
    i32.const 1024
    i32.lt_u
    i32.const 10
    i32.shl
    i32.add
    global.set $~lib/rt/itcms/threshold
   end
  end
  local.get $0
  i32.const 16
  i32.add
  local.set $2
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $2
  call $~lib/rt/tlsf/allocateBlock
  local.tee $2
  local.get $1
  i32.store offset=12
  local.get $2
  local.get $0
  i32.store offset=16
  local.get $2
  global.get $~lib/rt/itcms/fromSpace
  global.get $~lib/rt/itcms/white
  call $~lib/rt/itcms/Object#linkTo
  global.get $~lib/rt/itcms/total
  local.get $2
  i32.load
  i32.const -4
  i32.and
  i32.const 4
  i32.add
  i32.add
  global.set $~lib/rt/itcms/total
  local.get $2
  i32.const 20
  i32.add
  local.tee $1
  local.get $0
  call $~lib/memory/memory.fill
  local.get $1
 )
 (func $~lib/array/Array<f64>#fill (param $0 i32) (param $1 f64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=4
  local.set $4
  i32.const 0
  local.get $0
  i32.load offset=12
  local.tee $2
  local.get $2
  i32.const 0
  i32.gt_s
  select
  local.set $3
  loop $for-loop|0
   local.get $2
   local.get $3
   i32.gt_s
   if
    local.get $4
    local.get $3
    i32.const 3
    i32.shl
    i32.add
    local.get $1
    f64.store
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  local.get $0
 )
 (func $assembly/ebm/__EBM#set:predLabels (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=60
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/ebm/__EBM#set:predProbs (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=64
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/ebm/__EBM#set:editingFeatureSampleMap (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=68
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/ebm/__EBM#set:histBinCounts (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=76
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/memory/memory.copy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $2
   local.set $4
   local.get $0
   local.get $1
   i32.eq
   br_if $~lib/util/memory/memmove|inlined.0
   local.get $0
   local.get $1
   i32.lt_u
   if
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|0
      local.get $0
      i32.const 7
      i32.and
      if
       local.get $4
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $4
       i32.const 1
       i32.sub
       local.set $4
       local.get $0
       local.tee $2
       i32.const 1
       i32.add
       local.set $0
       local.get $1
       local.tee $3
       i32.const 1
       i32.add
       local.set $1
       local.get $2
       local.get $3
       i32.load8_u
       i32.store8
       br $while-continue|0
      end
     end
     loop $while-continue|1
      local.get $4
      i32.const 8
      i32.ge_u
      if
       local.get $0
       local.get $1
       i64.load
       i64.store
       local.get $4
       i32.const 8
       i32.sub
       local.set $4
       local.get $0
       i32.const 8
       i32.add
       local.set $0
       local.get $1
       i32.const 8
       i32.add
       local.set $1
       br $while-continue|1
      end
     end
    end
    loop $while-continue|2
     local.get $4
     if
      local.get $0
      local.tee $2
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      local.tee $3
      i32.const 1
      i32.add
      local.set $1
      local.get $2
      local.get $3
      i32.load8_u
      i32.store8
      local.get $4
      i32.const 1
      i32.sub
      local.set $4
      br $while-continue|2
     end
    end
   else
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|3
      local.get $0
      local.get $4
      i32.add
      i32.const 7
      i32.and
      if
       local.get $4
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $4
       i32.const 1
       i32.sub
       local.tee $4
       local.get $0
       i32.add
       local.get $1
       local.get $4
       i32.add
       i32.load8_u
       i32.store8
       br $while-continue|3
      end
     end
     loop $while-continue|4
      local.get $4
      i32.const 8
      i32.ge_u
      if
       local.get $4
       i32.const 8
       i32.sub
       local.tee $4
       local.get $0
       i32.add
       local.get $1
       local.get $4
       i32.add
       i64.load
       i64.store
       br $while-continue|4
      end
     end
    end
    loop $while-continue|5
     local.get $4
     if
      local.get $4
      i32.const 1
      i32.sub
      local.tee $4
      local.get $0
      i32.add
      local.get $1
      local.get $4
      i32.add
      i32.load8_u
      i32.store8
      br $while-continue|5
     end
    end
   end
  end
 )
 (func $~lib/rt/itcms/__renew (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  local.get $0
  i32.const 20
  i32.sub
  local.tee $2
  i32.load
  i32.const -4
  i32.and
  i32.const 16
  i32.sub
  i32.le_u
  if
   local.get $2
   local.get $1
   i32.store offset=16
   local.get $0
   return
  end
  local.get $1
  local.get $2
  i32.load offset=12
  call $~lib/rt/itcms/__new
  local.tee $3
  local.get $0
  local.get $1
  local.get $2
  i32.load offset=16
  local.tee $0
  local.get $0
  local.get $1
  i32.gt_u
  select
  call $~lib/memory/memory.copy
  local.get $3
 )
 (func $~lib/array/ensureCapacity (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  local.tee $3
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   local.get $1
   i32.const 1073741820
   local.get $2
   i32.shr_u
   i32.gt_u
   if
    i32.const 1344
    i32.const 1152
    i32.const 17
    i32.const 48
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 8
   local.get $1
   i32.const 8
   i32.gt_u
   select
   local.get $2
   i32.shl
   local.set $1
   local.get $0
   i32.load
   local.tee $4
   local.get $3
   i32.const 1
   i32.shl
   local.tee $2
   i32.const 1073741820
   local.get $2
   i32.const 1073741820
   i32.lt_u
   select
   local.tee $2
   local.get $1
   local.get $1
   local.get $2
   i32.lt_u
   select
   local.tee $1
   call $~lib/rt/itcms/__renew
   local.tee $2
   local.get $3
   i32.add
   local.get $1
   local.get $3
   i32.sub
   call $~lib/memory/memory.fill
   local.get $2
   local.get $4
   i32.ne
   if
    local.get $0
    local.get $2
    i32.store
    local.get $0
    local.get $2
    i32.store offset=4
    local.get $0
    local.get $2
    i32.const 0
    call $~lib/rt/itcms/__link
   end
   local.get $0
   local.get $1
   i32.store offset=8
  end
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#__uset (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
  local.get $0
  local.get $2
  i32.const 1
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 1088
    i32.const 1152
    i32.const 115
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $3
   i32.const 2
   call $~lib/array/ensureCapacity
   local.get $0
   local.get $3
   i32.store offset=12
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<~lib/array/Array<i32>>#__uset
 )
 (func $assembly/ebm/__EBM#set:editingFeatureSampleMaps (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=72
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/util/hash/HASH<i32> (param $0 i32) (result i32)
  local.get $0
  i32.const -1028477379
  i32.mul
  i32.const 374761397
  i32.add
  i32.const 17
  i32.rotl
  i32.const 668265263
  i32.mul
  local.tee $0
  local.get $0
  i32.const 15
  i32.shr_u
  i32.xor
  i32.const -2048144777
  i32.mul
  local.tee $0
  local.get $0
  i32.const 13
  i32.shr_u
  i32.xor
  i32.const -1028477379
  i32.mul
  local.tee $0
  local.get $0
  i32.const 16
  i32.shr_u
  i32.xor
 )
 (func $~lib/map/Map<i32,~lib/array/Array<~lib/array/Array<i32>>>#find (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $0
  loop $while-continue|0
   local.get $0
   if
    local.get $0
    i32.load offset=8
    local.tee $2
    i32.const 1
    i32.and
    if (result i32)
     i32.const 0
    else
     local.get $1
     local.get $0
     i32.load
     i32.eq
    end
    if
     local.get $0
     return
    end
    local.get $2
    i32.const -2
    i32.and
    local.set $0
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<i32,~lib/array/Array<~lib/array/Array<i32>>>#rehash (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.const 1
  i32.add
  local.tee $2
  i32.const 2
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $6
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.const 3
  i32.shl
  i32.const 3
  i32.div_s
  local.tee $5
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $3
  i32.store offset=4
  local.get $0
  i32.load offset=8
  local.tee $8
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  local.set $4
  local.get $3
  local.set $2
  loop $while-continue|0
   local.get $4
   local.get $8
   i32.ne
   if
    local.get $8
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $2
     local.get $8
     i32.load
     local.tee $7
     i32.store
     local.get $2
     local.get $8
     i32.load offset=4
     i32.store offset=4
     local.get $2
     local.get $6
     local.get $7
     call $~lib/util/hash/HASH<i32>
     local.get $1
     i32.and
     i32.const 2
     i32.shl
     i32.add
     local.tee $7
     i32.load
     i32.store offset=8
     local.get $7
     local.get $2
     i32.store
     local.get $2
     i32.const 12
     i32.add
     local.set $2
    end
    local.get $8
    i32.const 12
    i32.add
    local.set $8
    br $while-continue|0
   end
  end
  local.get $0
  local.get $6
  call $assembly/ebm/__EBM#set:featureNames
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $3
  call $assembly/ebm/__EBM#set:binEdges
  local.get $0
  local.get $5
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<i32>#fill (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=4
  local.set $3
  i32.const 0
  local.get $0
  i32.load offset=12
  local.tee $1
  local.get $1
  i32.const 0
  i32.gt_s
  select
  local.set $2
  loop $for-loop|0
   local.get $1
   local.get $2
   i32.gt_s
   if
    local.get $3
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.const 0
    i32.store
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $0
 )
 (func $~lib/string/String.__eq (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.const 1776
  i32.eq
  if
   i32.const 1
   return
  end
  i32.const 1776
  i32.const 0
  local.get $0
  select
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  local.tee $1
  i32.const 1772
  i32.load
  i32.const 1
  i32.shr_u
  i32.ne
  if
   i32.const 0
   return
  end
  block $__inlined_func$~lib/util/string/compareImpl (result i32)
   i32.const 1776
   local.set $3
   local.get $0
   local.tee $2
   i32.const 7
   i32.and
   i32.const 1
   local.get $1
   local.tee $0
   i32.const 4
   i32.ge_u
   select
   i32.eqz
   if
    loop $do-continue|0
     local.get $2
     i64.load
     local.get $3
     i64.load
     i64.eq
     if
      local.get $2
      i32.const 8
      i32.add
      local.set $2
      local.get $3
      i32.const 8
      i32.add
      local.set $3
      local.get $0
      i32.const 4
      i32.sub
      local.tee $0
      i32.const 4
      i32.ge_u
      br_if $do-continue|0
     end
    end
   end
   loop $while-continue|1
    local.get $0
    local.tee $1
    i32.const 1
    i32.sub
    local.set $0
    local.get $1
    if
     local.get $3
     i32.load16_u
     local.tee $1
     local.get $2
     i32.load16_u
     local.tee $4
     i32.ne
     if
      local.get $4
      local.get $1
      i32.sub
      br $__inlined_func$~lib/util/string/compareImpl
     end
     local.get $2
     i32.const 2
     i32.add
     local.set $2
     local.get $3
     i32.const 2
     i32.add
     local.set $3
     br $while-continue|1
    end
   end
   i32.const 0
  end
  i32.eqz
 )
 (func $~lib/array/Array<f64>#indexOf (param $0 i32) (param $1 f64) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=12
  local.tee $3
  i32.const 0
  i32.le_s
  i32.const 1
  local.get $3
  select
  if
   i32.const -1
   return
  end
  local.get $0
  i32.load offset=4
  local.set $0
  loop $while-continue|0
   local.get $2
   local.get $3
   i32.lt_s
   if
    local.get $1
    local.get $0
    local.get $2
    i32.const 3
    i32.shl
    i32.add
    f64.load
    f64.eq
    if
     local.get $2
     return
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $while-continue|0
   end
  end
  i32.const -1
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#__uset (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
  local.get $0
  local.get $2
  i32.const 1
  call $~lib/rt/itcms/__link
 )
 (func $~lib/util/number/decimalCount32 (param $0 i32) (result i32)
  local.get $0
  i32.const 10
  i32.ge_u
  i32.const 1
  i32.add
  local.get $0
  i32.const 10000
  i32.ge_u
  i32.const 3
  i32.add
  local.get $0
  i32.const 1000
  i32.ge_u
  i32.add
  local.get $0
  i32.const 100
  i32.lt_u
  select
  local.get $0
  i32.const 1000000
  i32.ge_u
  i32.const 6
  i32.add
  local.get $0
  i32.const 1000000000
  i32.ge_u
  i32.const 8
  i32.add
  local.get $0
  i32.const 100000000
  i32.ge_u
  i32.add
  local.get $0
  i32.const 10000000
  i32.lt_u
  select
  local.get $0
  i32.const 100000
  i32.lt_u
  select
 )
 (func $~lib/util/number/utoa_dec_simple<u32> (param $0 i32) (param $1 i32) (param $2 i32)
  loop $do-continue|0
   local.get $0
   local.get $2
   i32.const 1
   i32.sub
   local.tee $2
   i32.const 1
   i32.shl
   i32.add
   local.get $1
   i32.const 10
   i32.rem_u
   i32.const 48
   i32.add
   i32.store16
   local.get $1
   i32.const 10
   i32.div_u
   local.tee $1
   br_if $do-continue|0
  end
 )
 (func $~lib/number/I32#toString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  block $__inlined_func$~lib/util/number/itoa32
   local.get $0
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 2240
    local.set $0
    br $__inlined_func$~lib/util/number/itoa32
   end
   i32.const 0
   local.get $0
   i32.sub
   local.get $0
   local.get $0
   i32.const 31
   i32.shr_u
   local.tee $1
   select
   local.tee $2
   call $~lib/util/number/decimalCount32
   local.get $1
   i32.add
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.const 1
   i32.shl
   i32.const 1
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
   local.get $0
   local.get $2
   local.get $3
   call $~lib/util/number/utoa_dec_simple<u32>
   local.get $1
   if
    local.get $0
    i32.const 45
    i32.store16
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
  end
  local.get $0
 )
 (func $~lib/util/number/genDigits (param $0 i64) (param $1 i32) (param $2 i64) (param $3 i32) (param $4 i64) (param $5 i32) (result i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  (local $10 i64)
  (local $11 i64)
  local.get $2
  local.get $0
  i64.sub
  local.set $8
  local.get $2
  i64.const 1
  i32.const 0
  local.get $3
  i32.sub
  local.tee $9
  i64.extend_i32_s
  i64.shl
  local.tee $10
  i64.const 1
  i64.sub
  local.tee $11
  i64.and
  local.set $6
  local.get $2
  local.get $9
  i64.extend_i32_s
  i64.shr_u
  i32.wrap_i64
  local.tee $1
  call $~lib/util/number/decimalCount32
  local.set $7
  loop $while-continue|0
   local.get $7
   i32.const 0
   i32.gt_s
   if
    block $break|1
     block $case10|1
      block $case9|1
       block $case8|1
        block $case7|1
         block $case6|1
          block $case5|1
           block $case4|1
            block $case3|1
             block $case2|1
              block $case1|1
               block $case0|1
                local.get $7
                i32.const 1
                i32.sub
                br_table $case9|1 $case8|1 $case7|1 $case6|1 $case5|1 $case4|1 $case3|1 $case2|1 $case1|1 $case0|1 $case10|1
               end
               local.get $1
               i32.const 1000000000
               i32.div_u
               local.set $3
               local.get $1
               i32.const 1000000000
               i32.rem_u
               local.set $1
               br $break|1
              end
              local.get $1
              i32.const 100000000
              i32.div_u
              local.set $3
              local.get $1
              i32.const 100000000
              i32.rem_u
              local.set $1
              br $break|1
             end
             local.get $1
             i32.const 10000000
             i32.div_u
             local.set $3
             local.get $1
             i32.const 10000000
             i32.rem_u
             local.set $1
             br $break|1
            end
            local.get $1
            i32.const 1000000
            i32.div_u
            local.set $3
            local.get $1
            i32.const 1000000
            i32.rem_u
            local.set $1
            br $break|1
           end
           local.get $1
           i32.const 100000
           i32.div_u
           local.set $3
           local.get $1
           i32.const 100000
           i32.rem_u
           local.set $1
           br $break|1
          end
          local.get $1
          i32.const 10000
          i32.div_u
          local.set $3
          local.get $1
          i32.const 10000
          i32.rem_u
          local.set $1
          br $break|1
         end
         local.get $1
         i32.const 1000
         i32.div_u
         local.set $3
         local.get $1
         i32.const 1000
         i32.rem_u
         local.set $1
         br $break|1
        end
        local.get $1
        i32.const 100
        i32.div_u
        local.set $3
        local.get $1
        i32.const 100
        i32.rem_u
        local.set $1
        br $break|1
       end
       local.get $1
       i32.const 10
       i32.div_u
       local.set $3
       local.get $1
       i32.const 10
       i32.rem_u
       local.set $1
       br $break|1
      end
      local.get $1
      local.set $3
      i32.const 0
      local.set $1
      br $break|1
     end
     i32.const 0
     local.set $3
    end
    local.get $3
    local.get $5
    i32.or
    if
     local.get $5
     i32.const 1
     i32.shl
     i32.const 2512
     i32.add
     local.get $3
     i32.const 65535
     i32.and
     i32.const 48
     i32.add
     i32.store16
     local.get $5
     i32.const 1
     i32.add
     local.set $5
    end
    local.get $7
    i32.const 1
    i32.sub
    local.set $7
    local.get $6
    local.get $1
    i64.extend_i32_u
    local.get $9
    i64.extend_i32_s
    i64.shl
    i64.add
    local.tee $0
    local.get $4
    i64.le_u
    if
     local.get $7
     global.get $~lib/util/number/_K
     i32.add
     global.set $~lib/util/number/_K
     local.get $7
     i32.const 2
     i32.shl
     i32.const 3440
     i32.add
     i64.load32_u
     local.get $9
     i64.extend_i32_s
     i64.shl
     local.set $2
     local.get $5
     i32.const 1
     i32.shl
     i32.const 2510
     i32.add
     local.tee $3
     i32.load16_u
     local.set $1
     loop $while-continue|3
      i32.const 1
      local.get $8
      local.get $0
      i64.sub
      local.get $0
      local.get $2
      i64.add
      local.tee $6
      local.get $8
      i64.sub
      i64.gt_u
      local.get $6
      local.get $8
      i64.lt_u
      select
      i32.const 0
      local.get $2
      local.get $4
      local.get $0
      i64.sub
      i64.le_u
      i32.const 0
      local.get $0
      local.get $8
      i64.lt_u
      select
      select
      if
       local.get $1
       i32.const 1
       i32.sub
       local.set $1
       local.get $0
       local.get $2
       i64.add
       local.set $0
       br $while-continue|3
      end
     end
     local.get $3
     local.get $1
     i32.store16
     local.get $5
     return
    end
    br $while-continue|0
   end
  end
  local.get $9
  i64.extend_i32_s
  local.set $0
  loop $while-continue|4
   local.get $4
   i64.const 10
   i64.mul
   local.set $4
   local.get $6
   i64.const 10
   i64.mul
   local.tee $2
   local.get $0
   i64.shr_u
   local.tee $6
   local.get $5
   i64.extend_i32_s
   i64.or
   i64.const 0
   i64.ne
   if
    local.get $5
    i32.const 1
    i32.shl
    i32.const 2512
    i32.add
    local.get $6
    i32.wrap_i64
    i32.const 65535
    i32.and
    i32.const 48
    i32.add
    i32.store16
    local.get $5
    i32.const 1
    i32.add
    local.set $5
   end
   local.get $7
   i32.const 1
   i32.sub
   local.set $7
   local.get $4
   local.get $2
   local.get $11
   i64.and
   local.tee $6
   i64.le_u
   br_if $while-continue|4
  end
  local.get $7
  global.get $~lib/util/number/_K
  i32.add
  global.set $~lib/util/number/_K
  local.get $6
  local.set $0
  local.get $8
  i32.const 0
  local.get $7
  i32.sub
  i32.const 2
  i32.shl
  i32.const 3440
  i32.add
  i64.load32_u
  i64.mul
  local.set $2
  local.get $5
  i32.const 1
  i32.shl
  i32.const 2510
  i32.add
  local.tee $3
  i32.load16_u
  local.set $1
  loop $while-continue|6
   i32.const 1
   local.get $2
   local.get $0
   i64.sub
   local.get $0
   local.get $10
   i64.add
   local.tee $6
   local.get $2
   i64.sub
   i64.gt_u
   local.get $2
   local.get $6
   i64.gt_u
   select
   i32.const 0
   local.get $10
   local.get $4
   local.get $0
   i64.sub
   i64.le_u
   i32.const 0
   local.get $0
   local.get $2
   i64.lt_u
   select
   select
   if
    local.get $1
    i32.const 1
    i32.sub
    local.set $1
    local.get $0
    local.get $10
    i64.add
    local.set $0
    br $while-continue|6
   end
  end
  local.get $3
  local.get $1
  i32.store16
  local.get $5
 )
 (func $~lib/util/number/prettify (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  i32.eqz
  if
   local.get $0
   local.get $1
   i32.const 1
   i32.shl
   i32.add
   i32.const 3145774
   i32.store
   local.get $1
   i32.const 2
   i32.add
   return
  end
  local.get $1
  local.get $2
  i32.add
  local.tee $3
  i32.const 21
  i32.le_s
  i32.const 0
  local.get $1
  local.get $3
  i32.le_s
  select
  if (result i32)
   loop $for-loop|0
    local.get $1
    local.get $3
    i32.lt_s
    if
     local.get $0
     local.get $1
     i32.const 1
     i32.shl
     i32.add
     i32.const 48
     i32.store16
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|0
    end
   end
   local.get $0
   local.get $3
   i32.const 1
   i32.shl
   i32.add
   i32.const 3145774
   i32.store
   local.get $3
   i32.const 2
   i32.add
  else
   local.get $3
   i32.const 21
   i32.le_s
   i32.const 0
   local.get $3
   i32.const 0
   i32.gt_s
   select
   if (result i32)
    local.get $0
    local.get $3
    i32.const 1
    i32.shl
    i32.add
    local.tee $0
    i32.const 2
    i32.add
    local.get $0
    i32.const 0
    local.get $2
    i32.sub
    i32.const 1
    i32.shl
    call $~lib/memory/memory.copy
    local.get $0
    i32.const 46
    i32.store16
    local.get $1
    i32.const 1
    i32.add
   else
    local.get $3
    i32.const 0
    i32.le_s
    i32.const 0
    local.get $3
    i32.const -6
    i32.gt_s
    select
    if (result i32)
     local.get $0
     i32.const 2
     local.get $3
     i32.sub
     local.tee $3
     i32.const 1
     i32.shl
     i32.add
     local.get $0
     local.get $1
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $0
     i32.const 3014704
     i32.store
     i32.const 2
     local.set $2
     loop $for-loop|1
      local.get $2
      local.get $3
      i32.lt_s
      if
       local.get $0
       local.get $2
       i32.const 1
       i32.shl
       i32.add
       i32.const 48
       i32.store16
       local.get $2
       i32.const 1
       i32.add
       local.set $2
       br $for-loop|1
      end
     end
     local.get $1
     local.get $3
     i32.add
    else
     local.get $1
     i32.const 1
     i32.eq
     if (result i32)
      local.get $0
      i32.const 101
      i32.store16 offset=2
      local.get $0
      local.tee $1
      i32.const 4
      i32.add
      local.get $3
      i32.const 1
      i32.sub
      local.tee $0
      i32.const 0
      i32.lt_s
      local.tee $2
      if
       i32.const 0
       local.get $0
       i32.sub
       local.set $0
      end
      local.get $0
      local.get $0
      call $~lib/util/number/decimalCount32
      i32.const 1
      i32.add
      local.tee $0
      call $~lib/util/number/utoa_dec_simple<u32>
      local.get $1
      i32.const 45
      i32.const 43
      local.get $2
      select
      i32.store16 offset=4
      local.get $0
      i32.const 2
      i32.add
     else
      local.get $0
      i32.const 4
      i32.add
      local.get $0
      i32.const 2
      i32.add
      local.get $1
      i32.const 1
      i32.shl
      local.tee $2
      i32.const 2
      i32.sub
      call $~lib/memory/memory.copy
      local.get $0
      i32.const 46
      i32.store16 offset=2
      local.get $0
      local.get $2
      i32.add
      local.tee $0
      i32.const 101
      i32.store16 offset=2
      local.get $0
      local.tee $2
      i32.const 4
      i32.add
      local.get $3
      i32.const 1
      i32.sub
      local.tee $0
      i32.const 0
      i32.lt_s
      local.tee $3
      if
       i32.const 0
       local.get $0
       i32.sub
       local.set $0
      end
      local.get $0
      local.get $0
      call $~lib/util/number/decimalCount32
      i32.const 1
      i32.add
      local.tee $0
      call $~lib/util/number/utoa_dec_simple<u32>
      local.get $2
      i32.const 45
      i32.const 43
      local.get $3
      select
      i32.store16 offset=4
      local.get $0
      local.get $1
      i32.add
      i32.const 2
      i32.add
     end
    end
   end
  end
 )
 (func $~lib/util/number/dtoa_core (param $0 f64) (result i32)
  (local $1 i64)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i64)
  (local $11 i64)
  local.get $0
  f64.const 0
  f64.lt
  local.tee $8
  if (result f64)
   i32.const 2512
   i32.const 45
   i32.store16
   local.get $0
   f64.neg
  else
   local.get $0
  end
  i64.reinterpret_f64
  local.tee $3
  i64.const 9218868437227405312
  i64.and
  i64.const 52
  i64.shr_u
  i32.wrap_i64
  local.tee $6
  i32.const 0
  i32.ne
  i64.extend_i32_u
  i64.const 52
  i64.shl
  local.get $3
  i64.const 4503599627370495
  i64.and
  i64.add
  local.tee $1
  i64.const 1
  i64.shl
  i64.const 1
  i64.add
  local.tee $3
  i64.clz
  i32.wrap_i64
  local.set $2
  local.get $3
  local.get $2
  i64.extend_i32_s
  i64.shl
  global.set $~lib/util/number/_frc_plus
  local.get $6
  i32.const 1
  local.get $6
  select
  i32.const 1075
  i32.sub
  local.tee $6
  i32.const 1
  i32.sub
  local.get $2
  i32.sub
  local.set $2
  local.get $1
  local.get $1
  i64.const 4503599627370496
  i64.eq
  i32.const 1
  i32.add
  local.tee $7
  i64.extend_i32_s
  i64.shl
  i64.const 1
  i64.sub
  local.get $6
  local.get $7
  i32.sub
  local.get $2
  i32.sub
  i64.extend_i32_s
  i64.shl
  global.set $~lib/util/number/_frc_minus
  local.get $2
  global.set $~lib/util/number/_exp
  i32.const 348
  i32.const -61
  global.get $~lib/util/number/_exp
  i32.sub
  f64.convert_i32_s
  f64.const 0.30102999566398114
  f64.mul
  f64.const 347
  f64.add
  local.tee $0
  i32.trunc_f64_s
  local.tee $2
  local.get $0
  local.get $2
  f64.convert_i32_s
  f64.ne
  i32.add
  i32.const 3
  i32.shr_s
  i32.const 1
  i32.add
  local.tee $2
  i32.const 3
  i32.shl
  local.tee $7
  i32.sub
  global.set $~lib/util/number/_K
  local.get $7
  i32.const 2568
  i32.add
  i64.load
  global.set $~lib/util/number/_frc_pow
  local.get $2
  i32.const 1
  i32.shl
  i32.const 3264
  i32.add
  i32.load16_s
  global.set $~lib/util/number/_exp_pow
  global.get $~lib/util/number/_frc_pow
  local.tee $4
  i64.const 32
  i64.shr_u
  local.set $3
  local.get $4
  i64.const 4294967295
  i64.and
  local.tee $4
  global.get $~lib/util/number/_frc_plus
  local.tee $5
  i64.const 32
  i64.shr_u
  local.tee $10
  i64.mul
  local.get $4
  local.get $5
  i64.const 4294967295
  i64.and
  local.tee $11
  i64.mul
  i64.const 32
  i64.shr_u
  i64.add
  local.set $5
  local.get $8
  i32.const 1
  i32.shl
  i32.const 2512
  i32.add
  local.get $3
  local.get $1
  local.get $1
  i64.clz
  i32.wrap_i64
  local.tee $2
  i64.extend_i32_s
  i64.shl
  local.tee $1
  i64.const 32
  i64.shr_u
  local.tee $9
  i64.mul
  local.get $4
  local.get $9
  i64.mul
  local.get $4
  local.get $1
  i64.const 4294967295
  i64.and
  local.tee $1
  i64.mul
  i64.const 32
  i64.shr_u
  i64.add
  local.tee $9
  i64.const 32
  i64.shr_u
  i64.add
  local.get $1
  local.get $3
  i64.mul
  local.get $9
  i64.const 4294967295
  i64.and
  i64.add
  i64.const 2147483647
  i64.add
  i64.const 32
  i64.shr_u
  i64.add
  global.get $~lib/util/number/_exp_pow
  local.tee $7
  local.get $6
  local.get $2
  i32.sub
  i32.add
  i32.const -64
  i32.sub
  local.get $3
  local.get $10
  i64.mul
  local.get $5
  i64.const 32
  i64.shr_u
  i64.add
  local.get $3
  local.get $11
  i64.mul
  local.get $5
  i64.const 4294967295
  i64.and
  i64.add
  i64.const 2147483647
  i64.add
  i64.const 32
  i64.shr_u
  i64.add
  i64.const 1
  i64.sub
  local.tee $1
  local.get $7
  global.get $~lib/util/number/_exp
  i32.add
  i32.const -64
  i32.sub
  local.get $1
  local.get $3
  global.get $~lib/util/number/_frc_minus
  local.tee $1
  i64.const 32
  i64.shr_u
  local.tee $5
  i64.mul
  local.get $4
  local.get $5
  i64.mul
  local.get $4
  local.get $1
  i64.const 4294967295
  i64.and
  local.tee $4
  i64.mul
  i64.const 32
  i64.shr_u
  i64.add
  local.tee $1
  i64.const 32
  i64.shr_u
  i64.add
  local.get $3
  local.get $4
  i64.mul
  local.get $1
  i64.const 4294967295
  i64.and
  i64.add
  i64.const 2147483647
  i64.add
  i64.const 32
  i64.shr_u
  i64.add
  i64.const 1
  i64.add
  i64.sub
  local.get $8
  call $~lib/util/number/genDigits
  local.get $8
  i32.sub
  global.get $~lib/util/number/_K
  call $~lib/util/number/prettify
  local.get $8
  i32.add
 )
 (func $~lib/number/F64#toString (param $0 f64) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  block $__inlined_func$~lib/util/number/dtoa
   local.get $0
   f64.const 0
   f64.eq
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 2368
    local.set $1
    br $__inlined_func$~lib/util/number/dtoa
   end
   local.get $0
   local.get $0
   f64.sub
   f64.const 0
   f64.ne
   if
    local.get $0
    local.get $0
    f64.ne
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     i32.const 2400
     local.set $1
     br $__inlined_func$~lib/util/number/dtoa
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 2432
    i32.const 2480
    local.get $0
    f64.const 0
    f64.lt
    select
    local.set $1
    br $__inlined_func$~lib/util/number/dtoa
   end
   local.get $0
   call $~lib/util/number/dtoa_core
   i32.const 1
   i32.shl
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.const 1
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.store
   local.get $1
   i32.const 2512
   local.get $2
   call $~lib/memory/memory.copy
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
  end
  local.get $1
 )
 (func $~lib/string/String.__concat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  block $__inlined_func$~lib/string/String#concat
   local.get $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   i32.const 1
   i32.shl
   local.tee $4
   local.get $0
   local.tee $2
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   i32.const 1
   i32.shl
   local.tee $3
   i32.add
   local.tee $0
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 1952
    local.set $0
    br $__inlined_func$~lib/string/String#concat
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.const 1
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
   local.get $0
   local.get $2
   local.get $3
   call $~lib/memory/memory.copy
   local.get $0
   local.get $3
   i32.add
   local.get $1
   local.get $4
   call $~lib/memory/memory.copy
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
  end
  local.get $0
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#join (param $0 i32) (result i32)
  local.get $0
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 2
  i32.shr_u
  call $~lib/util/string/joinReferenceArray<~lib/string/String>
 )
 (func $~lib/as-string-sink/index/StringSink#write (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  local.tee $3
  local.get $3
  i32.eqz
  if
   return
  end
  i32.const 1
  i32.shl
  local.tee $3
  local.get $0
  i32.load offset=4
  i32.add
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load
  local.tee $4
  i32.store
  local.get $4
  i32.const 20
  i32.sub
  i32.load offset=16
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  local.get $4
  i32.gt_u
  if
   local.get $0
   local.get $0
   i32.load
   i32.const 1
   i32.const 32
   local.get $2
   i32.const 1
   i32.sub
   i32.clz
   i32.sub
   i32.shl
   call $~lib/rt/itcms/__renew
   call $assembly/ebm/__EBM#set:featureNames
  end
  local.get $0
  i32.load offset=4
  local.tee $2
  local.get $0
  i32.load
  i32.add
  local.get $1
  local.get $3
  call $~lib/memory/memory.copy
  local.get $0
  local.get $2
  local.get $3
  i32.add
  i32.store offset=4
 )
 (func $~lib/array/Array<f64>#__uset (param $0 i32) (param $1 i32) (param $2 f64)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  local.get $2
  f64.store
 )
 (func $~lib/array/Array<f64>#__set (param $0 i32) (param $1 i32) (param $2 f64)
  (local $3 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 1088
    i32.const 1152
    i32.const 115
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $3
   i32.const 3
   call $~lib/array/ensureCapacity
   local.get $0
   local.get $3
   i32.store offset=12
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<f64>#__uset
 )
 (func $~lib/array/Array<i32>#push (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.const 1
  i32.add
  local.tee $3
  i32.const 2
  call $~lib/array/ensureCapacity
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store
  local.get $0
  local.get $3
  i32.store offset=12
 )
 (func $~lib/array/Array<i32>#__get (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 1088
   i32.const 1152
   i32.const 99
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $~lib/array/Array<i32>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 1088
    i32.const 1152
    i32.const 115
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $3
   i32.const 2
   call $~lib/array/ensureCapacity
   local.get $0
   local.get $3
   i32.store offset=12
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
 )
 (func $~lib/math/NativeMath.scalbn (param $0 f64) (param $1 i32) (result f64)
  local.get $1
  i32.const 1023
  i32.gt_s
  if (result f64)
   local.get $0
   f64.const 8988465674311579538646525e283
   f64.mul
   local.set $0
   local.get $1
   i32.const 1023
   i32.sub
   local.tee $1
   i32.const 1023
   i32.gt_s
   if (result f64)
    local.get $1
    i32.const 1023
    i32.sub
    local.tee $1
    i32.const 1023
    local.get $1
    i32.const 1023
    i32.lt_s
    select
    local.set $1
    local.get $0
    f64.const 8988465674311579538646525e283
    f64.mul
   else
    local.get $0
   end
  else
   local.get $1
   i32.const -1022
   i32.lt_s
   if (result f64)
    local.get $0
    f64.const 2.004168360008973e-292
    f64.mul
    local.set $0
    local.get $1
    i32.const 969
    i32.add
    local.tee $1
    i32.const -1022
    i32.lt_s
    if (result f64)
     local.get $1
     i32.const 969
     i32.add
     local.tee $1
     i32.const -1022
     local.get $1
     i32.const -1022
     i32.gt_s
     select
     local.set $1
     local.get $0
     f64.const 2.004168360008973e-292
     f64.mul
    else
     local.get $0
    end
   else
    local.get $0
   end
  end
  local.get $1
  i64.extend_i32_s
  i64.const 1023
  i64.add
  i64.const 52
  i64.shl
  f64.reinterpret_i64
  f64.mul
 )
 (func $~lib/math/NativeMath.exp (param $0 f64) (result f64)
  (local $1 f64)
  (local $2 i32)
  (local $3 f64)
  (local $4 i32)
  (local $5 f64)
  (local $6 i32)
  (local $7 f64)
  local.get $0
  i64.reinterpret_f64
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.tee $2
  i32.const 31
  i32.shr_u
  local.set $6
  local.get $2
  i32.const 2147483647
  i32.and
  local.tee $2
  i32.const 1082532651
  i32.ge_u
  if
   local.get $0
   local.get $0
   f64.ne
   if
    local.get $0
    return
   end
   local.get $0
   f64.const 709.782712893384
   f64.gt
   if
    local.get $0
    f64.const 8988465674311579538646525e283
    f64.mul
    return
   end
   local.get $0
   f64.const -745.1332191019411
   f64.lt
   if
    f64.const 0
    return
   end
  end
  local.get $2
  i32.const 1071001154
  i32.gt_u
  if
   local.get $0
   local.get $2
   i32.const 1072734898
   i32.ge_u
   if (result i32)
    local.get $0
    f64.const 1.4426950408889634
    f64.mul
    f64.const 0.5
    local.get $0
    f64.copysign
    f64.add
    i32.trunc_f64_s
   else
    i32.const 1
    local.get $6
    i32.const 1
    i32.shl
    i32.sub
   end
   local.tee $4
   f64.convert_i32_s
   f64.const 0.6931471803691238
   f64.mul
   f64.sub
   local.tee $1
   local.get $4
   f64.convert_i32_s
   f64.const 1.9082149292705877e-10
   f64.mul
   local.tee $7
   f64.sub
   local.set $0
  else
   local.get $2
   i32.const 1043333120
   i32.gt_u
   if (result f64)
    local.get $0
   else
    local.get $0
    f64.const 1
    f64.add
    return
   end
   local.set $1
  end
  local.get $0
  local.get $0
  f64.mul
  local.tee $3
  local.get $3
  f64.mul
  local.set $5
  local.get $0
  local.get $0
  local.get $3
  f64.const 0.16666666666666602
  f64.mul
  local.get $5
  local.get $3
  f64.const 6.613756321437934e-05
  f64.mul
  f64.const -2.7777777777015593e-03
  f64.add
  local.get $5
  local.get $3
  f64.const 4.1381367970572385e-08
  f64.mul
  f64.const -1.6533902205465252e-06
  f64.add
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.sub
  local.tee $0
  f64.mul
  f64.const 2
  local.get $0
  f64.sub
  f64.div
  local.get $7
  f64.sub
  local.get $1
  f64.add
  f64.const 1
  f64.add
  local.set $0
  local.get $4
  if (result f64)
   local.get $0
   local.get $4
   call $~lib/math/NativeMath.scalbn
  else
   local.get $0
  end
 )
 (func $~lib/math/NativeMath.pow (param $0 f64) (param $1 f64) (result f64)
  (local $2 f64)
  (local $3 f64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 f64)
  (local $8 i32)
  (local $9 i32)
  (local $10 f64)
  (local $11 i32)
  (local $12 i32)
  (local $13 f64)
  (local $14 i64)
  (local $15 f64)
  (local $16 i32)
  (local $17 f64)
  (local $18 i32)
  (local $19 f64)
  block $folding-inner3
   block $folding-inner2
    block $folding-inner1
     block $folding-inner0
      local.get $1
      f64.abs
      f64.const 2
      f64.le
      if
       local.get $1
       f64.const 2
       f64.eq
       br_if $folding-inner0
       local.get $1
       f64.const 0.5
       f64.eq
       if
        local.get $0
        f64.sqrt
        f64.abs
        f64.const inf
        local.get $0
        f64.const -inf
        f64.ne
        select
        return
       end
       local.get $1
       f64.const -1
       f64.eq
       br_if $folding-inner1
       local.get $1
       f64.const 1
       f64.eq
       if
        local.get $0
        return
       end
       local.get $1
       f64.const 0
       f64.eq
       if
        f64.const 1
        return
       end
      end
      local.get $0
      i64.reinterpret_f64
      local.tee $14
      i32.wrap_i64
      local.set $18
      local.get $14
      i64.const 32
      i64.shr_u
      i32.wrap_i64
      local.tee $16
      i32.const 2147483647
      i32.and
      local.set $4
      local.get $1
      i64.reinterpret_f64
      local.tee $14
      i64.const 32
      i64.shr_u
      i32.wrap_i64
      local.tee $8
      i32.const 2147483647
      i32.and
      local.tee $9
      local.get $14
      i32.wrap_i64
      local.tee $6
      i32.or
      i32.eqz
      if
       f64.const 1
       return
      end
      i32.const 1
      local.get $6
      i32.const 0
      local.get $9
      i32.const 2146435072
      i32.eq
      select
      i32.const 1
      local.get $9
      i32.const 2146435072
      i32.gt_u
      i32.const 1
      local.get $18
      i32.const 0
      local.get $4
      i32.const 2146435072
      i32.eq
      select
      local.get $4
      i32.const 2146435072
      i32.gt_s
      select
      select
      select
      if
       local.get $0
       local.get $1
       f64.add
       return
      end
      local.get $16
      i32.const 0
      i32.lt_s
      if (result i32)
       local.get $9
       i32.const 1128267776
       i32.ge_u
       if (result i32)
        i32.const 2
       else
        local.get $9
        i32.const 1072693248
        i32.ge_u
        if (result i32)
         i32.const 52
         i32.const 20
         local.get $9
         i32.const 20
         i32.shr_u
         i32.const 1023
         i32.sub
         local.tee $11
         i32.const 20
         i32.gt_s
         local.tee $5
         select
         local.get $11
         i32.sub
         local.set $12
         i32.const 2
         local.get $6
         local.get $9
         local.get $5
         select
         local.tee $5
         local.get $12
         i32.shr_u
         local.tee $11
         i32.const 1
         i32.and
         i32.sub
         i32.const 0
         local.get $5
         local.get $11
         local.get $12
         i32.shl
         i32.eq
         select
        else
         i32.const 0
        end
       end
      else
       i32.const 0
      end
      local.set $5
      local.get $6
      i32.eqz
      if
       local.get $9
       i32.const 2146435072
       i32.eq
       if
        local.get $1
        f64.const 0
        local.get $8
        i32.const 0
        i32.ge_s
        select
        f64.const 0
        local.get $1
        f64.neg
        local.get $8
        i32.const 0
        i32.ge_s
        select
        local.get $4
        i32.const 1072693248
        i32.ge_s
        select
        f64.const nan:0x8000000000000
        local.get $18
        local.get $4
        i32.const 1072693248
        i32.sub
        i32.or
        select
        return
       end
       local.get $9
       i32.const 1072693248
       i32.eq
       if
        local.get $8
        i32.const 0
        i32.ge_s
        if
         local.get $0
         return
        end
        br $folding-inner1
       end
       local.get $8
       i32.const 1073741824
       i32.eq
       br_if $folding-inner0
       local.get $8
       i32.const 1071644672
       i32.eq
       if
        local.get $16
        i32.const 0
        i32.ge_s
        if
         local.get $0
         f64.sqrt
         return
        end
       end
      end
      local.get $0
      f64.abs
      local.set $3
      local.get $18
      i32.eqz
      if
       i32.const 1
       local.get $4
       i32.const 1072693248
       i32.eq
       local.get $4
       i32.const 2146435072
       i32.eq
       i32.const 1
       local.get $4
       select
       select
       if
        f64.const 1
        local.get $3
        f64.div
        local.get $3
        local.get $8
        i32.const 0
        i32.lt_s
        select
        local.set $3
        local.get $16
        i32.const 0
        i32.lt_s
        if (result f64)
         local.get $5
         local.get $4
         i32.const 1072693248
         i32.sub
         i32.or
         if (result f64)
          local.get $3
          f64.neg
          local.get $3
          local.get $5
          i32.const 1
          i32.eq
          select
         else
          local.get $3
          local.get $3
          f64.sub
          local.tee $0
          local.get $0
          f64.div
         end
        else
         local.get $3
        end
        return
       end
      end
      local.get $16
      i32.const 0
      i32.lt_s
      if (result f64)
       local.get $5
       i32.eqz
       if
        local.get $0
        local.get $0
        f64.sub
        local.tee $0
        local.get $0
        f64.div
        return
       end
       f64.const -1
       f64.const 1
       local.get $5
       i32.const 1
       i32.eq
       select
      else
       f64.const 1
      end
      local.set $10
      local.get $9
      i32.const 1105199104
      i32.gt_u
      if (result f64)
       local.get $9
       i32.const 1139802112
       i32.gt_u
       if
        local.get $4
        i32.const 1072693247
        i32.le_s
        if
         f64.const inf
         f64.const 0
         local.get $8
         i32.const 0
         i32.lt_s
         select
         return
        end
        local.get $4
        i32.const 1072693248
        i32.ge_s
        if
         f64.const inf
         f64.const 0
         local.get $8
         i32.const 0
         i32.gt_s
         select
         return
        end
       end
       local.get $4
       i32.const 1072693247
       i32.lt_s
       if
        local.get $10
        f64.const 1.e+300
        f64.mul
        f64.const 1.e+300
        f64.mul
        local.get $10
        f64.const 1e-300
        f64.mul
        f64.const 1e-300
        f64.mul
        local.get $8
        i32.const 0
        i32.lt_s
        select
        return
       end
       local.get $4
       i32.const 1072693248
       i32.gt_s
       if
        local.get $10
        f64.const 1.e+300
        f64.mul
        f64.const 1.e+300
        f64.mul
        local.get $10
        f64.const 1e-300
        f64.mul
        f64.const 1e-300
        f64.mul
        local.get $8
        i32.const 0
        i32.gt_s
        select
        return
       end
       local.get $3
       f64.const 1
       f64.sub
       local.tee $0
       f64.const 1.4426950216293335
       f64.mul
       local.tee $3
       local.get $0
       f64.const 1.9259629911266175e-08
       f64.mul
       local.get $0
       local.get $0
       f64.mul
       f64.const 0.5
       local.get $0
       f64.const 0.3333333333333333
       local.get $0
       f64.const 0.25
       f64.mul
       f64.sub
       f64.mul
       f64.sub
       f64.mul
       f64.const 1.4426950408889634
       f64.mul
       f64.sub
       local.tee $0
       f64.add
       i64.reinterpret_f64
       i64.const -4294967296
       i64.and
       f64.reinterpret_i64
       local.set $7
       local.get $0
       local.get $7
       local.get $3
       f64.sub
       f64.sub
      else
       local.get $4
       i32.const 1048576
       i32.lt_s
       if (result i32)
        local.get $3
        f64.const 9007199254740992
        f64.mul
        local.tee $3
        i64.reinterpret_f64
        i64.const 32
        i64.shr_u
        i32.wrap_i64
        local.set $4
        i32.const -53
       else
        i32.const 0
       end
       local.get $4
       i32.const 20
       i32.shr_s
       i32.const 1023
       i32.sub
       i32.add
       local.set $6
       local.get $4
       i32.const 1048575
       i32.and
       local.tee $5
       i32.const 1072693248
       i32.or
       local.set $4
       local.get $5
       i32.const 235662
       i32.le_s
       if (result i32)
        i32.const 0
       else
        local.get $5
        i32.const 767610
        i32.lt_s
        if (result i32)
         i32.const 1
        else
         local.get $6
         i32.const 1
         i32.add
         local.set $6
         local.get $4
         i32.const -1048576
         i32.add
         local.set $4
         i32.const 0
        end
       end
       local.set $5
       local.get $3
       i64.reinterpret_f64
       i64.const 4294967295
       i64.and
       local.get $4
       i64.extend_i32_s
       i64.const 32
       i64.shl
       i64.or
       f64.reinterpret_i64
       local.tee $7
       f64.const 1.5
       f64.const 1
       local.get $5
       select
       local.tee $2
       f64.sub
       local.tee $3
       f64.const 1
       local.get $7
       local.get $2
       f64.add
       f64.div
       local.tee $0
       f64.mul
       local.tee $17
       i64.reinterpret_f64
       i64.const -4294967296
       i64.and
       f64.reinterpret_i64
       local.tee $15
       local.get $15
       local.get $15
       f64.mul
       local.tee $19
       f64.const 3
       f64.add
       local.get $17
       local.get $17
       f64.mul
       local.tee $13
       local.get $13
       f64.mul
       local.get $13
       local.get $13
       local.get $13
       local.get $13
       local.get $13
       f64.const 0.20697501780033842
       f64.mul
       f64.const 0.23066074577556175
       f64.add
       f64.mul
       f64.const 0.272728123808534
       f64.add
       f64.mul
       f64.const 0.33333332981837743
       f64.add
       f64.mul
       f64.const 0.4285714285785502
       f64.add
       f64.mul
       f64.const 0.5999999999999946
       f64.add
       f64.mul
       local.get $0
       local.get $3
       local.get $15
       local.get $4
       i32.const 1
       i32.shr_s
       i32.const 536870912
       i32.or
       i32.const 524288
       i32.add
       local.get $5
       i32.const 18
       i32.shl
       i32.add
       i64.extend_i32_s
       i64.const 32
       i64.shl
       f64.reinterpret_i64
       local.tee $0
       f64.mul
       f64.sub
       local.get $15
       local.get $7
       local.get $0
       local.get $2
       f64.sub
       f64.sub
       f64.mul
       f64.sub
       f64.mul
       local.tee $2
       local.get $15
       local.get $17
       f64.add
       f64.mul
       f64.add
       local.tee $0
       f64.add
       i64.reinterpret_f64
       i64.const -4294967296
       i64.and
       f64.reinterpret_i64
       local.tee $7
       f64.mul
       local.tee $3
       local.get $2
       local.get $7
       f64.mul
       local.get $0
       local.get $7
       f64.const 3
       f64.sub
       local.get $19
       f64.sub
       f64.sub
       local.get $17
       f64.mul
       f64.add
       local.tee $0
       f64.add
       i64.reinterpret_f64
       i64.const -4294967296
       i64.and
       f64.reinterpret_i64
       local.tee $2
       f64.const 0.9617967009544373
       f64.mul
       local.tee $19
       local.get $2
       f64.const -7.028461650952758e-09
       f64.mul
       local.get $0
       local.get $2
       local.get $3
       f64.sub
       f64.sub
       f64.const 0.9617966939259756
       f64.mul
       f64.add
       f64.const 1.350039202129749e-08
       f64.const 0
       local.get $5
       select
       f64.add
       local.tee $2
       f64.add
       f64.const 0.5849624872207642
       f64.const 0
       local.get $5
       select
       local.tee $3
       f64.add
       local.get $6
       f64.convert_i32_s
       local.tee $0
       f64.add
       i64.reinterpret_f64
       i64.const -4294967296
       i64.and
       f64.reinterpret_i64
       local.set $7
       local.get $2
       local.get $7
       local.get $0
       f64.sub
       local.get $3
       f64.sub
       local.get $19
       f64.sub
       f64.sub
      end
      local.set $3
      local.get $1
      local.get $1
      i64.reinterpret_f64
      i64.const -4294967296
      i64.and
      f64.reinterpret_i64
      local.tee $0
      f64.sub
      local.get $7
      f64.mul
      local.get $1
      local.get $3
      f64.mul
      f64.add
      local.tee $1
      local.get $0
      local.get $7
      f64.mul
      local.tee $2
      f64.add
      local.tee $0
      i64.reinterpret_f64
      local.tee $14
      i32.wrap_i64
      local.set $5
      local.get $14
      i64.const 32
      i64.shr_u
      i32.wrap_i64
      local.tee $12
      i32.const 1083179008
      i32.ge_s
      if
       local.get $5
       local.get $12
       i32.const 1083179008
       i32.sub
       i32.or
       local.get $1
       f64.const 8.008566259537294e-17
       f64.add
       local.get $0
       local.get $2
       f64.sub
       f64.gt
       i32.or
       br_if $folding-inner2
      else
       local.get $12
       i32.const 2147483647
       i32.and
       i32.const 1083231232
       i32.ge_u
       i32.const 0
       local.get $5
       local.get $12
       i32.const 1064252416
       i32.add
       i32.or
       local.get $1
       local.get $0
       local.get $2
       f64.sub
       f64.le
       i32.or
       select
       br_if $folding-inner3
      end
      local.get $12
      i32.const 2147483647
      i32.and
      local.tee $11
      i32.const 20
      i32.shr_u
      i32.const 1023
      i32.sub
      local.set $5
      i32.const 0
      local.set $6
      local.get $1
      local.get $11
      i32.const 1071644672
      i32.gt_s
      if
       i32.const 1048575
       local.get $12
       i32.const 1048576
       local.get $5
       i32.const 1
       i32.add
       i32.shr_s
       i32.add
       local.tee $11
       i32.const 2147483647
       i32.and
       i32.const 20
       i32.shr_u
       i32.const 1023
       i32.sub
       local.tee $5
       i32.shr_s
       i32.const -1
       i32.xor
       local.get $11
       i32.and
       i64.extend_i32_s
       i64.const 32
       i64.shl
       f64.reinterpret_i64
       local.set $0
       i32.const 0
       local.get $11
       i32.const 1048575
       i32.and
       i32.const 1048576
       i32.or
       i32.const 20
       local.get $5
       i32.sub
       i32.shr_s
       local.tee $6
       i32.sub
       local.get $6
       local.get $12
       i32.const 0
       i32.lt_s
       select
       local.set $6
       local.get $2
       local.get $0
       f64.sub
       local.set $2
      end
      local.get $2
      f64.add
      i64.reinterpret_f64
      i64.const -4294967296
      i64.and
      f64.reinterpret_i64
      local.tee $0
      f64.const 0.6931471824645996
      f64.mul
      local.tee $3
      local.get $1
      local.get $0
      local.get $2
      f64.sub
      f64.sub
      f64.const 0.6931471805599453
      f64.mul
      local.get $0
      f64.const -1.904654299957768e-09
      f64.mul
      f64.add
      local.tee $1
      f64.add
      local.tee $2
      local.get $2
      f64.mul
      local.set $0
      local.get $10
      f64.const 1
      local.get $2
      local.get $2
      local.get $0
      local.get $0
      local.get $0
      local.get $0
      local.get $0
      f64.const 4.1381367970572385e-08
      f64.mul
      f64.const -1.6533902205465252e-06
      f64.add
      f64.mul
      f64.const 6.613756321437934e-05
      f64.add
      f64.mul
      f64.const -2.7777777777015593e-03
      f64.add
      f64.mul
      f64.const 0.16666666666666602
      f64.add
      f64.mul
      f64.sub
      local.tee $0
      f64.mul
      local.get $0
      f64.const 2
      f64.sub
      f64.div
      local.get $1
      local.get $2
      local.get $3
      f64.sub
      f64.sub
      local.tee $0
      local.get $2
      local.get $0
      f64.mul
      f64.add
      f64.sub
      local.get $2
      f64.sub
      f64.sub
      local.tee $0
      i64.reinterpret_f64
      i64.const 32
      i64.shr_u
      i32.wrap_i64
      local.get $6
      i32.const 20
      i32.shl
      i32.add
      local.tee $5
      i32.const 20
      i32.shr_s
      i32.const 0
      i32.le_s
      if (result f64)
       local.get $0
       local.get $6
       call $~lib/math/NativeMath.scalbn
      else
       local.get $0
       i64.reinterpret_f64
       i64.const 4294967295
       i64.and
       local.get $5
       i64.extend_i32_s
       i64.const 32
       i64.shl
       i64.or
       f64.reinterpret_i64
      end
      f64.mul
      return
     end
     local.get $0
     local.get $0
     f64.mul
     return
    end
    f64.const 1
    local.get $0
    f64.div
    return
   end
   local.get $10
   f64.const 1.e+300
   f64.mul
   f64.const 1.e+300
   f64.mul
   return
  end
  local.get $10
  f64.const 1e-300
  f64.mul
  f64.const 1e-300
  f64.mul
 )
 (func $assembly/ebm/sigmoid (param $0 f64) (result f64)
  (local $1 f64)
  local.get $0
  call $~lib/math/NativeMath.exp
  local.tee $0
  local.get $0
  f64.const 1
  f64.add
  f64.div
  f64.const 2e-16
  f64.add
  f64.const 10
  f64.const 3
  call $~lib/math/NativeMath.pow
  f64.mul
  local.tee $1
  f64.ceil
  local.tee $0
  local.get $0
  f64.const 1
  f64.sub
  local.get $1
  local.get $0
  f64.const 0.5
  f64.sub
  f64.ge
  select
  f64.const 10
  f64.const 3
  call $~lib/math/NativeMath.pow
  f64.div
 )
 (func $assembly/ebm/__EBM#set:sliceSampleIDs (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=80
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/map/Map<i32,~lib/array/Array<~lib/array/Array<i32>>>#get (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/HASH<i32>
  call $~lib/map/Map<i32,~lib/array/Array<~lib/array/Array<i32>>>#find
  local.tee $0
  i32.eqz
  if
   i32.const 3728
   i32.const 3792
   i32.const 105
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
 )
 (func $assembly/metrics/rootMeanSquaredError (param $0 i32) (param $1 i32) (result f64)
  (local $2 i32)
  (local $3 f64)
  loop $for-loop|0
   local.get $2
   local.get $0
   i32.load offset=12
   i32.lt_s
   if
    local.get $3
    local.get $1
    local.get $2
    call $~lib/array/Array<f64>#__get
    local.get $0
    local.get $2
    call $~lib/array/Array<f64>#__get
    f64.sub
    f64.const 2
    call $~lib/math/NativeMath.pow
    f64.add
    local.set $3
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $3
  local.get $0
  i32.load offset=12
  f64.convert_i32_s
  f64.div
  f64.sqrt
 )
 (func $~lib/array/Array<f64>#push (param $0 i32) (param $1 f64)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.const 1
  i32.add
  local.tee $3
  i32.const 3
  call $~lib/array/ensureCapacity
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 3
  i32.shl
  i32.add
  local.get $1
  f64.store
  local.get $0
  local.get $3
  i32.store offset=12
 )
 (func $assembly/metrics/meanAbsoluteError (param $0 i32) (param $1 i32) (result f64)
  (local $2 i32)
  (local $3 f64)
  loop $for-loop|0
   local.get $2
   local.get $0
   i32.load offset=12
   i32.lt_s
   if
    local.get $3
    local.get $0
    local.get $2
    call $~lib/array/Array<f64>#__get
    local.get $1
    local.get $2
    call $~lib/array/Array<f64>#__get
    f64.sub
    f64.abs
    f64.add
    local.set $3
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $3
  local.get $0
  i32.load offset=12
  f64.convert_i32_s
  f64.div
 )
 (func $assembly/metrics/meanAbsolutePercentageError (param $0 i32) (param $1 i32) (result f64)
  (local $2 i32)
  (local $3 f64)
  loop $for-loop|0
   local.get $2
   local.get $0
   i32.load offset=12
   i32.lt_s
   if
    local.get $3
    local.get $0
    local.get $2
    call $~lib/array/Array<f64>#__get
    local.get $1
    local.get $2
    call $~lib/array/Array<f64>#__get
    f64.sub
    f64.abs
    f64.const 1e-06
    local.get $0
    local.get $2
    call $~lib/array/Array<f64>#__get
    f64.abs
    f64.max
    f64.div
    f64.add
    local.set $3
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $3
  local.get $0
  i32.load offset=12
  f64.convert_i32_s
  f64.div
 )
 (func $~lib/array/Array<~lib/array/Array<~lib/array/Array<f64>>>#push (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.const 1
  i32.add
  local.tee $3
  i32.const 2
  call $~lib/array/ensureCapacity
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 1
  call $~lib/rt/itcms/__link
  local.get $0
  local.get $3
  i32.store offset=12
 )
 (func $assembly/metrics/countByThreshold~anonymous|0 (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  i32.const 1
  call $~lib/array/Array<f64>#__get
  local.get $0
  i32.const 1
  call $~lib/array/Array<f64>#__get
  f64.sub
  f64.const 0
  f64.gt
  if (result i32)
   i32.const 1
  else
   i32.const -1
   i32.const 0
   local.get $1
   i32.const 1
   call $~lib/array/Array<f64>#__get
   local.get $0
   i32.const 1
   call $~lib/array/Array<f64>#__get
   f64.sub
   f64.const 0
   f64.lt
   select
  end
 )
 (func $~lib/util/sort/insertionSort<~lib/array/Array<f64>> (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  loop $for-loop|0
   local.get $1
   local.get $4
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $5
    i32.store
    local.get $4
    i32.const 1
    i32.sub
    local.set $2
    loop $while-continue|1
     local.get $2
     i32.const 0
     i32.ge_s
     if
      block $while-break|1
       global.get $~lib/memory/__stack_pointer
       local.get $0
       local.get $2
       i32.const 2
       i32.shl
       i32.add
       i32.load
       local.tee $6
       i32.store offset=4
       i32.const 2
       global.set $~argumentsLength
       local.get $5
       local.get $6
       i32.const 3952
       i32.load
       call_indirect $0 (type $i32_i32_=>_i32)
       i32.const 0
       i32.ge_s
       br_if $while-break|1
       local.get $2
       local.tee $3
       i32.const 1
       i32.sub
       local.set $2
       local.get $0
       local.get $3
       i32.const 1
       i32.add
       i32.const 2
       i32.shl
       i32.add
       local.get $6
       i32.store
       br $while-continue|1
      end
     end
    end
    local.get $0
    local.get $2
    i32.const 1
    i32.add
    i32.const 2
    i32.shl
    i32.add
    local.get $5
    i32.store
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/metrics/getAccuracy (param $0 i32) (param $1 i32) (result f64)
  (local $2 i32)
  (local $3 f64)
  loop $for-loop|0
   local.get $2
   local.get $0
   i32.load offset=12
   i32.lt_s
   if
    local.get $3
    f64.const 1
    f64.add
    local.get $3
    f64.const 1
    f64.const 0
    local.get $1
    local.get $2
    call $~lib/array/Array<f64>#__get
    f64.const 0.5
    f64.ge
    select
    local.get $0
    local.get $2
    call $~lib/array/Array<f64>#__get
    f64.eq
    select
    local.set $3
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $3
  local.get $0
  i32.load offset=12
  f64.convert_i32_s
  f64.div
 )
 (func $assembly/metrics/getBalancedAccuracy (param $0 i32) (result f64)
  local.get $0
  i32.const 3
  call $~lib/array/Array<f64>#__get
  local.get $0
  i32.const 3
  call $~lib/array/Array<f64>#__get
  local.get $0
  i32.const 2
  call $~lib/array/Array<f64>#__get
  f64.add
  f64.div
  local.get $0
  i32.const 0
  call $~lib/array/Array<f64>#__get
  local.get $0
  i32.const 0
  call $~lib/array/Array<f64>#__get
  local.get $0
  i32.const 1
  call $~lib/array/Array<f64>#__get
  f64.add
  f64.div
  f64.add
  f64.const 0.5
  f64.mul
 )
 (func $~lib/rt/itcms/__pin (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  if
   local.get $0
   i32.const 20
   i32.sub
   local.tee $1
   i32.load offset=4
   i32.const 3
   i32.and
   i32.const 3
   i32.eq
   if
    i32.const 4560
    i32.const 1200
    i32.const 337
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   call $~lib/rt/itcms/Object#unlink
   local.get $1
   global.get $~lib/rt/itcms/pinSpace
   i32.const 3
   call $~lib/rt/itcms/Object#linkTo
  end
  local.get $0
 )
 (func $~lib/rt/itcms/__unpin (param $0 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  local.get $0
  i32.const 20
  i32.sub
  local.tee $0
  i32.load offset=4
  i32.const 3
  i32.and
  i32.const 3
  i32.ne
  if
   i32.const 4624
   i32.const 1200
   i32.const 351
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/state
  i32.const 1
  i32.eq
  if
   local.get $0
   call $~lib/rt/itcms/Object#makeGray
  else
   local.get $0
   call $~lib/rt/itcms/Object#unlink
   local.get $0
   global.get $~lib/rt/itcms/fromSpace
   global.get $~lib/rt/itcms/white
   call $~lib/rt/itcms/Object#linkTo
  end
 )
 (func $~lib/rt/itcms/__collect
  global.get $~lib/rt/itcms/state
  i32.const 0
  i32.gt_s
  if
   loop $while-continue|0
    global.get $~lib/rt/itcms/state
    if
     call $~lib/rt/itcms/step
     drop
     br $while-continue|0
    end
   end
  end
  call $~lib/rt/itcms/step
  drop
  loop $while-continue|1
   global.get $~lib/rt/itcms/state
   if
    call $~lib/rt/itcms/step
    drop
    br $while-continue|1
   end
  end
  global.get $~lib/rt/itcms/total
  i64.extend_i32_u
  i64.const 200
  i64.mul
  i64.const 100
  i64.div_u
  i32.wrap_i64
  i32.const 1024
  i32.add
  global.set $~lib/rt/itcms/threshold
 )
 (func $assembly/ebm/__EBM~visit (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load
  local.tee $1
  if
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=4
  local.tee $1
  if
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=8
  local.tee $1
  if
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=12
  local.tee $1
  if
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=16
  local.tee $1
  if
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=32
  local.tee $1
  if
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=36
  local.tee $1
  if
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=40
  local.tee $1
  if
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=44
  local.tee $1
  if
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=48
  local.tee $1
  if
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=60
  local.tee $1
  if
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=64
  local.tee $1
  if
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=68
  local.tee $1
  if
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=72
  local.tee $1
  if
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=76
  local.tee $1
  if
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=80
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/rt/__visit_members (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  block $folding-inner2
   block $folding-inner1
    block $folding-inner0
     block $invalid
      block $~lib/function/Function<%28~lib/array/Array<f64>%2C~lib/array/Array<f64>%29=>i32>
       block $~lib/staticarray/StaticArray<~lib/string/String>
        block $~lib/map/Map<i32,~lib/array/Array<~lib/array/Array<i32>>>
         block $assembly/ebm/__EBM
          block $~lib/string/String
           block $~lib/arraybuffer/ArrayBuffer
            local.get $0
            i32.const 8
            i32.sub
            i32.load
            br_table $~lib/arraybuffer/ArrayBuffer $~lib/string/String $folding-inner0 $folding-inner1 $folding-inner2 $folding-inner1 $folding-inner2 $folding-inner2 $folding-inner2 $folding-inner2 $assembly/ebm/__EBM $~lib/map/Map<i32,~lib/array/Array<~lib/array/Array<i32>>> $~lib/staticarray/StaticArray<~lib/string/String> $folding-inner0 $~lib/function/Function<%28~lib/array/Array<f64>%2C~lib/array/Array<f64>%29=>i32> $folding-inner2 $invalid
           end
           return
          end
          return
         end
         local.get $0
         call $assembly/ebm/__EBM~visit
         return
        end
        local.get $0
        i32.load
        call $~lib/rt/itcms/__visit
        local.get $0
        i32.load offset=8
        local.tee $2
        local.tee $1
        local.get $0
        i32.load offset=16
        i32.const 12
        i32.mul
        i32.add
        local.set $0
        loop $while-continue|0
         local.get $0
         local.get $1
         i32.gt_u
         if
          local.get $1
          i32.load offset=8
          i32.const 1
          i32.and
          i32.eqz
          if
           local.get $1
           i32.load offset=4
           call $~lib/rt/itcms/__visit
          end
          local.get $1
          i32.const 12
          i32.add
          local.set $1
          br $while-continue|0
         end
        end
        local.get $2
        call $~lib/rt/itcms/__visit
        return
       end
       local.get $0
       local.get $0
       i32.const 20
       i32.sub
       i32.load offset=16
       i32.add
       local.set $1
       loop $while-continue|00
        local.get $0
        local.get $1
        i32.lt_u
        if
         local.get $0
         i32.load
         local.tee $2
         if
          local.get $2
          call $~lib/rt/itcms/__visit
         end
         local.get $0
         i32.const 4
         i32.add
         local.set $0
         br $while-continue|00
        end
       end
       return
      end
      local.get $0
      i32.load offset=4
      call $~lib/rt/itcms/__visit
      return
     end
     unreachable
    end
    local.get $0
    i32.load
    local.tee $0
    if
     local.get $0
     call $~lib/rt/itcms/__visit
    end
    return
   end
   local.get $0
   i32.load
   call $~lib/rt/itcms/__visit
   return
  end
  local.get $0
  i32.load offset=4
  local.tee $1
  local.get $0
  i32.load offset=12
  i32.const 2
  i32.shl
  i32.add
  local.set $2
  loop $while-continue|01
   local.get $1
   local.get $2
   i32.lt_u
   if
    local.get $1
    i32.load
    local.tee $3
    if
     local.get $3
     call $~lib/rt/itcms/__visit
    end
    local.get $1
    i32.const 4
    i32.add
    local.set $1
    br $while-continue|01
   end
  end
  local.get $0
  i32.load
  call $~lib/rt/itcms/__visit
 )
 (func $~setArgumentsLength (param $0 i32)
  local.get $0
  global.set $~argumentsLength
 )
 (func $~start
  i32.const 1248
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/toSpace
  memory.size
  i32.const 16
  i32.shl
  i32.const 21188
  i32.sub
  i32.const 1
  i32.shr_u
  global.set $~lib/rt/itcms/threshold
  i32.const 1440
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/pinSpace
  i32.const 1472
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/fromSpace
 )
 (func $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 4804
  i32.lt_s
  if
   i32.const 21216
   i32.const 21264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/util/string/joinReferenceArray<~lib/string/String> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 1
  i32.sub
  local.tee $2
  i32.const 0
  i32.lt_s
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 1952
   return
  end
  local.get $2
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   i32.const 1952
   local.get $0
   select
   return
  end
  i32.const 1952
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 1952
  i32.store offset=4
  i32.const 1948
  i32.load
  i32.const 1
  i32.shr_u
  local.set $5
  loop $for-loop|0
   local.get $2
   local.get $3
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $4
    i32.store
    local.get $4
    if
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $1
     local.get $4
     call $~lib/string/String.__concat
     local.tee $1
     i32.store offset=4
    end
    local.get $5
    if
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.const 1952
     call $~lib/string/String.__concat
     local.tee $1
     i32.store offset=4
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $0
  i32.store
  local.get $0
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $1
   local.get $0
   call $~lib/string/String.__concat
   local.tee $1
   i32.store offset=4
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/as-console/index/console.log<~lib/string/String> (param $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 1952
  i32.store
  global.get $~lib/memory/__stack_pointer
  call $~lib/as-string-sink/index/StringSink#constructor
  local.tee $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 3504
  i32.store
  i32.const 3504
  i32.const 1
  local.get $0
  call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
  global.get $~lib/memory/__stack_pointer
  i32.const 3504
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1952
  i32.store offset=8
  i32.const 3504
  call $~lib/staticarray/StaticArray<~lib/string/String>#join
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $1
  local.get $0
  call $~lib/as-string-sink/index/StringSink#write
  local.get $1
  call $~lib/as-string-sink/index/StringSink#toString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/as-console/index/_log
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/ebm/__EBM#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 f64) (param $7 i32) (param $8 i32) (param $9 i32) (param $10 i32) (param $11 i32) (param $12 i32) (param $13 i32) (result i32)
  (local $14 i32)
  (local $15 f64)
  global.get $~lib/memory/__stack_pointer
  i32.const 40
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=16
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=24
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=32
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 84
   i32.const 10
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  i32.const 0
  call $assembly/ebm/__EBM#set:featureNames
  local.get $0
  i32.const 0
  call $assembly/ebm/__EBM#set:featureTypes
  local.get $0
  i32.const 0
  call $assembly/ebm/__EBM#set:binEdges
  local.get $0
  i32.const 0
  call $assembly/ebm/__EBM#set:scores
  local.get $0
  i32.const 0
  call $assembly/ebm/__EBM#set:histBinEdges
  local.get $0
  f64.const 0
  f64.store offset=24
  local.get $0
  i32.const 0
  call $assembly/ebm/__EBM#set:interactionIndexes
  local.get $0
  i32.const 0
  call $assembly/ebm/__EBM#set:interactionScores
  local.get $0
  i32.const 0
  call $assembly/ebm/__EBM#set:interactionBinEdges
  local.get $0
  i32.const 0
  call $assembly/ebm/__EBM#set:samples
  local.get $0
  i32.const 0
  call $assembly/ebm/__EBM#set:labels
  local.get $0
  i32.const 0
  i32.store offset=52
  local.get $0
  i32.const 0
  i32.store8 offset=56
  local.get $0
  i32.const 0
  call $assembly/ebm/__EBM#set:predLabels
  local.get $0
  i32.const 0
  call $assembly/ebm/__EBM#set:predProbs
  local.get $0
  i32.const 0
  call $assembly/ebm/__EBM#set:editingFeatureSampleMap
  local.get $0
  i32.const 0
  call $assembly/ebm/__EBM#set:editingFeatureSampleMaps
  local.get $0
  i32.const 0
  call $assembly/ebm/__EBM#set:histBinCounts
  local.get $0
  i32.const 0
  call $assembly/ebm/__EBM#set:sliceSampleIDs
  local.get $0
  local.get $1
  call $assembly/ebm/__EBM#set:featureNames
  local.get $0
  local.get $2
  call $assembly/ebm/__EBM#set:featureTypes
  local.get $0
  local.get $3
  call $assembly/ebm/__EBM#set:binEdges
  local.get $0
  local.get $4
  call $assembly/ebm/__EBM#set:scores
  local.get $0
  local.get $5
  call $assembly/ebm/__EBM#set:histBinEdges
  local.get $0
  local.get $6
  f64.store offset=24
  local.get $0
  local.get $7
  call $assembly/ebm/__EBM#set:interactionIndexes
  local.get $0
  local.get $8
  call $assembly/ebm/__EBM#set:interactionBinEdges
  local.get $0
  local.get $9
  call $assembly/ebm/__EBM#set:interactionScores
  local.get $0
  local.get $10
  call $assembly/ebm/__EBM#set:samples
  local.get $0
  local.get $11
  call $assembly/ebm/__EBM#set:labels
  local.get $0
  local.get $12
  i32.store offset=52
  local.get $0
  local.get $13
  i32.store8 offset=56
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=48
  local.tee $1
  i32.store offset=8
  local.get $1
  i32.load offset=12
  call $~lib/array/Array<f64>#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  local.get $0
  f64.load offset=24
  call $~lib/array/Array<f64>#fill
  call $assembly/ebm/__EBM#set:predLabels
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=60
  local.tee $1
  i32.store offset=8
  local.get $1
  i32.load offset=12
  call $~lib/array/Array<f64>#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  f64.const 0
  call $~lib/array/Array<f64>#fill
  call $assembly/ebm/__EBM#set:predProbs
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=8
  local.tee $1
  i32.store offset=8
  local.get $1
  local.get $0
  i32.load offset=52
  call $~lib/array/Array<~lib/array/Array<f64>>#__get
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  i32.load offset=12
  call $~lib/array/Array<~lib/array/Array<i32>>#constructor
  call $assembly/ebm/__EBM#set:editingFeatureSampleMap
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=16
  local.tee $1
  i32.store offset=4
  local.get $0
  local.get $1
  i32.load offset=12
  call $~lib/array/Array<~lib/array/Array<i32>>#constructor
  call $assembly/ebm/__EBM#set:histBinCounts
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=8
   local.tee $1
   i32.store offset=8
   local.get $1
   local.get $0
   i32.load offset=52
   call $~lib/array/Array<~lib/array/Array<f64>>#__get
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $14
   local.get $1
   i32.load offset=12
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=68
    local.tee $2
    i32.store offset=4
    i32.const 0
    call $~lib/array/Array<i32>#constructor
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=12
    local.get $2
    local.get $14
    local.get $1
    call $~lib/array/Array<~lib/array/Array<i32>>#__set
    local.get $14
    i32.const 1
    i32.add
    local.set $14
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.const 11
  call $~lib/rt/itcms/__new
  local.tee $1
  i32.store
  local.get $1
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $assembly/ebm/__EBM#set:featureNames
  local.get $1
  i32.const 3
  i32.store offset=4
  local.get $1
  i32.const 48
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $assembly/ebm/__EBM#set:binEdges
  local.get $1
  i32.const 4
  i32.store offset=12
  local.get $1
  i32.const 0
  i32.store offset=16
  local.get $1
  i32.const 0
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
  local.get $1
  call $assembly/ebm/__EBM#set:editingFeatureSampleMaps
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=72
  local.tee $1
  i32.store offset=4
  local.get $0
  i32.load offset=52
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=68
  local.tee $3
  i32.store offset=12
  local.get $1
  local.get $2
  local.get $3
  call $~lib/map/Map<i32,~lib/array/Array<~lib/array/Array<i32>>>#set
  i32.const 0
  local.set $14
  loop $for-loop|1
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=8
   local.tee $1
   i32.store offset=4
   local.get $14
   local.get $1
   i32.load offset=12
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=76
    local.tee $2
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=16
    local.tee $1
    i32.store offset=20
    local.get $1
    local.get $14
    call $~lib/array/Array<~lib/array/Array<f64>>#__get
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=16
    local.get $1
    i32.load offset=12
    call $~lib/array/Array<i32>#constructor
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=12
    local.get $1
    call $~lib/array/Array<i32>#fill
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=12
    local.get $2
    local.get $14
    local.get $1
    call $~lib/array/Array<~lib/array/Array<i32>>#__set
    local.get $14
    i32.const 1
    i32.add
    local.set $14
    br $for-loop|1
   end
  end
  i32.const 0
  local.set $14
  loop $for-loop|2
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=44
   local.tee $1
   i32.store offset=4
   local.get $14
   local.get $1
   i32.load offset=12
   i32.lt_s
   if
    i32.const 0
    local.set $1
    loop $for-loop|3
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=44
     local.tee $2
     i32.store offset=8
     local.get $2
     i32.const 0
     call $~lib/array/Array<~lib/array/Array<f64>>#__get
     local.set $2
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store offset=4
     local.get $1
     local.get $2
     i32.load offset=12
     i32.lt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load
      local.tee $2
      i32.store offset=4
      global.get $~lib/memory/__stack_pointer
      local.get $2
      local.get $1
      call $~lib/array/Array<~lib/array/Array<f64>>#__get
      local.tee $3
      i32.store offset=24
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load offset=4
      local.tee $2
      i32.store offset=4
      global.get $~lib/memory/__stack_pointer
      local.get $2
      local.get $1
      call $~lib/array/Array<~lib/array/Array<f64>>#__get
      local.tee $4
      i32.store offset=28
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load offset=44
      local.tee $2
      i32.store offset=8
      local.get $2
      local.get $14
      call $~lib/array/Array<~lib/array/Array<f64>>#__get
      local.set $2
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store offset=4
      local.get $2
      local.get $1
      call $~lib/array/Array<f64>#__get
      local.set $15
      global.get $~lib/memory/__stack_pointer
      i32.const 1776
      i32.store offset=8
      local.get $4
      call $~lib/string/String.__eq
      if (result i32)
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.load offset=8
       local.tee $2
       i32.store offset=8
       local.get $2
       local.get $1
       call $~lib/array/Array<~lib/array/Array<f64>>#__get
       local.set $2
       global.get $~lib/memory/__stack_pointer
       local.get $2
       i32.store offset=4
       local.get $2
       local.get $15
       call $assembly/ebm/searchSortedLowerIndex
       local.set $2
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.load offset=12
       local.tee $3
       i32.store offset=8
       local.get $3
       local.get $1
       call $~lib/array/Array<~lib/array/Array<f64>>#__get
       local.set $3
       global.get $~lib/memory/__stack_pointer
       local.get $3
       i32.store offset=4
       local.get $3
       local.get $2
       call $~lib/array/Array<f64>#__get
       local.set $6
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.load offset=16
       local.tee $3
       i32.store offset=8
       local.get $3
       local.get $1
       call $~lib/array/Array<~lib/array/Array<f64>>#__get
       local.set $3
       global.get $~lib/memory/__stack_pointer
       local.get $3
       i32.store offset=4
       local.get $3
       local.get $15
       call $assembly/ebm/searchSortedLowerIndex
      else
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.load offset=8
       local.tee $2
       i32.store offset=8
       local.get $2
       local.get $1
       call $~lib/array/Array<~lib/array/Array<f64>>#__get
       local.set $2
       global.get $~lib/memory/__stack_pointer
       local.get $2
       i32.store offset=4
       local.get $2
       local.get $15
       call $~lib/array/Array<f64>#indexOf
       local.tee $2
       i32.const 0
       i32.lt_s
       if (result f64)
        global.get $~lib/memory/__stack_pointer
        i32.const 1984
        i32.store offset=8
        i32.const 1984
        i32.const 1
        local.get $3
        call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
        global.get $~lib/memory/__stack_pointer
        i32.const 1984
        i32.store offset=8
        local.get $14
        call $~lib/number/I32#toString
        local.set $3
        global.get $~lib/memory/__stack_pointer
        local.get $3
        i32.store offset=16
        i32.const 1984
        i32.const 3
        local.get $3
        call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
        global.get $~lib/memory/__stack_pointer
        i32.const 1984
        i32.store offset=8
        local.get $1
        call $~lib/number/I32#toString
        local.set $3
        global.get $~lib/memory/__stack_pointer
        local.get $3
        i32.store offset=16
        i32.const 1984
        i32.const 5
        local.get $3
        call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
        global.get $~lib/memory/__stack_pointer
        i32.const 1984
        i32.store offset=8
        local.get $15
        call $~lib/number/F64#toString
        local.set $3
        global.get $~lib/memory/__stack_pointer
        local.get $3
        i32.store offset=16
        i32.const 1984
        i32.const 7
        local.get $3
        call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
        global.get $~lib/memory/__stack_pointer
        i32.const 1984
        i32.store offset=8
        global.get $~lib/memory/__stack_pointer
        i32.const 1952
        i32.store offset=12
        i32.const 1984
        call $~lib/staticarray/StaticArray<~lib/string/String>#join
        local.set $3
        global.get $~lib/memory/__stack_pointer
        local.get $3
        i32.store offset=4
        local.get $3
        call $~lib/as-console/index/console.log<~lib/string/String>
        f64.const 0
       else
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.load offset=12
        local.tee $3
        i32.store offset=8
        local.get $3
        local.get $1
        call $~lib/array/Array<~lib/array/Array<f64>>#__get
        local.set $3
        global.get $~lib/memory/__stack_pointer
        local.get $3
        i32.store offset=4
        local.get $3
        local.get $2
        call $~lib/array/Array<f64>#__get
       end
       local.set $6
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.load offset=16
       local.tee $3
       i32.store offset=8
       local.get $3
       local.get $1
       call $~lib/array/Array<~lib/array/Array<f64>>#__get
       local.set $3
       global.get $~lib/memory/__stack_pointer
       local.get $3
       i32.store offset=4
       local.get $3
       local.get $15
       call $~lib/array/Array<f64>#indexOf
       local.tee $3
       i32.const 0
       i32.lt_s
       if (result i32)
        i32.const 0
       else
        local.get $3
       end
      end
      local.set $3
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load offset=60
      local.tee $4
      i32.store offset=4
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load offset=60
      local.tee $5
      i32.store offset=8
      local.get $4
      local.get $14
      local.get $5
      local.get $14
      call $~lib/array/Array<f64>#__get
      local.get $6
      f64.add
      call $~lib/array/Array<f64>#__set
      local.get $2
      i32.const 0
      i32.ge_s
      i32.const 0
      local.get $1
      local.get $0
      i32.load offset=52
      i32.eq
      select
      if
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.load offset=68
       local.tee $4
       i32.store offset=8
       local.get $4
       local.get $2
       call $~lib/array/Array<~lib/array/Array<f64>>#__get
       local.set $2
       global.get $~lib/memory/__stack_pointer
       local.get $2
       i32.store offset=4
       local.get $2
       local.get $14
       call $~lib/array/Array<i32>#push
      end
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load offset=76
      local.tee $2
      i32.store offset=8
      local.get $2
      local.get $1
      call $~lib/array/Array<~lib/array/Array<f64>>#__get
      local.set $2
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store offset=4
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load offset=76
      local.tee $4
      i32.store offset=12
      local.get $4
      local.get $1
      call $~lib/array/Array<~lib/array/Array<f64>>#__get
      local.set $4
      global.get $~lib/memory/__stack_pointer
      local.get $4
      i32.store offset=8
      local.get $2
      local.get $3
      local.get $4
      local.get $3
      call $~lib/array/Array<i32>#__get
      i32.const 1
      i32.add
      call $~lib/array/Array<i32>#__set
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|3
     end
    end
    i32.const 0
    local.set $1
    loop $for-loop|4
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=32
     local.tee $2
     i32.store offset=4
     local.get $1
     local.get $2
     i32.load offset=12
     i32.lt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load offset=32
      local.tee $2
      i32.store offset=4
      global.get $~lib/memory/__stack_pointer
      local.get $2
      local.get $1
      call $~lib/array/Array<~lib/array/Array<f64>>#__get
      local.tee $2
      i32.store offset=32
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load offset=4
      local.tee $3
      i32.store offset=4
      global.get $~lib/memory/__stack_pointer
      local.get $3
      local.get $2
      i32.const 0
      call $~lib/array/Array<i32>#__get
      call $~lib/array/Array<~lib/array/Array<f64>>#__get
      local.tee $4
      i32.store offset=36
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load offset=4
      local.tee $3
      i32.store offset=4
      global.get $~lib/memory/__stack_pointer
      local.get $3
      local.get $2
      i32.const 1
      call $~lib/array/Array<i32>#__get
      call $~lib/array/Array<~lib/array/Array<f64>>#__get
      local.tee $5
      i32.store offset=28
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load offset=44
      local.tee $3
      i32.store offset=8
      local.get $3
      local.get $14
      call $~lib/array/Array<~lib/array/Array<f64>>#__get
      local.set $3
      global.get $~lib/memory/__stack_pointer
      local.get $3
      i32.store offset=4
      local.get $3
      local.get $2
      i32.const 0
      call $~lib/array/Array<i32>#__get
      call $~lib/array/Array<f64>#__get
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load offset=44
      local.tee $3
      i32.store offset=8
      local.get $3
      local.get $14
      call $~lib/array/Array<~lib/array/Array<f64>>#__get
      local.set $3
      global.get $~lib/memory/__stack_pointer
      local.get $3
      i32.store offset=4
      local.get $3
      local.get $2
      i32.const 1
      call $~lib/array/Array<i32>#__get
      call $~lib/array/Array<f64>#__get
      local.set $15
      global.get $~lib/memory/__stack_pointer
      i32.const 1776
      i32.store offset=8
      local.get $4
      call $~lib/string/String.__eq
      if (result i32)
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.load offset=40
       local.tee $2
       i32.store offset=12
       local.get $2
       local.get $1
       call $~lib/array/Array<~lib/array/Array<f64>>#__get
       local.set $2
       global.get $~lib/memory/__stack_pointer
       local.get $2
       i32.store offset=8
       local.get $2
       i32.const 0
       call $~lib/array/Array<~lib/array/Array<f64>>#__get
       local.set $2
       global.get $~lib/memory/__stack_pointer
       local.get $2
       i32.store offset=4
       local.get $2
       local.get $6
       call $assembly/ebm/searchSortedLowerIndex
      else
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.load offset=40
       local.tee $2
       i32.store offset=12
       local.get $2
       local.get $1
       call $~lib/array/Array<~lib/array/Array<f64>>#__get
       local.set $2
       global.get $~lib/memory/__stack_pointer
       local.get $2
       i32.store offset=8
       local.get $2
       i32.const 0
       call $~lib/array/Array<~lib/array/Array<f64>>#__get
       local.set $2
       global.get $~lib/memory/__stack_pointer
       local.get $2
       i32.store offset=4
       local.get $2
       local.get $6
       call $~lib/array/Array<f64>#indexOf
      end
      local.set $2
      global.get $~lib/memory/__stack_pointer
      i32.const 1776
      i32.store offset=8
      i32.const 1
      local.get $5
      call $~lib/string/String.__eq
      if (result i32)
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.load offset=40
       local.tee $3
       i32.store offset=12
       local.get $3
       local.get $1
       call $~lib/array/Array<~lib/array/Array<f64>>#__get
       local.set $3
       global.get $~lib/memory/__stack_pointer
       local.get $3
       i32.store offset=8
       local.get $3
       i32.const 1
       call $~lib/array/Array<~lib/array/Array<f64>>#__get
       local.set $3
       global.get $~lib/memory/__stack_pointer
       local.get $3
       i32.store offset=4
       local.get $3
       local.get $15
       call $assembly/ebm/searchSortedLowerIndex
      else
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.load offset=40
       local.tee $3
       i32.store offset=12
       local.get $3
       local.get $1
       call $~lib/array/Array<~lib/array/Array<f64>>#__get
       local.set $3
       global.get $~lib/memory/__stack_pointer
       local.get $3
       i32.store offset=8
       local.get $3
       i32.const 1
       call $~lib/array/Array<~lib/array/Array<f64>>#__get
       local.set $3
       global.get $~lib/memory/__stack_pointer
       local.get $3
       i32.store offset=4
       local.get $3
       local.get $15
       call $~lib/array/Array<f64>#indexOf
      end
      local.tee $3
      i32.const 0
      i32.lt_s
      local.get $2
      i32.const 0
      i32.lt_s
      select
      if (result f64)
       f64.const 0
      else
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.load offset=36
       local.tee $4
       i32.store offset=12
       local.get $4
       local.get $1
       call $~lib/array/Array<~lib/array/Array<f64>>#__get
       local.set $4
       global.get $~lib/memory/__stack_pointer
       local.get $4
       i32.store offset=8
       local.get $4
       local.get $2
       call $~lib/array/Array<~lib/array/Array<f64>>#__get
       local.set $2
       global.get $~lib/memory/__stack_pointer
       local.get $2
       i32.store offset=4
       local.get $2
       local.get $3
       call $~lib/array/Array<f64>#__get
      end
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load offset=60
      local.tee $2
      i32.store offset=4
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load offset=60
      local.tee $3
      i32.store offset=8
      local.get $2
      local.get $14
      local.get $3
      local.get $14
      call $~lib/array/Array<f64>#__get
      local.get $6
      f64.add
      call $~lib/array/Array<f64>#__set
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|4
     end
    end
    local.get $0
    i32.load8_u offset=56
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=64
     local.tee $1
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=60
     local.tee $2
     i32.store offset=8
     local.get $1
     local.get $14
     local.get $2
     local.get $14
     call $~lib/array/Array<f64>#__get
     call $assembly/ebm/sigmoid
     call $~lib/array/Array<f64>#__set
    end
    local.get $14
    i32.const 1
    i32.add
    local.set $14
    br $for-loop|2
   end
  end
  local.get $0
  i32.const 0
  i32.const 2
  i32.const 3
  i32.const 3536
  call $~lib/rt/__newArray
  call $assembly/ebm/__EBM#set:sliceSampleIDs
  global.get $~lib/memory/__stack_pointer
  i32.const 40
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/ebm/__EBM#getSelectedSampleDist (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 f64)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=16
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=16
  local.tee $3
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.load offset=12
  call $~lib/array/Array<~lib/array/Array<i32>>#constructor
  local.tee $5
  i32.store offset=4
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=16
   local.tee $3
   i32.store
   local.get $4
   local.get $3
   i32.load offset=12
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=16
    local.tee $3
    i32.store offset=16
    local.get $3
    local.get $4
    call $~lib/array/Array<~lib/array/Array<f64>>#__get
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=8
    local.get $3
    i32.load offset=12
    call $~lib/array/Array<i32>#constructor
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=12
    local.get $3
    call $~lib/array/Array<i32>#fill
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=8
    local.get $5
    local.get $4
    local.get $3
    call $~lib/array/Array<~lib/array/Array<i32>>#__set
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  i32.const 0
  local.set $4
  loop $for-loop|1
   local.get $4
   local.get $1
   i32.load offset=12
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=68
    local.tee $3
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $3
    local.get $1
    local.get $4
    call $~lib/array/Array<i32>#__get
    call $~lib/array/Array<~lib/array/Array<f64>>#__get
    local.tee $9
    i32.store offset=20
    i32.const 0
    local.set $6
    loop $for-loop|2
     local.get $6
     local.get $9
     i32.load offset=12
     i32.lt_s
     if
      local.get $9
      local.get $6
      call $~lib/array/Array<i32>#__get
      local.set $10
      i32.const 0
      local.set $3
      loop $for-loop|3
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.load offset=16
       local.tee $2
       i32.store
       local.get $3
       local.get $2
       i32.load offset=12
       i32.lt_s
       if
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.load offset=4
        local.tee $2
        i32.store
        global.get $~lib/memory/__stack_pointer
        local.get $2
        local.get $3
        call $~lib/array/Array<~lib/array/Array<f64>>#__get
        local.tee $7
        i32.store offset=24
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.load offset=44
        local.tee $2
        i32.store offset=12
        local.get $2
        local.get $10
        call $~lib/array/Array<~lib/array/Array<f64>>#__get
        local.set $2
        global.get $~lib/memory/__stack_pointer
        local.get $2
        i32.store
        local.get $2
        local.get $3
        call $~lib/array/Array<f64>#__get
        local.set $8
        global.get $~lib/memory/__stack_pointer
        i32.const 1776
        i32.store offset=12
        local.get $7
        call $~lib/string/String.__eq
        if (result i32)
         global.get $~lib/memory/__stack_pointer
         local.get $0
         i32.load offset=16
         local.tee $2
         i32.store offset=12
         local.get $2
         local.get $3
         call $~lib/array/Array<~lib/array/Array<f64>>#__get
         local.set $2
         global.get $~lib/memory/__stack_pointer
         local.get $2
         i32.store
         local.get $2
         local.get $8
         call $assembly/ebm/searchSortedLowerIndex
        else
         global.get $~lib/memory/__stack_pointer
         local.get $0
         i32.load offset=16
         local.tee $2
         i32.store offset=12
         local.get $2
         local.get $3
         call $~lib/array/Array<~lib/array/Array<f64>>#__get
         local.set $2
         global.get $~lib/memory/__stack_pointer
         local.get $2
         i32.store
         local.get $2
         local.get $8
         call $~lib/array/Array<f64>#indexOf
         local.tee $2
         i32.const 0
         i32.lt_s
         if (result i32)
          global.get $~lib/memory/__stack_pointer
          i32.const 3680
          i32.store offset=12
          local.get $10
          call $~lib/number/I32#toString
          local.set $2
          global.get $~lib/memory/__stack_pointer
          local.get $2
          i32.store offset=16
          i32.const 3680
          i32.const 1
          local.get $2
          call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
          global.get $~lib/memory/__stack_pointer
          i32.const 3680
          i32.store offset=12
          local.get $3
          call $~lib/number/I32#toString
          local.set $2
          global.get $~lib/memory/__stack_pointer
          local.get $2
          i32.store offset=16
          i32.const 3680
          i32.const 3
          local.get $2
          call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
          global.get $~lib/memory/__stack_pointer
          i32.const 3680
          i32.store offset=12
          local.get $8
          call $~lib/number/F64#toString
          local.set $2
          global.get $~lib/memory/__stack_pointer
          local.get $2
          i32.store offset=16
          i32.const 3680
          i32.const 5
          local.get $2
          call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
          global.get $~lib/memory/__stack_pointer
          i32.const 3680
          i32.store offset=12
          global.get $~lib/memory/__stack_pointer
          i32.const 1952
          i32.store offset=8
          i32.const 3680
          call $~lib/staticarray/StaticArray<~lib/string/String>#join
          local.set $2
          global.get $~lib/memory/__stack_pointer
          local.get $2
          i32.store
          local.get $2
          call $~lib/as-console/index/console.log<~lib/string/String>
          i32.const 0
         else
          local.get $2
         end
        end
        local.set $2
        local.get $5
        local.get $3
        call $~lib/array/Array<~lib/array/Array<f64>>#__get
        local.set $7
        global.get $~lib/memory/__stack_pointer
        local.get $7
        i32.store
        local.get $5
        local.get $3
        call $~lib/array/Array<~lib/array/Array<f64>>#__get
        local.set $11
        global.get $~lib/memory/__stack_pointer
        local.get $11
        i32.store offset=12
        local.get $7
        local.get $2
        local.get $11
        local.get $2
        call $~lib/array/Array<i32>#__get
        i32.const 1
        i32.add
        call $~lib/array/Array<i32>#__set
        local.get $3
        i32.const 1
        i32.add
        local.set $3
        br $for-loop|3
       end
      end
      local.get $6
      i32.const 1
      i32.add
      local.set $6
      br $for-loop|2
     end
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $assembly/ebm/__EBM#updatePredictionPartial (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  loop $for-loop|0
   local.get $6
   local.get $1
   i32.load offset=12
   i32.lt_s
   if
    local.get $1
    local.get $6
    call $~lib/array/Array<i32>#__get
    local.set $5
    global.get $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=72
    local.tee $4
    i32.store offset=4
    local.get $4
    local.get $3
    call $~lib/map/Map<i32,~lib/array/Array<~lib/array/Array<i32>>>#get
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store
    local.get $4
    local.get $5
    call $~lib/array/Array<~lib/array/Array<f64>>#__get
    local.tee $7
    i32.store offset=8
    i32.const 0
    local.set $4
    loop $for-loop|1
     local.get $4
     local.get $7
     i32.load offset=12
     i32.lt_s
     if
      local.get $7
      local.get $4
      call $~lib/array/Array<i32>#__get
      local.set $5
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load offset=60
      local.tee $8
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load offset=60
      local.tee $9
      i32.store offset=4
      local.get $8
      local.get $5
      local.get $9
      local.get $5
      call $~lib/array/Array<f64>#__get
      local.get $2
      local.get $6
      call $~lib/array/Array<f64>#__get
      f64.add
      call $~lib/array/Array<f64>#__set
      local.get $0
      i32.load8_u offset=56
      if
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.load offset=64
       local.tee $8
       i32.store
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.load offset=60
       local.tee $9
       i32.store offset=4
       local.get $8
       local.get $5
       local.get $9
       local.get $5
       call $~lib/array/Array<f64>#__get
       call $assembly/ebm/sigmoid
       call $~lib/array/Array<f64>#__set
      end
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      br $for-loop|1
     end
    end
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/ebm/__EBM#updateModel (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 f64)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.load offset=12
  call $~lib/array/Array<f64>#constructor
  local.tee $6
  i32.store
  loop $for-loop|0
   local.get $5
   local.get $1
   i32.load offset=12
   i32.lt_s
   if
    local.get $1
    local.get $5
    call $~lib/array/Array<i32>#__get
    local.set $7
    local.get $2
    local.get $5
    call $~lib/array/Array<f64>#__get
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=12
    local.tee $4
    i32.store offset=8
    local.get $4
    local.get $3
    call $~lib/array/Array<~lib/array/Array<f64>>#__get
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=4
    local.get $6
    local.get $5
    local.get $8
    local.get $4
    local.get $7
    call $~lib/array/Array<f64>#__get
    f64.sub
    call $~lib/array/Array<f64>#__set
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=12
    local.tee $4
    i32.store offset=8
    local.get $4
    local.get $3
    call $~lib/array/Array<~lib/array/Array<f64>>#__get
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=4
    local.get $4
    local.get $7
    local.get $2
    local.get $5
    call $~lib/array/Array<f64>#__get
    call $~lib/array/Array<f64>#__set
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  local.get $0
  local.get $1
  local.get $6
  local.get $3
  call $assembly/ebm/__EBM#updatePredictionPartial
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/ebm/__EBM#setModel (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 f64)
  (local $9 i32)
  (local $10 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=16
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=8
   local.tee $4
   i32.store offset=4
   local.get $4
   local.get $3
   call $~lib/array/Array<~lib/array/Array<f64>>#__get
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store
   local.get $5
   local.get $4
   i32.load offset=12
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=72
    local.tee $4
    i32.store offset=4
    local.get $4
    local.get $3
    call $~lib/map/Map<i32,~lib/array/Array<~lib/array/Array<i32>>>#get
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store
    local.get $4
    local.get $5
    call $~lib/array/Array<~lib/array/Array<f64>>#__get
    local.tee $7
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=12
    local.tee $4
    i32.store offset=4
    local.get $4
    local.get $3
    call $~lib/array/Array<~lib/array/Array<f64>>#__get
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store
    local.get $4
    local.get $5
    call $~lib/array/Array<f64>#__get
    local.set $8
    i32.const 0
    local.set $4
    loop $for-loop|1
     local.get $4
     local.get $7
     i32.load offset=12
     i32.lt_s
     if
      local.get $7
      local.get $4
      call $~lib/array/Array<i32>#__get
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load offset=60
      local.tee $9
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load offset=60
      local.tee $10
      i32.store offset=4
      local.get $9
      local.get $6
      local.get $10
      local.get $6
      call $~lib/array/Array<f64>#__get
      local.get $8
      f64.sub
      call $~lib/array/Array<f64>#__set
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      br $for-loop|1
     end
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=8
  local.tee $5
  i32.store
  local.get $5
  local.get $3
  local.get $1
  call $~lib/array/Array<~lib/array/Array<i32>>#__set
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=12
  local.tee $5
  i32.store
  local.get $5
  local.get $3
  local.get $2
  call $~lib/array/Array<~lib/array/Array<i32>>#__set
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load offset=12
  call $~lib/array/Array<~lib/array/Array<i32>>#constructor
  local.tee $7
  i32.store offset=12
  i32.const 0
  local.set $5
  loop $for-loop|2
   local.get $5
   local.get $1
   i32.load offset=12
   i32.lt_s
   if
    i32.const 0
    call $~lib/array/Array<i32>#constructor
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=16
    local.get $7
    local.get $5
    local.get $4
    call $~lib/array/Array<~lib/array/Array<i32>>#__set
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|2
   end
  end
  i32.const 0
  local.set $5
  loop $for-loop|3
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=44
   local.tee $4
   i32.store
   local.get $5
   local.get $4
   i32.load offset=12
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=44
    local.tee $4
    i32.store offset=4
    local.get $4
    local.get $5
    call $~lib/array/Array<~lib/array/Array<f64>>#__get
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store
    local.get $4
    local.get $3
    call $~lib/array/Array<f64>#__get
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=4
    local.tee $4
    i32.store offset=16
    local.get $4
    local.get $3
    call $~lib/array/Array<~lib/array/Array<f64>>#__get
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 1776
    i32.store offset=4
    local.get $4
    call $~lib/string/String.__eq
    if (result f64)
     local.get $2
     local.get $1
     local.get $8
     call $assembly/ebm/searchSortedLowerIndex
     local.tee $4
     call $~lib/array/Array<f64>#__get
    else
     local.get $1
     local.get $8
     call $~lib/array/Array<f64>#indexOf
     local.tee $4
     i32.const 0
     i32.lt_s
     if (result f64)
      global.get $~lib/memory/__stack_pointer
      i32.const 3904
      i32.store offset=4
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load
      local.tee $6
      i32.store offset=20
      local.get $6
      local.get $3
      call $~lib/array/Array<~lib/array/Array<f64>>#__get
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=20
      i32.const 3904
      i32.const 1
      local.get $6
      call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
      global.get $~lib/memory/__stack_pointer
      i32.const 3904
      i32.store offset=4
      local.get $5
      call $~lib/number/I32#toString
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=20
      i32.const 3904
      i32.const 3
      local.get $6
      call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
      global.get $~lib/memory/__stack_pointer
      i32.const 3904
      i32.store offset=4
      local.get $8
      call $~lib/number/F64#toString
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=20
      i32.const 3904
      i32.const 5
      local.get $6
      call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
      global.get $~lib/memory/__stack_pointer
      i32.const 3904
      i32.store offset=4
      global.get $~lib/memory/__stack_pointer
      i32.const 1952
      i32.store offset=16
      i32.const 3904
      call $~lib/staticarray/StaticArray<~lib/string/String>#join
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      local.get $6
      call $~lib/as-console/index/console.log<~lib/string/String>
      f64.const 0
     else
      local.get $2
      local.get $4
      call $~lib/array/Array<f64>#__get
     end
    end
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=60
    local.tee $6
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=60
    local.tee $9
    i32.store offset=4
    local.get $6
    local.get $5
    local.get $9
    local.get $5
    call $~lib/array/Array<f64>#__get
    local.get $8
    f64.add
    call $~lib/array/Array<f64>#__set
    local.get $0
    i32.load8_u offset=56
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=64
     local.tee $6
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=60
     local.tee $9
     i32.store offset=4
     local.get $6
     local.get $5
     local.get $9
     local.get $5
     call $~lib/array/Array<f64>#__get
     call $assembly/ebm/sigmoid
     call $~lib/array/Array<f64>#__set
    end
    local.get $4
    i32.const 0
    i32.ge_s
    if
     local.get $7
     local.get $4
     call $~lib/array/Array<~lib/array/Array<f64>>#__get
     local.set $4
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store
     local.get $4
     local.get $5
     call $~lib/array/Array<i32>#push
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|3
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=72
  local.tee $1
  i32.store
  local.get $1
  local.get $3
  local.get $7
  call $~lib/map/Map<i32,~lib/array/Array<~lib/array/Array<i32>>>#set
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=72
  local.tee $1
  i32.store
  local.get $0
  local.get $1
  local.get $3
  call $~lib/map/Map<i32,~lib/array/Array<~lib/array/Array<i32>>>#get
  call $assembly/ebm/__EBM#set:editingFeatureSampleMap
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/metrics/countByThreshold (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 f64)
  global.get $~lib/memory/__stack_pointer
  i32.const 40
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=16
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=24
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=32
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $~lib/array/Array<f64>#constructor
  local.tee $7
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $~lib/array/Array<f64>#constructor
  local.tee $8
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $~lib/array/Array<f64>#constructor
  local.tee $9
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.const 6
  call $~lib/rt/itcms/__new
  local.tee $3
  i32.store
  local.get $3
  i32.const 0
  call $assembly/ebm/__EBM#set:featureNames
  local.get $3
  i32.const 0
  i32.store offset=4
  local.get $3
  i32.const 0
  i32.store offset=8
  local.get $3
  i32.const 0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.const 0
  call $~lib/rt/itcms/__new
  local.tee $4
  i32.store offset=4
  local.get $4
  i32.const 32
  call $~lib/memory/memory.fill
  local.get $3
  local.get $4
  call $assembly/ebm/__EBM#set:featureNames
  local.get $3
  local.get $4
  i32.store offset=4
  local.get $3
  i32.const 32
  i32.store offset=8
  local.get $3
  i32.const 0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $~lib/array/Array<f64>#constructor
  local.tee $5
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $~lib/array/Array<f64>#constructor
  local.tee $4
  i32.store offset=20
  loop $for-loop|0
   local.get $2
   local.get $0
   i32.load offset=12
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 2
    i32.const 3
    i32.const 5
    i32.const 0
    call $~lib/rt/__newArray
    local.tee $6
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.load offset=4
    i32.store offset=32
    local.get $6
    i32.const 0
    local.get $0
    local.get $2
    call $~lib/array/Array<f64>#__get
    call $~lib/array/Array<f64>#__uset
    local.get $6
    i32.const 1
    local.get $1
    local.get $2
    call $~lib/array/Array<f64>#__get
    call $~lib/array/Array<f64>#__uset
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=24
    local.get $3
    local.get $6
    call $~lib/array/Array<~lib/array/Array<~lib/array/Array<f64>>>#push
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 3952
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  block $__inlined_func$~lib/array/Array<~lib/array/Array<f64>>#sort
   local.get $3
   i32.load offset=12
   local.tee $1
   i32.const 1
   i32.le_s
   br_if $__inlined_func$~lib/array/Array<~lib/array/Array<f64>>#sort
   local.get $3
   i32.load offset=4
   local.set $0
   local.get $1
   i32.const 2
   i32.eq
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=4
    local.tee $1
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load
    local.tee $2
    i32.store offset=4
    i32.const 2
    global.set $~argumentsLength
    local.get $1
    local.get $2
    i32.const 3952
    i32.load
    call_indirect $0 (type $i32_i32_=>_i32)
    i32.const 0
    i32.lt_s
    if
     local.get $0
     local.get $2
     i32.store offset=4
     local.get $0
     local.get $1
     i32.store
    end
    br $__inlined_func$~lib/array/Array<~lib/array/Array<f64>>#sort
   end
   local.get $0
   local.get $1
   call $~lib/util/sort/insertionSort<~lib/array/Array<f64>>
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 0
  local.set $2
  loop $for-loop|1
   local.get $2
   local.get $3
   i32.load offset=12
   i32.lt_s
   if
    local.get $3
    local.get $2
    call $~lib/array/Array<~lib/array/Array<f64>>#__get
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=36
    local.get $5
    local.get $0
    i32.const 0
    call $~lib/array/Array<f64>#__get
    call $~lib/array/Array<f64>#push
    local.get $3
    local.get $2
    call $~lib/array/Array<~lib/array/Array<f64>>#__get
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=36
    local.get $4
    local.get $0
    i32.const 1
    call $~lib/array/Array<f64>#__get
    call $~lib/array/Array<f64>#push
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|1
   end
  end
  local.get $7
  local.get $4
  i32.const 0
  call $~lib/array/Array<f64>#__get
  call $~lib/array/Array<f64>#push
  i32.const 1
  local.set $2
  loop $for-loop|2
   local.get $2
   local.get $4
   i32.load offset=12
   i32.lt_s
   if
    local.get $7
    local.get $7
    i32.load offset=12
    i32.const 1
    i32.sub
    call $~lib/array/Array<f64>#__get
    local.get $4
    local.get $2
    call $~lib/array/Array<f64>#__get
    f64.ne
    if
     local.get $7
     local.get $4
     local.get $2
     call $~lib/array/Array<f64>#__get
     call $~lib/array/Array<f64>#push
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|2
   end
  end
  i32.const 0
  local.set $2
  i32.const 0
  local.set $3
  i32.const 0
  local.set $1
  loop $for-loop|3
   local.get $1
   local.get $7
   i32.load offset=12
   i32.lt_s
   if
    local.get $7
    local.get $1
    call $~lib/array/Array<f64>#__get
    local.set $10
    i32.const 0
    local.set $0
    loop $for-loop|4
     local.get $0
     local.get $4
     i32.load offset=12
     i32.lt_s
     if
      local.get $4
      local.get $0
      call $~lib/array/Array<f64>#__get
      local.get $10
      f64.ge
      local.tee $6
      if
       local.get $5
       local.get $0
       call $~lib/array/Array<f64>#__get
       local.get $6
       f64.convert_i32_s
       f64.eq
       if
        local.get $3
        i32.const 1
        i32.add
        local.set $3
       else
        local.get $2
        i32.const 1
        i32.add
        local.get $2
        local.get $5
        local.get $0
        call $~lib/array/Array<f64>#__get
        local.get $6
        f64.convert_i32_s
        f64.ne
        select
        local.set $2
       end
       local.get $0
       i32.const 1
       i32.add
       local.set $0
       br $for-loop|4
      end
     end
    end
    local.get $8
    local.get $2
    f64.convert_i32_s
    call $~lib/array/Array<f64>#push
    local.get $9
    local.get $3
    f64.convert_i32_s
    call $~lib/array/Array<f64>#push
    global.get $~lib/memory/__stack_pointer
    local.get $4
    local.get $0
    local.get $4
    i32.load offset=12
    call $~lib/array/Array<f64>#slice
    local.tee $4
    i32.store offset=20
    global.get $~lib/memory/__stack_pointer
    local.get $5
    local.get $0
    local.get $5
    i32.load offset=12
    call $~lib/array/Array<f64>#slice
    local.tee $5
    i32.store offset=16
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|3
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 3
  i32.const 2
  i32.const 6
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $0
  i32.store offset=32
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  i32.store offset=28
  local.get $0
  i32.const 0
  local.get $8
  call $~lib/array/Array<~lib/array/Array<i32>>#__uset
  local.get $0
  i32.const 1
  local.get $9
  call $~lib/array/Array<~lib/array/Array<i32>>#__uset
  local.get $0
  i32.const 2
  local.get $7
  call $~lib/array/Array<~lib/array/Array<i32>>#__uset
  global.get $~lib/memory/__stack_pointer
  i32.const 40
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/metrics/getROCCurve (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 f64)
  (local $8 f64)
  global.get $~lib/memory/__stack_pointer
  i32.const 36
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=16
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=24
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=32
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 0
  call $~lib/array/Array<~lib/array/Array<f64>>#__get
  local.tee $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 1
  call $~lib/array/Array<~lib/array/Array<f64>>#__get
  local.tee $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  i32.const 3
  i32.const 5
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $4
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.load offset=4
  i32.store offset=12
  local.get $4
  i32.const 0
  local.get $2
  i32.const 0
  call $~lib/array/Array<f64>#__get
  call $~lib/array/Array<f64>#__uset
  local.get $4
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  i32.const 3
  i32.const 5
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $3
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.load offset=4
  i32.store offset=16
  local.get $3
  i32.const 0
  local.get $0
  i32.const 0
  call $~lib/array/Array<f64>#__get
  call $~lib/array/Array<f64>#__uset
  local.get $3
  i32.store offset=16
  i32.const 0
  local.set $1
  loop $for-loop|0
   local.get $1
   local.get $0
   i32.load offset=12
   i32.const 2
   i32.sub
   i32.lt_s
   if
    i32.const 1
    local.get $2
    local.get $1
    i32.const 2
    i32.add
    local.tee $6
    call $~lib/array/Array<f64>#__get
    local.get $2
    local.get $1
    i32.const 1
    i32.add
    local.tee $5
    call $~lib/array/Array<f64>#__get
    f64.sub
    local.get $2
    local.get $5
    call $~lib/array/Array<f64>#__get
    local.get $2
    local.get $1
    call $~lib/array/Array<f64>#__get
    f64.sub
    f64.sub
    f64.const 0
    f64.ne
    local.get $0
    local.get $6
    call $~lib/array/Array<f64>#__get
    local.get $0
    local.get $5
    call $~lib/array/Array<f64>#__get
    f64.sub
    local.get $0
    local.get $5
    call $~lib/array/Array<f64>#__get
    local.get $0
    local.get $1
    call $~lib/array/Array<f64>#__get
    f64.sub
    f64.sub
    f64.const 0
    f64.ne
    select
    if
     local.get $4
     local.get $2
     local.get $1
     i32.const 1
     i32.add
     local.tee $5
     call $~lib/array/Array<f64>#__get
     call $~lib/array/Array<f64>#push
     local.get $3
     local.get $0
     local.get $5
     call $~lib/array/Array<f64>#__get
     call $~lib/array/Array<f64>#push
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $4
  local.get $2
  local.get $2
  i32.load offset=12
  i32.const 1
  i32.sub
  call $~lib/array/Array<f64>#__get
  call $~lib/array/Array<f64>#push
  local.get $3
  local.get $0
  local.get $0
  i32.load offset=12
  i32.const 1
  i32.sub
  call $~lib/array/Array<f64>#__get
  call $~lib/array/Array<f64>#push
  local.get $4
  local.get $4
  i32.load offset=12
  i32.const 1
  i32.sub
  call $~lib/array/Array<f64>#__get
  local.set $7
  local.get $3
  local.get $3
  i32.load offset=12
  i32.const 1
  i32.sub
  call $~lib/array/Array<f64>#__get
  local.set $8
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  i32.const 2
  i32.const 6
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  i32.store offset=20
  local.get $0
  i32.const 0
  i32.const 2
  i32.const 3
  i32.const 5
  i32.const 3984
  call $~lib/rt/__newArray
  call $~lib/array/Array<~lib/array/Array<i32>>#__uset
  local.get $0
  i32.store offset=20
  i32.const 0
  local.set $1
  loop $for-loop|1
   local.get $1
   local.get $3
   i32.load offset=12
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 2
    i32.const 3
    i32.const 5
    i32.const 0
    call $~lib/rt/__newArray
    local.tee $2
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=4
    i32.store offset=32
    local.get $2
    i32.const 0
    local.get $3
    local.get $1
    call $~lib/array/Array<f64>#__get
    local.get $8
    f64.div
    call $~lib/array/Array<f64>#__uset
    local.get $2
    i32.const 1
    local.get $4
    local.get $1
    call $~lib/array/Array<f64>#__get
    local.get $7
    f64.div
    call $~lib/array/Array<f64>#__uset
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=24
    local.get $0
    local.get $2
    call $~lib/array/Array<~lib/array/Array<~lib/array/Array<f64>>>#push
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 36
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/metrics/getROCAuc (param $0 i32) (result f64)
  (local $1 i32)
  (local $2 i32)
  (local $3 f64)
  (local $4 i32)
  (local $5 f64)
  (local $6 f64)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/array/Array<~lib/array/Array<f64>>#slice
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/array/Array<~lib/array/Array<f64>>#reverse
  local.tee $2
  i32.store offset=4
  loop $for-loop|0
   local.get $1
   local.get $2
   i32.load offset=12
   i32.const 1
   i32.sub
   i32.lt_s
   if
    local.get $2
    local.get $1
    call $~lib/array/Array<~lib/array/Array<f64>>#__get
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    i32.const 1
    call $~lib/array/Array<f64>#__get
    local.get $2
    local.get $1
    i32.const 1
    i32.add
    local.tee $0
    call $~lib/array/Array<~lib/array/Array<f64>>#__get
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store
    local.get $4
    i32.const 1
    call $~lib/array/Array<f64>#__get
    f64.sub
    local.set $3
    local.get $2
    local.get $1
    call $~lib/array/Array<~lib/array/Array<f64>>#__get
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    local.get $1
    i32.const 0
    call $~lib/array/Array<f64>#__get
    local.set $6
    local.get $2
    local.get $0
    call $~lib/array/Array<~lib/array/Array<f64>>#__get
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    local.get $5
    local.get $3
    local.get $6
    local.get $1
    i32.const 0
    call $~lib/array/Array<f64>#__get
    f64.add
    f64.mul
    f64.const 0.5
    f64.mul
    f64.add
    local.set $5
    local.get $0
    local.set $1
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $assembly/ebm/__EBM#getMetrics (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 f64)
  (local $7 f64)
  global.get $~lib/memory/__stack_pointer
  i32.const 40
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=16
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=24
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=32
  global.get $~lib/memory/__stack_pointer
  call $~lib/array/Array<~lib/array/Array<~lib/array/Array<f64>>>#constructor
  local.tee $4
  i32.store
  local.get $0
  i32.load8_u offset=56
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=48
   local.tee $1
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=64
   local.tee $2
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $1
   local.get $2
   call $assembly/metrics/countByThreshold
   local.tee $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $assembly/metrics/getROCCurve
   local.tee $3
   i32.store offset=20
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=48
   local.tee $1
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=64
   local.tee $2
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $1
   local.get $2
   f64.const 0.5
   call $assembly/metrics/getConfusionMatrix
   local.tee $2
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   i32.const 1
   i32.const 2
   i32.const 6
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $1
   i32.store offset=24
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load offset=4
   i32.store offset=28
   local.get $1
   i32.const 0
   local.get $2
   call $~lib/array/Array<~lib/array/Array<i32>>#__uset
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=12
   local.get $4
   local.get $1
   call $~lib/array/Array<~lib/array/Array<~lib/array/Array<f64>>>#push
   local.get $3
   call $assembly/metrics/getROCAuc
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=48
   local.tee $1
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=64
   local.tee $0
   i32.store offset=12
   local.get $1
   local.get $0
   call $assembly/metrics/getAccuracy
   local.set $6
   local.get $2
   call $assembly/metrics/getBalancedAccuracy
   local.set $7
   global.get $~lib/memory/__stack_pointer
   i32.const 1
   i32.const 2
   i32.const 6
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $1
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load offset=4
   i32.store offset=24
   global.get $~lib/memory/__stack_pointer
   i32.const 3
   i32.const 3
   i32.const 5
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $0
   i32.store offset=32
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   i32.store offset=36
   local.get $0
   i32.const 0
   local.get $6
   call $~lib/array/Array<f64>#__uset
   local.get $0
   i32.const 1
   local.get $5
   call $~lib/array/Array<f64>#__uset
   local.get $0
   i32.const 2
   local.get $7
   call $~lib/array/Array<f64>#__uset
   local.get $1
   i32.const 0
   local.get $0
   call $~lib/array/Array<~lib/array/Array<i32>>#__uset
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=12
   local.get $4
   local.get $1
   call $~lib/array/Array<~lib/array/Array<~lib/array/Array<f64>>>#push
  else
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   call $~lib/array/Array<f64>#constructor
   local.tee $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=48
   local.tee $2
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=60
   local.tee $3
   i32.store offset=12
   local.get $1
   local.get $2
   local.get $3
   call $assembly/metrics/rootMeanSquaredError
   call $~lib/array/Array<f64>#push
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=48
   local.tee $2
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=60
   local.tee $3
   i32.store offset=12
   local.get $1
   local.get $2
   local.get $3
   call $assembly/metrics/meanAbsoluteError
   call $~lib/array/Array<f64>#push
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=48
   local.tee $2
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=60
   local.tee $0
   i32.store offset=12
   local.get $1
   local.get $2
   local.get $0
   call $assembly/metrics/meanAbsolutePercentageError
   call $~lib/array/Array<f64>#push
   global.get $~lib/memory/__stack_pointer
   i32.const 1
   i32.const 2
   i32.const 6
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $0
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   i32.store offset=20
   local.get $0
   i32.const 0
   local.get $1
   call $~lib/array/Array<~lib/array/Array<i32>>#__uset
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=12
   local.get $4
   local.get $0
   call $~lib/array/Array<~lib/array/Array<~lib/array/Array<f64>>>#push
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 40
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $assembly/ebm/__EBM#getMetricsOnSelectedSamples (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 f64)
  (local $9 f64)
  (local $10 f64)
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=16
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=24
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=32
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=40
  global.get $~lib/memory/__stack_pointer
  call $~lib/array/Array<~lib/array/Array<~lib/array/Array<f64>>>#constructor
  local.tee $6
  i32.store
  local.get $0
  i32.load8_u offset=56
  if
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load offset=12
   call $~lib/array/Array<f64>#constructor
   local.tee $3
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load offset=12
   call $~lib/array/Array<f64>#constructor
   local.tee $4
   i32.store offset=8
   loop $for-loop|1
    local.get $2
    local.get $1
    i32.load offset=12
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=48
     local.tee $5
     i32.store offset=16
     local.get $3
     local.get $2
     local.get $5
     local.get $1
     local.get $2
     call $~lib/array/Array<i32>#__get
     call $~lib/array/Array<f64>#__get
     call $~lib/array/Array<f64>#__set
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=64
     local.tee $5
     i32.store offset=16
     local.get $4
     local.get $2
     local.get $5
     local.get $1
     local.get $2
     call $~lib/array/Array<i32>#__get
     call $~lib/array/Array<f64>#__get
     call $~lib/array/Array<f64>#__set
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|1
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $3
   local.get $4
   call $assembly/metrics/countByThreshold
   local.tee $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   call $assembly/metrics/getROCCurve
   local.tee $1
   i32.store offset=28
   local.get $6
   local.get $1
   call $~lib/array/Array<~lib/array/Array<~lib/array/Array<f64>>>#push
   global.get $~lib/memory/__stack_pointer
   local.get $3
   local.get $4
   f64.const 0.5
   call $assembly/metrics/getConfusionMatrix
   local.tee $2
   i32.store offset=24
   global.get $~lib/memory/__stack_pointer
   i32.const 1
   i32.const 2
   i32.const 6
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $0
   i32.store offset=32
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   i32.store offset=36
   local.get $0
   i32.const 0
   local.get $2
   call $~lib/array/Array<~lib/array/Array<i32>>#__uset
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=20
   local.get $6
   local.get $0
   call $~lib/array/Array<~lib/array/Array<~lib/array/Array<f64>>>#push
   local.get $1
   call $assembly/metrics/getROCAuc
   local.set $8
   local.get $3
   local.get $4
   call $assembly/metrics/getAccuracy
   local.set $9
   local.get $2
   call $assembly/metrics/getBalancedAccuracy
   local.set $10
   global.get $~lib/memory/__stack_pointer
   i32.const 1
   i32.const 2
   i32.const 6
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $1
   i32.store offset=36
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load offset=4
   i32.store offset=32
   global.get $~lib/memory/__stack_pointer
   i32.const 3
   i32.const 3
   i32.const 5
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $0
   i32.store offset=40
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   i32.store offset=44
   local.get $0
   i32.const 0
   local.get $9
   call $~lib/array/Array<f64>#__uset
   local.get $0
   i32.const 1
   local.get $8
   call $~lib/array/Array<f64>#__uset
   local.get $0
   i32.const 2
   local.get $10
   call $~lib/array/Array<f64>#__uset
   local.get $1
   i32.const 0
   local.get $0
   call $~lib/array/Array<~lib/array/Array<i32>>#__uset
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=20
   local.get $6
   local.get $1
   call $~lib/array/Array<~lib/array/Array<~lib/array/Array<f64>>>#push
  else
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   call $~lib/array/Array<f64>#constructor
   local.tee $2
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load offset=12
   call $~lib/array/Array<f64>#constructor
   local.tee $4
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load offset=12
   call $~lib/array/Array<f64>#constructor
   local.tee $5
   i32.store offset=12
   loop $for-loop|0
    local.get $3
    local.get $1
    i32.load offset=12
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=48
     local.tee $7
     i32.store offset=16
     local.get $4
     local.get $3
     local.get $7
     local.get $1
     local.get $3
     call $~lib/array/Array<i32>#__get
     call $~lib/array/Array<f64>#__get
     call $~lib/array/Array<f64>#__set
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=60
     local.tee $7
     i32.store offset=16
     local.get $5
     local.get $3
     local.get $7
     local.get $1
     local.get $3
     call $~lib/array/Array<i32>#__get
     call $~lib/array/Array<f64>#__get
     call $~lib/array/Array<f64>#__set
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|0
    end
   end
   local.get $2
   local.get $4
   local.get $5
   call $assembly/metrics/rootMeanSquaredError
   call $~lib/array/Array<f64>#push
   local.get $2
   local.get $4
   local.get $5
   call $assembly/metrics/meanAbsoluteError
   call $~lib/array/Array<f64>#push
   global.get $~lib/memory/__stack_pointer
   i32.const 1
   i32.const 2
   i32.const 6
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $0
   i32.store offset=24
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   i32.store offset=28
   local.get $0
   i32.const 0
   local.get $2
   call $~lib/array/Array<~lib/array/Array<i32>>#__uset
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=20
   local.get $6
   local.get $0
   call $~lib/array/Array<~lib/array/Array<~lib/array/Array<f64>>>#push
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $assembly/ebm/__EBM#setSliceData (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $3
  i32.store offset=8
  local.get $3
  local.get $1
  call $~lib/array/Array<~lib/array/Array<f64>>#__get
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1776
  i32.store offset=4
  local.get $3
  call $~lib/string/String.__eq
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4096
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load
   local.tee $0
   i32.store offset=12
   local.get $0
   local.get $1
   call $~lib/array/Array<~lib/array/Array<f64>>#__get
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   i32.const 4096
   local.get $0
   call $~lib/string/String.__concat
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 0
   f64.const 0
   f64.const 0
   f64.const 0
   f64.const 0
   f64.const 0
   call $~lib/builtins/trace
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const -1
   return
  end
  local.get $0
  i32.const 0
  i32.const 2
  i32.const 3
  i32.const 4208
  call $~lib/rt/__newArray
  call $assembly/ebm/__EBM#set:sliceSampleIDs
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=44
   local.tee $3
   i32.store
   local.get $4
   local.get $3
   i32.load offset=12
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=44
    local.tee $3
    i32.store offset=4
    local.get $3
    local.get $4
    call $~lib/array/Array<~lib/array/Array<f64>>#__get
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store
    local.get $3
    local.get $1
    call $~lib/array/Array<f64>#__get
    local.get $2
    f64.convert_i32_s
    f64.eq
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=80
     local.tee $3
     i32.store
     local.get $3
     local.get $4
     call $~lib/array/Array<i32>#push
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=80
  local.tee $0
  i32.store
  local.get $0
  i32.load offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/ebm/__EBM#setEditingFeature (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  local.get $0
  local.get $1
  i32.store offset=52
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=72
  local.tee $2
  i32.store
  local.get $2
  local.get $1
  local.get $1
  call $~lib/util/hash/HASH<i32>
  call $~lib/map/Map<i32,~lib/array/Array<~lib/array/Array<i32>>>#find
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=8
   local.tee $2
   i32.store offset=4
   local.get $2
   local.get $0
   i32.load offset=52
   call $~lib/array/Array<~lib/array/Array<f64>>#__get
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $0
   local.get $2
   i32.load offset=12
   call $~lib/array/Array<~lib/array/Array<i32>>#constructor
   call $assembly/ebm/__EBM#set:editingFeatureSampleMap
   loop $for-loop|0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=8
    local.tee $2
    i32.store offset=4
    local.get $2
    local.get $0
    i32.load offset=52
    call $~lib/array/Array<~lib/array/Array<f64>>#__get
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store
    local.get $3
    local.get $2
    i32.load offset=12
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=68
     local.tee $4
     i32.store
     i32.const 0
     call $~lib/array/Array<i32>#constructor
     local.set $2
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store offset=8
     local.get $4
     local.get $3
     local.get $2
     call $~lib/array/Array<~lib/array/Array<i32>>#__set
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|0
    end
   end
   i32.const 0
   local.set $3
   loop $for-loop|1
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=44
    local.tee $2
    i32.store
    local.get $3
    local.get $2
    i32.load offset=12
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=4
     local.tee $2
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $2
     local.get $1
     call $~lib/array/Array<~lib/array/Array<f64>>#__get
     local.tee $4
     i32.store offset=12
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=44
     local.tee $2
     i32.store offset=4
     local.get $2
     local.get $3
     call $~lib/array/Array<~lib/array/Array<f64>>#__get
     local.set $2
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store
     local.get $2
     local.get $1
     call $~lib/array/Array<f64>#__get
     local.set $5
     global.get $~lib/memory/__stack_pointer
     i32.const 1776
     i32.store offset=4
     local.get $4
     call $~lib/string/String.__eq
     if (result i32)
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load offset=8
      local.tee $2
      i32.store offset=4
      local.get $2
      local.get $1
      call $~lib/array/Array<~lib/array/Array<f64>>#__get
      local.set $2
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store
      local.get $2
      local.get $5
      call $assembly/ebm/searchSortedLowerIndex
     else
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load offset=8
      local.tee $2
      i32.store offset=4
      local.get $2
      local.get $1
      call $~lib/array/Array<~lib/array/Array<f64>>#__get
      local.set $2
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store
      local.get $2
      local.get $5
      call $~lib/array/Array<f64>#indexOf
     end
     local.tee $2
     i32.const 0
     i32.ge_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load offset=68
      local.tee $4
      i32.store offset=4
      local.get $4
      local.get $2
      call $~lib/array/Array<~lib/array/Array<f64>>#__get
      local.set $2
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store
      local.get $2
      local.get $3
      call $~lib/array/Array<i32>#push
     end
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|1
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=72
   local.tee $2
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=68
   local.tee $3
   i32.store offset=8
   local.get $2
   local.get $1
   local.get $3
   call $~lib/map/Map<i32,~lib/array/Array<~lib/array/Array<i32>>>#set
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=72
  local.tee $2
  i32.store
  local.get $0
  local.get $2
  local.get $1
  call $~lib/map/Map<i32,~lib/array/Array<~lib/array/Array<i32>>>#get
  call $assembly/ebm/__EBM#set:editingFeatureSampleMap
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/as-console/index/stringify<i32> (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 1952
  i32.store
  global.get $~lib/memory/__stack_pointer
  call $~lib/as-string-sink/index/StringSink#constructor
  local.tee $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 4384
  i32.store
  local.get $0
  call $~lib/number/I32#toString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  i32.const 4384
  i32.const 1
  local.get $0
  call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
  global.get $~lib/memory/__stack_pointer
  i32.const 4384
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1952
  i32.store offset=12
  i32.const 4384
  call $~lib/staticarray/StaticArray<~lib/string/String>#join
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $1
  local.get $0
  call $~lib/as-string-sink/index/StringSink#write
  local.get $1
  call $~lib/as-string-sink/index/StringSink#toString
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/as-console/index/stringify<~lib/array/Array<i32>> (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 1952
  i32.store
  global.get $~lib/memory/__stack_pointer
  call $~lib/as-string-sink/index/StringSink#constructor
  local.tee $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 4320
  i32.store
  local.get $2
  i32.const 4320
  call $~lib/as-string-sink/index/StringSink#write
  local.get $0
  local.get $0
  i32.load offset=12
  i32.const 1
  i32.sub
  call $~lib/array/Array<i32>#__get
  loop $for-loop|0
   local.get $3
   local.get $0
   i32.load offset=12
   i32.const 1
   i32.sub
   i32.lt_s
   if
    local.get $0
    local.get $3
    call $~lib/array/Array<i32>#__get
    global.get $~lib/memory/__stack_pointer
    i32.const 4352
    i32.store
    call $~lib/as-console/index/stringify<i32>
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=8
    i32.const 4352
    i32.const 1
    local.get $1
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 4352
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 1952
    i32.store offset=12
    i32.const 4352
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    local.get $2
    local.get $1
    call $~lib/as-string-sink/index/StringSink#write
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4448
  i32.store
  call $~lib/as-console/index/stringify<i32>
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  i32.const 4448
  i32.const 1
  local.get $0
  call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
  global.get $~lib/memory/__stack_pointer
  i32.const 4448
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1952
  i32.store offset=12
  i32.const 4448
  call $~lib/staticarray/StaticArray<~lib/string/String>#join
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $2
  local.get $0
  call $~lib/as-string-sink/index/StringSink#write
  local.get $2
  call $~lib/as-string-sink/index/StringSink#toString
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/as-console/index/console.log<~lib/array/Array<i32>> (param $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  call $~lib/as-console/index/stringify<~lib/array/Array<i32>>
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/as-console/index/_log
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/ebm/__EBM#printName (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  i32.const 4240
  i32.store
  i32.const 4240
  i32.const 1
  local.get $0
  i32.load offset=52
  f64.convert_i32_s
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.const 15
  call $~lib/rt/itcms/__new
  local.tee $1
  i32.store
  local.get $1
  i32.const 0
  call $assembly/ebm/__EBM#set:featureNames
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.const 0
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store offset=4
  local.get $2
  i32.const 32
  call $~lib/memory/memory.fill
  local.get $1
  local.get $2
  call $assembly/ebm/__EBM#set:featureNames
  local.get $1
  local.get $2
  i32.store offset=4
  local.get $1
  i32.const 32
  i32.store offset=8
  local.get $1
  i32.const 0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $~lib/array/Array<~lib/array/Array<i32>>#constructor
  local.tee $2
  i32.store offset=8
  local.get $1
  local.get $2
  call $~lib/array/Array<~lib/array/Array<~lib/array/Array<f64>>>#push
  global.get $~lib/memory/__stack_pointer
  i32.const 3
  i32.const 2
  i32.const 3
  i32.const 4288
  call $~lib/rt/__newArray
  local.tee $1
  i32.store offset=12
  local.get $2
  local.get $1
  call $~lib/array/Array<~lib/array/Array<~lib/array/Array<f64>>>#push
  local.get $2
  i32.const 0
  call $~lib/array/Array<~lib/array/Array<f64>>#__get
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/as-console/index/console.log<~lib/array/Array<i32>>
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.const 0
  call $~lib/array/Array<~lib/array/Array<f64>>#__get
  local.tee $1
  i32.store offset=16
  local.get $1
  i32.const 0
  i32.const 10
  call $~lib/array/Array<i32>#__set
  local.get $2
  i32.const 0
  call $~lib/array/Array<~lib/array/Array<f64>>#__get
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/as-console/index/console.log<~lib/array/Array<i32>>
  global.get $~lib/memory/__stack_pointer
  i32.const 2
  i32.const 2
  i32.const 3
  i32.const 4480
  call $~lib/rt/__newArray
  local.tee $1
  i32.store offset=16
  local.get $1
  i32.const 0
  i32.const 20
  call $~lib/array/Array<i32>#__set
  local.get $2
  i32.const 0
  call $~lib/array/Array<~lib/array/Array<f64>>#__get
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/as-console/index/console.log<~lib/array/Array<i32>>
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $1
  i32.store
  local.get $1
  local.get $0
  i32.load offset=52
  call $~lib/array/Array<~lib/array/Array<f64>>#__get
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/metrics/getPRCurve (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=16
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 0
  call $~lib/array/Array<~lib/array/Array<f64>>#__get
  local.tee $5
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 1
  call $~lib/array/Array<~lib/array/Array<f64>>#__get
  local.tee $1
  i32.store offset=4
  local.get $1
  local.get $1
  i32.load offset=12
  i32.const 1
  i32.sub
  call $~lib/array/Array<f64>#__get
  local.set $4
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  i32.const 2
  i32.const 6
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $2
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.load offset=4
  i32.store offset=12
  local.get $2
  i32.const 0
  i32.const 2
  i32.const 3
  i32.const 5
  i32.const 4512
  call $~lib/rt/__newArray
  call $~lib/array/Array<~lib/array/Array<i32>>#__uset
  local.get $2
  i32.store offset=12
  i32.const 0
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.load offset=12
   i32.lt_s
   if
    block $for-break0
     global.get $~lib/memory/__stack_pointer
     i32.const 2
     i32.const 3
     i32.const 5
     i32.const 0
     call $~lib/rt/__newArray
     local.tee $3
     i32.store offset=20
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.load offset=4
     i32.store offset=24
     local.get $3
     i32.const 0
     local.get $1
     local.get $0
     call $~lib/array/Array<f64>#__get
     local.get $1
     local.get $0
     call $~lib/array/Array<f64>#__get
     local.get $5
     local.get $0
     call $~lib/array/Array<f64>#__get
     f64.add
     f64.div
     call $~lib/array/Array<f64>#__uset
     local.get $3
     i32.const 1
     local.get $1
     local.get $0
     call $~lib/array/Array<f64>#__get
     local.get $4
     f64.div
     call $~lib/array/Array<f64>#__uset
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=16
     local.get $2
     local.get $3
     call $~lib/array/Array<~lib/array/Array<~lib/array/Array<f64>>>#push
     local.get $1
     local.get $0
     call $~lib/array/Array<f64>#__get
     local.get $4
     f64.div
     f64.const 1
     f64.eq
     br_if $for-break0
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|0
    end
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $assembly/metrics/getAveragePrecision (param $0 i32) (result f64)
  (local $1 i32)
  (local $2 i32)
  (local $3 f64)
  (local $4 i32)
  (local $5 f64)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/array/Array<~lib/array/Array<f64>>#slice
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/array/Array<~lib/array/Array<f64>>#reverse
  local.tee $2
  i32.store offset=4
  loop $for-loop|0
   local.get $1
   local.get $2
   i32.load offset=12
   i32.const 1
   i32.sub
   i32.lt_s
   if
    local.get $2
    local.get $1
    call $~lib/array/Array<~lib/array/Array<f64>>#__get
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    i32.const 1
    call $~lib/array/Array<f64>#__get
    local.get $2
    local.get $1
    i32.const 1
    i32.add
    local.tee $0
    call $~lib/array/Array<~lib/array/Array<f64>>#__get
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store
    local.get $4
    i32.const 1
    call $~lib/array/Array<f64>#__get
    f64.sub
    local.set $3
    local.get $2
    local.get $1
    call $~lib/array/Array<~lib/array/Array<f64>>#__get
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    local.get $5
    local.get $3
    local.get $1
    i32.const 0
    call $~lib/array/Array<f64>#__get
    f64.mul
    f64.add
    local.set $5
    local.get $0
    local.set $1
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $~lib/array/Array<f64>#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.const 5
  call $~lib/rt/itcms/__new
  local.tee $1
  i32.store
  local.get $1
  i32.const 0
  call $assembly/ebm/__EBM#set:featureNames
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.const 134217727
  i32.gt_u
  if
   i32.const 1344
   i32.const 1152
   i32.const 64
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 8
  local.get $0
  i32.const 8
  i32.gt_u
  select
  i32.const 3
  i32.shl
  local.tee $3
  i32.const 0
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store offset=4
  local.get $2
  local.get $3
  call $~lib/memory/memory.fill
  local.get $1
  local.get $2
  call $assembly/ebm/__EBM#set:featureNames
  local.get $1
  local.get $2
  i32.store offset=4
  local.get $1
  local.get $3
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.const 4
  call $~lib/rt/itcms/__new
  local.tee $1
  i32.store
  local.get $1
  i32.const 0
  call $assembly/ebm/__EBM#set:featureNames
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.const 268435455
  i32.gt_u
  if
   i32.const 1344
   i32.const 1152
   i32.const 64
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 8
  local.get $0
  i32.const 8
  i32.gt_u
  select
  i32.const 2
  i32.shl
  local.tee $3
  i32.const 0
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store offset=4
  local.get $2
  local.get $3
  call $~lib/memory/memory.fill
  local.get $1
  local.get $2
  call $assembly/ebm/__EBM#set:featureNames
  local.get $1
  local.get $2
  i32.store offset=4
  local.get $1
  local.get $3
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/array/Array<~lib/array/Array<f64>>#__get (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 1088
   i32.const 1152
   i32.const 99
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $0
  i32.store
  local.get $0
  i32.eqz
  if
   i32.const 1584
   i32.const 1152
   i32.const 103
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/array/Array<i32>#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.const 3
  call $~lib/rt/itcms/__new
  local.tee $1
  i32.store
  local.get $1
  i32.const 0
  call $assembly/ebm/__EBM#set:featureNames
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.const 268435455
  i32.gt_u
  if
   i32.const 1344
   i32.const 1152
   i32.const 64
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 8
  local.get $0
  i32.const 8
  i32.gt_u
  select
  i32.const 2
  i32.shl
  local.tee $3
  i32.const 0
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store offset=4
  local.get $2
  local.get $3
  call $~lib/memory/memory.fill
  local.get $1
  local.get $2
  call $assembly/ebm/__EBM#set:featureNames
  local.get $1
  local.get $2
  i32.store offset=4
  local.get $1
  local.get $3
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1344
   i32.const 1712
   i32.const 49
   i32.const 43
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 0
  call $~lib/rt/itcms/__new
  local.tee $1
  i32.store
  local.get $1
  local.get $0
  call $~lib/memory/memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/map/Map<i32,~lib/array/Array<~lib/array/Array<i32>>>#set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/HASH<i32>
  local.tee $4
  call $~lib/map/Map<i32,~lib/array/Array<~lib/array/Array<i32>>>#find
  local.tee $3
  if
   local.get $3
   local.get $2
   i32.store offset=4
   local.get $0
   local.get $2
   i32.const 1
   call $~lib/rt/itcms/__link
  else
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<i32,~lib/array/Array<~lib/array/Array<i32>>>#rehash
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=8
   local.tee $3
   i32.store
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $5
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $3
   local.get $5
   i32.const 12
   i32.mul
   i32.add
   local.tee $3
   local.get $1
   i32.store
   local.get $3
   local.get $2
   i32.store offset=4
   local.get $0
   local.get $2
   i32.const 1
   call $~lib/rt/itcms/__link
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $3
   local.get $0
   i32.load
   local.get $4
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $0
   i32.load
   i32.store offset=8
   local.get $0
   local.get $3
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/as-string-sink/index/StringSink#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 13
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store
  local.get $0
  i32.const 0
  call $assembly/ebm/__EBM#set:featureNames
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 1948
  i32.load
  i32.const 1
  i32.shr_u
  i32.const 1
  i32.shl
  local.tee $1
  i32.const 64
  local.get $1
  i32.const 64
  i32.gt_u
  select
  i32.const 0
  call $~lib/rt/itcms/__new
  call $assembly/ebm/__EBM#set:featureNames
  local.get $1
  if
   local.get $0
   i32.load
   i32.const 1952
   local.get $1
   call $~lib/memory/memory.copy
   local.get $0
   local.get $1
   local.get $0
   i32.load offset=4
   i32.add
   i32.store offset=4
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/as-string-sink/index/StringSink#toString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.load offset=4
  local.tee $1
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 1952
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store
  local.get $2
  local.get $0
  i32.load
  local.get $1
  call $~lib/memory/memory.copy
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/rt/__newArray (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  local.get $1
  i32.shl
  local.tee $4
  local.set $5
  local.get $4
  i32.const 0
  call $~lib/rt/itcms/__new
  local.set $1
  local.get $3
  if
   local.get $1
   local.get $3
   local.get $5
   call $~lib/memory/memory.copy
  end
  local.get $1
  local.tee $3
  i32.store
  i32.const 16
  local.get $2
  call $~lib/rt/itcms/__new
  local.tee $1
  local.get $3
  i32.store
  local.get $1
  local.get $3
  i32.const 0
  call $~lib/rt/itcms/__link
  local.get $1
  local.get $3
  i32.store offset=4
  local.get $1
  local.get $4
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/array/Array<~lib/array/Array<~lib/array/Array<f64>>>#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.const 7
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store
  local.get $0
  i32.const 0
  call $assembly/ebm/__EBM#set:featureNames
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.const 0
  call $~lib/rt/itcms/__new
  local.tee $1
  i32.store offset=4
  local.get $1
  i32.const 32
  call $~lib/memory/memory.fill
  local.get $0
  local.get $1
  call $assembly/ebm/__EBM#set:featureNames
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  i32.const 32
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/array/Array<f64>#slice (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.load offset=12
  local.set $3
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   local.get $3
   i32.add
   local.tee $1
   i32.const 0
   local.get $1
   i32.const 0
   i32.gt_s
   select
  else
   local.get $1
   local.get $3
   local.get $1
   local.get $3
   i32.lt_s
   select
  end
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $2
   local.get $3
   i32.add
   local.tee $2
   i32.const 0
   local.get $2
   i32.const 0
   i32.gt_s
   select
  else
   local.get $2
   local.get $3
   local.get $2
   local.get $3
   i32.lt_s
   select
  end
  local.get $1
  i32.sub
  local.tee $2
  i32.const 0
  local.get $2
  i32.const 0
  i32.gt_s
  select
  local.tee $3
  i32.const 3
  i32.const 5
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $2
  i32.store
  local.get $2
  i32.load offset=4
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  local.get $3
  i32.const 3
  i32.shl
  call $~lib/memory/memory.copy
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $assembly/metrics/getConfusionMatrix (param $0 i32) (param $1 i32) (param $2 f64) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.const 3
  i32.const 5
  i32.const 4032
  call $~lib/rt/__newArray
  local.tee $3
  i32.store
  loop $for-loop|0
   local.get $4
   local.get $0
   i32.load offset=12
   i32.lt_s
   if
    f64.const 1
    f64.const 0
    local.get $1
    local.get $4
    call $~lib/array/Array<f64>#__get
    local.get $2
    f64.ge
    select
    local.tee $5
    f64.const 1
    f64.eq
    if
     local.get $0
     local.get $4
     call $~lib/array/Array<f64>#__get
     local.get $5
     f64.eq
     if
      local.get $3
      i32.const 3
      local.get $3
      i32.const 3
      call $~lib/array/Array<f64>#__get
      f64.const 1
      f64.add
      call $~lib/array/Array<f64>#__set
     else
      local.get $3
      i32.const 1
      local.get $3
      i32.const 1
      call $~lib/array/Array<f64>#__get
      f64.const 1
      f64.add
      call $~lib/array/Array<f64>#__set
     end
    else
     local.get $0
     local.get $4
     call $~lib/array/Array<f64>#__get
     local.get $5
     f64.eq
     if
      local.get $3
      i32.const 0
      local.get $3
      i32.const 0
      call $~lib/array/Array<f64>#__get
      f64.const 1
      f64.add
      call $~lib/array/Array<f64>#__set
     else
      local.get $3
      i32.const 2
      local.get $3
      i32.const 2
      call $~lib/array/Array<f64>#__get
      f64.const 1
      f64.add
      call $~lib/array/Array<f64>#__set
     end
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/array/Array<~lib/array/Array<f64>>#slice (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 0
  local.get $0
  i32.load offset=12
  local.tee $1
  local.get $1
  i32.const 0
  i32.gt_s
  select
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $1
  local.get $2
  i32.sub
  local.tee $1
  i32.const 0
  local.get $1
  i32.const 0
  i32.gt_s
  select
  local.tee $3
  i32.const 2
  i32.const 6
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $1
  i32.store
  local.get $1
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.set $2
  i32.const 0
  local.set $0
  local.get $3
  i32.const 2
  i32.shl
  local.set $3
  loop $while-continue|0
   local.get $0
   local.get $3
   i32.lt_u
   if
    local.get $0
    local.get $4
    i32.add
    local.get $0
    local.get $2
    i32.add
    i32.load
    local.tee $5
    i32.store
    local.get $1
    local.get $5
    i32.const 1
    call $~lib/rt/itcms/__link
    local.get $0
    i32.const 4
    i32.add
    local.set $0
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/array/Array<~lib/array/Array<f64>>#reverse (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.load offset=12
  local.tee $1
  if
   local.get $0
   i32.load offset=4
   local.set $2
   local.get $0
   i32.load offset=4
   local.get $1
   i32.const 1
   i32.sub
   i32.const 2
   i32.shl
   i32.add
   local.set $1
   loop $while-continue|0
    local.get $1
    local.get $2
    i32.gt_u
    if
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.load
     local.tee $3
     i32.store
     local.get $2
     local.get $1
     i32.load
     i32.store
     local.get $1
     local.get $3
     i32.store
     local.get $2
     i32.const 4
     i32.add
     local.set $2
     local.get $1
     i32.const 4
     i32.sub
     local.set $1
     br $while-continue|0
    end
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:assembly/ebm/searchSortedLowerIndex (param $0 i32) (param $1 f64) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $assembly/ebm/searchSortedLowerIndex
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/ebm/__EBM#get:featureNames (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/ebm/__EBM#set:featureNames (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $assembly/ebm/__EBM#set:featureNames
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/ebm/__EBM#get:featureTypes (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/ebm/__EBM#set:featureTypes (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $assembly/ebm/__EBM#set:featureTypes
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/ebm/__EBM#get:binEdges (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/ebm/__EBM#set:binEdges (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $assembly/ebm/__EBM#set:binEdges
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/ebm/__EBM#get:scores (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/ebm/__EBM#set:scores (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $assembly/ebm/__EBM#set:scores
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/ebm/__EBM#get:histBinEdges (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=16
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/ebm/__EBM#set:histBinEdges (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $assembly/ebm/__EBM#set:histBinEdges
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/ebm/__EBM#get:intercept (param $0 i32) (result f64)
  (local $1 f64)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  f64.load offset=24
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/ebm/__EBM#set:intercept (param $0 i32) (param $1 f64)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  f64.store offset=24
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/ebm/__EBM#get:interactionIndexes (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=32
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/ebm/__EBM#set:interactionIndexes (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $assembly/ebm/__EBM#set:interactionIndexes
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/ebm/__EBM#get:interactionScores (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=36
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/ebm/__EBM#set:interactionScores (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $assembly/ebm/__EBM#set:interactionScores
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/ebm/__EBM#get:interactionBinEdges (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=40
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/ebm/__EBM#set:interactionBinEdges (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $assembly/ebm/__EBM#set:interactionBinEdges
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/ebm/__EBM#get:samples (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=44
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/ebm/__EBM#set:samples (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $assembly/ebm/__EBM#set:samples
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/ebm/__EBM#get:labels (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=48
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/ebm/__EBM#set:labels (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $assembly/ebm/__EBM#set:labels
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/ebm/__EBM#get:editingFeatureIndex (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=52
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/ebm/__EBM#set:editingFeatureIndex (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  i32.store offset=52
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/ebm/__EBM#get:isClassification (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load8_u offset=56
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/ebm/__EBM#set:isClassification (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  i32.store8 offset=56
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/ebm/__EBM#get:predLabels (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=60
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/ebm/__EBM#set:predLabels (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $assembly/ebm/__EBM#set:predLabels
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/ebm/__EBM#get:predProbs (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=64
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/ebm/__EBM#set:predProbs (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $assembly/ebm/__EBM#set:predProbs
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/ebm/__EBM#get:editingFeatureSampleMap (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=68
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/ebm/__EBM#set:editingFeatureSampleMap (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $assembly/ebm/__EBM#set:editingFeatureSampleMap
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/ebm/__EBM#get:editingFeatureSampleMaps (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=72
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/ebm/__EBM#set:editingFeatureSampleMaps (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $assembly/ebm/__EBM#set:editingFeatureSampleMaps
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/ebm/__EBM#get:histBinCounts (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=76
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/ebm/__EBM#set:histBinCounts (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $assembly/ebm/__EBM#set:histBinCounts
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/ebm/__EBM#get:sliceSampleIDs (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=80
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/ebm/__EBM#set:sliceSampleIDs (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $assembly/ebm/__EBM#set:sliceSampleIDs
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/ebm/__EBM#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 f64) (param $7 i32) (param $8 i32) (param $9 i32) (param $10 i32) (param $11 i32) (param $12 i32) (param $13 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 44
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=32
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store offset=36
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store offset=40
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  local.get $4
  local.get $5
  local.get $6
  local.get $7
  local.get $8
  local.get $9
  local.get $10
  local.get $11
  local.get $12
  local.get $13
  call $assembly/ebm/__EBM#constructor
  global.get $~lib/memory/__stack_pointer
  i32.const 44
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/ebm/__EBM#getSelectedSampleNum (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  loop $for-loop|0
   local.get $2
   local.get $1
   i32.load offset=12
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=68
    local.tee $3
    i32.store offset=4
    local.get $3
    local.get $1
    local.get $2
    call $~lib/array/Array<i32>#__get
    call $~lib/array/Array<~lib/array/Array<f64>>#__get
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store
    local.get $4
    local.get $3
    i32.load offset=12
    i32.add
    local.set $4
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $export:assembly/ebm/__EBM#getSelectedSampleDist (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $assembly/ebm/__EBM#getSelectedSampleDist
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/ebm/__EBM#updateModel (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  call $assembly/ebm/__EBM#updateModel
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/ebm/__EBM#updatePredictionPartial (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  call $assembly/ebm/__EBM#updatePredictionPartial
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/ebm/__EBM#setModel (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  call $assembly/ebm/__EBM#setModel
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/ebm/__EBM#getPrediction (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load8_u offset=56
  if (result i32)
   local.get $0
   i32.load offset=64
  else
   local.get $0
   i32.load offset=60
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/ebm/__EBM#getMetrics (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/ebm/__EBM#getMetrics
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/ebm/__EBM#getMetricsOnSelectedSamples (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $assembly/ebm/__EBM#getMetricsOnSelectedSamples
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/ebm/__EBM#getMetricsOnSelectedBins (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $~lib/array/Array<i32>#constructor
  local.tee $4
  i32.store
  loop $for-loop|0
   local.get $3
   local.get $1
   i32.load offset=12
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=68
    local.tee $2
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $2
    local.get $1
    local.get $3
    call $~lib/array/Array<i32>#__get
    call $~lib/array/Array<~lib/array/Array<f64>>#__get
    local.tee $5
    i32.store offset=8
    i32.const 0
    local.set $2
    loop $for-loop|1
     local.get $2
     local.get $5
     i32.load offset=12
     i32.lt_s
     if
      local.get $4
      local.get $5
      local.get $2
      call $~lib/array/Array<i32>#__get
      call $~lib/array/Array<i32>#push
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|1
     end
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  local.get $0
  local.get $4
  call $assembly/ebm/__EBM#getMetricsOnSelectedSamples
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/ebm/__EBM#getMetricsOnSelectedSlice (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=80
  local.tee $1
  i32.store
  local.get $0
  local.get $1
  call $assembly/ebm/__EBM#getMetricsOnSelectedSamples
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/ebm/__EBM#setSliceData (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  local.get $2
  call $assembly/ebm/__EBM#setSliceData
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/ebm/__EBM#setEditingFeature (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $assembly/ebm/__EBM#setEditingFeature
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/ebm/__EBM#printName (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/ebm/__EBM#printName
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/metrics/rootMeanSquaredError (param $0 i32) (param $1 i32) (result f64)
  (local $2 f64)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $assembly/metrics/rootMeanSquaredError
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/metrics/meanAbsoluteError (param $0 i32) (param $1 i32) (result f64)
  (local $2 f64)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $assembly/metrics/meanAbsoluteError
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/metrics/meanAbsolutePercentageError (param $0 i32) (param $1 i32) (result f64)
  (local $2 f64)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $assembly/metrics/meanAbsolutePercentageError
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/metrics/countByThreshold (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $assembly/metrics/countByThreshold
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/metrics/getROCCurve (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/metrics/getROCCurve
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/metrics/getPRCurve (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/metrics/getPRCurve
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/metrics/getROCAuc (param $0 i32) (result f64)
  (local $1 f64)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/metrics/getROCAuc
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/metrics/getAveragePrecision (param $0 i32) (result f64)
  (local $1 f64)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/metrics/getAveragePrecision
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/metrics/getAccuracy (param $0 i32) (param $1 i32) (result f64)
  (local $2 f64)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $assembly/metrics/getAccuracy
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/metrics/getConfusionMatrix@varargs (param $0 i32) (param $1 i32) (param $2 f64) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     i32.const 2
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   f64.const 0.5
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $assembly/metrics/getConfusionMatrix
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/metrics/getBalancedAccuracy (param $0 i32) (result f64)
  (local $1 f64)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/metrics/getBalancedAccuracy
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
)
