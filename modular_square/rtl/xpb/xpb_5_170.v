module xpb_5_170
(
    input [5:1] data_in, 
    output [1024:1] data_out 
); 

reg [1024:1] xpb; 

assign data_out = xpb; 

always@(*) begin
    case(data_in)
    5'b00000 : xpb = 1024'h0;
    5'b00001 : xpb = 1024'h5d508fea213ef5688fec171dcde47acff5625430409a437681c926cc4ac7ab0d5ac07c7a1f89e89d6cc83771f29781e6b83ac72591e68b7a657ef9fede39c5a1a60ee3c0a93c936d84ab62b39c02a73e9812873fa08c92891e49c756b38f772a0eafb6937c4493fb5c48957c32479d5d914290161a4d7d57a874f8bf513804a;
    5'b00010 : xpb = 1024'hbaa11fd4427dead11fd82e3b9bc8f59feac4a860813486ed03924d98958f561ab580f8f43f13d13ad9906ee3e52f03cd70758e4b23cd16f4cafdf3fdbc738b434c1dc781527926db0956c56738054e7d30250e7f411925123c938ead671eee541d5f6d26f88927f6b8912af8648f3abb2285202c349afaaf50e9f17ea270094;
    5'b00011 : xpb = 1024'h117f1afbe63bce039afc4455969ad706fe026fc90c1ceca63855b7464e05701281041756e5e9db9d84658a655d7c685b428b05570b5b3a26f307cedfc9aad50e4f22cab41fbb5ba488e02281ad407f5bbc83795bee1a5b79b5add56041aae657e2c0f23ba74cdbbf214d9c07496d6d818b3c7b0424ee87806f95eea3df3a80de;
    5'b00100 : xpb = 1024'h175423fa884fbd5a23fb05c773791eb3fd58950c102690dda07249b312b1eac356b01f1e87e27a275b320ddc7ca5e079ae0eb1c96479a2de995fbe7fb78e71686983b8f02a4f24db612ad8ace700a9cfa604a1cfe82324a2479271d5ace3ddca83abeda4df1124fed712255f0c91e7576450a40586935f55ea1d3e2fd44e0128;
    5'b00101 : xpb = 1024'h1d292cf92a63acb0acf9c73950576660fcaeba4f14303515088edc1fd75e65742c5c26e629db18b131fe91539bcf589819925e3bbd980b963fb7ae1fa5720dc283e4a72c34e2ee1239758ed820c0d4438f85ca43e22bedcad9770e4b181cd53d2496e90e16d56e3e8cd6aeb6cfb6612d3d64cd06e838372b64a48dbbc9618172;
    5'b00110 : xpb = 1024'h22fe35f7cc779c0735f888ab2d35ae0dfc04df921839d94c70ab6e8c9c0ae02502082eadcbd3b73b08cb14cabaf8d0b685160aae16b6744de60f9dbf9355aa1c9e4595683f76b74911c045035a80feb77906f2b7dc34b6f36b5baac08355ccafc581e4774e99b77e429b380e92dadb031678f60849dd0f00df2bdd47be7501bc;
    5'b00111 : xpb = 1024'h28d33ef66e8b8b5dbef74a1d0a13f5bafb5b04d51c437d83d8c800f960b75ad5d7b436756dcc55c4df979841da2248d4f099b7206fd4dd058c678d5f81394676b8a683a44a0a807fea0afb2e9441292b62881b2bd63d801bfd404735ee8ec422666cdfe0865e00bdf85fc16655ff54d8ef8d1f09ab81e6d659b32cd3b3888206;
    5'b01000 : xpb = 1024'h2ea847f5109f7ab447f60b8ee6f23d67fab12a18204d21bb40e493662563d586ad603e3d0fc4f44eb6641bb8f94bc0f35c1d6392c8f345bd32bf7cff6f1ce2d0d30771e0549e49b6c255b159ce01539f4c09439fd04649448f24e3ab59c7bb950757db49be2249fdae244abe1923ceaec8a1480b0d26beabd43a7c5fa89c0250;
    5'b01001 : xpb = 1024'h347d50f3b2b36a0ad0f4cd00c3d08514fa074f5b2456c5f2a90125d2ea105037830c4604b1bd92d88d309f3018753911c7a110052211ae74d9176c9f5d007f2aed68601c5f3212ed9aa0678507c17e13358a6c13ca4f126d21098020c500b307a842d6b2f5e6933d63e8d415dc484884a1b5710c6ecb96814ec1cbeb9daf829a;
    5'b01010 : xpb = 1024'h3a5259f254c7596159f38e72a0aeccc1f95d749e28606a2a111db83faebccae858b84dcc53b6316263fd22a7379eb1303324bc777b30172c7f6f5c3f4ae41b8507c94e5869c5dc2472eb1db04181a8871f0b9487c457db95b2ee1c963039aa7a492dd21c2daadc7d19ad5d6d9f6cc25a7ac99a0dd0706e56c9491b7792c302e4;
    5'b01011 : xpb = 1024'h402762f0f6db48b7e2f24fe47d8d146ef8b399e12c6a0e61793a4aac736945992e645593f5aecfec3ac9a61e56c8294e9ea868e9d44e7fe425c74bdf38c7b7df222a3c947459a55b4b35d3db7b41d2fb088cbcfbbe60a4be44d2b90b9b72a1ecea18cd85656f25bccf71e6c562913c3053ddc30f3215462c43d06b0387d6832e;
    5'b01100 : xpb = 1024'h45fc6bef98ef380e6bf111565a6b5c1bf809bf243073b298e156dd193815c04a04105d5b97a76e761196299575f1a16d0a2c155c2d6ce89bcc1f3b7f26ab54393c8b2ad07eed6e9223808a06b501fd6ef20de56fb8696de6d6b7558106ab995f8b03c8ee9d336efc8536701d25b5b6062cf1ec1093ba1e01be57ba8f7cea0378;
    5'b01101 : xpb = 1024'h4bd174ee3b032764f4efd2c83749a3c8f75fe467347d56d049736f85fcc23afad9bc652339a00cffe862ad0c951b198b75afc1ce868b515372772b1f148ef09356ec190c898137c8fbcb4031eec227e2db8f0de3b272370f689bf1f671e490d22beec457d4f7b83c3afaf974e8da2fdc06061511f55ef5d738df0a1b71fd83c2;
    5'b01110 : xpb = 1024'h51a67decdd1716bb7dee943a1427eb75f6b609aa3886fb07b19001f2c16eb5abaf686ceadb98ab89bf2f3083b44491a9e1336e40dfa9ba0b18cf1abf02728ced714d0748941500ffd415f65d28825256c5103657ac7b0037fa808e6bdd1d8844ccd9bfc10cbc017bf0bf82ccabfea9b1df1a3e135703cdacb36659a76711040c;
    5'b01111 : xpb = 1024'h577b86eb7f2b061206ed55abf1063322f60c2eed3c909f3f19ac945f861b305c851474b27d914a1395fbb3fad36e09c84cb71ab338c822c2bf270a5ef05629478badf5849ea8ca36ac60ac8862427ccaae915ecba683c9608c652ae148567fb76dc4bb2a44804abba6840c246f232387b82e6714b8a8a5822deda9335c248456;
    5'b10000 : xpb = 1024'h5d508fea213ef5688fec171dcde47acff5625430409a437681c926cc4ac7ab0d5ac07c7a1f89e89d6cc83771f29781e6b83ac72591e68b7a657ef9fede39c5a1a60ee3c0a93c936d84ab62b39c02a73e9812873fa08c92891e49c756b38f772a0eafb6937c4493fb5c48957c32479d5d914290161a4d7d57a874f8bf513804a0;
    5'b10001 : xpb = 1024'h632598e8c352e4bf18ead88faac2c27cf4b8797344a3e7ade9e5b9390f7425be306c8441c18287274394bae911c0fa0523be7397eb04f4320bd6e99ecc1d61fbc06fd1fcb3d05ca45cf618ded5c2d1b28193afb39a955bb1b02e63cc1ec86e9caf9ab1fcb408dd3b120d1ed3f56c17336a56b9177bf2552d22fc484b464b84ea;
    5'b10010 : xpb = 1024'h68faa1e76566d415a1e99a0187a10a29f40e9eb648ad8be552024ba5d420a06f06188c09637b25b11a613e6030ea72238f42200a44235ce9b22ed93eba00fe55dad0c038be6425db3540cf0a0f82fc266b14d827949e24da421300418a01660f5085ad65ebcd267ac7d1a82bb8909109436ae218dd972d029d8397d73b5f0534;
    5'b10011 : xpb = 1024'h6ecfaae6077ac36c2ae85b73647f51d6f364c3f94cb7301cba1ede1298cd1b1fdbc493d10573c43af12dc1d75013ea41fac5cc7c9d41c5a15886c8dea7e49aaff531ae74c8f7ef120d8b85354943269a5496009b8ea6ee02d3f79cb6f53a5d81f170a8cf23916fba7d9631837bb50adf1c7f0b1a3f3c04d8180ae7633072857e;
    5'b10100 : xpb = 1024'h74a4b3e4a98eb2c2b3e71ce5415d9983f2bae93c50c0d454223b707f5d7995d0b1709b98a76c62c4c7fa454e6f3d6260664978eef6602e58fedeb87e95c8370a0f929cb0d38bb848e5d63b608303510e3e17290f88afb72b65dc392c607354f4925ba4385b55b8fa335abadb3ed984b4f593341ba0e0dcad929236ef258605c8;
    5'b10101 : xpb = 1024'h7a79bce34ba2a2193ce5de571e3be130f2110e7f54ca788b8a5802ec22261081871ca3604965014e9ec6c8c58e66da7ed1cd25614f7e9710a536a81e83abd36429f38aecde1f817fbe20f18bbcc37b822798518382b88053f7c0d5a1cbac4c6733469fa1931a0239e91f443301fdfe8acea75d1d0285b4830d19867b1a998612;
    5'b10110 : xpb = 1024'h804ec5e1edb6916fc5e49fc8fb1a28ddf16733c258d41cc2f2749558e6d28b325cc8ab27eb5d9fd875934c3cad90529d3d50d1d3a89cffc84b8e97be718f6fbe44547928e8b34ab6966ba7b6f683a5f6111979f77cc1497c89a5721736e543d9d4319b0acade4b799ee3cd8ac5227860a7bb861e642a8c5887a0d6070fad065c;
    5'b10111 : xpb = 1024'h8623cee08fca80c64ee3613ad7f8708af0bd59055cddc0fa5a9127c5ab7f05e33274b2ef8d563e624c5fcfb3ccb9cabba8d47e4601bb687ff1e6875e5f730c185eb56764f34713ed6eb65de23043d069fa9aa26b76ca12a51b8a0e8ca21e3b4c751c967402a294b954a856e28846f23680cfaf1fc5cf642e0228259304c086a6;
    5'b11000 : xpb = 1024'h8bf8d7df31de701cd7e222acb4d6b837f0137e4860e76531c2adba32702b80940820bab72f4edcec232c532aebe342da14582ab85ad9d137983e76fe4d56a872791655a0fddadd244701140d6a03fadde41bcadf70d2dbcdad6eab020d5732bf160791dd3a66ddf90a6ce03a4b6b6c0c59e3d82127743c037caf751ef9d406f0;
    5'b11001 : xpb = 1024'h91cde0ddd3f25f7360e0e41e91b4ffe4ef69a38b64f109692aca4c9f34d7fb44ddccc27ed1477b75f9f8d6a20b0cbaf87fdbd72ab3f839ef3e96669e3b3a44cc937743dd086ea65b1f4bca38a3c42551cd9cf3536adba4f63f53477778902a31b6f28d46722b2738c03169920e8fe5e232f80122891913d8f736c4aaeee7873a;
    5'b11010 : xpb = 1024'h97a2e9dc76064ec9e9dfa5906e934791eebfc8ce68faada092e6df0bf98475f5b378ca46734019ffd0c55a192a363316eb5f839d0d16a2a6e4ee563e291de126add8321913026f91f7968063dd844fc5b71e1bc764e46e1ed137e3ece3c921a457dd88afa9ef707875f5f2e9d1b45fb80c0c2a23eabdebae71be1436e3fb0784;
    5'b11011 : xpb = 1024'h9d77f2db181a3e2072de67024b718f3eee15ee116d0451d7fb037178be30f0a68924d20e1538b889a791dd90495fab3556e3300f66350b5e8b4645de17017d80c83920551d9638c8cfe1368f17447a39a09f443b5eed3747631c80624f021916f8c88418e1b3b9b82bba7c4194d8d98de52053254c62c383ec4563c2d90e87ce;
    5'b11100 : xpb = 1024'ha34cfbd9ba2e2d76fbdd2874284fd6ebed6c1354710df60f632003e582dd6b575ed0d9d5b73157137e5e610768892353c266dc81bf537416319e357e04e519dae29a0e91282a01ffa82becba5104a4ad8a206caf58f6006ff5011cd7ba3b108999b37f82197802f7e17f059957fd5363be347c26ae079b5966ccb34ece220818;
    5'b11101 : xpb = 1024'ha92204d85c421ccd84dbe9e6052e1e98ecc2389775179a46cb3c96524789e608347ce19d5929f59d552ae47e87b29b722dea88f41871dccdd7f6251df2c8b634fcfafccd32bdcb368076a2e58ac4cf2173a1952352fec99886e5b94d257407fc3a9e7aeb513c4c3797438ef11b21cd399748a5280fac732ee15402dac3358862;
    5'b11110 : xpb = 1024'haef70dd6fe560c240ddaab57e20c6645ec185dda79213e7e335928bf0c3660b90a28e964fb2294272bf767f5a6dc1390996e3566719045857e4e14bde0ac528f175beb093d51946d58c15910c484f9955d22bd974d0792c118ca55c290acff6edb897654890095774d081848de46470f705cce2971514b045bdb5266b84908ac;
    5'b11111 : xpb = 1024'h41ed17fde7bc6b1cbd3f4f2ae9066a179f87feca7b3423e1d9901d61de02e61dc8c73b3d2f4b4226365ac25e2a77ae4a0d7b9f2a7fbddf17406c4ff93bd7a37bd6da4969854605f1e720c9965695fd8529eec72ba8a2ed8f522603d41bb544f4d6cdf940ffbe6297c0cbac1a99a9abbfa97184882aac5a98ff326ee247a228b;
    endcase
end

endmodule
