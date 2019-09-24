module xpb_5_260
(
    input [5:1] data_in, 
    output [1024:1] data_out 
); 

reg [1024:1] xpb; 

assign data_out = xpb; 

always@(*) begin
    case(data_in)
    5'b00000 : xpb = 1024'h0;
    5'b00001 : xpb = 1024'h9dadfaf9f421c3b5ee4049696b8d0127cde11ab194c9d5c9152eb87c40dccd135360bc17fff418f6e2d569833bf50bed4012f5e6d4753736f2f8b93b74e90b958eb03679d20808e3540c18b5dd1e90d185aee0031ea4b50d6474e2dae3d9818369de5b3c7c6f85062f64e24bfd6cf71263ed7b46bbbcd46d6f7dc53125434e55;
    5'b00010 : xpb = 1024'h8aaeb09e265552a3117b1afbc6bfbafe2a4c3232541c0b1aac80b7a2ceb6ed1ea378fab735c1b35f264c93bf948c07101c0bc3e786379e2235523318aeffa279a9113844f47f1481957e2ec921615d721758c66db0c33d0a135d33bb0d886074a4b5244f4816117ed809ddb90309c7fb790117ab272e4baa988c0f5dc1a4363f;
    5'b00011 : xpb = 1024'h77af66425888e19034b5ec8e21f274d486b749b3136e406c43d2b6c95c910d29f39139566b8f4dc769c3bdfbed230232f80491e837fa050d77abacf5e916395dc3723a1016f6201fd6f044dc65a42a12a902acd842e1c506c245849b37373f65df8bed6213bc9df780aed92608a698e48e14b40f929fc2e7c19a598a5e051e29;
    5'b00100 : xpb = 1024'h64b01be68abc707d57f0be207d252eaae3226133d2c075bddb24b5efea6b2d3543a977f5a15ce82fad3ae83845b9fd55d3fd5fe8e9bc6bf8ba0526d3232cd041ddd33bdb396d2bbe18625aefa9e6f6b33aac9342d5004d03712dd57b60e61e571a62b674df632a702953d4930e4369cda3285073fe113a24eaa8a3b6fa660613;
    5'b00101 : xpb = 1024'h51b0d18abcefff6a7b2b8fb2d857e8813f8d78b49212ab0f7276b51678454d4093c1b694d72a8297f0b212749e50f878aff62de99b7ed2e3fc5ea0b05d436725f8343da65be4375c59d47102ee29c353cc5679ad671ed5002016265b8a94fd4855397f87ab09b6e8d1f8d00013e03ab6b83becd86982b16213b6ede396c6edfd;
    5'b00110 : xpb = 1024'h3eb1872eef238e579e666145338aa2579bf890355164e06109c8b43d061f6d4be3d9f5340cf81d0034293cb0f6e7f39b8beefbea4d4139cf3eb81a8d9759fe0a12953f717e5b42fa9b468716326c8ff45e006017f93d5cfccefe773bb443dc399010489a76b043617a9dcb6d197d0b9fcd4f893cd4f4289f3cc538103327d5e7;
    5'b00111 : xpb = 1024'h2bb23cd321571d44c1a132d78ebd5c2df863a7b610b715b2a11ab36393f98d5733f233d342c5b76877a066ed4f7eeebe67e7c9eaff03a0ba8111946ad17094ee2cf6413ca0d24e98dcb89d2976af5c94efaa46828b5be4f97de6c81bddf2bb2acae711ad4256cfda2342c6da1f19dc88e26325a140659fdc65d3823ccf88bdd1;
    5'b01000 : xpb = 1024'h18b2f277538aac31e4dc0469e9f0160454cebf36d0094b04386cb28a21d3ad62840a7272789351d0bb179129a815e9e143e097ebb0c607a5c36b0e480b872bd247574307c3495a371e2ab33cbaf2293581542ced1d7a6cf62ccf18fc07a19a1c05bddac00dfd5c52cbe7c24724b6ad71f776c205abd717198ee1cc696be9a5bb;
    5'b01001 : xpb = 1024'h5b3a81b85be3b1f0816d5fc4522cfdab139d6b78f5b8055cfbeb1b0afadcd6dd422b111ae60ec38fe8ebb6600ace5041fd965ec62886e9105c48825459dc2b661b844d2e5c065d55f9cc94fff34f5d612fe1357af98f4f2dbb769dc3150790d4094a3d2d9a3e8cb748cbdb42a537e5b0c8a5e6a17488e56b7f01696084a8da5;
    5'b01010 : xpb = 1024'ha361a31579dffed4f6571f65b0afd1027f1af1692425561ee4ed6a2cf08a9a8127836d29ae55052fe16424e93ca1f0f15fec5bd336fda5c7f8bd4160ba86ce4bf0687b4cb7c86eb8b3a8e205dc5386a798acf35ace3daa00402c4cb71529fa90aa72ff0f56136dd1a3f1a00027c0756d7077d9b0d30562c4276ddbc72d8ddbfa;
    5'b01011 : xpb = 1024'h906258b9ac138dc21991f0f80be28ad8db8608e9e3778b707c3f69537e64ba8c779babc8e4229f9824db4f259538ec143be529d3e8c00cb33b16bb3df49d65300ac97d17da3f7a56f51af819209653482a56d9c5605c31fcef149d973ed8d981e549c82221b9fa4a4c969b6d2d5d4656858b76153e76da01507c25f3c9eec3e4;
    5'b01100 : xpb = 1024'h7d630e5dde471caf3cccc28a671544af37f1206aa2c9c0c21391687a0c3eda97c7b3ea6819f03a0068527961edcfe73717ddf7d49a82739e7d70351b2eb3fc14252a7ee2fcb685f5368d0e2c64d91fe8bc00c02ff27ab9f99dfcee776887b87320209134ed6086c2f53b96da32fa173f9a9f1279a9e8513e798a7020664fabce;
    5'b01101 : xpb = 1024'h6a63c402107aab9c6007941cc247fe85945c37eb621bf613aae367a09a18faa317cc29074fbdd468abc9a39e4666e259f3d6c5d54c44da89bfc9aef868ca92f83f8b80ae1f2d919377ff243fa91bec894daaa69a849941f64ce53f57923697645af75a47b907133b9de092473896e828afb2aede1559c87ba298ba4d02b093b8;
    5'b01110 : xpb = 1024'h576479a642ae3a89834265af1d7ab85bf0c74f6c216e2b65423566c727f31aae67e467a6858b6ed0ef40cdda9efddd7ccfcf93d5fe074175022328d5a2e129dc59ec827941a49d31b9713a52ed5eb929df548d0516b7c9f2fbcd9037bbe5765595ce235a84ad9fb446858db43e33b911c4c64b4280cb3fb8cba704799f117ba2;
    5'b01111 : xpb = 1024'h44652f4a74e1c976a67d374178ad72324d3266ece0c060b6d98765edb5cd3ab9b7fca645bb59093932b7f816f794d89fabc861d6afc9a860447ca2b2dcf7c0c0744d8444641ba8cffae3506631a185ca70fe736fa8d651efaab5e117e5945546d0a4ec6d50542c2cef2a892143d089fad9d9e7a6ec3cb6f5f4b54ea63b72638c;
    5'b10000 : xpb = 1024'h3165e4eea7155863c9b808d3d3e02c08a99d7e6da012960870d9651443a75ac50814e4e4f126a3a1762f2253502bd3c287c12fd7618c0f4b86d61c90170e57a48eae860f8692b46e3c55667975e4526b02a859da3af4d9ec599e31f80f4334380b7bb5801bfab8a597cf848e496d5ae3eeed840b57ae2e331dc398d2d7d34b76;
    5'b10001 : xpb = 1024'h1e669a92d948e750ecf2da662f12e5df060895ee5f64cb5a082b643ad1817ad0582d238426f43e09b9a64c8fa8c2cee563b9fdd8134e7636c92f966d5124ee88a90f87daa909c00c7dc77c8cba271f0b94524044cd1361e9088682d838f2132946527e92e7a1451e40747ffb4f0a2bcd0401206fc31fa57046d1e2ff74343360;
    5'b10010 : xpb = 1024'hb6750370b7c763e102dabf88a459fb56273ad6f1eb700ab9f7d63615f5b9adba84562235cc1d871fd1d76cc0159ca083fb2cbd8c510dd220b89104a8b3b856cc37089a5cb80cbaabf39929ffe69ebac25fc26af5f31e9e5b76ed3b862a0f21a812947a5b347d196e9197b6854a6fcb61914bcd42e911cad6fe02d2c10951b4a;
    5'b10011 : xpb = 1024'ha9154b30ff9e39f3fe6df561f5d2a0dd3054c820b380d674b4ac1bdda03867eefba61e3b5cb5f168dff2e04f3d4ed5f57fc5c1bf99861458fe81c986002491025220c01f9d88d48e1345ab55db887c7dabab06b27dd69ef31be3b693467a739deb07a2e22fb7569d187e5db45213f3c87d02381aea4df11adf5df25d35d8699f;
    5'b10100 : xpb = 1024'h961600d531d1c8e121a8c6f451055ab38cbfdfa172d30bc64bfe1b042e1287fa4bbe5cda92838bd1236a0a8b95e5d1185bbe8fc04b487b4440db43633a3b27e66c81c1eabfffe02c54b7c1691fcb491e3d54ed1d0ff526efcacc07737029528f25de6bf4fb5de315c123592157b0c4b19215d47f55bf6858086c3c89d2395189;
    5'b10101 : xpb = 1024'h8316b679640557ce44e39886ac381489e92af72232254117e3501a2abbeca8059bd69b79c851263966e134c7ee7ccc3b37b75dc0fd0ae22f8334bd407451beca86e2c3b5e276ebca9629d77c640e15becefed387a213aeec79b4585399d8318060b53507c7046f8e69c8548e5d4d959aa72970e3c130df95317a86b66e9a3973;
    5'b10110 : xpb = 1024'h70176c1d9638e6bb681e6a19076ace6045960ea2f17776697aa2195149c6c810ebeeda18fe1ec0a1aa585f044713c75e13b02bc1aecd491ac58e371dae6855aea143c58104edf768d79bed8fa850e25f60a8b9f2343236e9289ca933c38710719b8bfe1a92aafc07126d4ffb62ea6683bc3d0d482ca256d25a88d0e30afb215d;
    5'b10111 : xpb = 1024'h5d1821c1c86c75a88b593bab629d8836a2012623b0c9abbb11f41877d7a0e81c3c0718b833ec5b09edcf89409faac280efa8f9c2608fb00607e7b0fae87eec92bba4c74c27650307190e03a2ec93aefff252a05cc650bee5d784fa13ed35ef62d662c72d5e51887fbb124b686887376cd150a9ac9813ce0f83971b0fa75c0947;
    5'b11000 : xpb = 1024'h4a18d765faa00495ae940d3dbdd0420cfe6c3da4701be10ca946179e657b08278c1f575769b9f5723146b37cf841bda3cba1c7c3125216f14a412ad822958376d605c91749dc0ea55a8019b630d67ba083fc86c7586f46e2866d4af416e4ce541139904029f814f863b746d56e240855e66446110385454caca5653c43bcf131;
    5'b11001 : xpb = 1024'h37198d0a2cd39382d1ceded01902fbe35ad755252f6e165e409816c4f3552832dc3795f69f878fda74bdddb950d8b8c6a79a95c3c4147ddc8c9aa4b55cac1a5af066cae26c531a439bf22fc97519484115a66d31ea8dcedf35559bd44093ad454c105952f59ea1710c5c424273c0d93efb77e2756ef6bc89d5b3af68e01dd91b;
    5'b11010 : xpb = 1024'h241a42ae5f07226ff509b0627435b5b9b7426ca5eec04bafd7ea15eb812f483e2c4fd495d5552a42b83507f5a96fb3e9839363c475d6e4c7cef41e9296c2b13f0ac7ccad8eca25e1dd6445dcb95c14e1a750539c7cac56dbe43decb46a428c3686e72265c1452de9b5013daf795daa28108b7ed9da6833c6fec1f9957c7ec105;
    5'b11011 : xpb = 1024'h111af852913ab15d184481f4cf686f9013ad8426ae1281016f3c15120f0968497c6813350b22c4aafbac32320206af0c5f8c31c527994bb3114d986fd0d948232528ce78b14131801ed65beffd9ee18238fa3a070ecaded893263d9493f16b27c1bdeb788cebba625da6391c7efa7b11259f1b3e45d9ab0427d043c218dfa8ef;
    5'b11100 : xpb = 1024'haec8f34c855c75130684cb5e3af570b7e18e9ed842dc56ca846acd8e4fe6355ccfc8cf4d0b16dda1de819bb53dfbbaf99f9f27abfc0e82ea044651ab45c253b8b3d904f283493a6372e274a5dabd7253bea91a0a2d6f93e5f79b206f77caecab2b9c46b5095b3f688d0b1b687c677223898c968501967f71974e08f33e22f744;
    5'b11101 : xpb = 1024'h9bc9a8f0b790040029bf9cf096282a8e3df9b659022e8c1c1bbcccb4ddc055681fe10dec40e4780a21f8c5f19692b61c7b97f5acadd0e9d5469fcb887fd8ea9cce3a06bda5c04601b4548ab91f003ef450530074bf8e1be2a683714fa179cb9c66730fc7d501cbe135b016d58204430c9ea032e96d07f6aec05c531fda83df2e;
    5'b11110 : xpb = 1024'h88ca5e94e9c392ed4cfa6e82f15ae4649a64cdd9c180c16db30ecbdb6b9a75736ff94c8b76b21272656ff02def29b13f5790c3ad5f9350c088f94565b9ef8180e89b0888c837519ff5c6a0cc63430b94e1fce6df51aca3df556bc22fcb28aa8da149d8daa0a85859de55124287a113f5b3b3cf4dd8796debe96a9d4c76e4c718;
    5'b11111 : xpb = 1024'h75cb14391bf721da703540154c8d9e3af6cfe55a80d2f6bf4a60cb01f974957ec0118b2aac7facdaa8e71a6a47c0ac62338991ae1155b7abcb52bf42f406186502fc0a53eaae5d3e3738b6dfa785d83573a6cd49e3cb2bdc0454130ff4d7897edc20a1ed6c4ee4d286fa0daf8d3de4dec8c76bb243eae5291278e7791345af02;
    endcase
end

endmodule
