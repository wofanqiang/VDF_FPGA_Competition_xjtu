module xpb_5_130
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
    5'b00001 : xpb = 1024'h79f4bcf7c2c3752ebf30908b35e52870509834ec87afcb1623f06577f7047b2b663272500fc3fbb9546801fe94088a11b7c941f15755dc0a77293acd5a8bb0765bcb9570652a5671ff1112e58cf59574538e8f5f10a130a8de82aac5e23192eb560eb7668ec12ee933d1de26e79187b0e59d934181126def8fbd717caacac86a;
    5'b00010 : xpb = 1024'h433c3499c398b594b35ba93f5b70098f2fba66a839e7f5b4ca04119a3b06494ec91c6727556178e40971c4b644b303590b785bfc8bf8e7c93db3363c7a44ec3b4347f6321ac3af9eeb882328810f66b7b318252594bc34410778c3910a3883447d15dca36cb96544e0e3d56ed752e9387c6147a0b1d97eaed90b67f4ccb32a69;
    5'b00011 : xpb = 1024'hc83ac3bc46df5faa786c1f380faeaae0edc9863ec2020537017bdbc7f0817722c065bfe9afef60ebe7b876df55d7ca05f277607c09bf388043d31ab99fe28002ac456f3d05d08cbd7ff336b752937fb12a1baec18d737d9306edc5c323f739da41d01e04ab19ba08df5ccb6c7144ac01324fbffe2a08f6e22595e6cee9b8c68;
    5'b00100 : xpb = 1024'h8678693387316b2966b7527eb6e0131e5f74cd5073cfeb6994082334760c929d9238ce4eaac2f1c812e3896c896606b216f0b7f917f1cf927b666c78f489d876868fec6435875f3dd7104651021ecd6f66304a4b297868820ef1872214710688fa2bb946d972ca89c1c7aaddaea5d270f8c28f4163b2fd5db216cfe9996654d2;
    5'b00101 : xpb = 1024'h4fbfe0d58806ab8f5ae26b32dc6af43d3e96ff0c260816083a1bcf56ba0e60c0f522c325f0606ef2c7ed4c243a107ff96a9fd2044c94db5141f067e81443143b6e0c4d25eb20b86ac3875693f6389eb2c5b9e011ad936c1a37e79fed3c77f6e22132de83b76b00e56ed9a2259e6733f88f8643a0947a0e1cfb64c661bb4eb6d1;
    5'b00110 : xpb = 1024'h1907587788dbebf54f0d83e701f5d55c1db930c7d84040a6e02f7b78fe102ee4580cb7fd35fdec1d7cf70edbeabaf940be4eec0f8137e710087a635733fc50005588ade7a0ba1197affe66d6ea526ff6254375d831ae6fb260ddb8b8647ee73b483a03c0956337411beb996d8e2895802649f7ffc5411edc44b2bcd9dd3718d0;
    5'b00111 : xpb = 1024'h92fc156f4b9f61240e3e147237dafdcc6e5165b45ff00bbd041fe0f0f514aa0fbe3f2a4d45c1e7d6d15f10da7ec3835276182e00d88dc31a7fa39e248e880076b154435805e46809af0f79bc7748056a78d20537424fa05b3f60637e46b07a269e48bb272424662a4fbd779475ba1d310be78b4146538ccbd4702e568801e13a;
    5'b01000 : xpb = 1024'h5c438d114c74a18a02692d265d65deeb4d7397701228365baa338d133916783321291f248b5f65018668d3922f6dfc99c9c7480c0d30ced9462d9993ae413c3b98d0a419bb7dc1369b8689ff6b61d6add85b9afdc66aa3f368567c496eb76a7fc54fe064021c9c85fccf6edc657b7eb8a2ab3fa0771a9d8b1dbe24cea9ea4339;
    5'b01001 : xpb = 1024'h258b04b34d49e1eff69445da82f0c00a2c95c92bc46060fa504739357d184656841313fbd0fce22c3b729649e01875e11d76621741d3da980cb79502cdfa7800804d04db71171a6387fd9a425f7ba7f137e530c44a85a78b914c951496be5ad8ec5705a0e014d2e1a9e16624553ce040396ef3ffa7e1ae4a670c1b46cbd2a538;
    5'b01010 : xpb = 1024'h9f7fc1ab100d571eb5c4d665b8d5e87a7d2dfe184c102c1074379ead741cc181ea45864be0c0dde58fda98487420fff2d53fa4089929b6a283e0cfd028862876dc189a4bd64170d5870ead27ec713d658b73c0235b26d8346fcf3fda78efedc44265bd076ed601caddb3444b3cce67f11f0c874128f41c39f6c98cc3769d6da2;
    5'b01011 : xpb = 1024'h68c7394d10e29784a9efef19de60c9995c502fd3fe4856af1a4b4acfb81e8fa54d2f7b23265e5b1044e45b0024cb793a28eebe13cdccc2614a6acb3f483f643bc394fb0d8bdaca027385bd6ae08b0ea8eafd55e9df41dbcc98c558a5a0f6de1d696ce2444cce38268ac53b932c8fc978b5d03ba059bb2cf94017833b9885cfa1;
    5'b01100 : xpb = 1024'h320eb0ef11b7d7ea9e1b07ce03ebaab83b72618fb080814dc05ef6f1fc205dc8b0196ffa6bfbd83af9ee1db7d575f2817c9dd81f026fce2010f4c6ae67f8a000ab115bcf4174232f5ffccdadd4a4dfec4a86ebb0635cdf64c1bb7170c8fdce76907407812ac66e8237d732db1c512b004c93efff8a823db8896579b3ba6e31a0;
    5'b01101 : xpb = 1024'hac036de6d47b4d195d4b985939d0d3288c0a967c38304c63e44f5c69f324d8f4164be24a7bbfd3f44e561fb6697e7c9334671a1059c5aa2a881e017bc284507706dcf13fa69e79a15f0de093619a75609e157b0f73fe100da03e1c36ab2f6161e682bee7b9879d6b6ba9110203e2b2b1323183410b94aba81922eb306538fa0a;
    5'b01110 : xpb = 1024'h754ae588d5508d7f5176b10d5f5bb4476b2cc837ea6877028a63088c3726a7177935d721c15d511f035fe26e1a28f5da8816341b8e68b5e94ea7fceae23d8c3bee5952015c37d2ce4b84f0d655b446a3fd9f10d5f81913a5c9343501d33651bb0d89e424977fd3c718bb0849f3a41438c8f537a03c5bbc676270e1a887215c09;
    5'b01111 : xpb = 1024'h3e925d2ad625cde545a1c9c184e695664a4ef9f39ca0a1a13076b4ae7b28753adc1fcbf906face49b869a525cad36f21dbc54e26c30bc1a81531f85a01f6c800d5d5b2c311d12bfb37fc011949ce17e75d28a69c7c34173df22a4dccfb3d42143491096175780a22c5ccff91e36575c05fb8ebff6d22cd26abbed820a909be08;
    5'b10000 : xpb = 1024'h7d9d4ccd6fb0e4b39cce275aa71768529712baf4ed8cc3fd68a60d0bf2a435e3f09c0d04c984b746d7367dd7b7de8692f746831f7aecd66dbbbf3c921b003c5bd521384c76a85282473115c3de7e92abcb23c63004f1ad61b2066982344326d5b982e9e5370407e72def6d9d326d747f67ca05e9de9dde5f50cce98caf22007;
    5'b10001 : xpb = 1024'h81ce91c499be8379f8fd7300e0569ef57a09609bd6889755fa7ac648b62ebe89a53c33205c5c472dc1db69dc0f86727ae73daa234f04a97152e52e967c3bb43c191da8f52c94db9a23842441cadd7e9f1040cbc210f04b7ef9a3115e0575c558b1a6e604e2316f67a6b0d500bab85ef8dc1a33a01efc4bd584ca401575bce871;
    5'b10010 : xpb = 1024'h4b1609669a93c3dfed288bb505e18014592b925788c0c1f4a08e726afa308cad082627f7a1f9c45876e52c93c030ebc23aecc42e83a7b530196f2a059bf4f001009a09b6e22e34c70ffb3484bef74fe26fca6188950b4f1722992a292d7cb5b1d8ae0b41c029a5c353c2cc48aa79c08072dde7ff4fc35c94ce18368d97a54a70;
    5'b10011 : xpb = 1024'h145d81089b690445e153a4692b6c6133384dc4133af8ec9346a21e8d3e325ad06b101ccee79741832beeef4b70db65098e9bde39b84ac0eedff92574bbae2bc5e8166a7897c78df3fc7244c7b3112125cf53f74f192652af4b8f42f45583a60affb5307e9e21dc1f00d4c3909a3b220809a19c5e808a6d5417662d05b98dac6f;
    5'b10100 : xpb = 1024'h8e523e005e2c7974a08434f4615189a388e5f8ffc2a8b7a96a9284053536d5fbd1428f1ef75b3d3c8056f14a04e3ef1b4665202b0fa09cf9572260421639dc3c43e1ffe8fcf1e465fb8357ad4006b69a22e286ae29c783582a11edba37b538f655c3e7e52ce30b0834a6a1b781cca9b8ef3f2fa0019cdb43a7239e82645874d9;
    5'b10101 : xpb = 1024'h5799b5a25f01b9da94af4da886dc6ac268082abb74e0e24810a630277938a41f342c83f63cf8ba673560b401b58e68629a143a364443a8b81dac5bb135f318012b5e60aab28b3d92e7fa67f0342087dd826c1c74ade286f0530806855fbc294f7ccb0d220adb4163e1b898ff718e0b408602e3ff3263ec02f07194fa8640d6d8;
    5'b10110 : xpb = 1024'h20e12d445fd6fa4088da665cac674be1472a5c7727190ce6b6b9dc49bd3a7242971678cd82963791ea6a76b96638e1a9edc3544178e6b476e436572055ac53c612dac16c682496bfd4717833283a5920e1f5b23b31fd8a887bfe1f5087c319a8a3d2325ee8d377bf8eca9047614f6cc81cc6985e632afcc239bf8b72a82938d7;
    5'b10111 : xpb = 1024'h9ad5ea3c229a6f6f480af6e7e24c745197c29163aec8d7fcdaaa41c1b43eed6dfd48eb1d925a334b3ed278b7fa416bbba58c9632d03c90815b5f91edb038043c6ea656dccd4eed31d3828b18b52fee953584419a429ebb315a80ca1669f4ac93f9e0e9c57794a6a8c29c6e6e48e0f47902642b9fe43d6ab1c97cfcef52f40141;
    5'b11000 : xpb = 1024'h641d61de236fafd53c360f9c07d7557076e4c31f6101029b80bdede3f840bb916032dff4d7f7b075f3dc3b6faaebe502f93bb03e04df9c4021e98d5ccff140015622b79e82e8465ebff99b5ba949bfd8950dd760c6b9bec98376e2e191fb9ced20e80f02558cdd046fae65b638a256009927dfff15047b7112caf36774dc6340;
    5'b11001 : xpb = 1024'h2d64d9802444f03b306128502d62368f5606f4db13392d3a26d19a063c4289b4c31cd4cc1d952da0a8e5fe275b965e4a4ceaca493982a7fee87388cbefaa7bc63d9f186038819f8bac70ab9e9d63911bf4976d274ad4c261ac6cfbacba028d4647ef343f338513601cc05cfe2863b7882feb945e45cb8c305c18e9df96c4c53f;
    5'b11010 : xpb = 1024'ha7599677e7086569ef91b8db63475effa69f29c79ae8f8504ac1ff7e334704e0294f471c2d592959fd4e0025ef9ee85c04b40c3a90d884095f9cc3994a362c3c996aadd09dabf5fdab81be842a5926904825fc865b75f30a8aefa6729c3420319dfdeba5c246424950923b250ff53f391589279fc6ddfa1febd65b5c418f8da9;
    5'b11011 : xpb = 1024'h70a10e19e7dda5cfe3bcd18f88d2401e85c15b834d2122eef0d5aba07748d3038c393bf372f6a684b257c2dda04961a358632645c57b8fc82626bf0869ef680180e70e9253454f2a97f8cec71e72f7d3a7af924cdf90f6a2b3e5bf3dc43b108ac50510e2a03e78a4fda4326cffb6a0c0ac4cdbfef7a50adf352451d46377efa8;
    5'b11100 : xpb = 1024'h39e885bbe8b2e635d7e7ea43ae5d213d64e38d3eff594d8d96e957c2bb4aa126ef2330cab89423af6761859550f3daeaac124050fa1e9b86ecb0ba7789a8a3c668636f5408dea857846fdf0a128cc9170739281363abfa3adcdbd808ec4200e3ec0c361f7e36af00aab629b4ef7802484310905e286c1b9e7e72484c856051a7;
    5'b11101 : xpb = 1024'h32ffd5de988269bcc1302f7d3e8025c4405befab191782c3cfd03e4ff4c6f4a520d25a1fe31a0da1c6b484d019e5431ffc15a5c2ec1a745b33ab5e6a961df8b4fdfd015be78018470e6ef4d06a69a5a66c2bdd9e7c6fdd305d1f0d41448f13d13135b5c5c2ee55c57c820fcdf3963cfd9d444bd59332c5dc7c03ec4a748b3a6;
    5'b11110 : xpb = 1024'h7d24ba55ac4b9bca8b43938309cd2acc949df3e73941434260ed695cf650ea75b83f97f20df59c9370d34a4b95a6de43b78a9c4d861783502a63f0b403ed9001abab658623a257f66ff80232939c2fceba514d38f8682e7be4549b99f67a8428692212c2eaf014458b99ff23c6caeb80bf71d7feda459a4d577db04152137c10;
    5'b11111 : xpb = 1024'h466c31f7ad20dc307f6eac372f580beb73c025a2eb796de10701157f3a52b8991b298cc9539319be25dd0d034651578b0b39b658baba8f0ef0edec2323a6cbc69327c647d93bb1235c6f127587b6011219dae2ff7c8332140d4ab4651e817481902937ffc8e84aa138abf66bb68c4d0856358c5e0b0cab0ca0cba6b973fbde0f;
    endcase
end

endmodule
