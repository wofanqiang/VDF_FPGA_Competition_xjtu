module xpb_5_140
(
    input [5:1] data_in, 
    output [1024:1] data_out 
); 

reg [1024:1] xpb; 

assign data_out = xpb; 

always@(*) begin
    case(data_in)
    5'b00000 : xpb = 1024'h0;
    5'b00001 : xpb = 1024'h951aa88a3ae7293cdd2dadbc7ba912a7795ee5720b43cf06a6dec184648b7d7fbbdf392191c5dffe1e1d78d118bdf8b714e5bcb1a64db91f8dbe738bf65c080c6be677d47b7f4f7ef79051ca4842c24d4485258efaba5b655d0082135cb7563287fc83417a7e2e81aa3de8b6da1585ab017459e2d9e0bf1cb654b029aac334ea;
    5'b00010 : xpb = 1024'h79880bbeb3e01db0ef55e3a1e6f7ddfd8147c7b3410ffd95cfe0c9b316144df77475f4ca5965416d9cdcb25b4e1de0a3c5b1517d29e8a1f36adda7b9b1e59b67637dbafa476da1b8dc86a0f1f7a9c0699505518568ee89ba0474722bff4409d2e0f1745944336475cdbbea8ebc5ae52cb40ed4e3637621092639e54ecca40369;
    5'b00011 : xpb = 1024'h5df56ef32cd91225017e19875246a9538930a9f476dc2c24f8e2d1e1c79d1e6f2d0cb0732104a2dd1b9bebe5837dc890767ce648ad838ac747fcdbe76d6f2ec25b14fe20135bf3f2c17cf019a710be85e5857d7bd722b80eabe86244a1d0bd7339e665710de89a69f139ec669ea044ae66a94fe3ed0b82f5961f1a73ee84d1e8;
    5'b00100 : xpb = 1024'h4262d227a5d2069913a64f6cbd9574a991198c35aca85ab421e4da107925eee6e5a36c1be8a4044c9a5b256fb8ddb07d27487b14311e739b251c101528f8c21d52ac4145df4a462ca6733f415677bca23605a9724556e663535c525d445d711392db5688d79dd05e14b7ee3e80e5a4301943cae476a0e4e206044f991065a067;
    5'b00101 : xpb = 1024'h26d0355c1ecafb0d25ce855228e43fff99026e76e27489434ae6e23f2aaebf5e9e3a27c4b04365bc191a5ef9ee3d9869d8140fdfb4b95c6f023b4442e48255784a43846bab3898668b698e6905debabe8685d568b38b14b7fad04275e6ea24b3ebd047a0a15306523835f016632b03b1cbde45e5003646ce75e984be32466ee6;
    5'b00110 : xpb = 1024'hb3d989097c3ef8137f6bb3794330b55a0eb50b81840b7d273e8ea6ddc378fd656d0e36d77e2c72b97d99884239d805688dfa4ab38544542df5a7870a00be8d341dac7917726eaa0705fdd90b545b8dad706015f21bf430ca244328e8976d85444c538b86b083c465bb3f1ee457063337e78c0e589cba8bae5ceb9e354273d65;
    5'b00111 : xpb = 1024'ha058411ad2ab18be152468f40fdc1dfd1a4a362a238486d91ac7abf240c30d5612b01c8f09a8a729b5f711553c5b790d9dc5615cdea1fe626d18ebfc9667f0dfadc13f65f2a63a1f67f02f5afd887b281b8b26ee1c799e71ff44b4a1e62e2e86ccc1bbf9e5866ac805f1daa51f85e8de7fed1ac863ac67d79c236a0cfeea724f;
    5'b01000 : xpb = 1024'h84c5a44f4ba40d32274c9ed97b2ae9532233186b5950b56843c9b420f24bddcdcb46d837d148089934b64adf71bb60fa4e90f628623ce7364a38202a51f1843aa558828bbe948c594ce67e82acef79446c0b52e48aadccc6a6b8a4ba88bae22725b6ad11af3ba0bc296fdc7d01cb4860328795c8ed41c9c40c089f3220cb40ce;
    5'b01001 : xpb = 1024'h69330783c49d01a63974d4bee679b4a92a1bfaac8f1ce3f76ccbbc4fa3d4ae4583dd93e098e76a08b3758469a71b48e6ff5c8af3e5d7d00a275754580d7b17959cefc5b18a82de9331dccdaa5c567760bc8b7edaf8e1fb1b4e2c94d32b4795c77eab9e2978f0d6b04cedde54e410a7e1e52210c976d72bb07bedd45742ac0f4d;
    5'b01010 : xpb = 1024'h4da06ab83d95f61a4b9d0aa451c87fff3204dcedc4e9128695cdc47e555d7ebd3c744f896086cb783234bdf3dc7b30d3b0281fbf6972b8de04768885c904aaf0948708d7567130cd16d31cd20bbd757d0d0baad16716296ff5a084ebcdd44967d7a08f4142a60ca4706be02cc656076397bc8bca006c8d9cebd3097c648cddcc;
    5'b01011 : xpb = 1024'h320dcdecb68eea8e5dc54089bd174b5539edbf2efab54115becfccad06e64f34f50b0b3228262ce7b0f3f77e11db18c060f3b48aed0da1b1e195bcb3848e3e4b8c1e4bfd225f8306fbc96bf9bb2473995d8bd6c7d54a57c49d1475047060fd08309580590c5b429893e9e204a89b66e54a5706ca8a01ef895bb83ea1866dac4b;
    5'b01100 : xpb = 1024'h167b31212f87df026fed766f286616ab41d6a17030816fa4e7d1d4dbb86f1facada1c6daefc58e572fb33108473b00ad11bf495670a88a85beb4f0e14017d1a683b58f22ee4dd540e0bfbb216a8b71b5ae0c02be437e86194488651d12edb0a8898a7170d610788cb767e3dc8ae0c666fcf181cb13975175cb9d73c6a84e7aca;
    5'b01101 : xpb = 1024'hab95d9ab6a6f083f4d1b242ba40f2952bb3586e23bc53eab8eb096601cfa9d2c6980fffc818b6e554dd0a9d95ff8f96426a5060816f643a54c73646d3673d9b2ef9c06f769cd24bfd8500cebb2ce3402f291284d3e38e17ea188e7306fa506db1186f4b2508ea70e61a5cc9364f64c11fe65dbaded78109281f223f05311afb4;
    5'b01110 : xpb = 1024'h90033cdfe367fcb35f435a110f5df4a8c31e692371916d3ab7b29e8ece836da42217bba5492acfc4cc8fe3639558e150d7709ad39a912c792992989af1fd6d0de7334a1d35bb76f9bd465c136235321f43115443ac6d0fd348fcd7491231ba7b6a7be5ca1a43dd028523ce6b473bab93b10056ae770d727ef1d7591574f27e33;
    5'b01111 : xpb = 1024'h7470a0145c60f127716b8ff67aacbffecb074b64a75d9bc9e0b4a6bd800c3e1bdaae774e10ca31344b4f1cedcab8c93d883c2f9f1e2c154d06b1ccc8ad870068deca8d4301a9c933a23cab3b119c303b9391803a1aa13e27f070c761b4be6e1bc370d6e1e3f912f6a8a1d04329810b15639ad1af00a2d46b61bc8e3a96d34cb2;
    5'b10000 : xpb = 1024'h58de0348d559e59b8393c5dbe5fb8b54d2f02da5dd29ca5909b6aeec31950e93934532f6d86992a3ca0e56780018b12a3907c46aa1c6fe20e3d100f6691093c3d661d068cd981b6d8732fa62c1032e57e411ac3088d56c7c97e4b77a574b21bc1c65c7f9adae48eacc1fd21b0bc66a9716354caf8a383657d1a1c35fb8b41b31;
    5'b10001 : xpb = 1024'h3d4b667d4e52da0f95bbfbc1514a56aadad90fe712f5f8e832b8b71ae31ddf0b4bdbee9fa008f41348cd900235789916e9d359362561e6f4c0f03524249a271ecdf9138e99866da76c29498a706a2c743491d826f7099ad13f58a792f9d7d55c755ab91177637edeef9dd3f2ee0bca18c8cfc7b013cd98444186f884da94e9b0;
    5'b10010 : xpb = 1024'h21b8c9b1c74bce83a7e431a6bc992200e2c1f22848c227775bbabf4994a6af830472aa4867a85582c78cc98c6ad881039a9eee01a8fccfc89e0f6951e023ba79c59056b46574bfe1511f98b21fd12a908512041d653dc925e6cc97ab9c6488fcce4faa294118b4d3131bd5cad051299a7b6a42b09d62fa30b16c2da9fc75b82f;
    5'b10011 : xpb = 1024'h6262ce64044c2f7ba0c678c27e7ed56eaaad4697e8e560684bcc778462f7ffabd0965f12f47b6f2464c0316a03868f04b6a82cd2c97b89c7b2e9d7f9bad4dd4bd2799da3163121b3615e7d9cf3828acd5923013d371f77a8e4087c43ef13c9d27449b410acdeac73699d7a2b296891c2e04bdb126f85c1d215162cf1e5686ae;
    5'b10100 : xpb = 1024'h9b40d5707b2bec34973a1548a390fffe6409b9db89d2250d2b9b88fcaabafd7a78e89f12c10d96f064697be7b8f661a760503f7ed2e571bc08ed110b920955e1290e11aeace2619a2da639a4177aeafa1a1755a2ce2c52dfeb4109d79ba892cfaf411e82854c1948e0d7c0598cac0ec72f79179400d91b39d7a612f8c919bb98;
    5'b10101 : xpb = 1024'h7fae38a4f424e0a8a9624b2e0edfcb546bf29c1cbf9e539c549d912b5c43cdf2317f5abb88acf85fe328b571ee564994111bd44a56805a8fe60c45394d92e93c20a554d478d0b3d4129c88cbc6e1e9166a9781993c60813492b4f9f03e35467008360f9a4f014f3d0455c2316ef16e48e21392948a6e7d26478b481deafa8a17;
    5'b10110 : xpb = 1024'h641b9bd96d1dd51cbb8a81137a2e96aa73db7e5df56a822b7d9f995a0dcc9e69ea161664504c59cf61e7eefc23b63180c1e76915da1b4363c32b7967091c7c97183c97fa44bf060df792d7f37648e732bb17ad8faa94af893a28ea08e0c1fa10612b00b218b6853127d3c4095136cdca94ae0d951403df12b7707d430cdb5896;
    5'b10111 : xpb = 1024'h4888ff0de616c990cdb2b6f8e57d62007bc4609f2b36b0baa6a1a188bf556ee1a2acd20d17ebbb3ee0a728865916196d72b2fde15db62c37a04aad94c4a60ff20fd3db2010ad5847dc89271b25afe54f0b97d98618c8dddde19cda21834eadb0ba1ff1c9e26bbb254b51c5e1337c2d4c474888959d9940ff2755b2682ebc2715;
    5'b11000 : xpb = 1024'h2cf662425f0fbe04dfdaecde50cc2d5683ad42e06102df49cfa3a9b770de3f595b438db5df8b1cae5f6662108e76015a237e92ace151150b7d69e1c2802fa34d076b1e45dc9baa81c17f7642d516e36b5c18057c86fd0c328910ca3a25db61511314e2e1ac20f1196ecfc7b915c18ccdf9e30396272ea2eb973ae78d509cf594;
    5'b11001 : xpb = 1024'h1163c576d808b278f20322c3bc1af8ac8b96252196cf0dd8f8a5b1e622670fd113da495ea72a7e1dde259b9ac3d5e946d44a277864ebfddf5a8915f03bb936a7ff02616ba889fcbba675c56a847de187ac983172f5313a873084ba52c86814f16c09d3f975d6270d924dc990f806ec4fac7d7e96b0c404d807201cb2727dc413;
    5'b11010 : xpb = 1024'ha67e6e0112efdbb5cf30d08037c40b5404f50a93a212dcdf9f84736a86f28d50cfb9828038f05e1bfc43146bdc93e1fde92fe42a0b39b6fee847897c32153eb46ae8d94024094c3a9e061734ccc0a3d4f11d5701efeb95ec8d853c66251f6b23f406573af054558f3c8bb247d21c71faadf1d8798aa4c3f4bd74ccdc1d40f8fd;
    5'b11011 : xpb = 1024'h8aebd1358be8d029e1590665a312d6aa0cddecd4d7df0b6ec8867b99387b5dc888503e29008fbf8b7b024df611f3c9ea99fb78f58ed49fd2c566bda9ed9ed20f62801c65eff79e7482fc665c7c27a1f1419d82f85e1fc44134f92c7ec7ac1ec44cfb4852ba098b836009b41fb461d17c608c537a143a25e12d5a02013f21c77c;
    5'b11100 : xpb = 1024'h6f59346a04e1c49df3813c4b0e61a20014c6cf160dab39fdf18883c7ea042e4040e6f9d1c82f20faf9c187804753b1d74ac70dc1126f88a6a285f1d7a928656a5a175f8bbbe5f0ae67f2b5842b8ea00d921daeeecc53f295dc6d1c976a38d264a5f0396a83bec1778387b5f796a730fe1326ce7a9dcf87cd9d3f3726610295fb;
    5'b11101 : xpb = 1024'h53c6979e7ddab91205a9723079b06d561cafb1574377688d1a8a8bf69b8cfeb7f97db57a8fce826a7880c10a7cb399c3fb92a28c960a717a7fa5260564b1f8c551aea2b187d442e84ce904abdaf59e29e29ddae53a8820ea83e10cb00cc58604fee52a824d73f76ba705b7cf78ec907fc5c1497b2764e9ba0d246c4b82e3647a;
    5'b11110 : xpb = 1024'h3833fad2f6d3ad8617d1a815e4ff38ac249893987943971c438c94254d15cf2fb2147123576de3d9f73ffa94b21381b0ac5e375819a55a4e5cc45a33203b8c204945e5d753c2952231df53d38a5c9c46331e06dba8bc4f3f2b54fcc8af5239a557da1b9a17292d5fca83b9a75b31f001785bc47bb0fa4ba67d09a170a4c432f9;
    5'b11111 : xpb = 1024'h1ca15e076fcca1fa29f9ddfb504e04022c8175d9af0fc5ab6c8e9c53fe9e9fa76aab2ccc1f0d454975ff341ee773699d5d29cc239d40432239e38e60dbc51f7b40dd28fd1fb0e75c16d5a2fb39c39a62839e32d216f07d93d2c8ece151deed45b0cf0cb1e0de6353ee01bb7f3d774f832af63f7c3a8fad92eceed695c6a50178;
    endcase
end

endmodule
