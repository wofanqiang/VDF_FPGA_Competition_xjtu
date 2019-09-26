module xpb_5_120
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
    5'b00001 : xpb = 1024'hb81a82744f08b443cc5a65d7f5b4ae2dbe44141e0e421ca7925b60b64076d45cf0fb8b2dd0b6c271f9aad14914c92378fe1a1e2d1925be3e3800de4462133718d960dca9e6a22e89032b170343d678a84cf35ba2cd2ce33bdeb30135a784bdf26dd80998988a450d97c52d8e8b2ced795ce7242668d201d186e1eca29fd4a4c;
    5'b00010 : xpb = 1024'h1703504e89e11688798b4cbafeb695c5b7c88283c1c84394f24b6c16c80eda8b9e1f7165ba16d84e3f355a292299246f1fc343c5a324b7c7c7001bc88c4266e31b2c1b953cd445d1206562e0687acf15099e6b7459a59c677bd66026b4f097be4dbb0133131148a1b2f8a5b1d1659daf2b9ce484cd1a403a30dc3d9453fa9498;
    5'b00011 : xpb = 1024'h2284f875ced1a1ccb650f3187e11e0a893acc3c5a2ac655f6b7122222c1647d16d2f2a18972244755ed0073db3e5b6a6afa4e5a874b713abaa8029acd2639a54a8c2295fdb3e68b9b09814509cb8369f8e6da12e86786a9b39c1903a0f68e39d749881cc9c99ecf28c74f88aba186c86c16b56c733a76057494a5c5e7df7dee4;
    5'b00100 : xpb = 1024'h2e06a09d13c22d10f3169975fd6d2b8b6f91050783908729e496d82d901db5173c3ee2cb742db09c7e6ab452453248de3f86878b46496f8f8e0037911884cdc63658372a79a88ba240cac5c0d0f59e2a133cd6e8b34b38cef7acc04d69e12f7c9b7602662622914365f14b63a2cb3b5e5739c9099a34807461b87b28a7f52930;
    5'b00101 : xpb = 1024'h398848c458b2b8552fdc3fd37cc8766e4b7546496474a8f45dbc8e38f425225d0b4e9b7e51391cc39e056166d67edb15cf68296e17dbcb73718045755ea60137c3ee44f51812ae8ad0fd7731053305b4980c0ca2e01e0702b597f060c4597b5bc25382ffafab35943f6d9e3c8b7e0a35ed083b4c00c1a0917a2699f2d1f2737c;
    5'b00110 : xpb = 1024'h4509f0eb9da343996ca1e630fc23c1512759878b4558cabed6e24444582c8fa2da5e54312e4488eabda00e7b67cb6d4d5f49cb50e96e275755005359a4c734a9518452bfb67cd173613028a139706d3f1cdb425d0cf0d536738320741ed1c73ae93103993933d9e518e9f1157430d90d82d6ad8e674ec0ae9294b8bcfbefbdc8;
    5'b00111 : xpb = 1024'h508b9912e293cedda9678c8e7b7f0c34033dc8cd263cec895007fa4fbc33fce8a96e0ce40b4ff511dd3abb8ff917ff84ef2b6d33bb00833b3880613deae8681adf1a608a54e6f45bf162da116dadd4c9a1aa781739c3a36a316e5087794a131a100e8432c2bc7e35f26643ee5ce3a7e518a51fd0cddbe0cbab02d78725ed0814;
    5'b01000 : xpb = 1024'h5c0d413a27845a21e62d32ebfada5716df220a0f07210e53c92db05b203b6a2e787dc596e85b6138fcd568a48a6491bc7f0d0f168c92df1f1c006f2231099b8c6cb06e54f351174481958b81a1eb3c542679add16696719def59809ad3c25ef936ec04cc4c452286cbe296c7459676bcae739213346900e8c370f6514fea5260;
    5'b01001 : xpb = 1024'h678ee9616c74e56622f2d9497a35a1f9bb064b50e805301e425366668442d774478d7e49c566cd601c7015b91bb123f40eeeb0f95e253b02ff807d06772acefdfa467c1f91bb3a2d11c83cf1d628a3deab48e38b93693fd1ad44b0ae2e3aaad85dc98565d5cdc6d7a55ee9a02e494594444204559af62105dbdf151b79e79cac;
    5'b01010 : xpb = 1024'h73109188b16570aa5fb87fa6f990ecdc96ea8c92c8e951e8bb791c71e84a44ba169d36fca27239873c0ac2cdacfdb62b9ed052dc2fb796e6e3008aeabd4c026f87dc89ea30255d15a1faee620a660b6930181945c03c0e056b2fe0c188b2f6b784a705ff5f566b287edb3c7916fc146bda10769801834122f44d33e5a3e4e6f8;
    5'b01011 : xpb = 1024'h7e9239aff655fbee9c7e260478ec37bf72cecdd4a9cd73b3349ed27d4c51b1ffe5acefaf7f7da5ae5ba56fe23e4a48632eb1f4bf0149f2cac68098cf036d35e1157297b4ce8f7ffe322d9fd23ea372f3b4e74effed0edc39291b10d4e32b4296ab848698e8df0f7958578f51ffaee3436fdee8da681061400cbb52afcde23144;
    5'b01100 : xpb = 1024'h8a13e1d73b468732d943cc61f84782a24eb30f168ab1957dadc48888b0591f45b4bca8625c8911d57b401cf6cf96da9abe9396a1d2dc4eaeaa00a6b3498e6952a308a57f6cf9a2e6c260514272e0da7e39b684ba19e1aa6ce70640e83da38e75d26207327267b3ca31d3e22ae861b21b05ad5b1cce9d815d25297179f7df7b90;
    5'b01101 : xpb = 1024'h959589fe80371277160972bf77a2cd852a9750586b95b74826ea3e9414608c8b83cc611539947dfc9adaca0b60e36cd24e753884a46eaa928d80b4978faf9cc4309eb34a0b63c5cf529302b2a71e4208be85ba7446b478a0a4f170fb981bda54f93f87cbfbf0581b0b503503d11480f29b7bcd5f352aa17a3d97904421dcc5dc;
    5'b01110 : xpb = 1024'ha1173225c5279dbb52cf191cf6fe1868067b919a4c79d912a00ff49f7867f9d152dc19c8169fea23ba75771ff22fff09de56da67760106767100c27bd5d0d035be34c114a9cde8b7e2c5b422db5ba9934354f02e738746d462dca10ef2942634201d08658578fc6be4cc87dcb9c74fca314a3fa19bb7c1975605af0e4bda1028;
    5'b01111 : xpb = 1024'hac98da4d0a1828ff8f94bf7a7659634ae25fd2dc2d5dfadd1935aaaadc6f671721ebd27af3ab564ada102434837c91416e387c4a4793625a5480d0601bf203a74bcacedf48380ba072f865930f99111dc82425e8a05a150820c7d1224d0c721346fa88ff0f01a0bcbe48dab5a27a1ea1c718b1e40244e1b46e73cdd875d75a74;
    5'b10000 : xpb = 1024'h76d3d1e8d1a7f7b0154ee00e55a66dc4cce10ed38ca7c30147ea7608d742754edb30db5069043e35a4c9202316b12ae99fff646f672edf287619ee62740c2676511a7fb37113143f0911460aafab47758ee620a40a6b62b29266f3aed5a1b603ed0776ee7c14c80110546af935cc7500e0d45441886a4a14072719e16f23e55;
    5'b10001 : xpb = 1024'h12eee545d20b0abf3e1a945e64b5b1bf28b2522f19ae9dfa8da45d6bf17b949abcc2c667e39bb00a79e73f16c2b7a4e629e19829c80549d66ae1acca6d61f5d8f2a7b5c5d57b542c80c3c5d0df381c01ddbd97c46d79845ee7119f4e47d2673f65adf8087149f0d0ea8199887c0f9627a3dbb7867f13c4be58e0906840ef88a1;
    5'b10010 : xpb = 1024'h1e708d6d16fb96037ae03abbe410fca204969370fa92bfc506ca1377558301e08bd27f1ac0a71c319981ec2b5404371db9c33a0c9997a5ba4e61baaeb383294a803dc39073e5771510f677411375838c628ccd7e9a4c5292a4fccf61a24ab31e8c8b78a1fad29521c3fdec6164c264ff39aa29c8e5a0e4db714eaf326aecd2ed;
    5'b10011 : xpb = 1024'h29f235945bec2147b7a5e119636c4784e07ad4b2db76e18f7fefc982b98a6f265ae237cd9db28858b91c993fe550c95549a4dbef6b2a019e31e1c892f9a45cbc0dd3d15b124f99fda12928b147b2eb16e75c0338c71f20c662e7ff74fcc2fefdb368f93b845b39729d7a3f3a4d7533d6cf789c0b4c2e04f889bccdfc94ea1d39;
    5'b10100 : xpb = 1024'h3573ddbba0dcac8bf46b8776e2c79267bc5f15f4bc5b0359f9157f8e1d91dc6c29f1f0807abdf47fd8b74654769d5b8cd9867dd23cbc5d821561d6773fc5902d9b69df25b0b9bce6315bda217bf052a16c2b38f2f3f1eefa20d32f88573b4adcda4679d50de3ddc376f69213362802ae65470e4db2bb2515a22aecc6bee76785;
    5'b10101 : xpb = 1024'h40f585e2e5cd37d031312dd46222dd4a984357369d3f2524723b3599819949b1f901a93357c960a6f851f36907e9edc469681fb50e4eb965f8e1e45b85e6c39f28ffecf04f23dfcec18e8b91b02dba2bf0fa6ead20c4bd2ddebe5f9bb1b396bc0123fa6e976c82145072e4ec1edad185fb15809019484532ba990b90e8e4b1d1;
    5'b10110 : xpb = 1024'h4c772e0a2abdc3146df6d431e17e282d742798787e2346eeeb60eba4e5a0b6f7c81161e634d4ccce17eca07d99367ffbf949c197dfe11549dc61f23fcc07f710b695fabaed8e02b751c13d01e46b21b675c9a4674d978b619ca98faf0c2be29b28017b0820f5266529ef37c5078da05d90e3f2d27fd5654fd3072a5b12e1fc1d;
    5'b10111 : xpb = 1024'h57f8d6316fae4e58aabc7a8f60d97310500bd9ba5f0768b96486a1b049a8243d97211a9911e038f537874d922a831233892b637ab173712dbfe2002412292a82442c08858bf8259fe1f3ee7218a88940fa98da217a6a59955a94bfc266a42e7a4edefba1aa7dcab6036b8a9df0406f3526b26514e662856ceb7549253cdf4669;
    5'b11000 : xpb = 1024'h637a7e58b49ed99ce78220ece034bdf32bf01afc3feb8a83ddac57bbadaf91836630d34beeeba51c5721faa6bbcfa46b190d055d8305cd11a3620e08584a5df3d1c216502a62488872269fe24ce5f0cb7f680fdba73d27c9187fefd5c11c7a5975bc7c3b34066f06dce7dd76d8f33e0cbc80d7574cefa58a03e367ef66dc90b5;
    5'b11001 : xpb = 1024'h6efc267ff98f64e12447c74a5f9008d607d45c3e20cfac4e56d20dc711b6fec935408bfecbf7114376bca7bb4d1c36a2a8eea740549828f586e21bec9e6b91655f58241ac8cc6b71025951528123585604374595d40ff5fcd66b1fe91b94c6389c99fcd4bd8f1357b664304fc1a60ce4524f4999b37cc5a71c5186b990d9db01;
    5'b11010 : xpb = 1024'h7a7dcea73e7ff025610d6da7deeb53b8e3b89d8001b3ce18cff7c3d275be6c0f045044b1a9027d6a965754cfde68c8da38d04923262a84d96a6229d0e48cc4d6ecee31e567368e59928c02c2b560bfe089067b5000e2c43094564ffc760d1217c3777d6e4717b7a88fe08328aa58dbbbe81dbbdc1a09e5c434bfa583bad7254d;
    5'b11011 : xpb = 1024'h85ff76ce83707b699dd314055e469e9bbf9cdec1e297efe3491d79ddd9c5d954d35ffd64860de991b5f201e46fb55b11c8b1eb05f7bce0bd4de237b52aadf8487a843fb005a0b14222beb432e99e276b0dd5b10a2db592645241800fd0855df6ea54fe07d0a05bf9695cd601930baa937dec2e1e809705e14d2dc44de4d46f99;
    5'b11100 : xpb = 1024'h91811ef5c86106adda98ba62dda1e97e9b812003c37c11adc2432fe93dcd469aa26fb617631955b8d58caef90101ed4958938ce8c94f3ca13162459970cf2bba081a4d7aa40ad42ab2f165a31ddb8ef592a4e6c45a886098102cb0232afda9d611327ea15a29004a42d928da7bbe796b13baa060e72425fe659be3180ed1b9e5;
    5'b11101 : xpb = 1024'h9d02c71d0d5191f2175e60c05cfd346177656145a46033783b68e5f4a1d4b3e0717f6eca4024c1dff5275c0d924e7f80e8752ecb9ae1988514e2537db6f05f2b95b05b454274f713432417135218f68017741c7e875b2ecbce17e0368575f5b5380fff3ae3b1a49b1c557bb364714842a98912a34db1461b7e0a01e238cf0431;
    5'b11110 : xpb = 1024'ha8846f4452421d365424071ddc587f445349a28785445542b48e9c0005dc2126408f277d1d302e0714c20922239b11b87856d0ae6c73f468f8626161fd11929d2346690fe0df19fbd356c88386565e0a9c435238b42dfcff8c031049dfee41945eed7fd46d3a48ebf5d1ce8c4d24171a3f5784e5b43e6638967820ac62cc4e7d;
    5'b11111 : xpb = 1024'h358d215d54473b1c5e435a44b5982d5bdb7e09890b0d695afd798b5b6e0e1640c5662b730151b9f94fe76efd1899325a41e4aab1b5380012b432fe80860515d3c8d422bcfb83f9f50ef775121b801642d0d8e5a547a9e229461ae62803beae156c36e4445f9f4af488e3a863e06bfc8864c1845ca8029256876c47203e7325e;
    endcase
end

endmodule
