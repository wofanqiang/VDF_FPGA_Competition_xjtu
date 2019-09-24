module xpb_5_1000
(
    input [5:1] data_in, 
    output [1024:1] data_out 
); 

reg [1024:1] xpb; 

assign data_out = xpb; 

always@(*) begin
    case(data_in)
    5'b00000 : xpb = 1024'h0;
    5'b00001 : xpb = 1024'h3f480899e8c7c85f77220ada49e15b364cad69ddc19f8c4d0aff6247b4d383f697dd5dc361b68f4a354a2ce456135bc5f6bc1b849c76f525c1055c6cbcaac49e7783cbb0fe859d7aaf3c963132756efda3a682af5c3bd5c919c0f1af9f4412cb6d8c9f505ab804054a9293327063c3da125e608ee1be0b165542b0b630fbd020;
    5'b00010 : xpb = 1024'h7e901133d18f90beee4415b493c2b66c995ad3bb833f189a15fec48f69a707ed2fbabb86c36d1e946a9459c8ac26b78bed78370938edea4b820ab8d97955893cef079761fd0b3af55e792c6264eaddfb474d055eb877ab923381e35f3e882596db193ea0b570080a95252664e0c787b424bcc11dc37c162caa85616c61f7a040;
    5'b00011 : xpb = 1024'hd2ad477f86924559a60a8b7cd49ca5174923a686f67046fa3216d816b77dedbc44f9bd15afd2f50008047661edc0287801a2aa7b2b20f259270d5e7fb2dd929f23c2e644bffdb2afb1bbff0fe8488c7f6ee8e75882d544a97b6431423a195d0199e4bc75f5f138258f7d2b8595b2564e84142ca54eec412b958971e0a1109f5;
    5'b00100 : xpb = 1024'h4c72dd11e130ecb51182b392172b2587c13fa446310690bcae20cfc9204b62d25c2cf994bcb3be9a35ca744a74ef5e4d76d6462c4f29044b53763254b7d89dc869bffa154a8578a5aa58562230f9f7c59a951124e4692a13b17734c3c2e5a89b872aeb17ba171787a38a65eac9bee93efa9fa35936accf290e9b47d43b0cda15;
    5'b00101 : xpb = 1024'h8bbae5abc9f8b51488a4be6c610c80be0ded0e23f2a61d09b9203210d51ee6c8f40a57581e6a4de46b14a12ecb02ba136d9261b0eb9ff971147b8ec174836266e143c5c6490b16205994ec53636f66c33e3b93d440a4ffdccb3826736229bb66f4b78a6814cf1b8cee1cf91d3a22ad190cfe03e8186ada3f63ddf88a6c08aa35;
    5'b00110 : xpb = 1024'h1a55a8eff0d248ab34c1516f9a9394a2e92474d0dece08df4642db02d6efbdb7889f37a2b5fa5ea001008ecc3db8050f0034554f65641e4b24e1abcff65bb253e4785cc897ffb655f6377fe1fd09118feddd1ceb105aa8952f6c862847432ba0333c978ebebe2704b1efa570b2b64ac9d0828594a9dd882572b12e3c142213ea;
    5'b00111 : xpb = 1024'h599db189d99a110aabe35c49e474efd935d1deaea06d952c51423d4a8bc341ae207c956617b0edea364abbb093cb60d4f6f070d401db1370e5e7083cb30676f25bfc2879968553d0a57416132f7e808d91839f9a6c967e5e492d77d7e6873e6ba0c936df19762b09fc8238a3231a0ea3e2e0e6238b9b933bc7f3def2451de40a;
    5'b01000 : xpb = 1024'h98e5ba23c261d96a230567242e564b0f827f488c620d21795c419f924096c5a4b859f32979677d346b94e894e9debc9aedac8c589e520896a6ec64a96fb13b90d37ff42a950af14b54b0ac4461f3ef8b352a2249c8d2542762ee698785cb51370e55d62f742e2f0f4714cbd5937dd27df53f46b26d599e521d368fa87619b42a;
    5'b01001 : xpb = 1024'h27807d67e93b6d00cf21fa2767dd5ef45db6af394e350d4ee964488442679c934ceed37410f78df00180d6325c940796804e7ff718162d70b75281b7f1898b7dd6b48b2ce3ff9180f1533fd2fb8d9a57e4cbab609887fcdfc722c93c6ae4c1704cdae3561e1d3a870ae778290c11702eb8c3c85efecc4c382c09c55a1e331ddf;
    5'b01010 : xpb = 1024'h66c88601d203356046440501b1beba2aaa6419170fd4999bf463aacbf73b2089e4cc313772ae1d3a36cb0316b2a7635c770a9b7bb48d22967857de24ae34501c4e3856dde2852efba08fd6042e03095588722e0ff4c3d2a8e0e3baec0a28d43bba6782a678d53e8c557a0b5b7c753408cb2228ede08a574e814c76104f2eedff;
    5'b01011 : xpb = 1024'ha6108e9bbacafdbfbd660fdbfba01560f71182f4d17425e8ff630d13ac0ea4807ca98efad464ac846c152ffb08babf226dc6b700510417bc395d3a916adf14bac5bc228ee10acc764fcc6c35607878532c18b0bf50ffa871faa4ac9ba96ce70727f421f6d38d4291a00c9e8decd8f7e2dd80897cc2486264d68f26c6802abe1f;
    5'b01100 : xpb = 1024'h34ab51dfe1a491566982a2df35272945d248e9a1bd9c11be8c85b605addf7b6f113e6f456bf4bd4002011d987b700a1e0068aa9ecac83c9649c3579fecb764a7c8f0b9912fff6cabec6effc3fa12231fdbba39d620b5512a5ed90c508e86574066792f1d7d7c4e0963df4ae1656c9593a1050b2953bb104ae5625c78284427d4;
    5'b01101 : xpb = 1024'h73f35a79ca6c59b5e0a4adb97f08847c1ef6537f7f3b9e0b9785184d62b2ff65a91bcd08cdab4c8a374b4a7cd18365e3f724c623673f31bc0ac8b40ca9622946407485422e850a269bab95f52c87921d7f60bc857cf126f37899fe002dca6a0bd405ce6dd834520eae71de13d5d0596db3636bb835791b613aa50d2e593ff7f4;
    5'b01110 : xpb = 1024'h28e1dbdf145ed4c8cc140bcb88f9860fa2dba2c6b6389e124a7c13f6483d6543db0ad53653b5d45cd37381a4438b0df89c6b9c1e10356961b2ed11b2b3a793343a91c447d79aa5c384e2983c6213cea2f02459c4ca6cfabdcce5db512e3da45128adb9482235d8672448a674e63f71e76e7ed64c6ebc947497842e0015961a9;
    5'b01111 : xpb = 1024'h41d62657da0db5ac03e34b970270f39746db240a2d03162e2fa7238719575a4ad58e0b16c6f1ec90028164fe9a4c0ca58082d5467d7a4bbbdc342d87e7e53dd1bb2ce7f57bff47d6e78abfb4f896abe7d2a8c84ba8e2a574f68f4f64b227ed1080177ae4dcdb618bbcd71d99bec7baf889464df3a8a9d45d9ebaf396325531c9;
    5'b10000 : xpb = 1024'h811e2ef1c2d57e0b7b0556714c524ecd93888de7eea2a27b3aa685cece2ade416d6b68da28a87bda37cb91e2f05f686b773ef0cb19f140e19d3989f4a490027032b0b3a67a84e55196c755e62b0c1ae5764f4afb051e7b3e10504114516bffdbeda41a35379365910769b0cc2f2b7ed29ba4ae828a67df73f3fda44c635101e9;
    5'b10001 : xpb = 1024'hfb8f235e9af11a22721e97485d962b26ebff494daca8e50c7c92ec0cffbb53002004924c0388c95cdb77f806314b36709e0e46993b565bbad9fa7032668525d35e54aa8c97985873369e974c4a5c5b225f0d411d4d423f67484a0c9368570152c29275be1827108cb3c5d1fa7bf1c835f29302f1bda8d5a02d0d9fe0b6a6b9e;
    5'b10010 : xpb = 1024'h4f00facfd276da019e43f44ecfbabde8bb6d5e729c6a1a9dd2c8910884cf392699dda6e821ef1be00301ac64b9280f2d009cffee302c5ae16ea5036fe31316fbad691659c7ff2301e2a67fa5f71b34afc99756c1310ff9bf8e459278d5c982e099b5c6ac3c3a750e15cef0521822e05d718790bdfd98987058138ab43c663bbe;
    5'b10011 : xpb = 1024'h8e490369bb3ea2611565ff29199c191f081ac8505e09a6eaddc7f35039a2bd1d31bb04ab83a5ab2a384bd9490f3b6af2f7591b72cca350072faa5fdc9fbddb9a24ece20ac684c07c91e315d72990a3ad6d3dd9708d4bcf88a8068428750d95ac074265fc96f27913606183848886a43783e5f14cdf56a386ad563b6a6d620bde;
    5'b10100 : xpb = 1024'h1ce3c6ade21835f7c182922c53232d03e3522efd4a3192c06aea9c423b73940bc64fe4f61b35bbe5ce37c6e681f0b5ee89fb0f11466774e140107ceb21962b872821790d157960b22e85a965c32a4e7a1cdf62875d0178410c3ae3dd5a2705e545c7732340e1848b24342fd8011a41e8476a72f970c9516cbc29711c157b7593;
    5'b10101 : xpb = 1024'h5c2bcf47cadffe5738a49d069d04883a2fff98db0bd11f0d75e9fe89f04718025e2d42b97cec4b300381f3cad80411b480b72a95e2de6a070115d957de40f0259fa544be13fefe2cddc23f96f59fbd77c085e536b93d4e0a25fbd58cf96b18b0b35412739b9988906ec6c30a717e05c259c8d38852875c83116c21d2467745b3;
    5'b10110 : xpb = 1024'h9b73d7e1b3a7c6b6afc6a7e0e6e5e3707cad02b8cd70ab5a80e960d1a51a9bf8f60aa07cdea2da7a38cc20af2e176d7a7773461a7f555f2cc21b35c49aebb4c41729106f12849ba78cfed5c828152c75642c67e6157923d33fbcc73c98af2b7c20e0b1c3f6518c95b959563ce1e1c99c6c2734173445679966aed288777315d3;
    5'b10111 : xpb = 1024'h2a0e9b25da815a4d5be33ae4206cf75557e46965b99897300e0c09c3a6eb72e78a9f80c77632eb35ceb80e4ca0ccb8760a1539b8f9198406d28152d31cc404b11a5da77161793bdd29a16956c1aed74213cdf0fce52ecc8ba3f126f17dc89bb55f65beeaa040980d7d2c02905a75674d2fabb5c3c5b8157f7582083a1f8c7f88;
    5'b11000 : xpb = 1024'h6956a3bfc34922acd30545be6a4e528ba491d3437b38237d190b6c0b5bbef6de227cde8ad7e97a8004023b30f6e0143c00d1553d9590792c9386af3fd96ec94f91e173225ffed957d8ddff87f424463fb77473ac416aa254bdb218a11d0cae80ccf25e3afaf89c12c7be95c2cad92b27420a1652a7762095cac4b8f050884fa8;
    5'b11001 : xpb = 1024'ha89eac59ac10eb0c4a275098b42fadc1f13f3d213cd7afca240ace5310927ad4ba5a3c4e39a009ca394c68154cf37001f78d70c232076e52548c0bac96198dee09653ed35e8476d2881a95b92699b53d5b1af65b9da6781dd7730a50bc50c14c3a7efd8b55b0a018125128f53b3cef01546876e189342bac200769a681841fc8;
    5'b11010 : xpb = 1024'h37396f9dd2ea7ea2f643e39bedb6c1a6cc76a3ce28ff9b9fb12d7745126351c34eef1c98d1301a85cf3855b2bfa8bafd8a2f6460abcb932c64f228bb17f1dddb0c99d5d5ad79170824bd2947c033600a0abc7f726d5c20d63ba76a05a16a318579040ab1ff9fab8fd623d548b3d08cb217ecf88e1aa6d9922eda9f58299d897d;
    5'b11011 : xpb = 1024'h76817837bbb247026d65ee7637981cdd19240dabea9f27ecbc2cd98cc736d5b9e6cc7a5c32e6a9d00482829715bc16c380eb7fe54842885225f78527d49ca279841da186abfeb482d3f9bf78f2a8cf07ae630221c997f69f55685bb540ae4450e690aa025a57af9520b6687b2434508c2a4b591cfc64e4a8841d500e5a99599d;
    5'b11100 : xpb = 1024'h51c3b7be28bda9919828179711f30c1f45b7458d6c713c2494f827ec907aca87b615aa6ca76ba8b9a6e7034887161bf138d7383c206ad2c365da2365674f26687523888faf354b8709c53078c4279d45e048b38994d9f57b99cbb6a25c7b48a2515b7290446bb0ce48914ce9cc7ee3cedcfdac98dd7928e92f085c002b2c352;
    5'b11101 : xpb = 1024'h44644415cb53a2f890a48c53bb008bf84108de369866a00f544ee4c67ddb309f133eb86a2c2d49d5cfb89d18de84bd850a498f085e7da251f762fea3131fb704fed60439f978f2331fd8e938beb7e8d201ab0de7f5897520d35dad19c50bc75592a256795efebf122f1ba8010d2bb217002e3b586f959da4e833367633ae9372;
    5'b11110 : xpb = 1024'h83ac4cafb41b6b5807c6972e04e1e72e8db648145a062c5c5f4e470e32aeb495ab1c162d8de3d9200502c9fd3498194b0105aa8cfaf49777b8685b0fcfca7ba37659cfeaf7fe8fadcf157f69f12d57cfa551909751c54ae9ed1e9ec9644fda21002ef5c9b9b6c31779ae3b337d8f75f1128c9be75153a8bb3d75e72c64aa6392;
    5'b11111 : xpb = 1024'h12470ff3daf4feeeb3e32a313e68fb1368edaec1462e1831ec70f000347f8b843fb0f6782573e9db9aeeb79aa74d644693a79e2b74b8bc51c8ce781e51a2cb90798e66ed46f32fe36bb812f88ac7029c54f319ae217af3a25152fe7e49694a5a3eb402f063a5ce8f3d80e786f62313a1d6111d93e2c656a14c491cde0cc3cd47;
    endcase
end

endmodule
