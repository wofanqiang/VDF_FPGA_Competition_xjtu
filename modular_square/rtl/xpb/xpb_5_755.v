module xpb_5_755
(
    input [5:1] data_in, 
    output [1024:1] data_out 
); 

reg [1024:1] xpb; 

assign data_out = xpb; 

always@(*) begin
    case(data_in)
    5'b00000 : xpb = 1024'h0;
    5'b00001 : xpb = 1024'h232f59efc3b247928e04fb550c6ecf7713fb399ac18bff683029aedb2f62de640e35e33d25b153445455bfd0421dfa146e668cca3112e54db9dee9848774ed0214eaa530f1c9f50d1af4ef404c27267a2e87c5db0a5847d8247b718f7fe00d170611829018f1325e5e9fc93daa67c468636a3255be7d3a0555ab926bcc059cb7;
    5'b00010 : xpb = 1024'h465eb3df87648f251c09f6aa18dd9eee27f673358317fed060535db65ec5bcc81c6bc67a4b62a688a8ab7fa0843bf428dccd19946225ca9b73bdd3090ee9da0429d54a61e393ea1a35e9de80984e4cf45d0f8bb614b08fb048f6e31effc01a2e0c23052031e264bcbd3f927b54cf88d0c6d464ab7cfa740aab5724d7980b396e;
    5'b00011 : xpb = 1024'h698e0dcf4b16d6b7aa0ef1ff254c6e653bf1acd044a3fe38907d0c918e289b2c2aa1a9b77113f9ccfd013f70c659ee3d4b33a65e9338afe92d9cbc8d965ec7063ebfef92d55ddf2750decdc0e475736e8b9751911f08d7886d7254ae7fa02745123487b04ad3971b1bdf5bb8ff374d392a3e97013b77ae100102b7436410d625;
    5'b00100 : xpb = 1024'h8cbd67bf0ec91e4a3813ed5431bb3ddc4fece66b062ffda0c0a6bb6cbd8b799038d78cf496c54d115156ff410877e851b99a3328c44b9536e77ba6121dd3b40853aa94c3c727d4346bd3bd01309c99e8ba1f176c29611f6091edc63dff80345c18460a4063c4c9797a7f24f6a99f11a18da8c956f9f4e81556ae49af301672dc;
    5'b00101 : xpb = 1024'hafecc1aed27b65dcc618e8a93e2a0d5363e82005c7bbfd08f0d06a47ecee57f4470d7031bc76a055a5acbf114a95e2662800bff2f55e7a84a15a8f96a548a10a689539f4b8f1c94186c8ac417cc3c062e8a6dd4733b96738b66937cd7f6041731e578cd07cb5fbd7d91eee345406d609f112fbacb872221aac59dc1afc1c0f93;
    5'b00110 : xpb = 1024'h226ed648d43f78a689186c273a3e9579066d566fb3d05bf9a31d5fcd694e895051fad5f61801750b5aa43f9aa955cbb0324d24d703be8f86aa9a39bcf1eb195b0930aa76fb2ac1098f2398df300f22ac2329a989b18b8200255817624515abf7f5617d36e4de35a8b0fed093069e744905a34f2026a3feefbb95f3823f3f45df;
    5'b00111 : xpb = 1024'h459e303897f1c039171d677c46ad64f01a68900a755c5b61d3470ea898b167b46030b9333db2c84faef9ff6aeb73c5c4a0b3b1a134d174d4647923417960065d1e1b4fa7ecf4b616aa18881f7c36492651b16f64bbe3c9d849d388f1c4f5b90efb72ffc6fdcf68070f9e99d0b10638b1690d8175e52138f5114185ee0b44e296;
    5'b01000 : xpb = 1024'h68cd8a285ba407cba52262d1531c34672e63c9a536e85aca0370bd83c81446186e669c7063641b94034fbf3b2d91bfd90f1a3e6b65e45a221e580cc600d4f35f3305f4d8debeab23c50d775fc85d6fa08039353fc63c11b06e4efa8144d5c6260184825716c09a656e3e630e5b6dfd19cc77b3cba39e72fa66ed1859d74a7f4d;
    5'b01001 : xpb = 1024'h8bfce4181f564f5e33275e265f8b03de425f033ff8745a32339a6c5ef777247c7c9c7fad89156ed857a57f0b6fafb9ed7d80cb3596f73f6fd836f64a8849e06147f09a09d088a030e00266a01484961aaec0fb1ad094598892ca6c10c4b5d33d079604e72fb1ccc3ccde2c4c05d5c1822fe1e621621bacffbc98aac5a3501c04;
    5'b01010 : xpb = 1024'haf2c3e07e30896f0c12c597b6bf9d355565a3cdaba00599a63c41b3a26da02e08ad262eaaec6c21cabfb3edbb1cdb401ebe757ffc80a24bd9215dfcf0fbecd635cdb3f3ac252953dfaf755e060abbc94dd48c0f5daeca160b745dda04495e0540da7877748a2ff222b7df589b03d85ea934c18772098e70512443d316f55b8bb;
    5'b01011 : xpb = 1024'h21ae52a1e4cca9ba842bdcf9680e5b7af8df7344a614b88b161110bfa33a343c95bfc8af0a5196d260f2bf65108d9d4bf633bce3d66a39bf9b5589f55c6145b3fd76afbd048b8d060352427e13f71ede17cb8d3858bebc282634bd350a4b4ad8e4b177ddb0cb38f3035dd7e862d52429a7dc6bea8ecac3da21805498b278ef07;
    5'b01100 : xpb = 1024'h44ddac91a87ef14d1230d84e747d2af20cdaacdf67a0b7f3463abf9ad29d12a0a3f5abec3002ea16b5487f3552ab9760649a49ae077d1f0d55347379e3d632b6126154edf65582131e4731be601e455846535313631704004ab02ec48a2b57efeac2fa6dc9bc6b5161fda1260d3ce8920b469e404d47fddf772be7047e7e8bbe;
    5'b01101 : xpb = 1024'h680d06816c3138dfa035d3a380ebfa6920d5e67a292cb75b76646e7601fff104b22b8f2955b43d5b099e3f0594c99174d300d6783890045b0f135cfe6b4b1fb8274bfa1ee81f7720393c20feac456bd274db18ee6d6f4bd86f2ba0540a0b6506f0d47cfde2ad9dafc09d6a63b7a4acfa6eb0d0960bc537e4ccd779704a842875;
    5'b01110 : xpb = 1024'h8b3c60712fe380722e3acef88d5ac9e034d12014eab8b6c3a68e1d513162cf68c06172667b65909f5df3fed5d6e78b894167634269a2e9a8c8f24682f2c00cba3c369f4fd9e96c2d5431103ef86c924ca362dec977c793b093a711e389eb721df6e5ff8dfb9ed00e1f3d33a1620c7162d21b02ebca4271ea22830bdc1689c52c;
    5'b01111 : xpb = 1024'hae6bba60f395c804bc3fca4d99c9995748cc59afac44b62bd6b7cc2c60c5adccce9755a3a116e3e3b249bea61905859dafcdf00c9ab5cef682d130077a34f9bc51214480cbb3613a6f25ff7f4493b8c6d1eaa4a4821fdb88b822837309cb7f34fcf7821e1490026c7ddcfcdf0c7435cb3585354188bfabef782e9e47e28f61e3;
    5'b10000 : xpb = 1024'h20edcefaf559dace7f3f4dcb95de217ceb5190199859151c8904c1b1dd25df28d984bb67fca1b89967413f2f77c56ee7ba1a54f0a915e3f88c10da2dc6d7720cf1bcb5030dec59027780ec1cf7df1b100c6d70e6fff1f65027116307cf80e9b9d40172847cb83c3d55bcdf3dbf0bd40a4a1588b4f6f188c4876ab5af25b2982f;
    5'b10001 : xpb = 1024'h441d28eab90c22610d444920a24cf0f3ff4cc9b459e51484b92e708d0c88bd8ce7ba9ea522530bddbb96feffb9e368fc2880e1bada28c94645efc3b24e4c5f0f06a75a33ffb64e0f9275db5d4406418a3af536c20a4a3e284b8cd4974f60f6d0da12f51495a96e9bb45ca87b69739872ad7fbb0ab56ec2c9dd16481af1b834e6;
    5'b10010 : xpb = 1024'h674c82da7cbe69f39b494475aebbc06b1348034f1b7113ece9581f683beb9bf0f5f081e248045f220fecbecffc01631096e76e850b3bae93ffcead36d5c14c111b91ff64f180431cad6aca9d902d6804697cfc9d14a2860070084626cf4103e7e02477a4ae9aa0fa12fc71b913db5cdb10e9ed6073ebfccf32c1da86bdbdd19d;
    5'b10011 : xpb = 1024'h8a7bdcca4070b186294e3fcabb2a8fe227433ce9dcfd13551981ce436b4e7a550426651f6db5b26664427ea03e1f5d25054dfb4f3c4e93e1b9ad96bb5d363913307ca495e34a3829c85fb9dddc548e7e9804c2781efacdd89483b7b64f2110fee635fa34c78bd358719c3af6be43214374541fb6326936d4886d6cf289c36e54;
    5'b10100 : xpb = 1024'hadab36ba0422f918b7533b1fc7995f593b3e76849e8912bd49ab7d1e9ab158b9125c485c936705aab8983e70803d573973b488196d61792f738c803fe4ab2615456749c6d5142d36e354a91e287bb4f8c68c8853295315b0b8ff2945cf011e15ec477cc4e07d05b6d03c043468aae5abd7be520bf0e670d9de18ff5e55c90b0b;
    5'b10101 : xpb = 1024'h202d4b5405e70be27a52be9dc3ade77eddc3acee8a9d71adfbf872a417118a151d49ae20eef1da606d8fbef9defd40837e00ecfd7bc18e317ccc2a66314d9e65e602ba49174d24feebaf95bbdbc71742010f5495a725307827ee08da94b6889ac3516d2b48a53f87a81be6931b4283eaec4ea57f5f184daeed5516c598ec4157;
    5'b10110 : xpb = 1024'h435ca543c99953750857b9f2d01cb6f5f1bee6894c2971162c22217f467468792b7f915e14a32da4c1e57eca211b3a97ec6779c7acd4737f36ab13eab8c28b67faed5f7a09171a0c06a484fc27ee3dbc2f971a70b17d78504c697a6a149695b1c962efbb619671e606bbafd0c5aa48534fb8d7d51d9587b44300a93164f1de0e;
    5'b10111 : xpb = 1024'h668bff338d4b9b07965cb547dc8b866d05ba20240db5707e5c4bd05a75d746dd39b5749b3a5480e9163b3e9a633934ac5ace0691dde758ccf089fd6f4037786a0fd804aafae10f192199743c741564365e1ee04bbbd5c02870e4ebf99476a2c8cf74724b7a87a444655b790e70120cbbb3230a2adc12c1b998ac3b9d30f77ac5;
    5'b11000 : xpb = 1024'h89bb592350fde29a2461b09ce8fa55e419b559becf416fe68c757f35a53a254147eb57d86005d42d6a90fe6aa5572ec0c934935c0efa3e1aaa68e6f3c7ac656c24c2a9dbecab04263c8e637cc03c8ab08ca6a626c62e080095605d891456afdfd585f4db9378d6a2c3fb424c1a79d124168d3c809a8ffbbeee57ce08fcfd177c;
    5'b11001 : xpb = 1024'haceab31314b02a2cb266abf1f569255b2db0935990cd6f4ebc9f2e10d49d03a556213b1585b72771bee6be3ae77528d5379b2026400d23686447d0784f21526e39ad4f0cde74f933578352bd0c63b12abb2e6c01d0864fd8b9dbcf189436bcf6db97776bac6a0901229b0b89c4e1958c79f76ed6590d35c444036074c902b433;
    5'b11010 : xpb = 1024'h1f6cc7ad16743cf675662f6ff17dad80d035c9c37ce1ce3f6eec239650fd3501610ea0d9e141fc2773de3ec44635121f41e7850a4e6d386a6d877a9e9bc3cabeda48bf8f20adf0fb5fde3f5abfaf1373f5b138444e586aa028caaead59ec277bb2a167d2149242d1fa7aede8777933cb8e87c249c73f1299533f77dc0c25ea7f;
    5'b11011 : xpb = 1024'h429c219cda268489036b2ac4fdec7cf7e431035e3e6dcda79f15d271806013656f44841706f34f6bc833fe9488530c33b04e11d47f801db8276664232338b7c0ef3364c01277e6087ad32e9b0bd639ee2438fe1f58b0b2784d46203cd9cc3492b8b2ea622d837530591ab72621e0f833f1f1f49f85bc4c9ea8eb0a47d82b8736;
    5'b11100 : xpb = 1024'h65cb7b8c9dd8cc1b9170261a0a5b4c6ef82c3cf8fff9cd0fcf3f814cafc2f1c97d7a67542ca4a2b01c89be64ca7106481eb49e9eb0930305e1454da7aaada4c3041e09f10441db1595c81ddb57fd606852c0c3fa6308fa5071c191cc59ac41a9bec46cf24674a78eb7ba8063cc48bc9c555c26f5443986a3fe969cb3a43123ed;
    5'b11101 : xpb = 1024'h88fad57c618b13ae1f75216f16ca1be60c277693c185cc77ff693027df25d02d8bb04a915255f5f470df7e350c8f005c8d1b2b68e1a5e8539b24372c322291c51908af21f60bd022b0bd0d1ba42486e2814889d56d614228963d035bd98c4ec0c4d5ef825f65d9ed165a49a176b08104b8c6594b02b6c0a954422f1f7036c0a4;
    5'b11110 : xpb = 1024'hac2a2f6c253d5b40ad7a1cc42338eb5d2022b02e8311cbe02f92df030e88ae9199e62dce78074938c5353e054eacfa70fb81b83312b8cda1550320b0b9977ec72df35452e7d5c52fcbb1fc5bf04bad5cafd04fb077b98a00bab874eb596c5bd7cae7721278570c4b74fa12df2118456d1c308ba0c133faaea9edc18b3c3c5d5b;
    5'b11111 : xpb = 1024'h1eac440627016e0a7079a0421f4d7382c2a7e6986f262ad0e1dfd4888ae8dfeda4d39392d3921dee7a2cbe8ead6ce3bb05ce1d172118e2a35e42cad70639f717ce8ec4d52a0ebcf7d40ce8f9a3970fa5ea531bf2f58ba4c829a754801f21c65ca1f16278e07f461c4cd9f53dd3afe3ac30c0df142f65d783b929d8f27f5f93a7;
    endcase
end

endmodule
