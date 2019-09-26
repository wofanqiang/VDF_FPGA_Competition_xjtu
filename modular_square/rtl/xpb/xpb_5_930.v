module xpb_5_930
(
    input clk, 
    input [5:1] data_in, 
    output [1024:1] data_out 
); 

reg [1024:1] xpb; 

assign data_out = xpb; 

always@(posedge clk) begin
    case(data_in)
    5'b00000 : xpb = 1024'h0;
    5'b00001 : xpb = 1024'h25f57b24b1636a78d2c6887f255058b5437b842535b45197d1cf3a220a22339afc09cfc2b760fcb7e9c5f413934f197a51eb5acc73d5e950f000fa1e5de1c48923f86364b9957f7c26de344519e9ef7c263106f92c2546b2147a51b0502f43eb6f89cd0bdac4e1556f5c6210e5a0a17512281117170365af0af5df9fc24972ce;
    5'b00010 : xpb = 1024'h4beaf64962c6d4f1a58d10fe4aa0b16a86f7084a6b68a32fa39e744414446735f8139f856ec1f96fd38be827269e32f4a3d6b598e7abd2a1e001f43cbbc3891247f0c6c9732afef84dbc688a33d3def84c620df2584a8d6428f4a360a05e87d6df139a17b589c2aadeb8c421cb4142ea2450222e2e06cb5e15ebbf3f8492e59c;
    5'b00011 : xpb = 1024'h71e0716e142a3f6a7853997d6ff10a1fca728c6fa11cf4c7756dae661e669ad0f41d6f482622f627bd51dc3ab9ed4c6ef5c210655b81bbf2d002ee5b19a54d9b6be92a2e2cc07e74749a9ccf4dbdce74729314eb846fd4163d6ef510f08dcbc24e9d6723904ea4004e152632b0e1e45f36783345450a310d20e19edf46dc586a;
    5'b00100 : xpb = 1024'h97d5ec92c58da9e34b1a21fc954162d50dee1094d6d1465f473ce8882888ce6bf0273f0add83f2dfa717d04e4d3c65e947ad6b31cf57a543c003e879778712248fe18d92e655fdf09b78d11467a7bdf098c41be4b0951ac851e946c140bd0fadbe27342f6b138555bd718843968285d448a0445c5c0d96bc2bd77e7f0925cb38;
    5'b00101 : xpb = 1024'hd1e2261b502df9352db32a4aa377438dff39189370df77f9b2f69547fa854fee8e89154cabe7108f17f851afd2d6e99357e9e18207abe48ff65a3399a9661fc3f8abc48f05a8027afbd02b6e8b5e93bcaf0294550343469b0d70676d6c1b106fea96f11950f6e1da60e0375845301200bee769122c59f3af05de31a428cd79b;
    5'b00110 : xpb = 1024'h33139d8666664a0c25a1bb23cf87ccee236f15ae6cc249176cfea37689ca8899e4f26117821f6dc0db45792e907c88138769f8e49450a799ef669d57f878268563831fada9efffa3d69b36fc029fd8b7f121303e7c597b1bc551582726f0f4f26e333c1d6fd44f73156a658669f3a2951e1687a839c904e9fb53c2ba04d64a69;
    5'b00111 : xpb = 1024'h590918ab17c9b484f86843a2f4d825a366ea99d3a2769aaf3ecddd9893ecbc34e0fc30da39806a78c50b6d4223cba18dd95553b1082690eadf6797765659eb0e877b831263857f1ffd796b411c89c83417523737a87ec1cdd9cba9d7772038ddddbd09294a9930c884c6c7974f94440a303e98bf50cc6a990649a259c71fbd37;
    5'b01000 : xpb = 1024'h7efe93cfc92d1efdcb2ecc221a287e58aa661df8d82aec47109d17ba9e0eefcfdd06009cf0e16730aed16155b71abb082b40ae7d7bfc7a3bcf689194b43baf97ab73e6771d1afe9c24579f863673b7b03d833e30d4a4087fee45fb87c74f7cc94d46d635255e121df42329a83534e57f4266a9d667cfd048113f81f989693005;
    5'b01001 : xpb = 1024'ha4f40ef47a9089769df554a13f78d70dede1a21e0ddf3ddee26c51dca831236ad90fd05fa84263e8989755694a69d4827d2c0949efd2638cbf698bb3121d7420cf6c49dbd6b07e184b35d3cb505da72c63b4452a00c94f3202c04d38177ec0b4bcd0a3410022f373637f8bb91ad586f4548ebaed7ed335f71c3561994bb2a2d3;
    5'b01010 : xpb = 1024'h1a3c44c36a05bf26a5b66549546ee871bfe723126e1beeff365ed2a8ff50a9fdd1d122a9957ce211e2ff0a35fa5add326afd3c3040f57c91fecb4673352cc3f87f157891e0b5004f5f7a056dd16bd27795e0528aa06868d361ae0cedad83620dfd52de232a1edc3b4c1c06eb08a6024017dced22458b3e75e0bbc6348519af36;
    5'b01011 : xpb = 1024'h4031bfe81b69299f787cedc879bf41270362a737a3d04097082e0ccb0972dd98cddaf26c4cdddec9ccc4fe498da9f6acbce896fcb4cb65e2eecc4091930e8881a30ddbf69a4a7fcb865839b2eb55c1f3bc115983cc8daf8576285e9dfdb2a5f96cdcab2f04e3bd90bb7868fbee46a3b52a04fe395c8ea424ebb1a5d447632204;
    5'b01100 : xpb = 1024'h66273b0ccccc94184b4376479f0f99dc46de2b5cd984922ed9fd46ed13951133c9e4c22f043edb81b68af25d20f910270ed3f1c928a14f33decd3aaff0f04d0ac7063f5b53dfff47ad366df8053fb16fe242607cf8b2f6378aa2b04e4de1e9e4dc66783adfa89ee62ad4cb0cd3e7452a3c2d0f50739209d3f6a7857409ac94d2;
    5'b01101 : xpb = 1024'h8c1cb6317e2ffe911e09fec6c45ff2918a59af820f38e3c6abcc810f1db744cec5ee91f1bb9fd839a050e670b44829a160bf4c959c773884cece34ce4ed21193eafea2c00d757ec3d414a23d1f29a0ec0873677624d83ce99f1d01fe9e112dd04bf04546ba6d803b9a312d1db987e69f4e5520678a956f83019d6513cbf607a0;
    5'b01110 : xpb = 1024'h164ec006da5344125cb0f6ed95603f55c5f30766f7594e6ffbf01db74d6cb61beafe43ba8da5662eab89b3d643932514e907f7bed9a518a0e2fef8e71e1616b9aa7d176177a00fae858d3dfa037cc373a9f74d6c477568afe0ac1b43415cf298c728028e469690382cda84fa75861eb11a3529c514d7801c623c9af055d1403;
    5'b01111 : xpb = 1024'h275a67251f089eb9f89197edfea65caa9fdab49ba529e67ed18e3bfd7ef8fefcbab9b3fe603b531ad47e8f50f7884bcba07bda4861703adafe30e9accfc325f4bea034dad10f80770f370824ba21bbb360d07bcff09c9d3d1285136484451314fbfc4d34bf2e4a58f22a0a608cf9036023cb63b36850ddb0d119a94ec7a686d1;
    5'b10000 : xpb = 1024'h4d4fe249d06c0932cb58206d23f6b55fe35638c0dade3816a35d761f891b3297b6c383c1179c4fd2be4483648ad76545f2673514d546242bee31e3cb2da4ea7de298983f8aa4fff336153c69d40bab2f870182c91cc1e3ef26ff6514d47457006b861a4099f32bae61866c717299a4d535f374ca7f54435fdc0f88ee89eff99f;
    5'b10001 : xpb = 1024'h73455d6e81cf73ab9e1ea8ec49470e1526d1bce6109289ae752cb041933d6632b2cd5383cefd4c8aa80a77781e267ec044528fe1491c0d7cde32dde98b86af070690fba4443a7f6f5cf370aeedf59aabad3289c248e72aa13b79b6c524a39aebdb0fe74c74b80d03d0e2ce82583a464a481b85e19657a90ee705688e4c396c6d;
    5'b10010 : xpb = 1024'h993ad8933332de2470e5316b6e9766ca6a4d410b4646db4646fbea639d5f99cdaed72346865e494291d06b8bb175983a963deaadbcf1f6cdce33d807e96873902a895f08fdcffeeb83d1a4f407df8a27d36390bb750c71534ff4087574d2ded74a99b4584f7cee59403f30933ddae7bf5a4396f8ad5b0ebdf1fb482e0e82df3b;
    5'b10011 : xpb = 1024'he830e6222a813d478a64213838d782e3c52c1ffa6838c669aee6b2ff47f2060a79875907398c76bdc3820586166a0ea840f1d940e150fd30d9592c80c77c367da328dbf07d481229815d69688edb573058f9e1c14ab8af4aee1c82b0ad780308b1bef3a7978d72128dbabc52bab630b1d91c92d7413173cb681acc947e9eb9e;
    5'b10100 : xpb = 1024'h34788986d40b7e4d4b6cca92a8ddd0e37fce4624dc37ddfe6cbda551fea153fba3a245532af9c423c5fe146bf4b5ba64d5fa786081eaf923fd968ce66a5987f0fe2af123c16a009ebef40adba2d7a4ef2bc0a51540d0d1a6c35c19db5b06c41bfaa5bc46543db87698380dd6114c04802fb9da448b167cebc1778c690a335e6c;
    5'b10101 : xpb = 1024'h5a6e04ab856ee8c61e335311ce2e2998c349ca4a11ec2f963e8cdf7408c387969fac1515e25ac0dbafc4087f8804d3df27e5d32cf5c0e274ed978704c83b4c7a222354887aff801ae5d23f20bcc1946b51f1ac0e6cf61858d7d66b8bab3608076a2f89522f0299cc07946fe6f6eca5f541e1eb5ba219e29acc6d6c08cc7cd13a;
    5'b10110 : xpb = 1024'h80637fd036d2533ef0f9db90f37e824e06c54e6f47a0812e105c199612e5bb319bb5e4d899bbbd939989fc931b53ed5979d12df96996cbc5dd988123261d1103461bb7ed3494ff970cb07365d6ab83e77822b307991b5f0aec50bd3bfb654bf2d9b9565e09c77b2176f0d1f7dc8d476a5409fc72b91d4849d7634ba88ec64408;
    5'b10111 : xpb = 1024'ha658faf4e835bdb7c3c0641018cedb034a40d2947d54d2c5e22b53b81d07eecc97bfb49b511cba4b834ff0a6aea306d3cbbc88c5dd6cb516cd997b4183fed58c6a141b51ee2a7f13338ea7aaf09573639e53ba00c540a5bd00cb0eec4b948fde49432369e48c5c76e64d3408c22de8df66320d89d020adf8e2592b48510fb6d6;
    5'b11000 : xpb = 1024'h1ba130c3d7aaf367cb8174b82dc4ec671c465388dd9183e6361dd4847427755f908106e53e573874cdb7a5735e940f83b98dbbac2e8fce1c0cfb3601a70e256419bd4a07f82f014a47d2d94d71a39eaed07fc76164dfbf5e5fb8cea1e199313789c55e4c0e88453ecee9af3aaffe642b29803fbe96d8b677a6df8fe38a76c339;
    5'b11001 : xpb = 1024'h4196abe8890e5de09e47fd375315451c5fc1d7ae1345d57e07ed0ea67e49a8fa8c8ad6a7f5b8352cb77d9986f1e328fe0b791678a265b76cfcfc302004efe9ed3db5ad6cb1c480c66eb10d928b8d8e2af6b0ce5a910506107433205231c87522f94f2b57e94d26943e46114b959f05a03ba850d5addc1c26b1d56f834cc03607;
    5'b11010 : xpb = 1024'h678c270d3a71c859710e85b678659dd1a33d5bd348fa2715d9bc48c8886bdc958894a66aad1931e4a1438d9a853242785d647145163ba0bdecfd2a3e62d1ae7661ae10d16b5a0042958f41d7a5777da71ce1d553bd2a4cc288ad720281f7b90e68d8f863c41207e9ada2735c7b3fa7154dd061ecc4df81d5bccb4f230f09a8d5;
    5'b11011 : xpb = 1024'h8d81a231ebd532d243d50e359db5f686e6b8dff87eae78adab8b82ea928e1030849e762d647a2e9c8b0981ae18815bf2af4fcc118a118a0edcfe245cc0b372ff85a6743624ef7fbebc6d761cbf616d234312dc4ce94f93749d27c3b2d226fcf9d862c56f9ed6e93f1cfed56d60e0488a5ff87303dbe2e784c7c12ec2d1531ba3;
    5'b11100 : xpb = 1024'h2c9d800db4a68824b961eddb2ac07eab8be60ecdeeb29cdff7e03b6e9ad96c37d5fc87751b4acc5d571367ac87264a29d20fef7db34a3141c5fdf1ce3c2c2d7354fa2ec2ef401f5d0b1a7bf406f986e753ee9ad88eead15fc158368682b9e5318e50051c8d2d207059b509f4eb0c3d62346a538a29af0038c47935e0aba2806;
    5'b11101 : xpb = 1024'h28bf53258cadd2fb1e5ca75cd7fc609ffc39e512149f7b65d14d3dd8f3cfca5e7969983a0915a97dbf372a8e5bc17e1cef0c59c44f0a8c650c60d93b41a4876059480650e8898171f78fdc045a5987ea9b6ff0a6b513f3c8108fd518b85ae23e886ecd5da397b35c74f7b2b03451654b356eb64fb99e55b2973d72fdcd039ad4;
    5'b11110 : xpb = 1024'h4eb4ce4a3e113d73f1232fdbfd4cb9553fb569374a53ccfda31c77fafdf1fdf9757367fcc076a635a8fd1ea1ef10979740f7b490c2e075b5fc61d3599f864be97d4069b5a21f00ee1e6e104974437766c1a0f79fe1393a7a250a26c9088a2629f7f89a697e5c94b1e45414c119f206c04796c766d0a1bb61a233529d8f4d0da2;
    5'b11111 : xpb = 1024'h74aa496eef74a7ecc3e9b85b229d120a8330ed5c80081e9574ebb21d08143194717d37bf77d7a2ed92c312b5825fb11192e30f5d36b65f06ec62cd77fd681072a138cd1a5bb4806a454c448e8e2d66e2e7d1fe990d5e812c3984787958b96a15678267755921760753b076d1ff92a83559bed87de7a52110ad29323d51968070;
    endcase
end

endmodule
