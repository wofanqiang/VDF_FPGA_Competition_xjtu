module xpb_5_945
(
    input [5:1] data_in, 
    output [1024:1] data_out 
); 

reg [1024:1] xpb; 

assign data_out = xpb; 

always@(*) begin
    case(data_in)
    5'b00000 : xpb = 1024'h0;
    5'b00001 : xpb = 1024'h209fa25c9e90d7942ddff86679b1620d94badbebcf0f12e267285056503721aa9e66e1f95bc3a2c45a3dac3af1ef6b34de1d0130bf48568761c08f9f46bb81fdaf8998eeac8927ef8eda15895c2ad0e1faacb2fa3981bebc8f29b9180d7f03b7965272e4d9f783b493bb7f3174a1191ba11a3be19a54d5e9f618e47067668180;
    5'b00010 : xpb = 1024'h413f44b93d21af285bbff0ccf362c41b2975b7d79e1e25c4ce50a0aca06e43553ccdc3f2b7874588b47b5875e3ded669bc3a02617e90ad0ec3811f3e8d7703fb5f1331dd59124fdf1db42b12b855a1c3f55965f473037d791e5372301afe076f2ca4e5c9b3ef07692776fe62e9423237423477c334a9abd3ec31c8e0cecd0300;
    5'b00011 : xpb = 1024'h61dee715dbb286bc899fe9336d142628be3093c36d2d38a73578f102f0a564ffdb34a5ec134ae84d0eb904b0d5ce419e9a5703923dd903962541aeddd43285f90e9ccacc059b77ceac8e409c148072a5f00618eeac853c35ad7d2b48287d0b26c2f758ae8de68b1dbb327d945de34b52e34eb3a4cefe81bde24aad5136338480;
    5'b00100 : xpb = 1024'h827e89727a435e50b77fe199e6c5883652eb6faf3c3c4b899ca1415940dc86aa799b87e56f0e8b1168f6b0ebc7bdacd3787404c2fd215a1d87023e7d1aee07f6be2663bab2249fbe3b68562570ab4387eab2cbe8e606faf23ca6e46035fc0ede5949cb9367de0ed24eedfcc5d284646e8468ef86695357a7d86391c19d9a0600;
    5'b00101 : xpb = 1024'ha31e2bcf18d435e4e55fda006076ea43e7a64b9b0b4b5e6c03c991af9113a855180269decad22dd5c3345d26b9ad1808569105f3bc69b0a4e8c2ce1c61a989f46daffca95eadc7adca426baeccd61469e55f7ee31f88b9aecbd09d78437b1295ef9c3e7841d59286e2a97bf747257d8a25832b6803a82d91ce7c763205008780;
    5'b00110 : xpb = 1024'h131088d5f576d8b0483a5a8fc9ce05000aeb245604e2d0d6ed1528b02e481cf7b320ce5f5c6f520b7e13ca1ac83e7272d093df3e58ff36e099e41e5d6d929740a8ea60e95ba5f25846827e959025211aec073844cc844b5aa56dc49596cf73bb56e71f336b041dadefa51449c3f6707c77c388674db1a64b7e25df9de384a295;
    5'b00111 : xpb = 1024'h33b02b329407b044761a52f6437f670d9fa60041d3f1e3b9543d79067e7f3ea25187b058b832f4cfd8517655ba2ddda7aeb0e06f18478d67fba4adfcb44e193e5873f9d8082f1a47d55c941eec4ff1fce6b3eb3f06060a1734977dada44e7772ed39921844fba1628360937b3897899818ddc448e8067c35743ec40e4aeb2415;
    5'b01000 : xpb = 1024'h544fcd8f329887d8a3fa4b5cbd30c91b3460dc2da300f69bbb65c95cceb6604cefee925213f69794328f2290ac1d48dc8ccde19fd78fe3ef5d653d9bfb099b3c07fd92c6b4b842376436a9a8487ac2dee1609e393f87c8d3c3c136c5b1cd7b2a838c04fd1ef32517171c12acad38a2b3b9f8002a825b521f6a57a87eb251a595;
    5'b01001 : xpb = 1024'h74ef6febd1295f6cd1da43c336e22b28c91bb8197210097e228e19b31eed81f78e55744b6fba3a588ccccecb9e0cb4116aeae2d096d83a76bf25cd3b41c51d39b7872bb561416a26f310bf31a4a593c0dc0d51337909879052eaefddbf4c7ee219de77e1f8eaa8cbaad791de21d9bbcf5b123c0c1cb0280960708cef19b82715;
    5'b01010 : xpb = 1024'h958f12486fba3700ffba3c29b0938d365dd69405411f1c6089b66a096f24a3a22cbc5644cb7ddd1ce70a7b068ffc1f464907e401562090fe20e65cda88809f376710c4a40dca921681ead4bb00d064a2d6ba042db28b464ce214a8f5cccb8299b030eac6d2e22c803e93110f967ad4eafc2c77edb704fdf35689715f811ea895;
    5'b01011 : xpb = 1024'h5816f4f4c5cd9cc6294bcb919eaa7f2811b6cc03ab68ecb7302010a0c591844c7dabac55d1b0152a1e9e7fa9e8d79b0c30abd4bf2b61739d207ad1b9469ac83a24b28e40ac2bcc0fe2ae7a1c41f7153dd61bd8f5f86d7f8bbb1d013201fe3bf177bcb81fc10b7a74b8ea962134bc7dd4e6cd4ed010e76ad0632dacb5fa2c3aa;
    5'b01100 : xpb = 1024'h262111abeaedb1609074b51f939c0a0015d648ac09c5a1adda2a51605c9039ef66419cbeb8dea416fc279435907ce4e5a127be7cb1fe6dc133c83cbadb252e8151d4c1d2b74be4b08d04fd2b204a4235d80e7089990896b54adb892b2d9ee776adce3e66d6083b5bdf4a289387ece0f8ef8710ce9b634c96fc4bbf3bc709452a;
    5'b01101 : xpb = 1024'h46c0b408897e88f4be54ad860d4d6c0daa912497d8d4b4904152a1b6acc75b9a04a87eb814a246db56654070826c501a7f44bfad7146c4489588cc5a21e0b07f015e5ac163d50ca01bdf12b47c751317d2bb2383d28a5571da0542433b1deb2e4420b14bafffbf107305a7c4fc8dfa1490a14cb035b82280f264a3ac2e6fc6aa;
    5'b01110 : xpb = 1024'h67605665280f6088ec34a5ec86fece1b3f4c0083a7e3c772a87af20cfcfe7d44a30f60b17065e99fb0a2ecab745bbb4f5d61c0de308f1acff7495bf9689c327cb0e7f3b0105e348faab9283dd89fe3f9cd67d67e0c0c142e692efb5b489ceee5da73243089f742c506c126f6712f133031bb8891d00cf86ae87d881c95d6482a;
    5'b01111 : xpb = 1024'h87fff8c1c6a0381d1a149e5300b03028d406dc6f76f2da550fa342634d359eef417642aacc298c640ae098e6664b26843b7ec20eefd771575909eb98af57b47a60718c9ebce75c7f39933dc734cab4dbc8148978458dd2eaf858b473561bf29d70c5971563eec6799a7ca627e5d02c4bd2d5c4736a61ce54de966c8cfd3cc9aa;
    5'b10000 : xpb = 1024'ha89f9b1e65310fb147f496b97a61923668c1b85b4601ed3776cb92b99d6cc099dfdd24a427ed2f28651e4521583a91b9199bc33faf1fc7debaca7b37f61336780ffb258d6970846ec86d535090f585bdc2c13c727f0f91a787826d8b639af655071809fa3de64a2e2e3825595a71456773f0005504b6a43ed4af50fd64a34b2a;
    5'b10001 : xpb = 1024'h1891f82541d3b27caacf1748e3b8acf28c0691163f995fa2601729ba3aa1353c7afb8924b98a535e1ffdb21566cbec23939e9c8a4bb54e1a6bebcb7901fc43c44b3589cd6668af1944ad66375444926ec968f5d42c0b2353611f94a8b6ef577a6e62eab56714d5553b33bdabd7423859c6305d544ec01cf88458ba694327663f;
    5'b10010 : xpb = 1024'h39319a81e0648a10d8af0faf5d6a0f0020c16d020ea87284c73f7a108ad856e719626b1e154df6227a3b5e5058bb575871bb9dbb0afda4a1cdac5b1848b7c5c1fabf22bc12f1d708d3877bc0b06f6350c415a8ce658ce20ff0494dc0c46e5b3204b55d9a410c5909ceef3cdd4be35175674a9935e914f2e27a719ed9aa8de7bf;
    5'b10011 : xpb = 1024'h59d13cde7ef561a5068f0815d71b710db57c48edddb785672e67ca66db0f7891b7c94d17711198e6d4790a8b4aaac28d4fd89eebca45fb292f6ceab78f7347bfaa48bbaabf7afef86261914a0c9a3432bec25bc89f0ea0cc7f7306d8d1ed5ee99b07d07f1b03dcbe62aabc0ec0846a910864d5178369c8cc708a834a11f4693f;
    5'b10100 : xpb = 1024'h7a70df3b1d863939346f007c50ccd31b4a3724d9acc6984995901abd2b469a3c56302f10ccd53bab2eb6b6c63c9a2dc22df5a01c898e51b0912d7a56d62ec9bd59d254996c0426e7f13ba6d368c50514b96f0ec2d8905f890e9cbff0df6c62a1315a4363f4fb6072f6663b40352583aca97f10f91dbe9eb666a367ba795aeabf;
    5'b10101 : xpb = 1024'h9b108197bc1710cd624ef8e2ca7e3528def200c57bd5ab2bfcb86b137b7dbbe6f497110a2898de6f88f463012e8998f70c12a14d48d6a837f2ee09f61cea4bbb095bed88188d4ed78015bc5cc4efd5f6b41bc1bd12121e459dc67908eceb6658c7acb648cef2e4278a21ba71a9c69cc84a994cdab81374a05cbc4c2ae0c16c3f;
    5'b10110 : xpb = 1024'hb02de9e98b9b398c529797233d54fe50236d980756d1d96e604021418b230898fb5758aba3602a543d3cff53d1af36186157a97e56c2e73a40f5a3728d35907449651c815857981fc55cf43883ee2a7bac37b1ebf0daff17763a026403fc77e2ef79703f8216f4e971d52c426978fba9cd9a9da021ced5a0c65b596bf458754;
    5'b10111 : xpb = 1024'h2ba280fb374a8b2cf30971d8ad86b1f296f1b56c447c30794d2c526a68e952342e1c578415f9a5699e117c302f0a5e9664327bc8a4b484fb05cfe9d66f8edb04f41feab6c20ea1718b2fe4cce469b389b5702e18f88f6eae068d593e4dbecb35c54a09e8d218f3032ad8d1f59b38a8d63df3e5bb9c71c344027e9a0726ac08d4;
    5'b11000 : xpb = 1024'h4c422357d5db62c120e96a3f273814002bac9158138b435bb454a2c0b92073decc83397d71bd482df84f286b20f9c9cb424f7cf963fcdb8267907975b64a5d02a3a983a56e97c9611a09fa564094846bb01ce11332112d6a95b712565b3dceed5b9c7ccdac1076b7be9451270fd9c1f1df0e219d36c6992df8977e778e128a54;
    5'b11001 : xpb = 1024'h6ce1c5b4746c3a554ec962a5a0e9760dc0676d43e29a563e1b7cf317095795896aea1b76cd80eaf2528cd4a612e93500206c7e2a23453209c9510914fd05df0053331c941b20f150a8e40fdf9cbf554daac9940d6b92ec2724e0cb6e68bcd2a4f1eeefb28607fa6c524fd058847adb0d80285d7ed11b6f17eeb062e7f5790bd4;
    5'b11010 : xpb = 1024'h8d81681112fd11e97ca95b0c1a9ad81b5522492fb1a9692082a5436d598eb7340950fd7029448db6acca80e104d8a034fe897f5ae28d88912b1198b443c160fe02bcb582c7aa194037be2568f8ea262fa5764707a514aae3b40a8486763bd65c884162975fff7e20e60b4f89f91bf429214299606b704501e4c947585cdf8d54;
    5'b11011 : xpb = 1024'hae210a6db18de97daa895372944c3a28e9dd251b80b87c02e9cd93c3a9c5d8dea7b7df698508307b07082d1bf6c80b69dca6808ba1d5df188cd228538a7ce2fbb2464e717433412fc6983af25514f711a022fa01de9669a043343d9e83bada141e93d57c39f701d579c6cebb6dbd0d44c25cd54205c51aebdae22bc8c4460ed4;
    5'b11100 : xpb = 1024'h1e1367748e308c490d63d401fda354e50d21fdd67a4fee6dd3192ac446fa4d8142d643ea16a554b0c1e79a10055965d456a959d63e6b65543df378949665f047ed80b2b1712b6bda42d84dd9186403c2a6cab3638b91fb4c1cd164bbd70f3b3985deb63763258cfc86c2670dea8e0037149d32414fce93a58a8b9534a2ca29e9;
    5'b11101 : xpb = 1024'h3eb309d12cc163dd3b43cc687754b6f2a1dcd9c2495f01503a417b1a97316f2be13d25e37268f7751c25464af748d10934c65b06fdb3bbdb9fb40833dd2172459d0a4ba01db493c9d1b26362748ed4a4a177665dc513ba08abfb1dd3e48e3ef11c31291c3d1d10b11a7de63f5f2f1952b5b76e22ea23698f80a479a50a30ab69;
    5'b11110 : xpb = 1024'h5f52ac2dcb523b716923c4cef10619003697b5ae186e1432a169cb70e76890d67fa407dcce2c9a397662f285e9383c3e12e35c37bcfc1263017497d323dcf4434c93e48eca3dbbb9608c78ebd0b9a5869c241957fe9578c53b24d6ebf20d42a8b2839c0117149465ae396570d3d0326e56d1aa0484783f7976bd5e1571972ce9;
    5'b11111 : xpb = 1024'h7ff24e8a69e313059703bd356ab77b0dcb529199e77d271508921bc7379fb2811e0ae9d629f03cfdd0a09ec0db27a772f1005d687c4468ea633527726a987640fc1d7d7d76c6e3a8ef668e752ce4766896d0cc5238173781ca4e9003ff8c466048d60ee5f10c181a41f4e4a248714b89f7ebe5e61ecd15636cd64285d8fdae69;
    endcase
end

endmodule
