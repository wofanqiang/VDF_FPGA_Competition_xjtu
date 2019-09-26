module xpb_5_570
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
    5'b00001 : xpb = 1024'h71dc1f307548bf844a1005a13a9231d97235d09f660985052ee93329c06463964bcfcb5dcd47f5d313b7457c398ce6f7fa422564431e536324bb1d2fa0463f052658ec0b627608c1db607c6a3f045049733c548a3fa3f9aca5090dc2e16ce308fe0045dae235ed8c5efd86c51963616ef710c79fcc0bc2daabced314f5a2e9c9;
    5'b00010 : xpb = 1024'h330af90b28a34a3fc91a936b64ca1c6172f59e0df69b6992dff5acfdcdc61a2494571942d0696d1788104bb18fbbbd25906a22e26389d67a98d6fb0105ba0958d862a368155b143ea426f631e52cdc61f273af7bf2c1c6489485898b08af237fccf8f98c13a2e28b373b26ab3af69cb49f47b05d47cc2885112e2b2562636d27;
    5'b00011 : xpb = 1024'ha4e7183b9dec09c4132a990c9f5c4e3ae52b6ead5ca4ee980edee0278e2a7dbae026e4a09db162ea9bc7912dc948a41d8aac4846a6a829ddbd921830a600485dfebb8f7377d11d007f87729c24312cab65b004063265bff5398e974dea1c0688caf93f66f5d8d0179638ad705459fe23965877fd13d7eb5fbcfcfe3a580656f0;
    5'b00100 : xpb = 1024'h6615f2165146947f923526d6c99438c2e5eb3c1bed36d325bfeb59fb9b8c344928ae3285a0d2da2f102097631f777a4b20d445c4c713acf531adf6020b7412b1b0c546d02ab6287d484dec63ca59b8c3e4e75ef7e5838c91290b1316115e46ff99f1f3182745c5166e764d5675ed39693e8f60ba8f98510a225c564ac4c6da4e;
    5'b00101 : xpb = 1024'h2744cbf104a11f3b113fb4a0f3cc234ae6ab098a7dc8b7b370f7d3cfa8edead77135806aa3f4517384799d9875a65078b6fc4342e77f300ca5c9d3d370e7dd0562cefe2cdd9b33fa1114662b708244dc641eb9e998a1592d18878ede38a0877668eaa6c958b2ba1546b3ed3c978074aee6c649780b58b6b487bbae5b31875dac;
    5'b00110 : xpb = 1024'h9920eb2179e9debf5b4fba422e5e552458e0da29e3d23cb89fe106f969524e6dbd054bc8713c47469830e314af333770b13e68a72a9d836fca84f103112e1c0a8927ea3840113cbbec74e295af869525d75b0e73d84552d9bd909ca11a0d6a7f66eaeca43ae8a7a1a5b17401b0e3d61dddd71117d764798f338a8170272a4775;
    5'b00111 : xpb = 1024'h5a4fc4fc2d44697ada5a480c58963fac59a0a7987464214650ed80cd76b404fc058c99ad745dbe8b0c89e94a05620d9e476666254b0906873ea0ced476a1e65e3b31a194f2f64838b53b5c5d55af213e569269658b631f75ad0d1869414faaf635e3a0556c559ca07def13e7d2771163860df9d55324df3998e9d98093eacad3;
    5'b01000 : xpb = 1024'h1b7e9ed6e09ef4365964d5d682ce2a345a60750704f605d401f9faa18415bb8a4e13e792777f35cf80e2ef7f5b90e3cbdd8e63a36b74899eb2bcaca5dc15b0b1ed3b58f1a5db53b57e01d624fbd7ad56d5c9c4573e80ec119c8994316891eb6d04dc54069dc2919f562cb3cdf40a4ca92e44e292cee544e3fe49319100ab4e31;
    5'b01001 : xpb = 1024'h8d5abe0755e7b3baa374db77bd605c0dcc9645a66aff8ad930e32dcb447a1f2099e3b2f044c72ba2949a34fb951dcac3d7d08907ae92dd01d777c9d57c5befb7139444fd08515c775962528f3adbfda0490618e17e24e5be4192a1f449fece7602dc99e17ff87f2bb52a3a930d6dae182555aa329af107beaa1804a5f64e37fa;
    5'b01010 : xpb = 1024'h4e8997e209423e76227f6941e7984695cd561314fb916f66e1efa79f51dbd5aee26b00d547e8a2e708f33b30eb4ca0f16df88685cefe60194b93a7a6e1cfba0ac59dfc59bb3667f42228cc56e10489b8c83d73d33142b25a310f1dbc71410eecd1d54d92b165742a8d67da792f00e95dcd8c92f016b16d690f775cb6630ebb58;
    5'b01011 : xpb = 1024'hfb871bcbc9cc931a189f70c11d0311dce15e0838c2353f492fc21735f3d8c3d2af24eba4b0a1a2b7d4c4166417b771f04208403ef69e330bfaf85784743845e77a7b3b66e1b7370eaef461e872d15d14774cec4e4607ef6208b998498834f63a0ce0143e2d2692965a57a5f509424a375c37bad9271d31374d6b4c6cfcf3eb6;
    5'b01100 : xpb = 1024'h819490ed31e588b5eb99fcad4c6262f7404bb122f22cd8f9c1e5549d1fa1efd376c21a1818520ffe910386e27b085e16fe62a96832883693e46aa2a7e789c3639e009fc1d0917c32c64fc288c631661abab1234f240478a2c594a74779f0326c9ece471ec50856b5c4a3012469f786126cd4434d5e7d95ee20a587dbc572287f;
    5'b01101 : xpb = 1024'h42c36ac7e54013716aa48a77769a4d7f410b7e9182bebd8772f1ce712d03a661bf4967fd1b738743055c8d17d1373444948aa6e652f3b9ab588680794cfd8db7500a571e837687af8f163c506c59f23339e87e40d722453eb511230fa13272e36dc6facff6754bb49ce0a10a8b8ac158150b2c0ada3dfb988604dfec3232abdd;
    5'b01110 : xpb = 1024'h3f244a2989a9e2ce9af1841a0d2380741cb4c001350a21523fe48453a655cf007d0b5e21e94fe8779b5934d27660a722ab2a464735f3cc2cca25e4ab271580b02140e7b365b932c57dcb61812827e4bb91fd9328a4011daa48d9ed7c874b35a3cbfae8127e240b3751e40f0ad1dfc9dbd4214c855fe6142eb6437fc9ef32f3b;
    5'b01111 : xpb = 1024'h75ce63d30de35db133bf1de2db6469e0b4011c9f795a271a52e77b6efac9c08653a0813febdcf45a8d6cd8c960f2f16a24f4c9c8b67d9025f15d7b7a52b79710286cfa8698d19bee333d32825186ce952c5c2dbcc9e40b874996ac9aa9e196633abff45c0a182e3fd41bc7b5c6815e0cb452dc68220a241d97330b1194961904;
    5'b10000 : xpb = 1024'h36fd3dadc13de86cb2c9abad059c5468b4c0ea0e09ec0ba803f3f543082b77149c27cf24eefe6b9f01c5defeb721c797bb1cc746d6e9133d6579594bb82b6163da76b1e34bb6a76afc03ac49f7af5aadab9388ae7d01d82339132862d123d6da09b8a80d3b85233eac59679be81499525c89c5259dca89c7fc92632201569c62;
    5'b10001 : xpb = 1024'ha8d95cde3686a7f0fcd9b14e402e864226f6baad6ff590ad32dd286cc88fdaaae7f79a82bc466172157d247af0aeae8fb55eecab1a0766a08a34767b5871a06900cf9deeae2cb02cd76428b436b3aaf71ecfdd38bca5d1cfde1c3625b290b9e307b8ede81dbb10cb0b56ee610177fac1539a8cc569d64ca2a8613636f6f9862b;
    5'b10010 : xpb = 1024'h6a0836b8e9e132ac7be43f186a6670ca27b6881c0087753ae3e9a240d5f19139307ee867bf67d8b689d62ab046dd84bd4b86ea293a72e9b7fe50544cbde56abcb2d9554b6111bba9a02aa27bdcdc370f9e07382a6fc39e6bcd98b1edd9d2fa59d6b1a1994f2805c9e3948e47230b3606fbd17582e596b24d0dc08e4763ba0989;
    5'b10011 : xpb = 1024'h2b3710939d3bbd67faeecce2949e5b522876558a911959c894f61c14e35347c77906364cc2894ffafe2f30e59d0c5aeae1aee7a75ade6ccf726c321e2359351064e30ca813f6c72668f11c438304c3281d3e931c22e16b07bd152db601153ad0a5aa554a8094fac8bbd22e2d449e714ca4085e40615717f7731fe657d07a8ce7;
    5'b10100 : xpb = 1024'h9d132fc412847cec44fed283cf308d2b9aac2629f722decdc3df4f3ea3b7ab5dc4d601aa8fd145ce11e67661d69941e2dbf10d0b9dfcc03297274f4dc39f74158b3bf8b3766ccfe8445198adc2091371907ae7a6628564b4621e3b78e2821dd9a3aa9b2562cae8551acfb4f25e01d2bb9b1925e02d62dad21eeeb96cc61d76b0;
    5'b10101 : xpb = 1024'h5e42099ec5df07a7c409604df96877b39b6bf39887b4c35b74ebc912b11961ec0d5d4f8f92f2bd12863f7c972cc8181072190a89be68434a0b432d1f29133e693d45b0102951db650d18127568319f8a0fb2429815a33150519ab74109c45e5072a34ed69437dd53f30d54d87f950e0143500e9da923407c844e117d32ddfa0e;
    5'b10110 : xpb = 1024'h1f70e379793992634313ee1823a0623b9c2bc1071846a7e925f842e6be7b187a55e49d7496143456fa9882cc82f6ee3e08410807ded3c6617f5f0af08e8708bcef4f676cdc36e6e1d5de8c3d0e5a2ba28ee99d89c8c0fdec4117330931069ec7419c0287c5a4d252cb4af4bea1284946eb86f75b24e3a626e9ad698d9f9e7d6c;
    5'b10111 : xpb = 1024'h914d02a9ee8251e78d23f3b95e3294150e6191a67e502cee54e176107edf7c10a1b468d2635c2a2a0e4fc848bc83d53602832d6c21f219c4a41a28202ecd47c215a853783eacefa3b13f08a74d5e7bec0225f2140864f798e62040cc127381d03f9c4862a7dabfdf2a487b83ba8baab5e297befaf0ef6901957c3ca295416735;
    5'b11000 : xpb = 1024'h527bdc84a1dcdca30c2e8183886a7e9d0f215f150ee2117c05edefe48c41329eea3bb6b7667da16e82a8ce7e12b2ab6398ab2aea425d9cdc183605f194411215c7b20ad4f191fb207a05826ef3870804815d4d05bb82c434d59cbc9439b5c2470e94fc13d947b4de02861b69dc1ee5fb8acea7b86cafceabfadb94b30201ea93;
    5'b11001 : xpb = 1024'h13aab65f5537675e8b390f4db2a269250fe12c839f73f609b6fa69b899a2e92d32c3049c699f18b2f701d4b368e181912ed3286862c91ff38c51e3c2f9b4dc6979bbc231a477069d42cbfc3699af941d0094a7f76ea090d0c519385c60f802bddd8dafc50ab4a9dcdac3bb4ffdb2214133059075e8703456603aecc36ec26df1;
    5'b11010 : xpb = 1024'h8586d58fca8026e2d54914eeed349afe8216fd23057d7b0ee5e39ce25a074cc37e92cffa36e70e860ab91a2fa26e688929154dcca5e77356b10d00f299fb1b6ea014ae3d06ed0f5f1e2c78a0d8b3e46673d0fc81ae448a7d6a22461f4264e5c6db8df59fecea976939c14215171582b02a165815b47bf7310c09bfd8646557ba;
    5'b11011 : xpb = 1024'h46b5af6a7ddab19e5453a2b9176c858682d6ca91960f5f9c96f016b667690351c71a1ddf3a0885ca7f122064f89d3eb6bf3d4b4ac652f66e2528dec3ff6ee5c2521e6599b9d21adbe6f2f2687edc707ef308577361625719599ec1e769a7263daa86a9511e578c6811fee1fb38a8bdf5d24d40d3303c5cdb716917e8d125db18;
    5'b11100 : xpb = 1024'h7e4894531353c59d35e308341a4700e8396980026a1442a47fc908a74cab9e00fa16bc43d29fd0ef36b269a4ecc14e4556548c8e6be79859944bc9564e2b01604281cf66cb72658afb96c302504fc97723fb265148023b5491b3daf90e966b4797f5d024fc48166ea3c81e15a3bf93b7a842990abfcc285d6c86ff93de65e76;
    5'b11101 : xpb = 1024'h79c0a875a67dfbde1d6e36247c36a1e7f5cc689f8caac92f76e5c3b4352f1d765b7137220a71f2e207226c168858fbdc4fa76e2d29dccce8bdffd9c50528ef1b2a810901cf2d2f1a8b19e89a64094ce0e57c06ef54241d61ee244b72725649bd777fa2dd31fa6ef3493a08a6739f5aaa7194f130780885608297430e3389483f;
    5'b11110 : xpb = 1024'h3aef825059d886999c78c3eea66e8c6ff68c360e1d3cadbd27f23d884290d404a3f885070d936a267b7b724bde87d209e5cf6bab4a485000321bb7966a9cb96edc8ac05e82123a9753e062620a31d8f964b361e10741e9fddda0c73a99988a344678568e636763f22177a88c953295f019cbd9edf3c8eb0ae7f69b1ea049cb9d;
    5'b11111 : xpb = 1024'haccba180cf21461de688c98fe100be4968c206ad834632c256db70b202f5379aefc85064dadb5ff98f32b7c81814b901e011910f8d66a36356d6d4c60ae2f87402e3ac69e48843592f40decc49362942d7efb66b46e5e3aa82a9d4fd7b056d3d44789c69459d517e80752f51ae95f75f10dca18dbfd4ade593c56e3395ecb566;
    endcase
end

endmodule
