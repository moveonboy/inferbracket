residueMap               = load('residueTypes.mat');
FUT9                     = GTEnz([2;4;1;152]);
FUT9.resfuncgroup        = residueMap.allresidues('Fuc');
FUT9.resAtt2FG           = residueMap.allresidues('GlcNAc');
glcnacBond               = GlycanBond('?','1');
FUT9.linkresAtt2FG       = struct('bond',glcnacBond,'anomer','b');
futbond                  = GlycanBond('3','1');
FUT9.linkFG              = struct('anomer','a','bond',futbond);
FUT9.targetBranch        = glycanMLread('559.28b16.glycoct_xml');
FUT9.substMinStruct      = glycanMLread('967.48.glycoct_xml');
FUT9.substMinStruct      = glycanMLread('967.48.glycoct_xml');
FUT9.isTerminalTarget    = false;
enzViewer(FUT9);