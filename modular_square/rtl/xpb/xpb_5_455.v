module xpb_5_455
(
    input [5:1] data_in, 
    output [1024:1] data_out 
); 

reg [1024:1] xpb; 

assign data_out = xpb; 

always@(*) begin
    case(data_in)
    5'b00000 : xpb = 1024'h0;
    5'b00001 : xpb = 1024'h1bb17ff4e19b62b5a8f7d48b664d98c77f48cc928ce4afcecec18144998ddfabf55387b857624dc34e4fd5aef4e7b8f32b2322205b088a063e511ffaec91870157db4f8dd3676a468b2c851d53f2d8ec2a063403a0ecb4a6ae1b6147ce5b10594eb29c5469d584d041e473370132b3cd96ca8815aac4110571b02bc82ddcb482;
    5'b00010 : xpb = 1024'h3762ffe9c336c56b51efa916cc9b318efe91992519c95f9d9d830289331bbf57eaa70f70aec49b869c9fab5de9cf71e656464440b611140c7ca23ff5d9230e02afb69f1ba6ced48d16590a3aa7e5b1d8540c680741d9694d5c36c28f9cb620b29d6538a8d3ab09a083c8e66e0265679b2d95102b5588220ae36057905bb96904;
    5'b00011 : xpb = 1024'h53147fdea4d22820fae77da232e8ca567dda65b7a6ae0f6c6c4483cdcca99f03dffa97290626e949eaef810cdeb72ad98169666111199e12baf35ff0c5b495040791eea97a363ed3a1858f57fbd88ac47e129c0ae2c61df40a5223d76b11310bec17d4fd3d808e70c5ad59a503981b68c45f9841004c33105510835889961d86;
    5'b00100 : xpb = 1024'h6ec5ffd3866d8ad6a3df522d9936631dfd23324a3392bf3b3b06051266377eafd54e1ee15d89370d393f56bbd39ee3ccac8c88816c222818f9447febb2461c055f6d3e374d9da91a2cb214754fcb63b0a818d00e83b2d29ab86d851f396c41653aca7151a75613410791ccdc04cacf365b2a2056ab104415c6c0af20b772d208;
    5'b00101 : xpb = 1024'h8a777fc86808ed8c4cd726b8ff83fbe57c6bfedcc0776f0a09c78656ffc55e5bcaa1a699b4eb84d0878f2c6ac8869cbfd7afaaa1c72ab21f37959fe69ed7a306b7488dc521051360b7de9992a3be3c9cd21f0412249f87416688e66707c751be897d0da6112b98114976401305fd8303f1f4a86c55d4551b3870dae8e54f868a;
    5'b00110 : xpb = 1024'ha628ffbd49a45041f5cefb4465d194acfbb4cb6f4d5c1ed8d889079b99533e07bff52e520c4dd293d5df0219bd6e55b302d2ccc222333c2575e6bfe18b692a080f23dd52f46c7da7430b1eaff7b11588fc253815c58c3be814a447aed6226217d82fa9fa7b011ce18b5ab34a073036d188bf308200986620aa2106b1132c3b0c;
    5'b00111 : xpb = 1024'h112d3a5c69517e2ed3c157f8bbc4e623098794d104c92e30296dcf8a7fde70abb20038919989a1c884d09881cef7fddbc9dbc6fc5a88f5e00398a07e3d283c57f2aff8321842eaa8bb9da12ab2c82a4432267280d9f2c37e0d3316fbea52cfdef7dab425340da924467f3fa21092c475d0afd9b55b1119f5d561b774b8268923;
    5'b01000 : xpb = 1024'h2cdeba514aece0e47cb92c8422127eea88d0616391adddfef82f50cf196c5057a753c049f0ebef8bd3206e30c3dfb6cef4fee91cb5917fe641e9c07929b9c3594a8b47bfebaa54ef46ca264806bb03305c2ca6847adf7824bb4e7843b8ade038468d50799de32df48863b2d911c57843677a61cb05d52afb4711e33ce6033da5;
    5'b01001 : xpb = 1024'h48903a462c88439a25b1010f886017b208192df61e928dcdc6f0d213b2fa30039ca74802484e3d4f217043dfb8c76fc220220b3d109a09ec803ae074164b4a5aa266974dbf11bf35d1f6ab655aaddc1c8632da881bcc2ccb6969d98b8708f091953fecce07b8b2c4ca48261012f82c10fe44e9e0b0993c00b8c20f0513dff227;
    5'b01010 : xpb = 1024'h6441ba3b0e23a64fcea8d59aeeadb0798761fa88ab773d9c95b253584c880faf91facfba9fb08b126fc0198eadaf28b54b452d5d6ba293f2be8c006f02dcd15bfa41e6db9279297c5d233082aea0b508b0390e8bbcb8e17217853ad3556400eae3f28922718e37950c2c9947142adfde950f71f65b5d4d062a723acd41bca6a9;
    5'b01011 : xpb = 1024'h7ff33a2fefbf090577a0aa2654fb494106aac71b385bed6b6473d49ce615ef5b874e5772f712d8d5be0fef3da296e1a876684f7dc6ab1df8fcdd2069ef6e585d521d366965e093c2e84fb5a002938df4da3f428f5da59618c5a09c1b23bf114432a52576db63bc654e110c7e155d93ac2bd9fa0c06215e0b9c2266956f995b2b;
    5'b01100 : xpb = 1024'h9ba4ba24d15a6bbb20987eb1bb48e20885f393adc5409d3a333555e17fa3cf077ca1df2b4e7526990c5fc4ec977e9a9ba18b719e21b3a7ff3b2e4064dbffdf5ea9f885f73947fe09737c3abd568666e104457692fe924abf73bbfd62f21a219d8157c1cb453941358ff57fb516904779c2a48221b0e56f110dd2925d9d760fad;
    5'b01101 : xpb = 1024'h6a8f4c3f10799a7fe8adb66113c337e93c65d0f7cadac91841a1dd0662f01ab6eace96adbb0f5cdbb515b54a90842c468946bd85a0961b9c8e021018dbef1ae8d84a0d65d1e6b0aec0ebd38119d7b9c3a46b0fe12f8d2556c4accb0064a8f64a102cbf5fe45cd784b1a0c0d1ff2d51e0a952b550b5e22e63913432142705dc4;
    5'b01110 : xpb = 1024'h225a74b8d2a2fc5da782aff17789cc46130f29a209925c6052db9f14ffbce157640071233313439109a131039deffbb793b78df8b511ebc0073140fc7a5078afe55ff0643085d551773b425565905488644ce501b3e586fc1a662df7d4a59fbdefb5684a681b52488cfe7f44212588eba15fb36ab62233ebaac36ee9704d1246;
    5'b01111 : xpb = 1024'h3e0bf4adb43e5f13507a847cddd7650d9257f63496770c2f219d2059994ac1035953f8db8a75915457f106b292d7b4aabedab019101a75c6458260f766e1ffb13d3b3ff203ed3f980267c772b9832d748e53190554d23ba2c8818f3fa300b0173e68049ed1f0d718cee2f27b22583cb9382a3b8060e644f11c739ab19e29c6c8;
    5'b10000 : xpb = 1024'h59bd74a295d9c1c8f97259084424fdd511a0c2c7235bbbfdf05ea19e32d8a0af4ea78093e1d7df17a640dc6187bf6d9de9fdd2396b22ffcc83d380f2537386b295168f7fd754a9de8d944c900d760660b8594d08f5bef049769cf087715bc0708d1aa0f33bc65be910c765b2238af086cef4c3960baa55f68e23c679cc067b4a;
    5'b10001 : xpb = 1024'h756ef4977775247ea26a2d93aa72969c90e98f59b0406bccbf2022e2cc66805b43fb084c393a2cdaf490b2107ca726911520f459c62b89d2c224a0ed40050db3ecf1df0daabc142518c0d1ad6168df4ce25f810c96aba4f024b851cf3fb6d0c9dbcd3d47a59be0b952abd8e924bda45465bf4babb66e66fbffd3f241f9e32fcc;
    5'b10010 : xpb = 1024'h9120748c591087344b62021f10c02f6410325bec3d251b9b8de1a42765f46007394e9004909c7a9e42e087bf718edf844044167a213413d90075c0e82c9694b544cd2e9b7e237e6ba3ed56cab55bb8390c65b51037985996d2d3b3170e11e1232a7fd99c0f71658994904c2025f05821fc89d3c16132780171841e0a27bfe44e;
    5'b10011 : xpb = 1024'hacd1f4813aabe9e9f459d6aa770dc82b8f7b287eca09cb6a5ca3256bff823fb32ea217bce7fec86191305d6e667698776b67389a7c3c9ddf3ec6e0e319281bb69ca87e29518ae8b22f19dbe8094e9125366be913d8850e3d80ef145edc6cf17c793275f07946ea59d674bf5727230bef93545bd70bf68906e33449d2559c98d0;
    5'b10100 : xpb = 1024'h17d62f205a5917d6d24c335ecd0119a19d4df1e08176dac1ad87ed5ae60d725720ad21fc753a97964021f3d6780040a0327032d4b4925799cc78c17fcae72e0680349908756155b3a7ac5e62c465a5e06c6d237eeceb95d3797de3abf09d5f4398dd801b3253769c91994baf30859993db45050a666f3cdc0e74fa95fa96e6e7;
    5'b10101 : xpb = 1024'h3387af153bf47a8c7b4407ea334eb2691c96be730e5b8a907c496e9f7f9b52031600a9b4cc9ce5598e71c9856ce7f9935d9354f50f9ae1a00ac9e17ab778b507d80fe89648c8bffa32d8e38018587ecc967357828dd84a7a279944f3bef86f9ce7901c6f9c28fb6cd37dbee631b84d61720f8d2011334de18025265e28739b69;
    5'b10110 : xpb = 1024'h4f392f0a1d8fdd42243bdc75999c4b309bdf8b059b403a5f4b0aefe4192931af0b54316d23ff331cdcc19f3461cfb28688b677156aa36ba6491b0175a40a3c092feb38241c302a40be05689d6c4b57b8c0798b862ec4ff20d5b4a63b8d537ff63642b8c405fe803d1562321d32eb012f08da1535bbf75ee6f1d5522656504feb;
    5'b10111 : xpb = 1024'h6aeaaefeff2b3ff7cd33b100ffe9e3f81b2857982824ea2e19cc7128b2b7115b00a7b9257b6180e02b1174e356b76b79b3d99935c5abf5ac876c2170909bc30a87c687b1ef9794874931edbac03e30a4ea7fbf89cfb1b3c783d007835bae904f84f555186fd4050d5746a554341db4fc9fa49d4b66bb6fec63857dee842d046d;
    5'b11000 : xpb = 1024'h869c2ef3e0c6a2ad762b858c66377cbf9a71242ab50999fce88df26d4c44f106f5fb40ddd2c3cea379614a924b9f246cdefcbb5620b47fb2c5bd416b7d2d4a0bdfa1d73fc2fefecdd45e72d8143109911485f38d709e686e31eb68cb2a09a0a8d3a7f16cd9a989dd992b188b355068ca366f2561117f80f1d535a9b6b209b8ef;
    5'b11001 : xpb = 1024'ha24daee8c26205631f235a17cc85158719b9f0bd41ee49cbb74f73b1e5d2d0b2eb4ec8962a261c66c7b120414086dd600a1fdd767bbd09b9040e616669bed10d377d26cd966669145f8af7f56823e27d3e8c2791118b1d14e006ca12f864b102225a8dc1437f0eaddb0f8bc236831c97cd39ad76bc4391f746e5d57edfe66d71;
    5'b11010 : xpb = 1024'hd51e987e20f334ffd15b6cc227866fd278cba1ef95b592308343ba0cc5e0356dd59d2d5b761eb9b76a2b6a952108588d128d7b0b412c37391c042031b7de35d1b0941acba3cd615d81d7a70233af738748d61fc25f1a4aad89599600c951ec9420597ebfc8b9af09634181a3fe5aa3c152a56aa16bc45cc7226864284e0bb88;
    5'b11011 : xpb = 1024'h2903697cc3aa9605a60d8b5788c5ffc4a6d586b1864008f1d6f5bce565ebe302d2ad5a8e0ec4395ec4f28c5846f83e7bfc4bf9d10f1b4d79d01161fe080f6a5e72e4913a8da4405c6349ff8d772dd0249e9395ffc6de595186b0faa7daf02f2290b8344066611fc0d8188b5141185e09abf4debfc18056d1e3d6b20ab2bd700a;
    5'b11100 : xpb = 1024'h44b4e971a545f8bb4f055fe2ef13988c261e53441324b8c0a5b73e29ff79c2aec800e24666268722134262073bdff76f276f1bf16a23d7800e6281f8f4a0f15fcabfe0c8610baaa2ee7684aacb20a910c899ca0367cb0df834cc5befa94b3f7bdf6ad094d036a49119fcfe88424b11d742bf66d56c4467d75586ddd2e09a248c;
    5'b11101 : xpb = 1024'h6066696686e15b70f7fd346e55613153a5671fd6a009688f7478bf6e9907a25abd5469febd88d4e5619237b630c7b06252923e11c52c61864cb3a1f3e1327861229b3056347314e979a309c81f1381fcf29ffe0708b7c29ee2e7bd3777a64fd52e1d6ce93a0c29615be171bf437dc5a4d989eeeb170878dcc737099b0e76d90e;
    5'b11110 : xpb = 1024'h7c17e95b687cbe26a0f508f9bbaeca1b24afec692cee185e433a40b332958206b2a7f1b714eb22a8afe20d6525af69557db560322034eb8c8b04c1eecdc3ff627a767fe407da7f3004cf8ee573065ae91ca6320aa9a4774591031e7f4601602e7cd0093da3e1ae319dc5e4f644b0797270547700c1cc89e238e735633c538d90;
    5'b11111 : xpb = 1024'h97c969504a1820dc49ecdd8521fc62e2a3f8b8fbb9d2c82d11fbc1f7cc2361b2a7fb796f6c4d706bfe31e3141a972248a8d882527b3d7592c955e1e9ba558663d251cf71db41e9768ffc1402c6f933d546ac660e4a912bec3f1e7fc7145c7087cb82a5920db73301dfaa582d45e32d40071eff166c909ae7aa97612b6a304212;
    endcase
end

endmodule
