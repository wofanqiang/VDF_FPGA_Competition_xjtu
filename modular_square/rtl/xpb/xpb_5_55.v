module xpb_5_55
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
    5'b00001 : xpb = 1024'h77a74f32bc901e4cf573bffa66c4e302ad22101725c02eb22f21494602bcf1f9867663b2186f10ac985abbcd5c498331d3d714bccc709333e1cf8012a5edb33626606e469aa2d71b1bd07e4cd0ba0fdb97f42ccd836219059fc5dd60695a241c4ca26b699915d6a3f2a2a2a25636dd9b91f203d98faa7298ce1c8259aa4784f5;
    5'b00010 : xpb = 1024'h3ea1590fb73207d11fe2081dbd2f7eb3e8ce1cfd7608bcece065d936527736eb09a449eb66b7a2ca91573853d534f59943940193762e561c12ffc0c71108f1bad871a7de85b4b0f12506f9f708985b863be360027a3e04fa89ff28c61889a5a66a3d44a98162b4ba5e855e65b49d950dd50a28d0cf09880155c989aecbaca37f;
    5'b00011 : xpb = 1024'h59b62ecb1d3f1554a505041139a1a65247a29e3c6514b2791aa6926a2317bdc8cd23024b50034e88a53b4da4e206800b350ee6a1fec19044430017b7c24303f8a82e17670c68ac72e3d75a14076a730dfd293377119f0ef7438742bc7b9273087d81de969af92d0ca681a2913044c8018224dc80e689d69dd769103ed11c209;
    5'b00100 : xpb = 1024'h7d42b21f6e640fa23fc4103b7a5efd67d19c39faec1179d9c0cbb26ca4ee6dd6134893d6cd6f459522ae70a7aa69eb3287280326ec5cac3825ff818e2211e375b0e34fbd0b6961e24a0df3ee1130b70c77c6c004f47c09f513fe518c31134b4cd47a895302c56974bd0abccb693b2a1baa1451a19e131002ab93135d975946fe;
    5'b00101 : xpb = 1024'h443cbbfc6905f9266a32585ed0c999190d4846e13c5a08147210425cf4a8b2c796767a101bb7d7b31baaed2e23555d99f6e4effd961a6f20572fc2428d2d21fa62f48954f67b3bb853446f98490f02b71bb5f339eb57f5e9fe379cf1e042ccd6f2156292eb12478b28ed788ec7a1e18ded2c7698dd72256b33401ab2b8be6588;
    5'b00110 : xpb = 1024'hb36c5d963a7e2aa94a0a082273434ca48f453c78ca2964f2354d24d4462f7b919a460496a0069d114a769b49c40d00166a1dcd43fd83208886002f6f848607f1505c2ece18d158e5c7aeb4280ed4e61bfa5266ee233e1dee870e8578f724e610fb03bd2d35f25a194d034522608990030449b901cd13ad3baed2207da238412;
    5'b00111 : xpb = 1024'h82de150c203800f78a14607c8df917ccf61663deb262c50152761b93471fe9b2a01ac3fb826f7a7dad022581f88a53333a78f1910c48c53c6a2f83099e3613b53b6631337c2feca9784b698f51a75e3d5799533c6595fae48836c5b7f8cc727d5c52a73c6c74fc458772d6f47c3f769bc2369f69ac7bad6c8909a461846b0907;
    5'b01000 : xpb = 1024'h49d81ee91ad9ea7bb482a89fe463b37e31c270c502ab533c03baab8396da2ea42348aa34d0b80c9ba5fea2087175c59aaa35de67b60688249b5fc3be09515239ed776acb6741c67f8181e5398985a9e7fb8886715c71e6d97270111da7fbf40779ed807c54c1da5bf35592b7daa62e0e054ec460ebdac2d510b6abb6a5d02791;
    5'b01001 : xpb = 1024'h10d228c6157bd3ffdef0f0c33ace4f2f6d6e7dab52f3e176b4ff3b73e6947395a676906e1f009eb99efb1e8eea61380219f2cb3e5fc44b0ccc900472746c90be9f88a4635253a0558ab860e3c163f5929f77b9a6534dd2ce5ca95c83572b7591978859bc3d0eb8725f384e7b390ce5804866e9582b39d83d9863b30bc735461b;
    5'b01010 : xpb = 1024'h887977f8d20bf24cd464b0bda19332321a908dc278b41028e42084b9e951658f2cecf420376faf663755da5c46aabb33edc9dffb2c34de40ae5f84851a5a43f4c5e912a9ecf67770a688df30921e056e376be673d6afebd3fc6f39e3c08599ade42ac525d6248f1651daf11d8f43c31bda58ed31bae44ad666803565717ccb10;
    5'b01011 : xpb = 1024'h4f7381d5ccaddbd0fed2f8e0f7fdcde3563c9aa8c8fc9e63956514aa390baa80b01ada5985b84184305256e2bf962d9b5d86ccd1d5f2a128df8fc5398575827977fa4c41d8085146afbf5adac9fc5118db5b19a8cd8bd7c8e6a885496fb51b3801c59e65be716d2cbdbdace0edaa7a8e1d711228fa43603eee2d3cba92e1e99a;
    5'b01100 : xpb = 1024'h166d8bb2c74fc555294141044e68699491e8a78f19452c9e46a9a49a88c5ef723348c092d400d3a2294ed3693881a002cd43b9a87fb0641110c005edf090c0fe2a0b85d9c31a2b1cb8f5d68501da9cc37f4a4cddc467c3bdd0e1d0af1ee49cc21f6077a5a6be4b4329a068a44c1132006089372039a275a775da440fb4470824;
    5'b01101 : xpb = 1024'h8e14dae583dfe3a21eb500feb52d4c973f0ab7a63f055b5075caede08b82e16bb9bf2444ec6fe44ec1a98f3694cb2334a11ace654c20f744f28f8600967e7434506bf4205dbd0237d4c654d1d294ac9f173e79ab47c9dcc370a7ae0f883ec0de6c02e30f3fd421e71c430b46a2480f9bf27b3af9c94ce84043f6c6695e8e8d19;
    5'b01110 : xpb = 1024'h550ee4c27e81cd26492349220b97e8487ab6c48c8f4de98b270f7dd0db3d265d3ced0a7e3ab8766cbaa60bbd0db6959c10d7bb3bf5deba2d23bfc6b50199b2b9027d2db848cedc0dddfcd07c0a72f849bb2dace03ea5c8b85ae0f975376e4268899dbc4f2820fffd8825c70a00aec70e35935ff108abfda8cba3cdbe7ff3aba3;
    5'b01111 : xpb = 1024'h1c08ee9f7923b6aa73919145620283f9b662d172df9677c5d8540dc12af76b4ec01af0b78901088ab3a2884386a208038094a8129f9c7d1554f007696cb4f13db48e675033e0b5e3e7334c26425143f45f1ce0153581b4ad451a44dae69dc3f2a738958f106dde13f40882cd5f157e8078ab84e8480b13115350d513a158ca2d;
    5'b10000 : xpb = 1024'h93b03dd235b3d4f76905513fc8c766fc6384e18a0556a678077557072db45d4846915469a17019374bfd4410e2eb8b35546bbccf6c0d104936bf877c12a2a473daeed596ce838cff0303ca73130b53cff7110ce2b8e3cdb2e4e0223b4ff7e80ef3db00f8a983b4b7e6ab256fb54c5c1c0a9d88c1d7b585aa216d576d4ba04f22;
    5'b10001 : xpb = 1024'h5aaa47af3055be7b937399631f3202ad9f30ee70559f34b2b8b9e6f77d6ea239c9bf3aa2efb8ab5544f9c0975bd6fd9cc428a9a615cad33167efc8307dbde2f88d000f2eb99566d50c3a461d4ae99f7a9b004017afbfb9a7cf196da0ff2769991175da3891d092ce528de13313b3138e4db5adb917149b12a91a5ec26d056dac;
    5'b10010 : xpb = 1024'h21a4518c2af7a7ffbde1e186759c9e5edadcfb56a5e7c2ed69fe76e7cd28e72b4ced20dc3e013d733df63d1dd4c2700433e5967cbf889619992008e4e8d9217d3f1148c6a4a740ab1570c1c782c7eb253eef734ca69ba59cb952b906ae56eb232f10b3787a1d70e4be709cf67219cb0090cdd2b05673b07b30c766178e6a8c36;
    5'b10011 : xpb = 1024'h994ba0bee787c64cb355a180dc61816187ff0b6dcba7f19f991fc02dcfe5d924d363848e56704e1fd650f8eb310bf33607bcab398bf9294d7aef88f78ec6d4b36571b70d3f4a17c6314140145381fb00d6e3a01a29fdbea25918966717b10f3f7bb31ee213334788b1133f98c850a89c22bfd689e61e2313fee3e87138b2112b;
    5'b10100 : xpb = 1024'h6045aa9be229afd0ddc3e9a432cc1d12c3ab18541bf07fda4a64501e1fa01e1656916ac7a4b8e03dcf4d7571a9f7659d7779981035b6ec35ac1fc9abf9e213381782f0a52a5bf19c3a77bbbe8b6046ab7ad2d34f20d9aa974351e1ccc6e090c9994df821fb80259f1cf5fb5c26b7600e65d7fb81257d387c8690efc65a172fb5;
    5'b10101 : xpb = 1024'h273fb478dccb9955083231c78936b8c3ff57253a6c390e14fba8e00e6f5a6307d9bf5100f301725bc849f1f822e2d804e73684e6df74af1ddd500a6064fd51bcc9942a3d156dcb7243ae3768c33e92561ec2068417b5968c2d8b2d3276101253b6e8d161e3cd03b588d8b71f851e1780a8f0207864dc4de50e3df71b7b7c4e3f;
    5'b10110 : xpb = 1024'h9ee703ab995bb7a1fda5f1c1effb9bc6ac79355191f93cc72aca2954721755016035b4b30b70830860a4adc57f2c5b36bb0d99a3abe54251bf1f8a730aeb04f2eff49883b010a28d5f7eb5b593f8a231b6b633519b17af91cd510a92df6a3670038b3ccb7ce2da597b7b59c1db54f51c3ae22451f486c07ddc5a797525c3d334;
    5'b10111 : xpb = 1024'h65e10d8893fda126281439e546663777e8254237e241cb01dc0eb944c1d199f2e3639aec59b9152659a12a4bf817cd9e2aca867a55a30539f04fcb2776064377a205d21b9b227c6368b5315fcbd6eddc5aa5668691f39b86b78a55f88e99b7fa2126160b652fb86fe75e158539bbac8e7dfa494933e5d5e6640780ca4728f1be;
    5'b11000 : xpb = 1024'h2cdb17658e9f8aaa528282089cd0d32923d14f1e328a593c8d534935118bdee466918125a801a744529da6d2710340059a877350ff60c82221800bdbe12181fc54170bb38634563971ebad0a03b53986fe9499bb88cf877ba1c3a15e3dc939843ec0ef4b4d7c96865340d14898226400c1126e407344eb4eebb4881f688e1048;
    5'b11001 : xpb = 1024'ha48266984b2fa8f747f642030395b62bd0f35f35584a87eebc74927b1448d0dded07e4d7c070b7f0eaf8629fcd4cc3376e5e880dcbd15b56034f8bee870f35327a7779fa20d72d548dbc2b56d46f49629688c6890c31a08141897ebea7235da08b635ab4e6926d2a45e373eaee59419c5304721a02ef5de7b9d10a7912d5953d;
    5'b11010 : xpb = 1024'h6b7c707545d1927b72648a265a0051dd0c9f6c1ba89316296db9226b640315cf7035cb110eb94a0ee3f4df264638359ede1b74e4758f1e3e347fcca2f22a73b72c88b3920be9072a96f2a7010c4d950d3a77f9be030d8c762bc2ca245652df2aa8fe33f4cedf4b40b1c62fae4cbff90e961c9711424e7350417e11ce343ab3c7;
    5'b11011 : xpb = 1024'h32767a5240737bff9cd2d249b06aed8e484b7901f8dba4641efdb25bb3bd5ac0f363b14a5d01dc2cdcf15bacbf23a8064dd861bb1f4ce12665b00d575d45b23bde99ed29f6fae100a02922ab442be0b7de672cf2f9e9786b15fc158a058260b4c6990d34b72c29571da8eb71ab26b080d934bc0881ad88b8c92b1923559fd251;
    5'b11100 : xpb = 1024'haa1dc984fd039a4c92469244172fd090f56d89191e9bd3164e1efba1b67a4cba79da14fc7570ecd9754c177a1b6d2b3821af7677ebbd745a477f8d6a0333657204fa5b70919db81bbbf9a0f814e5f093765b59c07d4b9170b5c1f2ea6edc84d1133b789e5041fffb104b8e14015d8e1c6b26bfe21157fb5197479b7cffe75746;
    5'b11101 : xpb = 1024'h7117d361f7a583d0bcb4da676d9a6c42311995ff6ee46150ff638b92063491abfd07fb35c3b97ef76e48940094589d9f916c634e957b374278afce1e6e4ea3f6b70b95087caf91f1c5301ca24cc43c3e1a4a8cf574277d659ffb3e501e0c065b30d651de388ede117c2e49d75fc4458eae3ee4d950b710ba1ef4a2d2214c75d0;
    5'b11110 : xpb = 1024'h3811dd3ef2476d54e723228ac40507f36cc5a2e5bf2cef8bb0a81b8255eed69d8035e16f12021115674510870d441007012950253f38fa2aa9e00ed2d969e27b691ccea067c16bc7ce66984c84a287e8be39c02a6b03695a8a3489b5cd3b87e54e712b1e20dbbc27e811059abe2afd00f15709d090162622a6a1aa2742b1945a;
    5'b11111 : xpb = 1024'hafb92c71aed78ba1dc96e2852ac9eaf619e7b2fce4ed1e3ddfc964c858abc89706ac45212a7121c1ff9fcc54698d9338d50064e20ba98d5e8baf8ee57f5795b18f7d3ce7026442e2ea371699555c97c4562decf7ee65826029fa67163695ac019b139687b9f192cbdab3a83d1461da9c83490daa1fc098bb74be2c80ecf9194f;
    endcase
end

endmodule
