module xpb_5_200
(
    input [5:1] data_in, 
    output [1024:1] data_out 
); 

reg [1024:1] xpb; 

assign data_out = xpb; 

always@(*) begin
    case(data_in)
    5'b00000 : xpb = 1024'h0;
    5'b00001 : xpb = 1024'ha4fd8344b1f65a14a4f8dad22d7a5c30bfb4651cd3b8cbe607c2a37d79c113f5973fa98c33d0f5563e501e719f26bcc47f3a9fcba89991db5ca486f5ead2f424aa3980da0f81e6d1e039a1042ae0b04ac86c1d02a50cdf1e818d486b925b2295482a5c718dd40d15241ead1390e17330b7659f8e38e9798de74b031a883ced52;
    5'b00010 : xpb = 1024'h994dc133a1fe7f607eec3dcd4a9a71100df2c708d1f9f75491a88da5407f7ae32b36d59f9d7b6c1ddd41fd9c5aef68be9a5b17b12e80536b08a9ce8d9ad37397e023cd056f72d05eadd93f65bce59c649cd3406cbd93912c4d8dfedc6a8ba298614d26b96adf219cc17d734829f2c0381ff1603a218795eb88268b3087977439;
    5'b00011 : xpb = 1024'h8d9dff229206a4ac58dfa0c867ba85ef5c3128f4d03b22c31b8e77cd073de1d0bf2e01b30725e2e57c33dcc716b814b8b57b8f96b46714fab4af16254ad3f30b160e1930cf63b9eb7b78ddc74eea887e713a63d6d61a433a198eb54d42bc229b7a6ff10147ea36245edc397cc3040d3f887d20e60a25b2492902134686f1fb20;
    5'b00100 : xpb = 1024'h81ee3d11820ec9f832d303c384da9aceaa6f8ae0ce7c4e31a57461f4cdfc48be53252dc670d059ad1b25bbf1d280c0b2d09c077c3a4dd68a60b45dbcfad4727e4bf8655c2f54a37849187c28e0ef749845a18740eea0f547e58f6bbe1aeca29e9392bb4924f54aabfc3affb15c155a46f108e191f2c3cea6c9dd9b5c864c8207;
    5'b00101 : xpb = 1024'h763e7b007216ef440cc666bea1faafadf8adecccccbd79a02f5a4c1c94baafabe71c59d9da7ad074ba179b1c8e496cacebbc7f61c034981a0cb9a554aad4f1f181e2b1878f458d0516b81a8a72f460b21a08aaab0727a755b190222ef31d22a1acb5859102005f339999c5e5f526a74e5994a23ddb61eb046ab9237285a708ee;
    5'b00110 : xpb = 1024'h6a8eb8ef621f148fe6b9c9b9bf1ac48d46ec4eb8cafea50eb94036445b7916997b1385ed4425473c59097a474a1218a706dcf747461b59a9b8beecec5ad57164b7ccfdb2ef367691e457b8ec04f94ccbee6fce151fae59637d90d89fcb4da2a4c5d84fd8df0b73bb36f88c1a8e37f455c22062e9c40007620b94ab8885018fd5;
    5'b00111 : xpb = 1024'h5edef6de522739dbc0ad2cb4dc3ad96c952ab0a4c93fd07d4326206c22377d870f0ab200adcfbe03f7fb597205dac4a121fd6f2ccc021b3964c434840ad5f0d7edb749de4f27601eb1f7574d96fe38e5c2d6f17f38350b7149918f10a37e22a7defb1a20bc168842d457524f2749415d2aac2395ac9e23bfac70339e845c16bc;
    5'b01000 : xpb = 1024'h532f34cd422f5f279aa08faff95aee4be3691290c780fbebcd0c0a93e8f5e474a301de14177a34cb96ed389cc1a3709b3d1de71251e8dcc910c97c1bbad6704b23a19609af1849ab7f96f5af290324ff973e14e950bbbd7f159245817baea2aaf81de46899219cca71b61883c05a8e649337e441953c401d4d4bbbb483b69da3;
    5'b01001 : xpb = 1024'h477f72bc323784737493f2ab167b032b31a7747cc5c2275a56f1f4bbafb44b6236f90a278124ab9335df17c77d6c1c95583e5ef7d7cf9e58bccec3b36ad6efbe598be2350f0933384d369410bb0811196ba5385369426f8ce192fbf253df22ae1140aeb0762cb1520f14deb8596bdb6bfbc3a4ed7dda5c7aee2743ca8311248a;
    5'b01010 : xpb = 1024'h3bcfb0ab223fa9bf4e8755a6339b180a7fe5d668c40352c8e0d7dee37672b24fcaf0363aeacf225ad4d0f6f23934c88f735ed6dd5db65fe868d40b4b1ad76f318f762e606efa1cc51ad632724d0cfd33400c5bbd81c9219aad93b2632c0fa2b12a6378f85337c5d9ac73a4ecf27d2873644f6599667878d88f02cbe0826bab71;
    5'b01011 : xpb = 1024'h301fee9a1247cf0b287ab8a150bb2ce9ce243854c2447e376abdc90b3d31193d5ee7624e5479992273c2d61cf4fd74898e7f4ec2e39d217814d952e2cad7eea4c5607a8bceeb0651e875d0d3df11e94d14737f279a4fd3a8799468d4044022b4438643403042da6149d26b218b8e757accdb26454f1695362fde53f681c63258;
    5'b01100 : xpb = 1024'h24702c89024ff457026e1b9c6ddb41c91c629a40c085a9a5f4a3b33303ef802af2de8e61be240fea12b4b547b0c62083a99fc6a86983e307c0de9a7a7ad86e17fb4ac6b72edbefdeb6156f357116d566e8daa291b2d685b645951f44dc70a2b75ca90d880d4deee8e7313156249fc2823566e6f137b4b193d0b9dc0c8120b93f;
    5'b01101 : xpb = 1024'h18c06a77f25819a2dc617e978afb56a86aa0fc2cbec6d5147e899d5acaade71886d5ba7527ce86b1b1a694726c8ecc7dc4c03e8def6aa4976ce3e2122ad8ed8b313512e28eccd96b83b50d97031bc180bd41c5fbcb5d37c41195d5b5b4a122ba75cbd7cfea590370848ff78abdb10f899df2a79d2052cdf171956422807b4026;
    5'b01110 : xpb = 1024'hd10a866e2603eeeb654e192a81b6b87b8df5e18bd080083086f8782916c4e061acce6889178fd795098739d28577877dfe0b6737551662718e929a9dad96cfe671f5f0deebdc2f85154abf89520ad9a91a8e965e3e3e9d1dd968c268cd1a2bd8eeea217c76417f821eebdbf56c25c91067e684908f0ea4f1270ec387fd5c70d;
    5'b01111 : xpb = 1024'h160e655d268643a9048448dc53b8067071dc004bb492bf1925571aa582ab4f3aec4129bfb237440ef8a52c7e4202471fb012e58fb3827b6c4ee71418ad9ec719d09ab394eaeac851ef44a5a272599b466100ccffc6a9bdfa9974297650222c0a8116c5fa46f2c7fbf4d83f3efd3a9986f0a28f4f18f06acb34c744e7f304df4;
    5'b10000 : xpb = 1024'ha65e699a845ebe4f35411f5ff2b5dc97c6d225218f01f7d79a181527d1ebc8e94603bc282ef469972dda71398346e1367a3bce24a3d1b9922192f83775ace09647432c135e309356ff2deb5e520649ff2e7c29d2a1777afe2b248b02f75d4555f03bc8d132433994e36c310780b51cc9266fc8832a78803a9a977769076d3b46;
    5'b10001 : xpb = 1024'h9aaea7897466e39b0f34825b0fd5f1771510870d8d43234623fdff4f98aa2fd6d9fae83b989ee05ecccc50643f0f8d30955c460a29b87b21cd983fcf25ad60097d2d783ebe217ce3cccd89bfe40b361902e34d3cb9fe2d0bf7254173cf8dc559095e93190f4e4e1c80caf73c19c669d08efb892f13169c983b72ff7f06c7c22d;
    5'b10010 : xpb = 1024'h8efee578646f08e6e927e5562cf60656634ee8f98b844eb4ade3e9775f6896c46df2144f024957266bbe2f8efad8392ab07cbdefaf9f3cb1799d8766d5addf7cb317c46a1e1266709a6d282176102232d74a70a6d284df19c325f7e4a7be455c22815d60ec5962a41e29bd70b2d7b6d7f78749dafbb4b8f5dc4e879506224914;
    5'b10011 : xpb = 1024'h834f236754772e32c31b48514a161b35b18d4ae589c57a2337c9d39f2626fdb201e940626bf3cdee0ab00eb9b6a0e524cb9d35d53585fe4125a2cefe85ae5eefe90210957e034ffd680cc68308150e4cabb19410eb0b91278f26ae557feec55f3ba427a8c964772bbb8883a54be903df60130a86e452d5537d2a0fab057ccffb;
    5'b10100 : xpb = 1024'h779f6156447f537e9d0eab4c67363014ffcbacd18806a591c1afbdc6ece5649f95e06c75d59e44b5a9a1ede47269911ee6bdadbabb6cbfd0d1a8169635aede631eec5cc0ddf4398a35ac64e49a19fa668018b77b039243355b2764c6581f456254c6f1f0a66f8bb358e749d9e4fa50e6c89ecb32ccf0f1b11e0597c104d756e2;
    5'b10101 : xpb = 1024'h6bef9f45348778ca77020e47845644f44e0a0ebd8647d1004b95a7eeb3a3cb8d29d798893f48bb7d4893cd0f2e323d1901de25a0415381607dad5e2de5af5dd654d6a8ec3de52317034c03462c1ee680547fdae51c18f54327281b37304fc5656de9bc38837aa03af646100e7e0b9dee312a8bdeb58f0e0ebee11fd70431ddc9;
    5'b10110 : xpb = 1024'h603fdd34248f9e1650f57142a17659d39c4870a98488fc6ed57b92167a62327abdcec49ca8f33244e785ac39e9fae9131cfe9d85c73a42f029b2a5c595afdd498ac0f5179dd60ca3d0eba1a7be23d29a28e6fe4f349fa750f328d1a808804568870c86806085b4c293a4d643171ceaf599b64c8a9e2d2a6c5fbca7ed038c64b0;
    5'b10111 : xpb = 1024'h54901b231497c3622ae8d43dbe966eb2ea86d29582ca27dd5f617c3e4120996851c5f0b0129da90c86778b64a5c3950d381f156b4d21047fd5b7ed5d45b05cbcc0ab4142fdc6f6309e8b40095028beb3fd4e21b94d26595ebf298818e0b0c56ba02f50c83d90c94a31039c77b02e37fd02420d3686cb46ca0098300302e6eb97;
    5'b11000 : xpb = 1024'h48e05912049fe8ae04dc3738dbb6839238c53481810b534be947666607df0055e5bd1cc37c481fd425696a8f618c4107533f8d50d307c60f81bd34f4f5b0dc2ff6958d6e5db7dfbd6c2ade6ae22daacdd1b5452365ad0b6c8b2a3e89b8e1456eb9521b101a9bddd1ce6262ac493f85046acdcde26f696327a173b8190241727e;
    5'b11001 : xpb = 1024'h3d309700f4a80df9decf9a33f8d698718703966d7f4c7eba732d508dce9d674379b448d6e5f2969bc45b49ba1d54ed016e60053658ee879f2dc27c8ca5b15ba32c7fd999bda8c94a39ca7ccc743296e7a61c688d7e33bd7a572af4fa9111c571d274e557f7a6f2596bc128e0e250d20bd3598e8e58077f85424f402f019bf965;
    5'b11010 : xpb = 1024'h3180d4efe4b03345b8c2fd2f15f6ad50d541f8597d8daa28fd133ab5955bce310dab74ea4f9d0d63634d28e4d91d98fb89807d1bded5492ed9c7c42455b1db16626a25c51d99b2d7076a1b2e063783017a838bf796ba6f88232bab6b69424574eb97af9fd4b206e1091fef157b621f133be54f3a40a59be2e32ac84500f6804c;
    5'b11011 : xpb = 1024'h25d112ded4b8589192b6602a3316c23023805a457bced59786f924dd5c1a351ea1a2a0fdb947842b023f080f94e644f5a4a0f50164bc0abe85cd0bbc05b25a89985471f07d8a9c63d509b98f983c6f1b4eeaaf61af412195ef2c61dc4172c57804ba79e7b1bd1b68a67eb54a14736c1aa4710fe62943b8408406505b00510733;
    5'b11100 : xpb = 1024'h1a2150cdc4c07ddd6ca9c3255036d70f71bebc317a10010610df0f0522d89c0c3599cd1122f1faf2a130e73a50aef0efbfc16ce6eaa2cc4e31d25353b5b2d9fcce3ebe1bdd7b85f0a2a957f12a415b352351d2cbc7c7d3a3bb2d184d19a3457b1ddd442f8ec82ff043dd7b7ead84b9220cfcd09211e1d49e24e1d870ffab8e1a;
    5'b11101 : xpb = 1024'he718ebcb4c8a329469d26206d56ebeebffd1e1d78512c749ac4f92ce99702f9c990f9248c9c71ba4022c6650c779ce9dae1e4cc70898dddddd79aeb65b3597004290a473d6c6f7d7048f652bc46474ef7b8f635e04e85b1872dcebdf1d3c57e37000e776bd34477e13c41b3469606297588913dfa7ff0fbc5bd6086ff061501;
    5'b11110 : xpb = 1024'h2c1ccaba4d0c8752090891b8a7700ce0e3b8009769257e324aae354b05569e75d882537f646e881df14a58fc84048e3f6025cb1f6704f6d89dce28315b3d8e33a1356729d5d590a3de894b44e4b3368cc20199ff8d537bf532e852eca0445815022d8bf48de58ff7e9b07e7dfa75330de1451e9e31e0d596698e89cfe609be8;
    5'b11111 : xpb = 1024'ha7bf4ff056c72289c58963edb7f15cfecdefe5264a4b23c92c6d86d22a167ddcf4c7cec42a17ddd81d64c401676705a8753cfc7d9f09e148e68169790086cd07e44cd74cacdf3fdc1e2235b8792be3b3948c36a29de216ddd4bbcd9a5c5f6816984d3530d6b26614a2b9b4fb7088c6619579f1781c0786e74de3ebb7869d893a;
    endcase
end

endmodule
