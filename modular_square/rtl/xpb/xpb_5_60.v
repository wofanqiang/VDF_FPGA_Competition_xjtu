module xpb_5_60
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
    5'b00001 : xpb = 1024'h76b3364ea979752607052aa8813486a75593bfe33535ac78910df4b8a8660d8889da2b5a78b9b3dff89c48dae27905a044bd51b8b5675046bcdfcf99ea72d436418e767eed761cb8f36d92438d3ae36efa1d202ce5416e551433b27be5c52d8bb8ae6fc7a23e70e24696640072c8920ec66132a15f1fae23fc6b33d60e5e37d9;
    5'b00010 : xpb = 1024'h3cb927479104b5834304dd79f20ec5fd39b17c9594f3b879a43f301b9dc96e09106bd93c274ce93151da526ee193fa7625607b8b481bd041c9205fd59a1333bb0ecdb84f2b5b3c2cd44121e4819a02ad003546c13dfcaf9972dad2fd115fb88542554d6593b3e937066ce121edc0fdf43de886606df3ff17b266eca793da0947;
    5'b00011 : xpb = 1024'h2bf1840788ff5e07f04904b62e905531dcf3947f4b1c47ab7706b7e932cce8996fd871dd5e01e82ab185c02e0aeef4c0603a55ddad0503cd560f01149b3933fdc0cfa1f69405ba0b514b18575f921eb064d6d5596b7f0ddd181f37e3cfa437ecbfc2b038529618bc6435e4368b969d9b56fda1f7cc8500b6862a5791955dab5;
    5'b00100 : xpb = 1024'h79724e8f22096b068609baf3e41d8bfa7362f92b29e770f3487e60373b92dc1220d7b2784e99d262a3b4a4ddc327f4ec4ac0f7169037a0839240bfab342667761d9b709e56b67859a88243c90334055a006a8d827bf95f32e5b5a5fa22bf710a84aa9acb2767d26e0cd9c243db81fbe87bd10cc0dbe7fe2f64cdd94f27b4128e;
    5'b00101 : xpb = 1024'h3f783f880994ab63c2096dc554f7cb505780b5dd89a57cf45baf9b9a30f63c92a7696059fd2d07b3fcf2ae71c242e9c22b6420e922ec207e9e814fe6e3c6c6faeadab26e949b97cd8955d369f79324980682b416d4b4a077445cc67b4e59fc040e51786918dd4ac2ccb03f65567a67cdf358607feabc4f231ac99220ad2fe3fc;
    5'b00110 : xpb = 1024'h57e3080f11febc0fe092096c5d20aa63b9e728fe96388f56ee0d6fd26599d132dfb0e3babc03d055630b805c15dde980c074abbb5a0a079aac1e0229367267fb819f43ed280b7416a29630aebf243d60c9adaab2d6fe1bba303e6fc79f486fd97f856070a52c3178c86bc86d172d3b36adfb43ef990a016d0c54af232abb56a;
    5'b00111 : xpb = 1024'h7c3166cf9a9960e7050e4b3f4706914d913232731e99356dffeecbb5cebfaa9bb7d539962479f0e54ecd00e0a3d6e43850c49c746b07f0c067a1afbc7dd9fab5f9a86abdbff6d3fa5d96f54e792d274506b7fad812b15010b73799785fb9b48950a6c5ceac9133f9d31d2087443b65c23140e6e058b04e3acd307ec84109ed43;
    5'b01000 : xpb = 1024'h423757c88224a144410dfe10b7e0d0a3754fef257e57416f13200718c4230b1c3e66e777d30d2636a80b0a74a2f1d90e3167c646fdbc70bb73e23ff82d7a5a3ac6e7ac8dfddbf36e3e6a84ef6d8c46830cd0216c6b6c915515deb9f98b543f82da4da36c9e06ac4e92f39da8bf33d1a7a8c83a9f67849f2e832c3799c685beb1;
    5'b01001 : xpb = 1024'h83d48c169afe1a17d0db0e228bb0ff9596dabd7de154d702651427bb9866b9cc4f8955981a05b8801491408a20ccde4120af0199070f0b68022d033dd1ab9bf9426ee5e3bc112e21f3e149061eb65c112e84800c427d2997485da7ab6eeca7c63f4810a8f7c24a352ca1aca3a2c3d8d204f8e5e7658f0223927f06b4c01901f;
    5'b01010 : xpb = 1024'h7ef07f10132956c78412db8aa9ef96a0af016bbb134af9e8b75f373461ec79254ed2c0b3fa5a0f67f9e55ce38485d38456c841d245d840fd3d029fcdc78d8df5d5b564dd29372f9b12aba6d3ef2649300d05682da96940ee88b98cf69cb3f8081ca2f0d231ba958599607ecaacf4cf9be6b0c0ffd5789e46359324415a5fc7f8;
    5'b01011 : xpb = 1024'h44f67008fab49724c0128e5c1ac9d5f6931f286d730905e9ca907297574fd9a5d5646e95a8ed44b95323667783a0c85a376b6ba4d88cc0f849433009772ded7aa2f4a6ad671c4f0ef37f3674e385686e131d8ec202248232e760ad77c84e8301a649ce7023300dda5936fbec27ed3b815e3814bee44cef39eb8edd12dfdb9966;
    5'b01100 : xpb = 1024'hafc6101e23fd781fc12412d8ba4154c773ce51fd2c711eaddc1adfa4cb33a265bf61c7757807a0aac61700b82bbbd30180e95776b4140f35583c04526ce4cff7033e87da5016e82d452c615d7e487ac1935b5565adfc3774607cdf8f3e90dfb2ff0ac0e14a5862f190d790da2e5a766d5bf687df321402da18a95e465576ad4;
    5'b01101 : xpb = 1024'h81af97508bb94ca803176bd60cd89bf3ccd0a50307fcbe636ecfa2b2f51947aee5d047d1d03a2deaa4fdb8e66534c2d05ccbe73020a8913a12638fdf11412135b1c25efc92778b3bc7c05859651f6b1b1352d583402131cc5a3b8074d9ae3b86e89f1bd5b6e3f7115fa3dd0e15ae39759c209b1f5240ee519df5c9ba73b5a2ad;
    5'b01110 : xpb = 1024'h47b5884973448d053f171ea77db2db49b0ee61b567baca648200de15ea7ca82f6c61f5b37ecd633bfe3bc27a644fb7a63d6f1102b35d11351ea4201ac0e180ba7f01a0ccd05caaafa893e7fa597e8a59196afc1798dc7310b8e2a0f60548c6807245f973a8596f661f7a5a2f90a6a55b13a7eede61153f4553f1828bf931741b;
    5'b01111 : xpb = 1024'hdbb79425acfcd627b16d178ee8d1a9f950c1e67c778d66595321978dfe008aff2f3a3952d60988d5779cc0e636aac7c1e123ad5461191302ae4b0567081e03f4c40e29d0e41ca238967779b4ddda9971f8322abf197b4551789c17730e35179fbecd71199cee7badf50d7510b9f11408b2f429d6fe9903909ed3b5d7ead4589;
    5'b10000 : xpb = 1024'h846eaf9104494288821bfc216fc1a146ea9fde4afcae82de26400e31884616387ccdceefa61a4c6d501614e945e3b21c62cf8c8dfb78e176e7c47ff05af4b4758dcf591bfbb7e6dc7cd509dedb188d0619a042d8d6d922aa2bbd73f316a87f05b49b46d93c0d589d25e73b517e67a34f5190753ecf093e5d06586f338d0b7d62;
    5'b10001 : xpb = 1024'h4a74a089ebd482e5be1baef2e09be09ccebd9afd5c6c8edf397149947da976b9035f7cd154ad81bea9541e7d44fea6f24372b6608e2d6171f405102c0a9513fa5b0e9aec399d06505da8997fcf77ac441fb8696d2f9463ee8a649474424309ff3e4224772d82d0f1e5bdb872f9600f34c917c8fddddd8f50bc54280512874ed0;
    5'b10010 : xpb = 1024'h107a9182d35fc342fa1b61c451761ff2b2db57afbc2a9ae04ca284f7730cd73989f12ab30340b7100292281144199bc82415e03320e1e16d0045a067ba35737f284ddcbc778225c43e7c2920c3d6cb8225d09001884fa532e90bb4f56ddd94f8c7e902151ef84946a594359474587b1a409f1cbcecb1e044724fe0d69803203e;
    5'b10011 : xpb = 1024'h872dc7d17cd9386901208c6cd2aaa69a086f1792f1604758ddb079b01b72e4c213cb560d7bfa6aeffb2e70ec2692a16868d331ebd64931b3bd257001a4a847b569dc533b64f8427d31e9bb645111aef11fedb02e6d911387fd3f677153a2c284809771dcc136ba28ec2a9994e7210d2907004f5e4bd18e686ebb14aca6615817;
    5'b10100 : xpb = 1024'h4d33b8ca646478c63d203f3e4384e5efec8cd445511e5359f0e1b51310d645429a5d03ef2a8da041546c7a8025ad963e49765bbe68fdb1aec966003d5448a73a371b950ba2dd61f112bd4b054570ce2f2605d6c2c64c54cc5be687f27f3d4d7e0a3e4f7ab2ac327dac0116b66219790e7e87a31d5aa5df5c24b6cd7e2bdd2985;
    5'b10101 : xpb = 1024'h1339a9c34befb923791ff20fb45f2545d0aa90f7b0dc5f5b0412f0760639a5c320eeb1d0d920d592adaa841424c88b142a198590fbb231a9d5a6907903e906bf045ad6dbe0c28164f390daa639cfed6d2c1dfd571f079610ba8da873aad7d87793e52d18a421aad26bd793d7dd11e4f3f60ef6dc697a304fdab2864fb158faf3;
    5'b10110 : xpb = 1024'h89ece011f5692e4980251cb83593abed263e50dae6120bd39520e52eae9fb34baac8dd2b51da8972a646ccef074190b46ed6d749b11981f092866012ee5bdaf545e94d5ace389e1de6fe6ce9c70ad0dc263b1d8404490465cec15aef909d06034c939ce046601bb4b26df7d84fda7702bc70297dc899de73d71dba25bfb732cc;
    5'b10111 : xpb = 1024'h4ff2d10adcf46ea6bc24cf89a66deb430a5c0d8d45d017d4a8522091a40313cc315a8b0d006dbec3ff84d683065c858a4f7a011c43ce01eb9ec6f04e9dfc3a7a13288f2b0c1dbd91c7d1fc8abb69f01a2c5344185d0445aa2d687b70bc3790fcd63a7a7e37d59409724474f9cad2e2e833f77d3cd76e2f678d1972f74533043a;
    5'b11000 : xpb = 1024'h15f8c203c47faf03f824825b17482a98ee79ca3fa58e23d5bb835bf49966744cb7ec38eeaf00f41558c2e01705777a60301d2aeed68281e6ab07808a4d9c99fee067d0fb4a02dd05a8a58c2bafc90f58326b6aacb5bf86ee8c0f9bf1e7d21bf65fe1581c294b0c5e321af21b45cb4ecdab7ed0fbe642805b43152bc8caaed5a8;
    5'b11001 : xpb = 1024'h8cabf8526df92429ff29ad03987cb140440d8a22dac3d04e4c9150ad41cc81d541c6644927baa7f5515f28f1e7f0800074da7ca78be9d22d67e75024380f6e3521f6477a3778f9be9c131e6f3d03f2c72c888ad99b00f543a0434e6dcd974982188fc7e3cb897d4078b1561bb893e0dc71e0039d45622e7f3f805f9ed90d0d81;
    5'b11010 : xpb = 1024'h52b1e94b558464873b295fd50956f096282b46d53a81dc4f5fc28c10372fe255c858122ad64ddd46aa9d3285e70b74d6557da67a1e9e52287427e05fe7afcdb9ef35894a755e19327ce6ae103163120532a0b16df3bc3687feea6eeef931d47ba236a581bcfef5953887d33d338c4cc1e967575c54367f72f57c18705e88deef;
    5'b11011 : xpb = 1024'h18b7da443d0fa4e4772912a67a312fec0c4903879a3fe85072f3c7732c9342d64ee9c00c84e1129803db3c19e62669ac3620d04cb152d2238068709b97502d3ebc74cb1ab34338a65dba3db125c2314338b8d8024c7777cc5d918f7024cc5f752bdd831fae746de9f85e505eae84b8a760eeab1b630ad066ab77d141e404b05d;
    5'b11100 : xpb = 1024'h8f6b1092e6891a0a7e2e3d4efb65b69361dcc36acf7594c90401bc2bd4f9505ed8c3eb66fd9ac677fc7784f4c89f6f4c7ade220566ba226a3d48403581c30174fe034199a0b9555f5127cff4b2fd14b232d5f82f31b8e62171c541ec0a918d00e48bf2e750b2decc3ef4b45f214d4ab6274fddbcc22a7e8aa7e30517f262e836;
    5'b11101 : xpb = 1024'h5571018bce145a67ba2df0206c3ff5e945fa801d2f33a0ca1732f78eca5cb0df5f559948ac2dfbc955b58e88c7ba64225b814bd7f96ea2654988d071316360f9cb428369de9e74d331fb5f95a75c33f038ee1ec38a742765d06c626d362c17fa6e32d08542285720fecb31809c45b69b9ed7317bd0fecf7e5ddebde977deb9a4;
    5'b11110 : xpb = 1024'h1b76f284b59f9ac4f62da2f1dd1a353f2a183ccf8ef1accb2a6432f1bfc0115fe5e7472a5ac1311aaef3981cc6d558f83c2475aa8c23226055c960ace103c07e9881c53a1c83944712ceef369bbb532e3f064557e32f68aa2f1382ee61c6a2f3f7d9ae23339dcf75bea1aea2173e2281165e853adfd3207213da76bafd5a8b12;
    5'b11111 : xpb = 1024'h922a28d35f190feafd32cd9a5e4ebbe67fabfcb2c4275943bb7227aa68261ee86fc17284d37ae4faa78fe0f7a94e5e9880e1c763418a72a712a93046cb7694b4da103bb909f9b100063c817a28f6369d39236584c870d6ff4347356a478bd07fb0881dead5dc4058053812a28a06b48fdcbfb7dc3ef2ce961045aa910bb8c2eb;
    endcase
end

endmodule
