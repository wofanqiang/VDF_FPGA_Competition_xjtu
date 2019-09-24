module xpb_5_10
(
    input [5:1] data_in, 
    output [1024:1] data_out 
); 

reg [1024:1] xpb; 

assign data_out = xpb; 

always@(*) begin
    case(data_in)
    5'b00000 : xpb = 1024'h0;
    5'b00001 : xpb = 1024'h843f5835911438cfe752c5244504db33b95b841b64016bc9e25a5c8bff7fa294fb112544f300dbcac9077058de14bb8e1c7addd4fe235987d57be9213ed600033929d00cf314d0dd3dd2bc147ee6786a672e1949f2b8f0344aae588b8b043b298f24487ce3c824246651925a6d32eeb437e1d6f8db6b2957f8325cbb0878b227;
    5'b00010 : xpb = 1024'h57d16b15603a3cd703a0127179af6f1601410505f28b371c46d7ffc24bfc9821f2d9cd111bdb3906f2b0a16ad8cb6651d4db93c3d993e2c3fa5892e442d98b54fe046b6b3698a475690b758664f12ca3da5738fb58ebb357dfd01f1c5bddd3c0ef40fed016c74fbb45e33dd5e295b73f20e9cf0f668af57fa9f53e71880efde3;
    5'b00011 : xpb = 1024'h2b637df52f6040de1fed5fbeae5a02f8492685f08115026eab55a2f898798daeeaa274dd44b596431c59d27cd38211158d3c49b2b5046c001f353ca746dd16a6c2df06c97a1c780d94442ef84afbe0dd4d8058acbf1e767b74f1e5ad2cb76c584f5db52349c67b522574e95157f87fca09f1c725f1aac1a75bb8202807a5499f;
    5'b00100 : xpb = 1024'hafa2d62ac07479ae074024e2f35ede2c02820a0be5166e388dafff8497f93043e5b39a2237b6720de56142d5b196cca3a9b72787b327c587f4b125c885b316a9fc08d6d66d3148ead216eb0cc9e25947b4ae71f6b1d766afbfa03e38b7bba781de81fda02d8e9f768bc67babc52b6e7e41d39e1ecd15eaff53ea7ce3101dfbc6;
    5'b00101 : xpb = 1024'h8334e90a8f9a7db5238d72302809720e4a678af673a0398af22da2bae47625d0dd7c41ee6090cf4a0f0a73e7ac4d77676217dd768e984ec4198dcf8b89b6a1fbc0e37234b0b51c82fd4fa47eafed0d8127d791a8180a29d354c204c9889540193e9eb3f3608dcb0d6b5827273a8e37092adb96355835b72705ad5e998fb44782;
    5'b00110 : xpb = 1024'h56c6fbea5ec081bc3fdabf7d5cb405f0924d0be1022a04dd56ab45f130f31b5dd544e9ba896b2c8638b3a4f9a704222b1a7893656a08d8003e6a794e8dba2d4d85be0d92f438f01b28885df095f7c1ba9b00b1597e3cecf6e9e3cb5a596ed8b09ebb6a46938cf6a44ae9d2a2aff0ff9413e38e4be355834eb77040500f4a933e;
    5'b00111 : xpb = 1024'h2a590eca2de685c35c280cca915e99d2da328ccb90b3d02fbb28e9277d7010eacd0d9186b24589c2625cd60ba1bacceed2d949544579613c6347231191bdb89f4a98a8f137bcc3b353c117627c0275f40e29d10ae46fb01a7f0591eb2a487147fed82099c68c223b2a7b7e1e2553c81efceb86626e754f76693322068ee0defa;
    5'b01000 : xpb = 1024'hae9866ffbefabe93437ad1eed6637506938e10e6f4b53bf99d8345b37cefb37fc81eb6cba546658d2b6446647fcf887cef542729439cbac438c30c32d093b8a283c278fe2ad194909193d376fae8ee5e7557ea54d728a04ec9b3ea76b54cac718dfc6916aa54465f90cd10789286b6d334cd5d5b49e078ce61657ec197599121;
    5'b01001 : xpb = 1024'h822a79df8e20c29a5fc81f3c0b0e08e8db7391d1833f074c0200e8e9c96ca90cbfe75e97ce20c2c9550d77767a863340a7b4dd181f0d44005d9fb5f5d49743f4489d145c6e556828bccc8ce8e0f3a297e8810a063d5b63725ed5b10786264508ee191f69dd5371f6705ebbf407e97f5e1dd55571d50044f61328607816efdcdd;
    5'b01010 : xpb = 1024'h55bc8cbf5d46c6a17c156c893fb89ccb235912bc11c8d29e667e8c2015e99e99b7b00663f6fb20057eb6a888753cde0460159306fa7dcd3c827c5fb8d89acf460d77afbab1d93bc0e805465ac6fe56d15baa29b7a38e2695f3f7779856ffdda04e35d5bd10529d8d4ff0676f7d4c47e906dd4d886020111dc4eb422e96862899;
    5'b01011 : xpb = 1024'h294e9f9f2c6ccaa89862b9d6746330ad6b3e93a6a0529df0cafc2f5662669426af78ae301fd57d41a85fd99a6ff388c8187648f5d5ee5678a759097bdc9e5a97d2524b18f55d0f59133dffccad090b0aced3496909c0e9b989193e2927d97637ae528c104351c9242f8212eaf2af1073efe5459eeb3fdd4576ae23e5161c7455;
    5'b01100 : xpb = 1024'had8df7d4bd8103787fb57efab9680be1249a17c2045409baad568be261e636bbaa89d37512d6590c716749f34e08445634f126cad411b0007cd4f29d1b745a9b0b7c1b25e871e0365110bbe12bef8375360162b2fc79d9edd3c796b4b2ddb1613d76d48d2719ed4895d3a5455fe1ff2827c71c97c6ab069d6ee080a01e95267c;
    5'b01101 : xpb = 1024'h81200ab48ca7077f9c02cc47ee129fc36c7f98ac92ddd50d11d42f18ae632c48a2527b413bb0b6489b107b0548beef19ed51dcb9af82393ca1b19c601f77e5ecd056b6842bf5b3ce7c49755311fa37aea92a826462ac9d1168e95d4583b749f89d938ae05a1918df756550c0d544c7b310cf14ae51cad2c520a362569e2b7238;
    5'b01110 : xpb = 1024'h54b21d945bcd0b86b850199522bd33a5b46519972167a05f7651d24efae021d59a1b230d648b1384c4b9ac17437599dda5b292a88af2c278c68e4623237b713e953151e26f798766a7822ec4f804ebe81c53a215c8df6034fe0b23d65490e28ffdb041338d18447654f6fc3c4aa7903df9d70cc4dcea9eecd266440d1dc1bdf4;
    5'b01111 : xpb = 1024'h284430742af30f8dd49d66e25767c787fc4a9a81aff16bb1dacf7585475d176291e3cad98d6570c0ee62dd293e2c44a15e13489766634bb4eb6aefe6277efc905a0bed40b2fd5afed2bae836de0fa0218f7cc1c72f122358932cea67256a7b275dccf786c017700d3488a7b7c00a58c8e2df04db680a6b14842925c39d5809b0;
    5'b10000 : xpb = 1024'hac8388a9bc07485dbbf02c069c6ca2bbb5a61e9d13f2d77bbd29d21146dcb9f78cf4f01e80664c8bb76a4d821c41002f7a8e266c6486a53cc0e6d9076654fc939335bd4da6122bdc108da44b5cf6188bf6aadb1121cb138cdddb42f2b06eb650ecf14003a3df94319ada3a122d3d477d1ac0dbd44375946c7c5b827ea5d0bbd7;
    5'b10001 : xpb = 1024'h80159b898b2d4c64d83d7953d117369dfd8b9f87a27ca2ce21a775479359af8484bd97eaa940a9c7e1137e9416f7aaf332eedc5b3ff72e78e5c382ca6a5887e5581058abe995ff743bc65dbd4300ccc569d3fac287fdd6b072fd098381484ee84d0df656d6debfc87a6be58da2a0100803c8d3eace9560942e1e643525670793;
    5'b10010 : xpb = 1024'h53a7ae695a53506bf48ac6a105c1ca804571207231066e208625187ddfd6a5117c863fb6d21b07040abcafa611ae55b6eb4f924a1b67b7b50aa02c8d6e5c13371ceaf40a2d19d30c66ff172f290b80fedcfd1a73ee3099d4081ed0145221e77fad2aacaa09ddeb5f59fd91091802d892ecd0cc0159b52cbbdfe145eba4fd534f;
    5'b10011 : xpb = 1024'h2739c1492979547310d813ee3a6c5e628d56a15cbf903972eaa2bbb42c539a9e744ee782faf564403465e0b80c65007aa3b04838f6d840f12f7cd650725f9e88e1c58f68709da6a49237d0a10f16353850263a2554635cf79d4096a522fb80170d4762fd3cdd16f6398f3c848d65a11dd5d8c417e4d4f8e391a427a224939f0b;
    5'b10100 : xpb = 1024'hab79197eba8d8d42f82ad9127f71399646b225782391a53cccfd18402bd33d336f600cc7edf6400afd6d5110ea79bc08c02b260df4fb9a7904f8bf71b1359e8c1aef5f7563b27781d00a8cb58dfcada2b754536f471c4d2be7eeef30adffbb409c6bab7a20a53b1a9fe0cedefa988fd20dba9b10c040223b89d6845d2d0c5132;
    5'b10101 : xpb = 1024'h7f0b2c5e89b3914a1478265fb41bcd788e97a662b21b708f317abb76785032c06728b49416d09d4727168222e53066cc788bdbfcd06c23b529d56934b53929dddfc9fad3a7364b19fb434627740761dc2a7d7320ad4f104f7d10b5c17ed953d7fc8861cd53a466b17f727a5a6ffb585cf6c293274b5fee633b996613aca29cee;
    5'b10110 : xpb = 1024'h529d3f3e58d9955130c573ace8c6615ad67d274d40a53be195f85eacc4cd284d5ef15c603faafa8350bfb334dfe7119030ec91ebabdcacf14eb212f7b93cb52fa4a49631eaba1eb2267bff995a1216159da692d21381d37312327c524fb2ec6f5ca5182086a392485f0425d5e55e20e7dfca8b3dd67fba8aed5c47ca2c38e8aa;
    5'b10111 : xpb = 1024'h262f521e27ff99584d12c0fa1d70f53d1e62a837cf2f0733fa7601e3114a1dda56ba042c688557bf7a68e446da9dbc53e94d47da874d362d738ebcbabd404081697f31902e3df24a51b4b90b401cca4f10cfb28379b49696a75442e3208c8506bcc1ce73b9a2bddf3e95d1515ac0e972c8d28354619f86b29f1f2980abcf3466;
    5'b11000 : xpb = 1024'haa6eaa53b913d2283465861e6275d070d7be2c53333072fddcd05e6f10c9c06f51cb29715b86338a4370549fb8b277e205c825af85708fb5490aa5dbfc164084a2a9019d2152c3278f87751fbf0342b977fdcbcd6c6d86caf2029b6eab90c0304be616f09d6ae203a4e763abc7f3d82700b45a4d3d0ab00a9751863bb447e68d;
    5'b11001 : xpb = 1024'h7e00bd338839d62f50b2d36b972064531fa3ad3dc1ba3e50414e01a55d46b5fc4993d13d846090c66d1985b1b36922a5be28db9e60e118f16de74f9f0019cbd667839cfb64d696bfbac02e91a50df6f2eb26eb7ed2a049ee872461ff7c6a58c7ac02cd43d06a0d9a84790f273d56a0b1e9bc5263c82a7c32491467f233de3249;
    5'b11010 : xpb = 1024'h5192d013575fda366d0020b8cbcaf83567892e28504409a2a5cba4dba9c3ab89415c7909ad3aee0296c2b6c3ae1fcd697689918d3c51a22d92c3f962041d57282c5e3859a85a6a57e5f8e8038b18ab2c5e500b3038d30d121c4628904d43f15f0c1f839703693931640abaa2b2b9693cd2c44a7a534a4859fad749a8b3747e05;
    5'b11011 : xpb = 1024'h2524e2f32685de3d894d6e0600758c17af6eaf12decdd4f50a494811f640a116392520d5d6154b3ec06be7d5a8d6782d2eea477c17c22b69b7a0a3250820e279f138d3b7ebde3df01131a17571235f65d1792ae19f05d035b167ef211e1d89f66c3c39ea366864c8439c661e281c31c7bbcc4290de6a1481ac9a2b5f330ac9c1;
    5'b11100 : xpb = 1024'ha9643b28b79a170d70a0332a457a674b68ca332e42cf40beeca3a49df5c043ab3436461ac91627098973582e86eb33bb4b65255115e584f18d1c8c4646f6e27d2a62a3c4def30ecd4f045d89f009d7d038a7442b91bec069fc1647aca921c51ffb6082671a3088eca9edf878954f207bf3ae1989b9d53dd9a4cc881a3b837be8;
    5'b11101 : xpb = 1024'h7cf64e0886c01b148ced80777a24fb2db0afb418d1590c11512147d4423d39382bfeede6f1f08445b31c894081a1de7f03c5db3ff1560e2db1f936094afa6dceef3d3f232276e2657a3d16fbd6148c09abd063dcf7f1838d91380e3d79fb5db75b7d38ba4d2fb483897fa3f40ab1e906dcb611a044f50a01568f69d0bb19c7a4;
    5'b11110 : xpb = 1024'h508860e855e61f1ba93acdc4aecf8f0ff89535035fe2d763b59eeb0a8eba2ec523c795b31acae181dcc5ba527c588942bc26912eccc69769d6d5dfcc4efdf920b417da8165fab5fda575d06dbc1f40431ef9838e5e2446b12659d4ce4ad4f64ebb99ef0d802ee01a69114f6f8014b191c5be09b6d014d62908524b873ab01360;
    5'b11111 : xpb = 1024'h241a73c8250c2322c5881b11e37a22f2407ab5edee6ca2b61a1c8e40db3724521b903d7f43a53ebe066eeb64770f34067487471da83720a5fbb2898f5301847278f275dfa97e8995d0ae89dfa229f47c9222a33fc45709d4bb7b9b5f1bae8ee61bb6a560b32e0bb148a2faeaf5777a1caec601cd5b34a250ba152d3dba465f1c;
    endcase
end

endmodule
