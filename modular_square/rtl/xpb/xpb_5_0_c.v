module xpb_5_0_c
(
    input [5:1] data_in, 
    output [1024:1] data_out 
); 

reg [1024:1] xpb; 

assign data_out = xpb; 

always@(*) begin
    case(data_in)
    5'b00000 : xpb = 1024'h0;
    5'b00001 : xpb = 1024'h4f52baaa3e11cb3734fa8828efa5b8ae8e89fccf2a885f88822346aa4cfd52f7fcb7828735d9817160a1c0b91ca1ef359be5d819dd4d2fb44f60c0a1c52d8b4e8bb0cb51506f02baed65fd5d67243bcf0bfb06677379d2ef4a736e0545d55d6dd0f86dd64f37077279401921082fd9d6b126211dafb4a2cfb99084fb771d9995;
    5'b00010 : xpb = 1024'h9ea575547c23966e69f51051df4b715d1d13f99e5510bf1104468d5499faa5eff96f050e6bb302e2c14381723943de6b37cbb033ba9a5f689ec181438a5b169d176196a2a0de0575dacbfabace48779e17f60ccee6f3a5de94e6dc0a8baabadba1f0dbac9e6e0ee4f2803242105fb3ad624c423b5f69459f732109f6ee3b332a;
    5'b00011 : xpb = 1024'h3d4aeaa8f8472cdcd3ea20a3be96e2ba3a27f33caa217e22088d1aa933f54bdff2de0a1cd76605c5828702e47287bcd66f9760677534bed13d83028714b62d3a2ec32d4541bc0aebb597f5759c90ef3c2fec199dcde74bbd29cdb815175575b743e1b7593cdc1dc9e500648420bf675ac4988476bed28b3ee64213eddc766654;
    5'b00100 : xpb = 1024'h8c9da5533658f81408e4a8ccae3c9b68c8b1f00bd4a9ddaa8ab0615380f29ed7ef958ca40d3f8736e328c39d8f29ac0c0b7d38815281ee858ce3c328d9e3b888ba73f896922b0da6a2fdf2d303b52b0b3be7200541611eac7441261a5d2ad32514da252f8c13253c5e407da528ef413175bea5946e872e0e9fd298e95393ffe9;
    5'b00101 : xpb = 1024'h2b431aa7b27c8e8272d9b91e8d880cc5e5c5e9aa29ba9cbb8ef6eea81aed44c7e90491b278f28a19a46c450fc86d8a774348e8b50d1c4dee2ba5446c643ecf25d1d58f393309131c7dc9ed8dd1fda2a953dd2cd42854c48b09280224e8d58e00b6cb00dc2a81342150c0afe7394ef4ded80ae7cfcdf073ae12f3a2e041cf3313;
    5'b00110 : xpb = 1024'h7a95d551f08e59b9a7d441477d2dc574744fe6795442fc44111a355267ea97bfe5bc1439aecc0b8b050e05c8e50f79acdf2ec0ceea697da27b06050e296c5a745d865a8a837815d76b2feaeb3921de785fd8333b9bce977a539b702a2eaaeb6e87c36eb279b83b93ca00c908417eceb5893108ed7da5167dcc8427dbb8eccca8;
    5'b00111 : xpb = 1024'h193b4aa66cb1f02811c951995c7936d19163e017a953bb551560c2a701e53dafdf2b19481a7f0e6dc651873b1e53581816fa7102a503dd0b19c78651b3c7711174e7f12d24561b4d45fbe5a6076a561677ce400a82c23d58e8824c34ba55a64a29b44a5f18264a78bc80fb4a51de8262eb7d4b28dd0e5c1d3fa531d2a727ffd2;
    5'b01000 : xpb = 1024'h688e0550aac3bb5f46c3d9c24c1eef801feddce6d3dc1add978409514ee290a7dbe29bcf50588fdf26f347f43af5474db2e0491c82510cbf692846f378f4fc600098bc7e74c51e083361e3036e8e91e583c94671f63c104832f5ba3a002b03b7faacb835675d51eb35c1146b5a0e5c399ca36c468cc2feecf935b6ce1e459967;
    5'b01001 : xpb = 1024'h7337aa526e751cdb0b8ea142b6a60dd3d01d68528ecd9ee9bca96a5e8dd3697d551a0ddbc0b92c1e836c966743925b8eaabf9503ceb6c2807e9c837035012fd17fa532115a3237e0e2dddbe3cd709839bbf5340dd2fb626c7dc96448bd5be939c9d93e205cb60d0284146ad6a6e0fe6feefae81ec2c448c6c56c0c50c80cc91;
    5'b01010 : xpb = 1024'h5686354f64f91d04e5b3723d1b10198bcb8bd354537539771deddd5035da898fd2092364f1e5143348d88a1f90db14ee8691d16a1a389bdc574a88d8c87d9e4ba3ab1e7266122638fb93db1ba3fb4552a7ba59a850a9891612500449d1ab1c016d9601b855026842a1815fce729de9bdb015cf9f9be0e75c25e745c0839e6626;
    5'b01011 : xpb = 1024'ha5d8eff9a30ae83c1aadfa660ab5d23a5a15d0237dfd98ffa01123fa82d7dc87cec0a5ec27be95a4a97a4ad8ad7d04242277a983f785cb90a6ab497a8dab299a2f5be9c3b68128f3e8f9d8790b1f8121b3b5600fc4235c055cc3724f1780796f3e8e6f8ea4396fb51ac178ef7acdc394613bf0bd4b958a2bdf77cabbfabbffbb;
    5'b01100 : xpb = 1024'h447e654e1f2e7eaa84a30ab7ea0143977729c9c1d30e5810a457b14f1cd28277c82faafa937198876abdcc4ae6c0e28f5a4359b7b2202af9456ccabe1806403746bd8066575f2e69c3c5d333d967f8bfcbab6cdeab1701e3f1aa4e59a32b344ae07f4b3b42a77e9a0d41ab318b2d7741c38832f8aafecfcb5298d4b2e8f732e5;
    5'b01101 : xpb = 1024'h93d11ff85d4049e1b99d92e0d9a6fc4605b3c690fd96b799267af7f969cfd56fc4e72d81c94b19f8cb5f8d040362d1c4f62931d18f6d5aad94cd8b5fdd33cb85d26e4bb7a7ce3124b12bd091408c348ed7a673461e90d4d33c1dbc5ee90091b8b177b91191de860c8681c452935d511874ae54165ab3729b0c2959ae6014cc7a;
    5'b01110 : xpb = 1024'h3276954cd963e0502392a332b8f26da322c7c02f52a776aa2ac1854e03ca7b5fbe56329034fe1cdb8ca30e763ca6b0302df4e2054a07ba16338f0ca3678ee222e9cfe25a48ac369a8bf7cb4c0ed4ac2cef9c801505847ab1d104986974ab4c94536894be304c94f17901f694a3bd04c5d6fa9651ba1cb83a7f4a63a54e4fffa4;
    5'b01111 : xpb = 1024'h81c94ff71775ab87588d2b5ba8982651b151bcfe7d2fd632ace4cbf850c7ce57bb0db5176ad79e4ced44cf2f59489f65c9daba1f2754e9ca82efcd452cbc6d717580adab991b3955795dc8a975f8e7fbfb97867c78fe4da11b78066eba80aa02246102947f839c63f2420fb5abecde9c8820b76f69d15b0a38dae8a0c56d9939;
    5'b10000 : xpb = 1024'h206ec54b939941f5c2823bad87e397aece65b69cd2409543b12b594ceac27447b47cba25d68aa12fae8850a1928c7dd101a66a52e1ef493321b14e88b717840e8ce2444e39f93ecb5429c36444415f9a138d934b5ff1f37fb05ee279462b64ddc651de411df1ab48e4c241f7bc4c9249ea6cf9aac93aa0a9abfbf297b3a8cc63;
    5'b10001 : xpb = 1024'h6fc17ff5d1ab0d2cf77cc3d67789505d5cefb36bfcc8f4cc334e9ff737bfc73fb1343cad0c6422a10f2a115aaf2e6d069d8c426cbf3c78e771120f2a7c450f5d18930f9f8a684186418fc0c1ab659b691f8899b2d36bc66efad2507e8c00c24b974a4c176d28b2bb5e025b18c47c6c209b931ac878ef4379658c77932ac665f8;
    5'b10010 : xpb = 1024'he66f54a4dcea39b6171d42856d4c1ba7a03ad0a51d9b3dd37952d4bd1ba6d2faaa341bb78172583d06d92cce8724b71d557f2a079d6d8500fd3906e06a025fa2ff4a6422b4646fc1c5bbb7c79ae1307377ea681ba5f6c4d8fb92c8917ab7d27393b27c40b96c1a050828d5ad4dc1fcdfddf5d03d8588918d8ad818a19019922;
    5'b10011 : xpb = 1024'h5db9aff48be06ed2966c5c51467a7a69088da9d97c621365b9b873f61eb7c027a75ac442adf0a6f5310f538605143aa7713dcaba572408045f34510fcbcdb148bba571937bb549b709c1b8d9e0d24ed64379ace92dd93f3cda2c9a8e5d80da950a33959a5acdc912c9c2a67bdd0bf9a4af057e21880d2be8923e0685901f32b7;
    5'b10100 : xpb = 1024'had0c6a9ec9f23a09cb66e47a362033179717a6a8a6ea72ee3bdbbaa06bb5131fa41246c9e3ca286691b1143f21b629dd0d23a2d4347137b8ae9511b190fb3c9747563ce4cc244c71f727b63747f68aa54f74b350a153122c24a00893a3563802db2c0370aa04d0854302bf9ce53bd37b602b9f3f37c1ceb84bce8b81073ccc4c;
    5'b10101 : xpb = 1024'h4bb1dff34615d078355bf4cc156ba474b42ba046fbfb31ff402247f505afb90f9d814bd84f7d2b4952f495b15afa084844ef5307ef0b97214d5692f51b5653345eb7d3876d0251e7d1f3b0f2163f0243676ac01f8846b80ab986e49e2f00f2de7d1cdf1d4872df6a3582f1def59b8728c277e17a972b1457beef9577f577ff76;
    5'b10110 : xpb = 1024'h9b049a9d84279baf6a567cf505115d2342b59d1626839187c2458e9f52ad0c079a38ce5f8556acbab396566a779bf77de0d52b21cc58c6d59cb75396e083de82ea689ed8bd7154a2bf59ae4f7d633e127365c686fbc08afa03fa52a374d6504c4e154cf397a9e6dcaec30afffdcb60ff739e029846dfb72778801a736c95990b;
    5'b10111 : xpb = 1024'h39aa0ff2004b321dd44b8d46e45cce805fc996b47b945098c68c1bf3eca7b1f793a7d36df109af9d74d9d7dcb0dfd5e918a0db5586f3263e3b78d4da6adef52001ca357b5e4f5a189a25a90a4babb5b08b5bd355e2b430d898e12eae00810b27f00628a03617f5c1a1433d420e2b14acd5ea44d3a648fcc6eba1246a5ad0cc35;
    5'b11000 : xpb = 1024'h88fcca9c3e5cfd550946156fd402872eee539383a61cb02148af629e39a504ef905f55f526e3310ed57b9895cd81c51eb486b36f644055f28ad9957c300c806e8d7b00ccaebe5cd3878ba667b2cff17f9756d9bd562e03c7e3549cb346566895c0fe9676854efd341a835663165aee83871065f155fd9f96a531a965d1ee65ca;
    5'b11001 : xpb = 1024'h27a23ff0ba8093c3733b25c1b34df88c0b678d21fb2d6f324cf5eff2d39faadf89ce5b03929633f196bf1a0806c5a389ec5263a31edab55b299b16bfba67970ba4dc976f4f9c62496257a1228118691daf4ce68c3d21a9a6783b78bdd201237162ef722323bd0c190d0388a526baa230e95ca82cb566e5361852b35cc02998f4;
    5'b11010 : xpb = 1024'h76f4fa9af8925efaa835adeaa2f3b13a99f189f125b5cebacf19369d209cfdd78685dd8ac86fb562f760dac1236792bf88383bbcfc27e50f78fbd7617f95225a308d62c0a00b65044fbd9e7fe83ca4ecbb47ecf3b09b7c95c2aee6c317d680df33e7dff972f4138b8643a1c62eea7c079a82c94a651b8805d1e3385837473289;
    5'b11011 : xpb = 1024'h159a6fef74b5f569122abe3c823f2297b705838f7ac68dcbd35fc3f1ba97a3c77ff4e2993422b845b8a45c335cab712ac003ebf0b6c2447817bd58a509f038f747eef96340e96a7a2a89993ab6851c8ad33df9c2978f22745795c2cda3813bbad5d8bba61162227078c3d4083f4a2fb4fccf0b85c484cda54504424f258265b3;
    5'b11100 : xpb = 1024'h64ed2a99b2c7c0a04725466571e4db46458f805ea54eed5455830a9c0794f6bf7cac652069fc39b719461cec794d60605be9c40a940f742c671e1946cf1dc445d39fc4b491586d3517ef96981da95859df39002a0b08f563a20930d2e9569928a6d1297c609929e2f203ed29477a098badf52ca374397074fe94c74a9c9fff48;
    5'b11101 : xpb = 1024'h3929fee2eeb570eb11a56b751304ca362a379fcfa5fac6559c997f0a18f9caf761b6a2ed5af3c99da899e5eb2913ecb93b5743e4ea9d39505df9a8a5978dae2eb015b57323672aaf2bb9152ebf1cff7f72f0cf8f1fc9b4236f00cdd7501540448c20528ff0738c7e4841f6b57d9bd3910416eded3a2b61471b5d1418adb3272;
    5'b11110 : xpb = 1024'h52e55a986cfd2245e614dee040d60551f12d76cc24e80beddbecde9aee8cefa772d2ecb60b88be0b3b2b5f17cf332e012f9b4c582bf7034955405b2c1ea6663176b226a882a57565e0218eb053160bc7032a136065766e3181637ae2bad6b17219ba72ff4e3e403a5dc4388c6009970fc1678ffc835758e42b46563d01f8cc07;
    5'b11111 : xpb = 1024'ha2381542ab0eed7d1b0f6709307bbe007fb7739b4f706b765e1025453b8a429f6f8a6f3d41623f7c9bcd1fd0ebd51d36cb812472094432fda4a11bcde3d3f1800262f1f9d3147820cd878c0dba3a47960f2519c7d8f04120cbd6e8e800ac0edfeab2e0d59d7547acd70451ad683970e6728db11a330bfbb3e4d6db387916659c;
    endcase
end

endmodule
