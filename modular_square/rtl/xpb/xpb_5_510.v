module xpb_5_510
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
    5'b00001 : xpb = 1024'h9ae099be02479be649bc11e154f97cefed9f2ec182847ae9d0ba9eed45e6bc9ef76f229f515c5cc0eea1c616d4ef6e101d081348c4ea6e2f061c9267951c17ba5cd0af82a5760f2b57ced09c59e3480165c7df9fb398fa70d5c86ced15850d999b2337a86346d9dce8cce1bc8fc7855e1ad8f7ab8420c516cc48188801ea94f1;
    5'b00010 : xpb = 1024'h8513ee2642a10303c872abeb9998b28e69c85a522f91555c23988484d8cacc35eb95c7c5d8923af33de54ce6c680cb55d5f5feab67220c125b99e570ef65bac345522a569b5b21119d039e961aeacbd1d78ac5a6daabc7d0f60447df70df78a1073edd2715c4bb2c4ad9dc9a27bee492e6d81074b7f62cfd5220b60b7af2c377;
    5'b00011 : xpb = 1024'h6f47428e82fa6a21472945f5de37e82ce5f185e2dc9e2fce76766a1c6baedbccdfbc6cec5fc819258d28d3b6b812289b8ee3ea0e0959a9f5b117387a49af5dcc2dd3a52a914032f7e2386c8fdbf24fa2494dabae01be9531164022d1cc39e3a8735a82a5c8429c7bace6d777bfb643c7b2d7293debcb94e3d7f9538ef3faf1fd;
    5'b00100 : xpb = 1024'h597a96f6c353d13ec5dfe00022d71dcb621ab17389ab0a40c9544fb3fe92eb63d3e31212e6fdf757dc6c5a86a9a385e147d1d570ab9147d906948b83a3f900d516551ffe872544de276d3a899cf9d372bb1091b528d16291367bfdc427944eafdf7628247ac07dcb0ef3d25557ada2fc7ed642071fa0fcca5dd1f1126d032083;
    5'b00101 : xpb = 1024'h43adeb5f03ad385c44967a0a67765369de43dd0436b7e4b31c32354b9176fafac809b7396e33d58a2bafe1569b34e32700bfc0d34dc8e5bc5c11de8cfe42a3ddfed69ad27d0a56c46ca208835e0157432cd377bc4fe42ff156b7d8b682eeb9b74b91cda32d3e5f1a7100cd32efa502314ad55ad0537664b0e3aa8e95e60b4f09;
    5'b00110 : xpb = 1024'h2de13fc744069f79c34d1414ac1589085a6d0894e3c4bf256f101ae3245b0a91bc305c5ff569b3bc7af368268cc6406cb9adac35f000839fb18f3196588c46e6e75815a672ef68aab1d6d67d1f08db139e965dc376f6fd5176f3b3a8de4924beb7ad7321dfbc4069d30dc810879c616616d47399874bcc9769832c195f137d8f;
    5'b00111 : xpb = 1024'h1814942f846006974203ae1ef0b4bea6d696342590d19997c1ee007ab73f1a28b05701867c9f91eeca36eef67e579db2729b979892382183070c849fb2d5e9efcfd9907a68d47a90f70ba476e0105ee4105943ca9e09cab1972f8e9b39a38fc623c918a0923a21b9351ac2ee1f93c09ae2d38c62bb21347def5bc99cd81bac15;
    5'b01000 : xpb = 1024'h247e897c4b96db4c0ba48293553f44552bf5fb63dde740a14cbe6124a2329bfa47da6ad03d57021197a75c66fe8faf82b8982fb346fbf665c89d7a90d1f8cf8b85b0b4e5eb98c773c407270a117e2b4821c29d1c51c9811b76b698d94fdfacd8fe4be1f44b803089727bdcbb78b1fcfaed2a52beef69c64753467205123da9b;
    5'b01001 : xpb = 1024'h9d288255c701099b0a765a0a8a4d7135405e8e77c062eef3e58684ff9009e65e9becc94c5531cce2081c3bdd44d8690848919643f95a2d9562a66a10a23ba4b3152bbad1042f9ba2940f430cfafb2ab5e7e4097178b592828d33d67aaa8308672b07f5c7a7fedce57ff49f884752a52dc9ab9cd77317617b417c7fa8530e6f8c;
    5'b01010 : xpb = 1024'h875bd6be075a70b8892cf414ceeca6d3bc87ba086d6fc96638646a9722edf5f590136e72dc67ab14575fc2ad3669c64e017f81a69b91cb78b823bd19fc8547bbfdad35a4fa14ad88d9441106bc02ae8659a6ef789fc85fe2ad6fb16d05dd736e97239b465a7cbe34e2019a65df4a046295aab5a0a6ecc961c7551d2bcc169e12;
    5'b01011 : xpb = 1024'h718f2b2647b3d7d607e38e1f138bdc7238b0e5991a7ca3d88b42502eb5d2058c843a1399639d8946a6a3497d27fb2393ba6d6d093dc9695c0da1102356ceeac4e62eb078eff9bf6f1e78df007d0a3256cb69d57fc6db2d42cdab8c5f6137de76033f40c50cfa9f84440e95437741639761a9ce69dac231484d2dbaaf451ecc98;
    5'b01100 : xpb = 1024'h5bc27f8e880d3ef3869a2829582b1210b4da1129c7897e4ade2035c648b615237860b8bfead36778f5e6d04d198c80d9735b586be001073f631e632cb1188dcdceb02b4ce5ded15563adacfa3e11b6273d2cbb86ededfaa2ede76751bc92497d6f5ae643bf7880d3a61b90210f38c2cc2da8e7330e97992ed3065832be26fb1e;
    5'b01101 : xpb = 1024'h45f5d3f6c866a6110550c2339cca47af31033cba749658bd30fe1b5ddb9a24ba6c875de6720945ab452a571d0b1dde1f2c4943ce8238a522b89bb6360b6230d6b731a620dbc3e33ba8e27af3ff1939f7aeefa18e1500c8030e23424417ecb484db768bc271f6622308288afea7302200f9a7fffc426d011558def5b6372f29a4;
    5'b01110 : xpb = 1024'h3029285f08c00d2e84075c3de1697d4dad2c684b21a3332f83dc00f56e7e345160ae030cf93f23dd946dddecfcaf3b64e5372f31247043060e19093f65abd3df9fb320f4d1a8f521ee1748edc020bdc820b287953c1395632e5f1d3673471f8c47923141247443726a3585dc3f278135c5a718c5764268fbdeb79339b037582a;
    5'b01111 : xpb = 1024'h1a5c7cc74919744c02bdf6482608b2ec295593dbceb00da1d6b9e68d016243e854d4a8338075020fe3b164bcee4098aa9e251a93c6a7e0e963965c48bff576e888349bc8c78e0708334c16e78128419892756d9c632662c34e9af828cea18a93b3add6bfd6f224c1cc4280b9d71ee06a91a6318eaa17d0e2649030bd293f86b0;
    5'b10000 : xpb = 1024'h48fd12f8972db69817490526aa7e88aa57ebf6c7bbce8142997cc249446537f48fb4d5a07aae04232f4eb8cdfd1f5f0571305f668df7eccb913af521a3f19f170b6169cbd7318ee7880e4e1422fc569043853a38a3930236ed6d31b29fbf59b1fc97c3e897006112e4f7b976f163f9f5da54a57dded38c8ea68ce40a247b536;
    5'b10001 : xpb = 1024'h9f706aed8bba774fcb30a233bfa1657a931dee2dfe4162fdfa526b11da2d101e406a6ff959073d032196b1a3b4c16400741b193f2dc9ecfbbf3041b9af5b31abcd86c61f62e92819d04fb57d9c130d6a6a0033433dd22a94449f40083f810334baecb3e6ecb6dfee171c5d53feddc4fd787e4203620dfddfb6b0e6c8a4324a27;
    5'b10010 : xpb = 1024'h89a3bf55cc13de6d49e73c3e04409b190f4719beab4e3d704d3050a96d111fb53491151fe03d1b3570da3873a652c1462d0904a1d0018adf14ad94c309a4d4b4b60840f358ce3a00158483775d1a913adbc3194a64e4f7f464db1afa9adb6e3c270859659f34c13d7929583196d52432447d5acc95e365c63c89844c1d3a78ad;
    5'b10011 : xpb = 1024'h73d713be0c6d458ac89dd64848dfd0b78b70454f585b17e2a00e3640fff52f4c28b7ba466772f967c01dbf4397e41e8be5f6f004723928c26a2ae7cc63ee77bd9e89bbc74eb34be65ab951711e22150b4d85ff518bf7c5548516f5ecf635d9439323fee451b2a28cdb36530f2ecc8367107c7395c9b8cdacc26221cf9642a733;
    5'b10100 : xpb = 1024'h5e0a68264cc6aca8475470528d7f0656079970e00567f254f2ec1bd892d93ee31cde5f6ceea8d79a0f61461389757bd19ee4db671470c6a5bfa83ad5be381ac6870b369b44985dcc9fee1f6adf2998dbbf48e558b30a92b4a552d0df5190444aff3fa463043083dc3d434decc6c3e29bdc7b8c5efd8e3593483abf530f4ad5b9;
    5'b10101 : xpb = 1024'h483dbc8e8d2013c5c60b0a5cd21e3bf483c29c70b274ccc745ca017025bd4e7a1105049375deb5cc5ea4cce37b06d91757d2c6c9b6a8648915258ddf1881bdcf6f8cb16f3a7d6fb2e522ed64a0311cac310bcb5fda1d6014c58eabd1aceaaf526b5b49e1b6ae652b9f5048ca5ebb41d0a87aa52831639d79ce135cd68853043f;
    5'b10110 : xpb = 1024'h327110f6cd797ae344c1a46716bd7192ffebc8015f81a73998a7e707b8a15e11052ba9b9fd1493feade853b36c98365d10c0b22c58e0026c6aa2e0e872cb60d8580e2c43306281992a57bb5e6138a07ca2ceb16701302d74e5ca86c408451a59d776ef60692c467b015d43a7f6b2a1057479bdf16539056053ebfa5a015b32c5;
    5'b10111 : xpb = 1024'h1ca4655f0dd2e200c3783e715b5ca7317c14f3920c8e81abeb85cc9f4b856da7f9524ee0844a7230fd2bda835e2993a2c9ae9d8efb17a04fc02033f1cd1503e1408fa7172647937f6f8c89582240244d1491976e2842fad5060661b6639f8561439294df1baa27ca636a3e858eaa003a4078d6ba990e6d46d9c497dd7a63614b;
    5'b11000 : xpb = 1024'h6d7b9c74e2c491e422ed87b9ffbdccff83e1f22b99b5c1e3e63b236de697d3eed78f4070b8050634c6f61534fbaf0e8829c88f19d4f3e33159d86fb275ea6ea291121eb1c2ca565b4c15751e347a81d86547d754f55c83526423ca8bef9f068afae3a5dce280919c577396326a15f6f0c77ef83cce3d52d5f9d3560f36b8fd1;
    5'b11001 : xpb = 1024'ha1b853855073e5048beaea5cf4f559bfe5dd4de43c1fd7080f1e5124245039dde4e816a65cdcad243b11276a24aa5ef89fa49c3a6239ac621bba1962bc7abea485e1d16dc1a2b4910c9027ee3d2af01eec1c5d1502eec2a5fc0aa995d47efe024ad17206316ee2f6ae441b1fb668e4cd2750e72f51049a442be54de8f55624c2;
    5'b11010 : xpb = 1024'h8beba7ed90cd4c220aa1846739948f5e62067974e92cb17a61fc36bbb7344974d90ebbcce4128b568a54ae3a163bbc3e5892879d04714a4571376c6c16c461ad6e634c41b787c67751c4f5e7fe3273ef5ddf431c2a0190061c4684882fd96909b6ed1784e3ecc446105115fd4e604401f34ffff884da022ab1bdeb6c6e5e5348;
    5'b11011 : xpb = 1024'h761efc55d126b33f89581e717e33c4fcde2fa50596398becb4da1c534a18590bcd3560f36b486988d998350a07cd1984118072ffa6a8e828c6b4bf75710e04b656e4c715ad6cd85d96f9c3e1bf39f7bfcfa2292351145d663c825f7a8b33d4112308bd03966aa595725e10dae657a336bf4f18c1b8af6a11379688efe76681ce;
    5'b11100 : xpb = 1024'h605250be11801a5d080eb87bc2d2fa9b5a58d0964346665f07b801eadcfc68a2c15c0619f27e47bb28dbbbd9f95e76c9ca6e5e6248e0860c1c32127ecb57a7bf3f6641e9a351ea43dc2e91db80417b9041650f2a78272ac65cbe3a6ce68e3f188f24628248e886e4d46b0bb87e4f026b8b4e318aec84d1f7bd6f2673606eb054;
    5'b11101 : xpb = 1024'h4a85a52651d9817a86c5528607723039d681fc26f05340d15a95e7826fe07839b582ab4079b425ed781f42a9eaefd40f835c49c4eb1823ef71af658825a14ac827e7bcbd9936fc2a21635fd54148ff60b327f5319f39f8267cfa155f41e8aa1ffb400800fb66683436780696164661a0574d4a54205a39de4347c3f6d976deda;
    5'b11110 : xpb = 1024'h34b8f98e9232e898057bec904c1165d852ab27b79d601b43ad73cd1a02c487d0a9a9506700ea041fc762c979dc8131553c4a35278d4fc1d2c72cb8917feaedd1106937918f1c0e1066982dcf0250833124eadb38c64cc5869d35f0519d431527675bad7fade4498398850173ae3dc0d5234c631d542fa1c4c920617a527f0d60;
    5'b11111 : xpb = 1024'h1eec4df6d28c4fb58432869a90b09b76ced453484a6cf5b60051b2b195a897679dcff58d881fe25216a65049ce128e9af538208a2f875fb61caa0b9ada3490d9f8eab26585011ff6abccfbc8c358070196adc13fed5f92e6bd71cb43f89d802ed37752fe60622ad2fa91fc5146352009ef4b7be6880509ab4ef8fefdcb873be6;
    endcase
end

endmodule
