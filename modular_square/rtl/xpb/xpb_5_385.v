module xpb_5_385
(
    input [5:1] data_in, 
    output [1024:1] data_out 
); 

reg [1024:1] xpb; 

assign data_out = xpb; 

always@(*) begin
    case(data_in)
    5'b00000 : xpb = 1024'h0;
    5'b00001 : xpb = 1024'h32c7e6764a41c5ff765f85611103ba6ceece110b505d5a6fa2d2d727b40c55419d104729dafab2f1e48a48821f5da0b29847cc60286f91d849e2f6e594ecf6166158e9d4e2f97f990e255a6098545d31170e6e014f71d2d8052b6538ed945923018d37440003af0b7f6a24056223d8891f8eb574a9cfae333919f2726a900e73;
    5'b00010 : xpb = 1024'h658fccec94838bfeecbf0ac2220774d9dd9c2216a0bab4df45a5ae4f6818aa833a208e53b5f565e3c91491043ebb4165308f98c050df23b093c5edcb29d9ec2cc2b1d3a9c5f2ff321c4ab4c130a8ba622e1cdc029ee3a5b00a56ca71db28b246031a6e8800075e16fed4480ac447b1123f1d6ae9539f5c667233e4e4d5201ce6;
    5'b00011 : xpb = 1024'h9857b362dec551fe631e9023330b2f46cc6a3321f1180f4ee87885771c24ffc4d730d57d90f018d5ad9ed9865e18e217c8d76520794eb588dda8e4b0bec6e243240abd7ea8ec7ecb2a700f21c8fd1793452b4a03ee5578880f822faac8bd0b6904a7a5cc000b0d227e3e6c10266b899b5eac205dfd6f0a99ab4dd7573fb02b59;
    5'b00100 : xpb = 1024'h1a7254836718e3350e789dad33b4a26249c240fc6bfdc9470d6ea3491d2ea7fe70f89f2ea1c44d38f2cae2c19a1871fffd05099a7f0b771576ec9c3818e163a8111472a4dc55011f25fb66dfc875b0936834be6cb1411e4f5f2102e8fc26c1f9d72d4ae64f45c3a076e8a93690bf3bfb2f60f6f056f35b9c9df84ec5215dd361;
    5'b00101 : xpb = 1024'h4d3a3af9b15aa93484d8230e44b85ccf38905207bc5b23b6b0417a70d13afd400e08e6587cbf002ad7552b43b97612b2954cd5faa77b08edc0cf931dadce59be726d5c79bf4e80b83420c14060ca0dc47f432c6e00b2f127644c6821e9bb1b1cd8ba822a4f4972abf652cd3bf2e314844eefac6500c309cfd71241378bede1d4;
    5'b00110 : xpb = 1024'h8002216ffb9c6f33fb37a86f55bc173c275e63130cb87e265314519885475281ab192d8257b9b31cbbdf73c5d8d3b3652d94a25acfea9ac60ab28a0342bb4fd4d3c6464ea248005142461ba0f91e6af596519a6f5024c3ff6977cd5ad74f743fda47b96e4f4d21b775bcf1415506ed0d6e7e61d9aa92b803102c33a9f67df047;
    5'b00111 : xpb = 1024'h21cc29083f0006aa691b5f956658a57a4b670ed879e381e780a6f6a8650fabb44e0f733688de780010b7d0114d3434d61c246d4d5a75c52a3f6418a9cd5d139c0cffb74d5b082a53dd1735ef89703f5b95b0ed8131069c6b916a0990ab92ad0accd5e889e87d8356e672e67bf5a9f6d3f33386c0417090602d6ab17d82b984f;
    5'b01000 : xpb = 1024'h34e4a906ce31c66a1cf13b5a676944c4938481f8d7fb928e1add46923a5d4ffce1f13e5d43889a71e595c5833430e3fffa0a1334fe16ee2aedd9387031c2c7502228e549b8aa023e4bf6cdbf90eb6126d0697cd962823c9ebe4205d1f84d83f3ae5a95cc9e8b8740edd1526d217e77f65ec1ede0ade6b7393bf09d8a42bba6c2;
    5'b01001 : xpb = 1024'h67ac8f7d18738c699350c0bb786cff31825293042858ecfdbdb01db9ee69a53e7f0185871e834d63ca200e05538e84b29251df952686800337bc2f55c6afbd668381cf1e9ba381d75a1c2820293fbe57e777eadab1f40f76c36d6b0ae5e1dd16afe7cd109e8f364c6d3b767283a2507f7e50a35557b6656c750a8ffcad4bb535;
    5'b01010 : xpb = 1024'h9a7475f362b5526909b0461c8970b99e7120a40f78b6476d6082f4e1a275fa801c11ccb0f97e0055aeaa568772ec25652a99abf54ef611db819f263b5b9cb37ce4dab8f37e9d017068418280c1941b88fe8658dc0165e24ec898d043d3763639b17504549e92e557eca59a77e5c629089ddf58ca0186139fae24826f17dbc3a8;
    5'b01011 : xpb = 1024'h1c8f1713eb08e39fb50a53a68a1a2cb9ee78b1e9f39c0165857912b3a37fa2b9b5d996620a5234b8f3d65fc2aeebb54d5ec7506f54b2d3681ae2ddc2b5b734e1d1e46e19b20583c463ccda3ec10cb489218fcd44c45188161837a38206dfecca83faa96eedcd9bd5e54fd79e5019db686e942f5c5b0a64a2a0cef9dcf9896bb0;
    5'b01100 : xpb = 1024'h4f56fd8a354aa99f2b69d9079b1de726dd46c2f543f95bd5284be9db578bf7fb52e9dd8be54ce7aad860a844ce4955fff70f1ccf7d22654064c5d4a84aa42af8333d57ee94ff035d71f2349f596111ba389e3b4613c35aee1d6308baf47445ed8587e0b2edd14ae164b9fba3b23db3f18e22e4d104da12d5d9e8ec4f64197a23;
    5'b01101 : xpb = 1024'h821ee4007f8c6f9ea1c95e68ac21a193cc14d4009456b644cb1ec1030b984d3ceffa24b5c0479a9cbceaf0c6eda6f6b28f56e92fa591f718aea8cb8ddf91210e949641c377f882f680178efff1b56eeb4faca94763352dc6228e6df3e2089f10871517f6edd4f9ece4241fa914618c7aadb19a45aea9c1091302dec1cea98896;
    5'b01110 : xpb = 1024'h439852107e000d54d236bf2accb14af496ce1db0f3c703cf014ded50ca1f57689c1ee66d11bcf000216fa0229a6869ac3848da9ab4eb8a547ec831539aba273819ff6e9ab61054a7ba2e6bdf12e07eb72b61db02620d38d722d4132157255a1599abd113d0fb06adcce5ccf7eb53eda7e6670d8082e120c05ad562fb057309e;
    5'b01111 : xpb = 1024'h37016b975221c6d4c382f153bdcecf1c383af2e65f99caac92e7b5fcc0ae4ab826d23590ac1681f1e6a142844904274d5bcc5a09d3be4a7d91cf79face989889e2f8e0be8e5a84e389c8411e8982651c89c48bb17592a6657758a66b0306aec45b27f4553d135f765c3880d4e0d917639df5264cb1fdc03f3ec748a21ae73f11;
    5'b10000 : xpb = 1024'h69c9520d9c638cd439e276b4ced28989270903f1aff7251c35ba8d2474ba9ff9c3e27cba871134e3cb2b8b066861c7fff4142669fc2ddc55dbb270e063858ea04451ca937154047c97ed9b7f21d6c24da0d2f9b2c504793d7c840ba3f09b07e75cb52b993d170e81dba2a4da42fcefecbd83dbc15bcd6e7277e13b1485774d84;
    5'b10001 : xpb = 1024'h9c913883e6a552d3b041fc15dfd643f615d714fd00547f8bd88d644c28c6f53b60f2c3e4620be7d5afb5d38887bf68b28c5bf2ca249d6e2e259567c5f87284b6a5aab468544d8415a612f5dfba2b1f7eb7e167b414764c1581af70dcde2f610a5e4262dd3d1abd8d5b0cc8dfa520c875dd129136059d1ca5b0fb2d86f0075bf7;
    5'b10010 : xpb = 1024'h1eabd9a46ef8e40a5b9c099fe07fb711932f22d77b3a3983fd83821e29d09d74faba8d9572e01c38f4e1dcc3c3bef89ac08997442a5a2fbabed91f4d528d061b92b4698e87b60669a19e4d9db9a3b87edaeadc1cd761f1dcd14e441b1199179b30c807f78c55740b53b706060f747ad5adc767c85f216da8a3a5a4f4d1b503ff;
    5'b10011 : xpb = 1024'h5173c01ab93aaa09d1fb8f00f183717e81fd33e2cb9793f3a0565945dddcf2b697cad4bf4ddacf2ad96c2545e31c994d58d163a452c9c19308bc1632e779fc31f40d53636aaf8602afc3a7fe51f815aff1f94a1e26d3c4b4d679a953ff2d70be32553f3b8c592316d3212a0b7198535ecd561d3d08f11bdbdcbf97673c451272;
    5'b10100 : xpb = 1024'h843ba691037c7009485b146202872beb70cb44ee1bf4ee634329306d91e947f834db1be928d5821cbdf66dc8027a39fff11930047b39536b529f0d187c66f24855663d384da9059bbde9025eea4c72e10907b81f7645978cdba50e8cecc1c9e133e2767f8c5cd222528b4e10d3bc2be7ece4d2b1b2c0ca0f15d989d9a6d520e5;
    5'b10101 : xpb = 1024'h65647b18bd0013ff3b521ec03309f06ee2352c896daa85b681f4e3f92f2f031cea2e59a39a9b680032277033e79c9e82546d47e80f614f7ebe2c49fd68173ad426ff25e811187efb9745a1ce9c50be12c112c8839313d542b43e1cb202b807206681b99db9788a04b358b373e0fde47bd99a9440c451b12088401478882c8ed;
    5'b10110 : xpb = 1024'h391e2e27d611c73f6a14a74d14345973dcf163d3e73802cb0af2256746ff45736bb32cc414a46971e7acbf855dd76a9abd8ea0dea965a6d035c5bb856b6e69c3a3c8dc33640b0788c799b47d82196912431f9a8988a3102c306f47040dbfd99507f552dddb9b37abca9faf3ca033b6d0dd285eb8b614c945419df3b9f312d760;
    5'b10111 : xpb = 1024'h6be6149e20538d3ee0742cae253813e0cbbf74df37955d3aadc4fc8efb0b9ab508c373edef9f1c63cc3708077d350b4d55d66d3ed1d538a87fa8b26b005b5fda0521c60847048721d5bf0ede1a6dc6435a2e088ad814e304359aac3cfb5432b809828a21db9ee6b74a09d34202578f59fcb7142d5fe477787ab7e62c5da2e5d3;
    5'b11000 : xpb = 1024'h9eadfb146a95533e56d3b20f363bce4dba8d85ea87f2b7aa5097d3b6af17eff6a5d3bb17ca99cf55b0c150899c92abffee1e399efa44ca80c98ba950954855f0667aafdd29fe06bae3e4693eb2c22374713c768c2786b5dc3ac61175e8e88bdb0b0fc165dba295c2c973f747647b67e31c45c9a209b425abb3d1d89ec832f446;
    5'b11001 : xpb = 1024'h20c89c34f2e8e475022dbf9936e5416937e593c502d871a2758df188b02198303f9b84c8db6e03b8f5ed59c4d8923be8224bde1900018c0d62cf60d7ef62d755538465035d66890edf6fc0fcb23abc749445eaf4ea725ba38a64e4b41c52426bdd9566802add4c40c21e346dcecf1a42ecfaa034633876aea67c500ca9e09c4e;
    5'b11010 : xpb = 1024'h539082ab3d2aaa74788d44fa47e8fbd626b3a4d05335cc121860c8b0642ded71dcabcbf2b668b6aada77a246f7efdc9aba93aa7928711de5acb257bd844fcd6bb4dd4ed8406008a7ed951b5d4a8f19a5ab5458f639e42e7b8f9049ed09e69b8edf229dc42ae0fb4c4188587330f2f2cc0c8955a90d0824e1df96427f1470aac1;
    5'b11011 : xpb = 1024'h86586921876c7073eeecca5b58ecb6431581b5dba3932681bb339fd8183a42b379bc131c9163699cbf01eac9174d7d4d52db76d950e0afbdf6954ea3193cc382163638ad23598840fbba75bde2e376d6c262c6f78956015394bbaf25f77af4b1e0afd5082ae4aa57c0f27c789316cb552c180b1db6d7d31518b034f17f00b934;
    5'b11100 : xpb = 1024'h8730a420fc001aa9a46d7e55996295e92d9c3b61e78e079e029bdaa1943eaed1383dccda2379e00042df404534d0d3587091b53569d714a8fd9062a735744e7033fedd356c20a94f745cd7be25c0fd6e56c3b604c41a71ae45a82642ae4ab42b3357a227a1f60d5b99cb99efd6a7db4fccce1b0105c24180b5aac5f60ae613c;
    5'b11101 : xpb = 1024'h3b3af0b85a01c7aa10a65d466a99e3cb81a7d4c16ed63ae982fc94d1cd50402eb09423f77d3250f1e8b83c8672aaade81f50e7b37f0d0322d9bbfd1008443afd6498d7a839bb8a2e056b27dc7ab06d07fc7aa9619bb379f2e985e79d18790465b4c2b1667a230fe13906dda45f8e563e1c5b9724ba2bd24b44749ed1cb3e6faf;
    5'b11110 : xpb = 1024'h6e02d72ea4438da98705e2a77b9d9e387075e5ccbf33955925cf6bf9815c95704da46b21582d03e3cd42850892084e9ab798b413a77c94fb239ef3f59d313113c5f1c17d1cb509c71390823d1304ca3913891762eb254ccaeeb14cd6060d5d88b64fe8aa7a26beecb87101a9c1b22ec73bea4c9963fb807e7d8e914435ce7e22;
    5'b11111 : xpb = 1024'ha0cabda4ee8553a8fd6568088ca158a55f43f6d80f90efc8c8a243213568eab1eab4b24b3327b6d5b1cccd8ab165ef4d4fe08073cfec26d36d81eadb321e272a274aab51ffae896021b5dc9dab59276a2a9785643a971fa2f3dcb20ef3a1b6abb7dd1fee7a2a6df837db25af23d607505b79020e0dcb2eb1b6a883b6a05e8c95;
    endcase
end

endmodule
