module xpb_5_950
(
    input [5:1] data_in, 
    output [1024:1] data_out 
); 

reg [1024:1] xpb; 

assign data_out = xpb; 

always@(*) begin
    case(data_in)
    5'b00000 : xpb = 1024'h0;
    5'b00001 : xpb = 1024'ha091f0e70873ea99c4e3b59be468dd1b600d6d85b68c39f76fba6c1d87d6d42bbc71cbcf85b3dfc22ade4afbcd1712a7cf1d5e993b8cbf71c4f5b711b153f83eaba7166c23500b987e40a3fe890f474a917d7f4c7198f63e5978491c0d0b4a17df2881cacb039bced5b063d3bd1264a5990621c7b921eb4d62ef26f640642fe9;
    5'b00010 : xpb = 1024'h90769c784ef9a06abec1f360b87772e54ea4d7da97a0d37761981ee55caafb4f759b1a26414140f5b65e56b0b6d014853a20954c5466ae97d94c2ec527d57bcbe2fef829970f19ebe9e7455a7942ca642ef6050056abbf6bfd64003d5febf19d8f49716be53e3f1024a0e0c88254a321e33264ad21f8796a7f6ed2e7f7e5f967;
    5'b00011 : xpb = 1024'h805b4809957f563bb8a031258c8608af3d3c422f78b56cf75375d1ad317f22732ec4687cfccea22941de6265a0891662a523cbff6d409dbdeda2a6789e56ff591a56d9e70ace283f558de6b669764d7dcc6e8ab43bbe8899a14fb75eb2cc99233f6a610cff78e25173915dbd4796e19e2d5ea7928acf07879bee7ed9af67c2e5;
    5'b00100 : xpb = 1024'h703ff39adc050c0cb27e6eea60949e792bd3ac8459ca06774553847506534996e7edb6d3b85c035ccd5e6e1a8a421840102702b2861a8ce401f91e2c14d882e651aebba47e8d3692c134881259a9d09769e7106820d151c7453b6e8005ad40a8ef8b50ae19b38592c281dab20cd9201a778aea77f3a595a4b86e2acb66e98c63;
    5'b00101 : xpb = 1024'h60249f2c228ac1ddac5cacaf34a334431a6b16d93ade9ff73731373cdb2770baa117052a73e9649058de79cf73fb1a1d7b2a39659ef47c0a164f95df8b5a067389069d61f24c44e62cdb296e49dd53b1075f961c05e41af4e92725a1588de82e9fac404f33ee28d4117257a6d21b5e96c1b72d5d5c7c23c1d4edd6bd1e6b55e1;
    5'b00110 : xpb = 1024'h50094abd691077aea63aea7408b1ca0d0902812e1bf33977290eea04affb97de5a4053812f76c5c3e45e85845db41bfae62d7018b7ce6b302aa60d9301db8a00c05e7f1f660b53399881caca3a10d6caa4d81bcfeaf6e4228d12dcc2ab6e8fb44fcd2ff04e28cc156062d49b975d9d130be37042c552b1def16d82aed5ed1f5f;
    5'b00111 : xpb = 1024'h3fedf64eaf962d7fa0192838dcc05fd6f799eb82fd07d2f71aec9ccc84cfbf021369a1d7eb0426f76fde9139476d1dd85130a6cbd0a85a563efc8546785d0d8df7b660dcd9ca618d04286c262a4459e44250a183d009ad5030fe93e3fe4f3739ffee1f9168636f56af5351905c9fdb8f560fb3282e293ffc0ded2ea08d6ee8dd;
    5'b01000 : xpb = 1024'h2fd2a1dff61be35099f765fdb0cef5a0e63155d7de1c6c770cca4f9459a3e625cc92f02ea691882afb5e9cee31261fb5bc33dd7ee982497c5352fcf9eede911b2f0e429a4d896fe06fcf0d821a77dcfddfc92737b51c767dd4ea4b05512fdebfb00f0f32829e1297fe43ce8521e21a0ba03bf60d96ffce192a6cda9244f0b25b;
    5'b01001 : xpb = 1024'h1fb74d713ca1992193d5a3c284dd8b6ad4c8c02cbf3105f6fea8025c2e780d4985bc3e85621ee95e86dea8a31adf219327371432025c38a267a974ad656014a866662457c1487e33db75aede0aab60177d41aceb9a2f3fab78d60226a4108645602ffed39cd8b5d94d344b79e7245887ea6838f2ffd65c3646ec8683fc727bd9;
    5'b01010 : xpb = 1024'hf9bf90283274ef28db3e18758ec2134c3602a81a0459f76f085b524034c346d3ee58cdc1dac4a92125eb45804982370923a4ae51b3627c87bffec60dbe198359dbe061535078c87471c5039fadee3311aba329f7f4208d91cc1b947f6f12dcb1050ee74b713591a9c24c86eac66970434947bd868acea53636c3275b3f44557;
    5'b01011 : xpb = 1024'hb02de9e98b9b398c529797233d54fe50236d980756d1d96e604021418b230898fb5758aba3602a543d3cff53d1af36186157a97e56c2e73a40f5a3728d35907449651c815857981fc55cf43883ee2a7bac37b1ebf0daff17763a026403fc77e2ef79703f8216f4e971d52c426978fba9cd9a9da021ced5a0c65b596bf4587540;
    5'b01100 : xpb = 1024'ha012957ad220ef5d4c75d4e81163941a1205025c37e672ee521dd4095ff72fbcb480a7025eed8b87c8bd0b08bb6837f5cc5ae0316f9cd660554c1b2603b7140180bcfe3ecc16a673310395947421ad9549b0379fd5edc8451a25b98556dd1f689f9a5fe09c51982ac0c5a9372ebb3a2617c6e0858aa563bde2db055dabda3ebe;
    5'b01101 : xpb = 1024'h8ff7410c18a6a52e465412ace57229e4009c6cb118fb0c6e43fb86d134cb56e06da9f5591a7aecbb543d16bda52139d3375e16e48876c58669a292d97a38978eb814dffc3fd5b4c69caa36f0645530aee728bd53bb009172be1170a6a9bdc6ee4fbb4f81b68c3b6c0fb6262bf3fd78a261f3236af37bf1daff5ab14f635c083c;
    5'b01110 : xpb = 1024'h7fdbec9d5f2c5aff40325071b980bfadef33d705fa0fa5ee35d93999099f7e0426d343afd6084deedfbd22728eda3bb0a2614d97a150b4ac7df90a8cf0ba1b1bef6cc1b9b394c31a0850d84c5488b3c884a14307a0135aa061fd27c7fc9e6e73ffdc3f22d0c6dead5ea6a320b93fb71eac1f66505c527ff81bda5d411addd1ba;
    5'b01111 : xpb = 1024'h6fc0982ea5b210d03a108e368d8f5577ddcb415adb243f6e27b6ec60de73a527dffc92069195af226b3d2e2778933d8e0d64844aba2aa3d2924f8240673b9ea926c4a3772753d16d73f779a844bc36e22219c8bb852623ce05e8dee94f7f15f9affd2ec3eb0181eead9720157e81f59af64ba935c5290e15385a0932d25f9b38;
    5'b10000 : xpb = 1024'h5fa543bfec37c6a133eecbfb619deb41cc62abafbc38d8ee19949f28b347cc4b9925e05d4d231055f6bd39dc624c3f6b7867bafdd30492f8a6a5f9f3ddbd22365e1c85349b12dfc0df9e1b0434efb9fbbf924e6f6a38ecfba9d4960aa25fbd7f601e1e65053c252ffc879d0a43c434174077ec1b2dff9c3254d9b52489e164b6;
    5'b10001 : xpb = 1024'h4f89ef5132bd7c722dcd09c035ac810bbafa16049d4d726e0b7251f0881bf36f524f2eb408b07189823d45914c054148e36af1b0ebde821ebafc71a7543ea5c3957466f20ed1ee144b44bc6025233d155d0ad4234f4bb6294dc04d2bf5406505103f0e061f76c8714b7819ff090672938aa42f0096d62a4f7159611641632e34;
    5'b10010 : xpb = 1024'h3f6e9ae27943324327ab478509bb16d5a99180597e620bedfd5004b85cf01a930b787d0ac43dd2bd0dbd514635be43264e6e286404b87144cf52e95acac02950cccc48af8290fc67b6eb5dbc1556c02efa8359d7345e7f56f1ac044d48210c8ac05ffda739b16bb29a6896f3ce48b10fd4d071e5ffacb86c8dd90d07f8e4f7b2;
    5'b10011 : xpb = 1024'h2f534673bfc8e81421898549ddc9ac9f9828eaae5f76a56def2db78031c441b6c4a1cb617fcb33f0993d5cfb1f774503b9715f171d92606ae3a9610e4141acde04242a6cf6500abb2291ff18058a434897fbdf8b197148849597bb6e9b01b4107080ed4853ec0ef3e95913e8938aef8c1efcb4cb68834689aa58b8f9b066c130;
    5'b10100 : xpb = 1024'h1f37f205064e9de51b67c30eb1d8426986c05503408b3eede10b6a48069868da7dcb19b83b58952424bd68b0093046e1247495ca366c4f90f7ffd8c1b7c3306b3b7c0c2a6a0f190e8e38a073f5bdc6623574653efe8411b23983728fede25b9620a1dce96e26b235384990dd58cd2e086928f7b0d159d4a6c6d864eb67e88aae;
    5'b10101 : xpb = 1024'hf1c9d964cd453b6154600d385e6d8337557bf58219fd86dd2e91d0fdb6c8ffe36f4680ef6e5f657b03d7464f2e948be8f77cc7d4f463eb70c5650752e44b3f872d3ede7ddce2761f9df41cfe5f1497bd2eceaf2e396dadfdd6f29b140c3031bd0c2cc8a88615576873a0dd21e0f6c84b3553a963a3062c3e35810dd1f6a542c;
    5'b10110 : xpb = 1024'hafae8e7d55483e4fda29b66f6a4fb54ed5652cddd82c126542a3892d63436429f36633de7c99d619db1bbf60c0005b665e952b168ad2fe28d14c0786df98ac371e7b0454011e32fa781fe5ce6f0090c6646a6a3f552fd11e36e772cd4dce4d33afeb4e555364f1455cea71a5db21d12a4c5b5c5df3524e11464737d35fce8415;
    5'b10111 : xpb = 1024'h9f933a0e9bcdf420d407f4343e5e4b18c3fc9732b940abe534813bf538178b4dac8f82353827374d669bcb15a9b95d43c99861c9a3aced4ee5a27f3a561a2fc455d2e61174dd414de3c6872a5f3413e001e2eff33a429a4bdad329eea0aef4b9600c3df66d9f9486abdaee9aa0640fa696879f435c28dc2e62c6e3c517504d93;
    5'b11000 : xpb = 1024'h8f77e59fe253a9f1cde631f9126ce0e2b29401879a554565265eeebd0cebb27165b8d08bf3b49880f21bd6ca93725f21349b987cbc86dc74f9f8f6edcc9bb3518d2ac7cee89c4fa14f6d28864f6796f99f5b75a71f5563797ebee10ff38f9c3f102d2d9787da37c7facb6b8f65a64e22e0b3e228c4ff6a4b7f468fb6ced21711;
    5'b11001 : xpb = 1024'h7f5c913128d95fc2c7c46fbde67b76aca12b6bdc7b69dee5183ca184e1bfd9951ee21ee2af41f9b47d9be27f7d2b60fe9f9ecf2fd560cb9b0e4f6ea1431d36dec482a98c5c5b5df4bb13c9e23f9b1a133cd3fb5b04682ca722aa9831467043c4c04e1d38a214db0949bbe8842ae88c9f2ae0250e2dd5f8689bc63ba88653e08f;
    5'b11010 : xpb = 1024'h6f413cc26f5f1593c1a2ad82ba8a0c768fc2d6315c7e78650a1a544cb69400b8d80b6d396acf5ae8091bee3466e462dc0aa205e2ee3abac122a5e654b99eba6bfbda8b49d01a6c4826ba6b3e2fce9d2cda4c810ee97af5d4c6964f529950eb4a706f0cd9bc4f7e4a98ac6578f02acb1b750c67f396ac8685b845e79a3dd5aa0d;
    5'b11011 : xpb = 1024'h5f25e853b5e4cb64bb80eb478e98a2407e5a40863d9311e4fbf807148b6827dc9134bb90265cbc1b949bf9e9509d64b975a53c960714a9e736fc5e0830203df933326d0743d97a9b92610c9a2002204677c506c2ce8dbf026a820673ec3192d0208ffc7ad68a218be79ce26db56d0997bf38aad8ff8314a2d4c5938bf557738b;
    5'b11100 : xpb = 1024'h4f0a93e4fc6a8135b55f290c62a7380a6cf1aadb1ea7ab64edd5b9dc603c4f004a5e09e6e1ea1d4f201c059e3a566696e0a873491fee990d4b52d5bba6a1c1866a8a4ec4b79888eefe07adf61035a360153d8c76b3a088300e6dbd953f123a55d0b0ec1bf0c4c4cd368d5f627aaf48140964edbe6859a2bff1453f7dacd93d09;
    5'b11101 : xpb = 1024'h3eef3f7642f03706af3d66d136b5cdd45b89152fffbc44e4dfb36ca4351076240387583d9d777e82ab9c1153240f68744baba9fc38c888335fa94d6f1d234513a1e230822b57974269ae4f5200692679b2b6122a98b3515db25974b691f2e1db80d1dbbd0aff680e857ddc573ff18690539130a3d13030dd0dc4eb6f645b0687;
    5'b11110 : xpb = 1024'h2ed3eb078975ecd7a91ba4960ac4639e4a207f84e0d0de64d1911f6c09e49d47bcb0a6945904dfb6371c1d080dc86a51b6aee0af51a2775973ffc52293a4c8a0d93a123f9f16a595d554f0adf09ca993502e97de7dc61a8b56452bd7e4d3896130f2cb5e253a0b4fd46e594c0533c50c9dbd73893a06befa2a4497611bdcd005;
    5'b11111 : xpb = 1024'h1eb89698cffba2a8a2f9e25aded2f96838b7e9d9c1e577e4c36ed233deb8c46b75d9f4eb149240e9c29c28bcf7816c2f21b217626a7c667f88563cd60a264c2e1091f3fd12d5b3e940fb9209e0d02caceda71d9262d8e3b8fa30e2f937b430e6e113baff3f74ae91235ed640ca760388e7e9b66ea2dd4d1746c44352d35e9983;
    endcase
end

endmodule
