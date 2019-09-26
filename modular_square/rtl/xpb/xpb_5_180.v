module xpb_5_180
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
    5'b00001 : xpb = 1024'h8dce0a7a50088c41cf5154ba5d7b827db85ea2c4a2252e3938d5cf069e92754e43c6f1f5d383d6f8a6e7b45956c04f972752a4ba009604d79b375491f9505d89858325a5ad743579c4fe55f14c5585568ffda33e05d8d3202b53045ae45ed5ab9bf3cd7f473cf498b3689c4ea0126c11268e4a5a39a852b108df543ea8d1f435;
    5'b00010 : xpb = 1024'h6aeecf9ede22e3bad39d319daa9cbda9ff4742586ed2bbfaf3cee4b78a223d9484456672dce12f62ae71296bca228e63ea8b218dde79396385cf69c5b7ce466196b7169cab576dae7762a93fffcf467c2bf64ce37f2b792fa11976bb0e9308c508e008d4ddb0f0a3e01151be4854b1f8fe42b5d223054831cb4f2d78c8c181ff;
    5'b00011 : xpb = 1024'h480f94c36c3d3b33d7e90e80f7bdf8d6462fe1ec3b8049bcaec7fa6875b205dac4c3daefe63e87ccb5fa9e7e3d84cd30adc39e61bc5c6def70677ef9764c2f39a7eb0793a93aa5e329c6fc8eb34907a1c7eef688f87e1f3f16dfe91b38c73bde75cc442a7424ecaf0cba072df096f7e0d5f7214a0c623db28dbf06b2e8b10fc9;
    5'b00100 : xpb = 1024'h253059e7fa5792acdc34eb6444df34028d188180082dd77e69c110196141ce2105424f6cef9be036bd841390b0e70bfd70fc1b359a3fa27b5aff942d34ca1811b91ef88aa71dde17dc2b4fdd66c2c8c763e7a02e71d0c54e8ca65b7b62fb6ef7e2b87f800a98e8ba3962bc9d98d93dc8adab8cc1f5bf3333502edfed08a09d93;
    5'b00101 : xpb = 1024'h2511f0c8871ea25e080c84792006f2ed4012113d4db654024ba25ca4cd1966745c0c3e9f8f938a0c50d88a324494aca343498097822d7074597a960f34800e9ca52e981a501164c8e8fa32c1a3c89ecffe049d3eb236b5e026ccddb8d2fa2114fa4bad5a10ce4c5660b720d411b83b0855ff839df1c28b4129eb92728902b5d;
    5'b00110 : xpb = 1024'h901f2986d87a7667afd21d01ef7bf1ac8c5fc3d8770093795d8ff4d0eb640bb58987b5dfcc7d0f996bf53cfc7b099a615b873cc378b8dbdee0cefdf2ec985e734fd60f2752754bc6538df91d66920f438fdded11f0fc3e7e2dbfd236718e77bceb988854e849d95e19740e5be12defc1abee429418c47b651b7e0d65d1621f92;
    5'b00111 : xpb = 1024'h6d3feeab6694cde0b41df9e53c9d2cd8d348636c43ae213b18890a81d6f3d3fbca062a5cd5da6803737eb20eee6bd92e1ebfb997569c106acb671326ab16474b610a001e505883fb05f24c6c1a0bd0692bd696b76a4ee48da38644969bc2aad65884c3aa7ebdd569461cc3cb897035a983a2ae0c022170e5ddede69ff151ad5c;
    5'b01000 : xpb = 1024'h4a60b3cff4af2559b869d6c889be68051a310300105baefcd3822032c2839c420a849ed9df37c06d7b08272161ce17fae1f8366b347f44f6b5ff285a69943023723df1154e3bbc2fb8569fbacd85918ec7cf405ce3a18a9d194cb6f6c5f6ddefc570ff001531d17472c5793b31b27b915b571983eb7e6666a05dbfda11413b26;
    5'b01001 : xpb = 1024'h278178f482c97cd2bcb5b3abd6dfa3316119a293dd093cbe8e7b35e3ae1364884b031356e89518d782919c33d53056c7a530b33f12627982a0973d8e281218fb8371e20c4c1ef4646abaf30980ff52b463c7ea025cf430ac8f132956f02b1109325d3a55aba5cd7f9f6e2eaad9f4c179330b84fbd4db5be762cd99143130c8f0;
    5'b01010 : xpb = 1024'h4a23e1910e3d44bc101908f2400de5da8024227a9b6ca8049744b9499a32cce8b8187d3f1f271418a1b11464892959468693012f045ae0e8b2f52c1e69001d394a5d3034a022c991d1f4658347913d9ffc093a7d646d6bc04d99bb71a5f44229f4975ab4219c98acc16e41a823707610abff073be385168253d724e512056ba;
    5'b01011 : xpb = 1024'h9270489360ec608d9052e549817c60db6060e4ec4bdbf8b9824a1a9b3835a21ccf4879c9c576483a3102c59f9f52e52b8fbbd4ccf0dbb2e62666a753dfe05f5d1a28f8a8f7766212e21d9c4980ce99308fbe36e5dc1fa9dc302ca011febe19ce3b3d432a8956be237f7f806922497372314e3acdf7e0a4192e1cc68cf9f24aef;
    5'b01100 : xpb = 1024'h6f910db7ef06b806949ec22cce9d9c07a74984801889867b3d43304c23c56a630fc6ee46ced3a0a4388c3ab212b523f852f451a0cebee77210febc879e5e48352b5ce99ff5599a479481ef9834485a562bb6e08b55724feba5f3127228f24ce7a8297e801fcaba2eac2835d8ca8bb95a0902a645e13d9999f08c9fc719e1d8b9;
    5'b01101 : xpb = 1024'h4cb1d2dc7d210f7f98ea9f101bbed733ee322413e537143cf83c45fd0f5532a9504562c3d830f90e4015afc4861762c5162cce74aca21bfdfb96d1bb5cdc310d3c90da96f33cd27c46e642e6e7c21b7bc7af8a30cec4f5fb1bb984d2532680011515b9d5b63eb639d8d0eb4872cdff41e0b711bdca9a8f1ab2fc790139d16683;
    5'b01110 : xpb = 1024'h29d298010b3b66f89d367bf368e01260351ac3a7b1e4a1feb3355badfae4faef90c3d740e18e5178479f24d6f979a191d9654b488a855089e62ee6ef1b5a19e54dc4cb8df1200ab0f94a96359b3bdca163a833d648179c0a917ff7327d5ab31a8201f52b4cb2b2450579a0b81b104529b86b7d35b3f7849b756c523b59c0f44d;
    5'b01111 : xpb = 1024'h6f35d259955be71a18258d6b6014d8c7c03633b7e922fc06e2e715ee674c335d1424bbdeaeba9e24f2899e96cdbe05e9c9dc81c68688515d0c6fc22d9d802bd5ef8bc84ef0342e5abaee9844eb59dc6ffa0dd7bc16a421a07466992a78ee633eeee3080e326ae5032225627c3528b11901fe8ad9d547a1c37dc2b7579b08217;
    5'b10000 : xpb = 1024'h94c1679fe95e4ab370d3ad91137cd00a3462060020b75df9a70440658507388415093db3be6f80daf6104e42c39c2ff5c3f06cd668fe89ed6bfe50b4d3286046e47be22a9c77785f70ad3f759b0b231d8f9e80b9c743153a32996ded8bedbbdf8ae1fe002a63a2e8e58af2766364f722b6ae3307d6fccccd40bb7fb42282764c;
    5'b10001 : xpb = 1024'h71e22cc47778a22c751f8a74609e0b367b4aa593ed64ebbb61fd5616709700ca5587b230c7ccd944fd99c35536fe6ec28728e9aa46e1be79569665e891a6491ef5afd3219a5ab094231192c44e84e4432b972a5f4095bb49a85fe04db621eef8f7ce3955c0d79ef41233a7e60ba73d0a8e629e7fc059c24e032b58ee42720416;
    5'b10010 : xpb = 1024'h4f02f1e90592f9a5796b6757adbf4662c2334527ba12797d1cf66bc75c26c910960626add12a31af05233867aa60ad8f4a61667e24c4f305412e7b1c502431f706e3c418983de8c8d575e61301fea568c78fd404b9e861591e2652ade056221264ba74ab574b9aff3edc5d55b3e982f2661709f7a9b6b7cec59b3228626191e0;
    5'b10011 : xpb = 1024'h2c23b70d93ad511e7db7443afae0818f091be4bb86c0073ed7ef817847b69156d6849b2ada878a190cacad7a1dc2ec5c0d99e35202a827912bc690500ea21acf1817b50f962120fd87da3961b578668e63887daa333b076893ecc50e0a8a552bd1a6b000edbf970a6b8512c55c2bc8da3dcb756f9313ad4f880b0b6282511faa;
    5'b10100 : xpb = 1024'h9447c3221c7a8978203211e4801bcbb5004844f536d950092e897293346599d17030fa7e3e4e2831436228c91252b28d0d26025e08b5c1d165ea583cd2003a7294ba606940459323a3e8cb068f227b3ff81274fac8dad7809b3376e34be88453e92eb5684339315982dc835046e0ec2157fe0e77c70a2d04a7ae49ca240ad74;
    5'b10101 : xpb = 1024'h971286ac71d034d9515475d8a57d3f3908632713f592c339cbbe662fd1d8ceeb5aca019db768b97bbb1dd6e5e7e57abff82504dfe12160f4b195fa15c6706130aececbac41788eabff3ce2a1b547ad0a8f7eca8db266809835063bc9191d5df0da86b8d5cb7087ae4b966483a4807ad33c0e2b41b618f581535a38db4b12a1a9;
    5'b10110 : xpb = 1024'h74334bd0ffea8c5255a052bbf29e7a654f4bc6a7c24050fb86b77be0bd6897319b48761ac0c611e5c2a74bf85b47b98cbb5d81b3bf0495809c2e0f4984ee4a08c002bca33f5bc6e0b1a135f068c16e302b7774332bb926a7aaccae294351910a4772f42b61e483b9783f19f34cc2c0bb13c296b99f75eb0215ca12156b022f73;
    5'b10111 : xpb = 1024'h515410f58e04e3cb59ec2f9f3fbfb5919634663b8eeddebd41b09191a8f85f77dbc6ea97ca236a4fca30c10acea9f8597e95fe879ce7ca0c86c6247d436c32e0d136ad9a3d3eff156405893f1c3b2f55c7701dd8a50bccb7209320896d85c423b45f2f80f8587fc4a4e7cf62f50506a2eb77023188d2e082d839eb4f8af1bd3d;
    5'b11000 : xpb = 1024'h2e74d61a1c1f3b445e380c828ce0f0bddd1d05cf5b9b6c7efca9a742948827be1c455f14d380c2b9d1ba361d420c372641ce7b5b7acafe98715e39b101ea1bb8e26a9e913b22374a1669dc8dcfb4f07b6368c77e1e5e72c6965992e997b9f73d214b6ad68ecc7bcfd19084d29d474c8ac32b6da9722fd6039aa9c489aae14b07;
    5'b11001 : xpb = 1024'hb959b3eaa3992bd6283e965da022bea2405a5632848fa40b7a2bcf38017f0045cc3d391dcde1b23d943ab2fb56e75f30506f82f58ae33245bf64ee4c0680490f39e8f8839056f7ec8ce2fdc832eb1a0ff61712397b118d60c200549c1ee2a568e37a62c254077dafe393a42458992729adfd9215b8ccb845d199dc3cad0d8d1;
    5'b11010 : xpb = 1024'h9963a5b8fa421eff31d53e20377dae67dc644827ca6e2879f0788bfa1eaa6552a08ac587b061f21c802b5f890c2ec58a2c599ce9594437fbf72da376b9b8621a7921b52de679a4f88dcc85cdcf8436f78f5f14619d89ebf6377309a4a64d00022a2b73ab6c7d6c73b1a1d690e59bfe83c16e237b95351e3565f8f20273a2cd06;
    5'b11011 : xpb = 1024'h76846add885c767836211b03849ee994234ce7bb971bb63bab71a1ab0a3a2d98e1093a04b9bf4a8687b4d49b7f910456ef9219bd37276c87e1c5b8aa78364af28a55a624e45cdd2d4030d91c82fdf81d2b57be0716dc9205ad397c04d081331b9717af0102f1687ede4a8c008dde446b99228ef37e9213b62868cb3c93925ad0;
    5'b11100 : xpb = 1024'h53a530021676cdf13a6cf7e6d1c024c06a35874f63c943fd666ab75bf5c9f5df2187ae81c31ca2f08f3e49adf2f34323b2ca9691150aa113cc5dcdde36b433ca9b89971be2401561f2952c6b3677b942c75067ac902f381522ffee64fab566350403ea569965648a0af3417036208a5370d6fa6b67ef0936ead8a476b381e89a;
    5'b11101 : xpb = 1024'h30c5f526a491256a3eb8d4ca1ee15fecb11e26e33076d1bf2163cd0ce159be25620622fecc79fb5a96c7bec0665581f076031364f2edd59fb6f5e311f5321ca2acbd8812e0234d96a4f97fb9e9f17a68634911520981de2498c660c524e9994e70f025ac2fd96095379bf6dfde62d03b488b65e3514bfeb7ad487db0d3717664;
    5'b11110 : xpb = 1024'hde6ba4b32ab7ce34304b1ad6c029b18f806c676fd245f80dc5ce2bdcce9866ba284977bd5d753c49e5133d2d9b7c0bd393b9038d0d10a2ba18df845b3b0057abdf17909de0685cb575dd3089d6b3b8dff41baf782d484340e8cd3254f1dcc67dddc6101c64d5ca06444ac4f86a51623203fd15b3aa8f4386fb856eaf361042e;
    5'b11111 : xpb = 1024'h9bb4c4c582b4092512560667c97e1d96b065693b9f498dba1532b1c46b7bfbb9e64b8971a95b2abd4538e82c30781054608e34f2d1670f033cc54cd7ad00630443749eaf8b7abb451c5c28f9e9c0c0e48f3f5e3588ad575439dfd780337ca21379d02e810d8a513917ad489e26b7823446ce1bb5745146e97897ab299c32f863;
    endcase
end

endmodule
