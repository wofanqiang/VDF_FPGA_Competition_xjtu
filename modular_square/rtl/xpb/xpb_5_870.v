module xpb_5_870
(
    input [5:1] data_in, 
    output [1024:1] data_out 
); 

reg [1024:1] xpb; 

assign data_out = xpb; 

always@(*) begin
    case(data_in)
    5'b00000 : xpb = 1024'h0;
    5'b00001 : xpb = 1024'h1d4a7c53680c80f2ef7b3efe06ba7b398087877d8e8b03fcfc3cb8efaafe1bca11e0705672c5e2e9bce7b91f8be18d1b2ccb0f292c6d15b979921beaa737a255b79aa9e53758010c744c38bd3ccf1a24757357c4341d3febca547b7922682e8616701d6d103fe831baa9ede1b5ed693fcfac8b8cb1a3940bb151929b53267ab4;
    5'b00010 : xpb = 1024'h3a94f8a6d01901e5def67dfc0d74f673010f0efb1d1607f9f87971df55fc379423c0e0ace58bc5d379cf723f17c31a3659961e5258da2b72f32437d54e6f44ab6f3553ca6eb00218e898717a799e3448eae6af88683a7fd794a8f6f244d05d0c2ce03ada207fd0637553dbc36bdad27f9f5917196347281762a32536a64cf568;
    5'b00011 : xpb = 1024'h57df74fa382582d8ce71bcfa142f71ac81969678aba10bf6f4b62acf00fa535e35a151035851a8bd36b72b5ea3a4a75186612d7b8547412c6cb653bff5a6e70126cffdafa60803255ce4aa37b66d4e6d605a074c9c57bfc35efd726b67388b924350584730bfb8952ffdc9a521c83bbf6f05a2a614eabc2313f4b7d1f973701c;
    5'b00100 : xpb = 1024'h7529f14da03203cbbdecfbf81ae9ece6021e1df63a2c0ff3f0f2e3beabf86f284781c159cb178ba6f39ee47e2f86346cb32c3ca4b1b456e5e6486faa9cde8956de6aa794dd600431d130e2f4f33c6891d5cd5f10d074ffaf2951ede489a0ba1859c075b440ffa0c6eaa7b786d7b5a4ff3eb22e32c68e502ec5464a6d4c99ead0;
    5'b00101 : xpb = 1024'h92746da1083e84bead683af621a4681f82a5a573c8b713f0ed2f9cae56f68af2596231b03ddd6e90b0869d9dbb67c187dff74bcdde216c9f5fda8b9544162bac9605517a14b8053e457d1bb2300b82b64b40b6d504923f9af3a6695dac08e89e70309321513f88f8a551a5688da30e3f0e5eb9bf7831e43a7697dd089fc06584;
    5'b00110 : xpb = 1024'hafbee9f4704b05b19ce379f4285ee359032d2cf1574217ede96c559e01f4a6bc6b42a206b0a3517a6d6e56bd47494ea30cc25af70a8e8258d96ca77feb4dce024d9ffb5f4c10064ab9c9546f6cda9cdac0b40e9938af7f86bdfae4d6ce71172486a0b08e617f712a5ffb934a4390777ede0b454c29d5784627e96fa3f2e6e038;
    5'b00111 : xpb = 1024'h1c5c20f2166951dbc159411b1ebf1741123eb13e10557b7367cc5537f9f0157e79da94e45942b5d58af7d095efcccaf3d573423a1448c7c6a25f840c57b2fba690eb7095d3d70a121b7b8a8a10cdf2ce42226cc4e0469261d2c2ce5536aea3186e093bd1c0f660ce93e59a4d01adba955eddf1f68b2daf2192cb873abd2af481;
    5'b01000 : xpb = 1024'h39a69d457e75d2ceb0d480192579927a92c638bb9ee07f7064090e27a4ee31488bbb053acc0898bf47df89b57bae580f023e516340b5dd801bf19ff6feea9dfc48861a7b0b2f0b1e8fc7c3474d9d0cf2b795c4891463d24d9d1749ce5916d19e8479593ed13649004e8f882eb79b23d52e8a7d833cd1432d441d19d610516f35;
    5'b01001 : xpb = 1024'h56f11998e68253c1a04fbf172c340db4134dc0392d6b836d6045c7174fec4d129d9b75913ece7ba904c742d5078fe52a2f09608c6d22f3399583bbe1a62240520020c46042870c2b0413fc048a6c27172d091c4d48811239676bc5477b7f00249ae976abe1763132093976106d888d14fe37090fee74d738f56eac716377e9e9;
    5'b01010 : xpb = 1024'h743b95ec4e8ed4b48fcafe1532ee88ed93d547b6bbf6876a5c828006faea68dcaf7be5e7b1945e92c1aefbf4937172455bd46fb5999008f30f15d7cc4d59e2a7b7bb6e4579df0d37786034c1c73b413ba27c74117c9e522531c040c09de72eaab1599418f1b61963c3e363f22375f654cde3949ca0186b44a6c03f0cb69e649d;
    5'b01011 : xpb = 1024'h9186123fb69b55a77f463d1339a90427145ccf344a818b6758bf38f6a5e884a6c15c563e245a417c7e96b5141f52ff60889f7edec5fd1eac88a7f3b6f49184fd6f56182ab1370e43ecac6d7f040a5b6017efcbd5b0bb9210fc14bc39c04f5d30c7c9b18601f601957e8d51d3d9635f949d90202951bbff505811d1a809c4df51;
    5'b01100 : xpb = 1024'haed08e931ea7d69a6ec17c1140637f6094e456b1d90c8f6454fbf1e650e6a070d33cc694972024663b7e6e33ab348c7bb56a8e07f26a3466023a0fa19bc9275326f0c20fe88f0f5060f8a63c40d975848d632399e4d8d1fcc66937b2e2b78bb6de39cef31235e9c739373fb58f50c8d46d3cabb6035f935c096364435ceb5a05;
    5'b01101 : xpb = 1024'h1b6dc590c4c622c49337433836c3b348a3f5dafe921ff2e9d35bf18048e20f32e1d4b9723fbf88c15907e80c53b808cc7e1b754afc2479d3cb2cec2e082e54f76a3c374670561317c2aadc56e4cccb780ed181c58c6fe4d7db3121314af517aac5a25a3671acd96b6d2146b84d6e0beaee0f586064b7ca3774457bda272f6e4e;
    5'b01110 : xpb = 1024'h38b841e42cd2a3b782b282363d7e2e82247d627c20aaf6e6cf98aa6ff3e02afcf3b529c8b2856bab15efa12bdf9995e7aae6847428918f8d44bf0818af65f74d21d6e12ba7ae142436f71514219be59c8444d989c08d24c3a5859caa6d5d4630dc1277a381ecc19d27cb349a035b752abdbbe3ed165b5e4325970e757a55e902;
    5'b01111 : xpb = 1024'h5602be3794df24aa722dc1344438a9bba504e9f9af35fae3cbd5635f9ede46c705959a1f254b4e94d2d75a4b6b7b2302d7b1939d54fea546be512403569d99a2d9718b10df061530ab434dd15e6affc0f9b8314df4aa64af6fda18238fc574b6f2829510922ca9cee275227bb948de6a8d686f79c7fef24ed6e8a110cd7c63b6;
    5'b10000 : xpb = 1024'h734d3a8afceba59d61a900324af324f5258c71773dc0fee0c8121c4f49dc629117760a759811317e8fbf136af75cb01e047ca2c6816bbb0037e33fedfdd53bf8910c34f6165e163d1f8f868e9b3a19e56f2b891228c7a49b3a2e939cb22da33d08f2b27da26c92009d1f105d6f3647aa5d14fb0679a2865a883a33ac20a2de6a;
    5'b10001 : xpb = 1024'h9097b6de64f8269051243f3051ada02ea613f8f4cc4c02ddc44ed53ef4da7e5b29567acc0ad714684ca6cc8a833e3d393147b1efadd8d0b9b1755bd8a50cde4e48a6dedb4db6174993dbbf4bd8093409e49ee0d65ce4e48704830f15d495d1c31f62cfeab2ac7a3257c8fe3f2523b0ea2cc186932b461a66398bc64773c9591e;
    5'b10010 : xpb = 1024'hade23331cd04a783409f7e2e58681b68269b80725ad706dac08b8e2e9fd89a253b36eb227d9cf752098e85aa0f1fca545e12c118da45e6732b0777c34c4480a4004188c0850e18560827f80914d84e2e5a12389a91022472ced78a8ef6fe004935d2ed57c2ec62641272ec20db111a29fc6e121fdce9ae71eadd58e2c6efd3d2;
    5'b10011 : xpb = 1024'h1a7f6a2f7322f3ad651545554ec84f5035ad04bf13ea6a603eeb8dc897d408e749cede00263c5bad2717ff82b7a346a526c3a85be4002be0f3fa544fb8a9ae48438cfdf70cd51c1d69da2e23b8cba421db8096c63899374de39f740d5f3b8c3d1d3b789b22635208465cf323992e5d407d40beca3e41e54d55bf70799133e81b;
    5'b10100 : xpb = 1024'h37c9e682db2f74a0549084535582ca89b6348c3ca2756e5d3b2846b842d224b15baf4e5699023e96e3ffb8a24384d3c0538eb785106d419a6d8c703a5fe1509dfb27a7dc442d1d29de2666e0f59abe4650f3ee8a6cb67739adf3ef8681a3bac333ab960832a33a3a0106e1054f1bc6804ced4a56efe5795907110314e45a62cf;
    5'b10101 : xpb = 1024'h551462d6433bf593440bc3515c3d45c336bc13ba3100725a3764ffa7edd0407b6d8fbead0bc82180a0e771c1cf6660db8059c6ae3cda5753e71e8c250718f2f3b2c251c17b851e3652729f9e3269d86ac667464ea0d3b72578486affa40be9494a1bb37542e3226bbbb0cee705092fc01c99d5e3a1890d64b86295b03780dd83;
    5'b10110 : xpb = 1024'h725edf29ab4876863387024f62f7c0fcb7439b37bf8b765733a1b89798ce5c457f702f037e8e046a5dcf2ae15b47edf6ad24d5d769476d0d60b0a80fae5095496a5cfba6b2dd1f42c6bed85b6f38f28f3bda9e12d4f0f711429ce678c67417cf608bd0e253230a9d765abcc8baf698ffec466170532ca17069b4284b8aa75837;
    5'b10111 : xpb = 1024'h8fa95b7d1354f7792302414d69b23c3637cb22b54e167a542fde718743cc780f91509f59f153e7541ab6e400e7297b11d9efe50095b482c6da42c3fa5588379f21f7a58bea35204f3b0b1118ac080cb3b14df5d7090e36fd0cf161f1e8dc465576fbee4f6362f2cf3104aaaa70e4023fbbf2ecfd04d0357c1b05bae6ddcdd2eb;
    5'b11000 : xpb = 1024'hacf3d7d07b61786c127d804b706cb76fb852aa32dca17e512c1b2a76eeca93d9a3310fb06419ca3dd79e9d20730b082d06baf429c221988053d4dfe4fcbfd9f4d9924f71218d215baf5749d5e8d726d826c14d9b3d2b76e8d745dd6b0b4474db8d6c0bbc73a2db00ebae988c26d16b7f8b9f7889b673c987cc574d8230f44d9f;
    5'b11001 : xpb = 1024'h19910ece217fc49636f3477266cceb57c7642e7f95b4e1d6aa7b2a10e6c6029bb1c9028e0cb92e98f52816f91b8e847dcf6bdb6ccbdbddee1cc7bc71692507991cddc4a7a954252311097ff08cca7ccba82fabc6e4c289c3ec0dc6e9738200cf74d496ffd319caa51f989f8ee4eeae960c72253417cc006337396518fb3861e8;
    5'b11010 : xpb = 1024'h36db8b21898c4589266e86706d87669147ebb5fd243fe5d3a6b7e30091c41e65c3a972e47f7f1182b20fd018a7701198fc36ea95f848f3a79659d85c105ca9eed4786e8ce0ac262f8555b8adc99996f01da3038b18dfc9afb662426295ea2f558b44b46ce359b2d6da428d709adc17d5dc1eb0c0c96f946ee88af7b44e5edc9c;
    5'b11011 : xpb = 1024'h54260774f198c67c15e9c56e7441e1cac8733d7ab2cae9d0a2f49bf03cc23a2fd589e33af244f46c6ef7893833519eb42901f9bf24b609610febf446b7944c448c1318721804273bf9a1f16b0668b11493165b4f4cfd099b80b6bddbb8525ddba1b4d1d9f3999b0894ec7b5250c98115abcb3c4d7b13287a99dc8a4fa1855750;
    5'b11100 : xpb = 1024'h717083c859a5476f0565046c7afc5d0448fac4f84155edcd9f3154dfe7c055f9e76a5391650ad7562bdf4257bf332bcf55cd08e851231f1a897e10315ecbee9a43adc2574f5c28486dee2a284337cb390889b313811a49874b0b3954daba8c61b824ef4703d9833a4f96693406b6ea557b77c7da2cb6bc864b2e1ceaf4abd204;
    5'b11101 : xpb = 1024'h8ebb001bc1b1c861f4e0436a81b6d83dc9824c75cfe0f1ca9b6e0dcf92be71c3f94ac3e7d7d0ba3fe8c6fb774b14b8ea829818117d9034d403102c1c060390effb486c3c86b42954e23a62e58006e55d7dfd0ad7b5378973155fb4cdfd22bae7ce950cb414196b6c0a405715bca453954b245366de5a5091fc7faf8647d24cb8;
    5'b11110 : xpb = 1024'hac057c6f29be4954e45b8268887153774a09d3f35e6bf5c797aac6bf3dbc8d8e0b2b343e4a969d29a5aeb496d6f64605af63273aa9fd4a8d7ca24806ad3b3345b2e31621be0c2a6156869ba2bcd5ff81f370629be954c95edfb430471f8ae96de5052a212459539dc4ea44f77291bcd51ad0def38ffde49dadd142219af8c76c;
    5'b11111 : xpb = 1024'h18a2b36ccfdc957f08d1498f7ed1875f591b5840177f594d160ac65935b7fc5019c3271bf3360184c3382e6f7f79c25678140e7db3b78ffb4595249319a060e9f62e8b5845d32e28b838d1bd60c9557574dec0c790ebdc39f47c19c587c87561cc6db56483d04341f8d44bfa30aeffeb9ba38b9df1561b7918b359b8653cdbb5;
    endcase
end

endmodule
