module xpb_5_220
(
    input [5:1] data_in, 
    output [1024:1] data_out 
); 

reg [1024:1] xpb; 

assign data_out = xpb; 

always@(*) begin
    case(data_in)
    5'b00000 : xpb = 1024'h0;
    5'b00001 : xpb = 1024'h408073715fbae1944936fedfd9cfa5eaf4c062ff024d15236ce28f0b13d9ea6c4981a1198a0b00e8c1c3d2cd1d86e558ecf27ec5384ddb92039bca691393edad56879ffe1bd92459c54315f5d890d5b43a8a6ba4622e9f2fdcccce6f7fa028d2b7bed03afb081eb91cb12b7aabd9e09fc0122ebc88ca55441da212478ab4de50;
    5'b00010 : xpb = 1024'h8100e6e2bf75c328926dfdbfb39f4bd5e980c5fe049a2a46d9c51e1627b3d4d893034233141601d18387a59a3b0dcab1d9e4fd8a709bb724073794d22727db5aad0f3ffc37b248b38a862bebb121ab687514d748c45d3e5fb9999cdeff4051a56f7da075f6103d72396256f557b3c13f80245d791194aa883b44248f1569bca0;
    5'b00011 : xpb = 1024'h10d414fe5d426ff4109f84c87d14aa6f6ccb25cc316f9ef2c8caf3cb888b123cd93c65d3d3fa842ba5ed392075369f4062bd54698636c26a5a341fdcffe954568f47ab4ba3fa6fc83d2f3f3ef0d6bcebbb9a49549a05b07ee0d9d953c4b5d7e5f834de87404f639dcf539b910bbd7bb5f15cad534a13a29c1276bbd2173c3485;
    5'b00100 : xpb = 1024'h5154886fbcfd518859d683a856e4505a618b88cb33bcb41635ad82d69c64fca922be06ed5e05851467b10bed92bd84994fafd32ebe849dfc5dcfea46137d4203e5cf4b49bfd3942202725534c967929ff624b4f8fc344faebda6a7c3445600b8aff3aec23b578256ec04c70bb7975c55b16edc0fd2ddf7e03018ce19a1f112d5;
    5'b00101 : xpb = 1024'h91d4fbe11cb8331ca30d828830b3f645564bebca3609c939a29011e1b03ee7156c3fa806e81085fd2974debab04469f23ca251f3f6d2798e616bb4af27112fb13c56eb47dbacb87bc7b56b2aa1f8685430af209d5e62eede9a737632c3f6298b67b27efd365fa11008b5f28663713cf571810acc5ba84d244dbae0612ca5f125;
    5'b00110 : xpb = 1024'h21a829fcba84dfe8213f0990fa2954ded9964b9862df3de59195e79711162479b278cba7a7f508574bda7240ea6d3e80c57aa8d30c6d84d4b4683fb9ffd2a8ad1e8f569747f4df907a5e7e7de1ad79d7773492a9340b60fdc1b3b2a7896bafcbf069bd0e809ec73b9ea73722177af76be2b95aa69427453824ed77a42e78690a;
    5'b00111 : xpb = 1024'h62289d6e1a3fc17c6a760870d3f8fac9ce56ae97652c5308fe7876a224f00ee5fbfa6cc1320009400d9e450e07f423d9b26d279844bb6066b8040a231366965a7516f69563ce03ea3fa19473ba3e4f8bb1befe4d963a002d9e808117090bd89ea8288d497ba6e5f4bb58629cc354d80ba2cb89631cf19a7c428f89ebb92d475a;
    5'b01000 : xpb = 1024'ha2a910df79faa310b3ad0750adc8a0b4c31711966779682c6b5b05ad38c9f952457c0ddabc0b0a28cf6217db257b09329f5fa65d7d093bf8bb9fd48c26fa8407cb9e96937fa7284404e4aa6992cf253fec4969f1f8689f5d7b4d4f8688ac01715fe75d8476af04add8098e176f2eb8ab62ddb81fa5bbefc060319c3343e225aa;
    5'b01001 : xpb = 1024'h327c3efb17c74fdc31de8e59773dff4e46617164944edcd85a60db6299a136b68bb5317b7bef8c82f1c7ab615fa3ddc12837fd3c92a4473f0e9c5f96ffbbfd03add701e2ebef4f58b78dbdbcd28436c332cedbfdce11117ca28d8bfb4e2187b1e89e9b95c0ee2ad96dfad2b323387321d41607f9de3ae7d43764337645b49d8f;
    5'b01010 : xpb = 1024'h72fcb26c778231707b158d39510da5393b21d463969bf1fbc7436a6dad7b2122d536d29505fa8d6bb38b7e2e7d2ac31a152a7c01caf222d112382a00134feab1045ea1e107c873b27cd0d3b2ab150c776d5947a2303fb0ac7f5a5a6acdc1b084a05d6bd0bbf649928aabfe2dcf1253c1942836b667053d18550645bdd0697bdf;
    5'b01011 : xpb = 1024'h2cfe088154ede3bf94714421a8303d2be6c3431c37166a7b64940230e525e871b6ff635c5df0fc5d5f111b4b75397a89e02d2e0e08d2e176534b50aec1163ace6970d3074109ac72f79e705eaca1dfab3deb9ae05e822cba69a96df933736c52914a9e206356fbe209d42c9831c0e38056086909f84352c2c38dd00d23bf3c4;
    5'b01100 : xpb = 1024'h435053f97509bfd0427e1321f452a9bdb32c9730c5be7bcb232bcf2e222c48f364f1974f4fea10ae97b4e481d4da7d018af551a618db09a968d07f73ffa5515a3d1ead2e8fe9bf20f4bcfcfbc35af3aeee6925526816c1fb8367654f12d75f97e0d37a1d013d8e773d4e6e442ef5eed7c572b54d284e8a7049daef485cf0d214;
    5'b01101 : xpb = 1024'h83d0c76ad4c4a1648bb51201ce224fa8a7ecfa2fc80b90ee900e5e393606335fae733868d9f511975978b74ef261625a77e7d06b5128e53b6c6c49dd13393f0793a64d2cabc2e37aba0012f19bebc96328f390f6ca45612b603433be9277886a98924a57fc45ad3059ff99bedacfcf778584e409b118dfb4677d018fe7a5b064;
    5'b01110 : xpb = 1024'h13a3f58672914e3009e6990a9797ae422b3759fdf4e1059a7f1433ee96dd70c3f4ac5c0999d993f17bde4ad52c8a36e900c0274a66c3f081bf68d4e7ebfab80375deb87c180b0a8f6ca92644dba0dae66f7903029fedd34a8774703357ed0eab214988694684d35beff0de5a8ed989edf6bd33e3e997d7c83eaf98d2e9782849;
    5'b01111 : xpb = 1024'h542468f7d24c2fc4531d97ea7167542d1ff7bcfcf72e1abdebf6c2f9aab75b303e2dfd2323e494da3da21da24a111c41edb2a60f9f11cc13c3049f50ff8ea5b0cc66587a33e42ee931ec3c3ab431b09aaa036ea7021c727a64413ea2d78d377dd90858a4418cf2150ca209d53ab36a8db6cf62a072622d0c5c51ab1a742d0699;
    5'b10000 : xpb = 1024'h94a4dc69320711589c5496ca4b36fa1814b81ffbf97b2fe158d95204be91459c87af9e3cadef95c2ff65f06f6798019adaa524d4d75fa7a5c6a069ba1322935e22edf8784fbd5342f72f52308cc2864ee48dda4b644b11aa410e0d12572d605090c728df3c9510ce2953354fe68d4b2d76e1915cfb2c825079f3bd61fee1e4e9;
    5'b10001 : xpb = 1024'h24780a84cfd3be241a861dd314ac58b198027fca2650a48d47df27ba1f688300cde8c1dd6dd4181d21cb83f5a1c0d629637d7bb3ecfab2ec199cf4c4ebe40c5a052663c7bc057a57a9d86583cc7797d22b134c5739f383c9684e49871ca2e691197e66f086d436f9bf4479eb9a9705a3e819e13733ab7a64512654a500b45cce;
    5'b10010 : xpb = 1024'h64f87df62f8e9fb863bd1cb2ee7bfe9c8cc2e2c9289db9b0b4c1b6c533426d6d176a62f6f7df1905e38f56c2bf47bb82506ffa7925488e7e1d38bf2dff77fa075bae03c5d7de9eb16f1b7b79a5086d86659db7fb9c2222f9451b17f69c430f63d13d372b81dc55b2dbf5a5664670e643a82c0ff3bc75cfa86ec866ec8b693b1e;
    5'b10011 : xpb = 1024'ha578f1678f49814cacf41b92c84ba487818345c82aeaced421a445d0471c57d960ec041081ea19eea553298fdccea0db3d62793e5d966a1020d48997130be7b4b235a3c3f3b7c30b345e916f7d99433aa028239ffe50c22921e7e6661be3383688fc07667ce4746bf8a6d0e0f24ac6e3683e3eb0454024ec8c6a7934161e196e;
    5'b10100 : xpb = 1024'h354c1f832d162e182b25a29b91c1032104cda59657c0438010aa1b85a7f3953da72527b141ce9c48c7b8bd1616f77569c63ad01d7331755673d114a1ebcd60b0946e0f135fffea1fe707a4c2bd4e54bde6ad95abd3f93448492822dae158be7711b34577c7239a978e98157ca6548159d9768e8a7dbf1d00639d107717f09153;
    5'b10101 : xpb = 1024'h75cc92f48cd10fac745ca17b6b90a90bf98e08955a0d58a37d8caa90bbcd7fa9f0a6c8cacbd99d31897c8fe3347e5ac2b32d4ee2ab7f50e8776cdf0aff614e5deaf5af117bd90e79ac4abab895df2a72213801503627d37825f4f14a60f8e749c97215b2c22bb950ab4940f7522e61f99988bd4706897244813f22bea2a56fa3;
    5'b10110 : xpb = 1024'h59fc1102a9dbc77f28e2884350607a57cd8686386e2cd4f6c9280461ca4bd0e36dfec6b8bbe1f8babe223696ea72f513c05a5c1c11a5c2eca696a15d822c759cd2e1a60e821358e5ef3ce0bd5943bf567bd735c0bd045974d352dbf266e6d8a522953c40c6adf7c413a859306381c700ac10d213f086a585871ba01a477e788;
    5'b10111 : xpb = 1024'h462034818a589e0c3bc527640ed5ad907198cb62892fe272d9750f51307ea77a80618d8515c920746da5f6368c2e14aa28f82486f96837c0ce05347eebb6b50723b5ba5f03fa59e82436e401ae2511a9a247df006dfee4c72a01fc2ea60e965d09e823ff0772fe355debb10db211fd0fcad33bddc7d2bf9c7613cc492f2cc5d8;
    5'b11000 : xpb = 1024'h86a0a7f2ea137fa084fc2643e8a5537b66592e618b7cf79646579e5c445891e6c9e32e9e9fd4215d2f69c903a9b4fa0315eaa34c31b61352d1a0fee7ff4aa2b47a3d5a5d1fd37e41e979f9f786b5e75ddcd24aa4d02d83f706ceca9e25aebf2fc1a6f43a027b1cee7a9cdc885debddaf8ae56a9a509d14e093b5de90b9e1a428;
    5'b11001 : xpb = 1024'h1673d60e87e02c6c032dad4cb21ab214e9a38e2fb8526c42355d7411a52fcf4b101c523f5fb8a3b751cf5c89e3ddce919ec2fa2b47511e99249d89f2d80c1bb05c75c5ac8c1ba5569c230d4ac66af8e12357bcb0a5d5f6162e0f0712eb2445704a5e324b4cba431a108e212411f59825fc1dba74891c0cf46ae875d3bbb41c0d;
    5'b11010 : xpb = 1024'h56f4497fe79b0e004c64ac2c8bea57ffde63f12eba9f8165a240031cb909b9b7599df358e9c3a4a013932f570164b3ea8bb578f07f9efa2b2839545beba0095db2fd65aaa7f4c9b0616623409efbce955de22855080495460adbd5826ac46e43021d028647c261d32d3f4c9ebdcf78c5bc2fe93111e66238888a881b4668fa5d;
    5'b11011 : xpb = 1024'h9774bcf14755ef94959bab0c65b9fdead324542dbcec96890f229227cce3a423a31f947273cea588d55702241eeb994378a7f7b5b7ecd5bd2bd51ec4ff33f70b098505a8c3cdee0a26a93936778ca449986c93f96a333475e7a8a3f1ea649715b9dbd2c142ca808c49f0781969a959657c4217ed9ab0b77ca62c9a62d11dd8ad;
    5'b11100 : xpb = 1024'h2747eb0ce5229c6013cd32152f2f5c84566eb3fbe9c20b34fe2867dd2dbae187e958b81333b327e2f7bc95aa59146dd201804e94cd87e1037ed1a9cfd7f57006ebbd70f83016151ed9524c89b741b5ccdef206053fdba6950ee8e066afda1d56429310d28d09a6b7dfe1bcb51db313dbed7a67c7d32faf907d5f31a5d2f05092;
    5'b11101 : xpb = 1024'h67c85e7e44dd7df45d0430f508ff026f4b2f16faec0f20586b0af6e84194cbf432da592cbdbe28cbb9806877769b532aee72cd5a05d5bc95826d7438eb895db4424510f64bef39789e95627f8fd28b81197c71a9a20a45c4ebb5aed62f7a4628fa51e10d8811c570fc92e82fc98cf47bad8c96845bfa04d49b0143ed5da52ee2;
    5'b11110 : xpb = 1024'ha848d1efa4985f88a63b2fd4e2cea85a3fef79f9ee5c357bd7ed85f3556eb6607c5bfa4647c929b47b443b4494223883db654c1f3e23982786093ea1ff1d4b6198ccb0f467c85dd263d87875686361355406dd4e0438e4f4c8827d45af1a6efbb210b1488319e42a194413aa7566d51b6d9ec540e4c45a18b8a35634e85a0d32;
    5'b11111 : xpb = 1024'h381c000b42650c54246cb6ddac4406f3c339d9c81b31aa27c6f35ba8b645f3c4c2951de707adac0e9da9cecace4b0d12643da2fe53bea36dd905c9acd7dec45d7b051c43d41084e716818bc8a81872b89a8c4f59d9e15713efc2b9ba748ff53c3ac7ef59cd590a55af35584629708f91ded7151b1d43522c8fd5ed77ea2c8517;
    endcase
end

endmodule
