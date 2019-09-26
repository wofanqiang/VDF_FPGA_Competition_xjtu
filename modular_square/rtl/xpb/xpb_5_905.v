module xpb_5_905
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
    5'b00001 : xpb = 1024'h96e20100c9764f81e85b689aa9c1966e76c242fb6432753109ea8e183393e8bb2656edc969ef31dfe4c85997d99e4aa58a0245c8fec63eda3d9de88cb132169e07da08ef1224663322a47c602901cd8ab4ca9837363f20dc3b9e3d0206ab473e040814eff2c7f1c9e252620c177ebfafc8eb50e4766ea17418dadefb049f5a7a;
    5'b00010 : xpb = 1024'h7d16bcabd0fe6a3b05b1595e4328e58b7c0e82c5f2ed49ea95f862dab425246e49655e1a09b7e5312a3273e8cfde8480afea63abdad9ad68ca9c91bb2791b88a9b64dd2f74b7cf2132aef61db927d6e4759036d5dff814a7c1afe809532bebe9d90897b634c6eb063de4dd39372d593642fcc2e69c91e5b7eb4642f1805c4e89;
    5'b00011 : xpb = 1024'h634b7856d88684f423074a21dc9034a8815ac29081a81ea42206379d34b660216c73ce6aa98098826f9c8e39c61ebe5bd5d2818eb6ed1bf7579b3ae99df15a772eefb16fd74b380f42b96fdb494de03e3655d57489b1087347c193109fac9095ae091a7c76c5e4429977586656dbf2bcbd0e34e8c2b529fbbdb1a6e7fc194298;
    5'b00100 : xpb = 1024'h49803401e00e9fad405d3ae575f783c586a7025b1062f35dae140c5fb5479bd48f823ebb49494bd3b506a88abc5ef836fbba9f7193008a85e499e4181450fc63c27a85b039dea0fd52c3e998d973e997f71b74133369fc3ecdd33e17ec2d354183099d42b8c4dd7ef509d393768a8c43371fa6eae8d86e3f901d0ade77d636a7;
    5'b00101 : xpb = 1024'h2fb4eface796ba665db32ba90f5ed2e28bf342259f1dc8173a21e12235d8d787b290af0be911ff24fa70c2dbb29f321221a2bd546f13f91471988d468ab09e50560559f09c7209eb62ce63566999f2f1b7e112b1dd22f00a53e4e91f38add9ed580a2008fac3d6bb509c4ec0963925c9b13118ed0efbb28362886ed4f3932ab6;
    5'b00110 : xpb = 1024'h15e9ab57ef1ed51f7b091c6ca8c621ff913f81f02dd89cd0c62fb5e4b66a133ad59f1f5c88dab2763fdadd2ca8df6bed478adb374b2767a2fe9736750110403ce9902e30ff0572d972d8dd13f9bffc4b78a6b15086dbe3d5d9f69426852e7e992d0aa2cf3cc2cff7ac2ec9edb5e7bf502b428aef351ef6c734f3d2cb6f501ec5;
    5'b00111 : xpb = 1024'haccbac58b89524a1636485075287b86e0801c4eb920b1201d01a43fce9fdfbf5fbf60d25f2c9e45624a336c4827db692d18d210049eda67d3c351f01b24256daf16a37201129d90c957d597422c1c9d62d714987bd1b04b21594d1288bd9c5d73112b7bf2f8ac1c18e812bf9cd667efff42ddbd3ab8d983b4dceb1c673ef793f;
    5'b01000 : xpb = 1024'h93006803c01d3f5a80ba75caebef078b0d4e04b620c5e6bb5c2818bf6a8f37a91f047d76929297a76a0d511578bdf06df7753ee32601150bc933c83028a1f8c784f50b6073bd41faa587d331b2e7d32fee36e82666d3f87d9ba67c2fd85a6a8306133a857189bafdea13a726ed1518866e3f4dd5d1b0dc7f203a15bcefac6d4e;
    5'b01001 : xpb = 1024'h793523aec7a55a139e10668e855656a8129a4480af80bb74e835ed81eb20735c4212edc7325b4af8af776b666efe2a491d5d5cc60214839a5632715e9f019ab4187fdfa0d650aae8b5924cef430ddc89aefc86c5108cec4921b8273724db0f2edb13bd4bb388b43a45a622540cc3b20ce850bfd7f7d420c2f2a579b36b69615d;
    5'b01010 : xpb = 1024'h5f69df59cf2d74ccbb6657521ebda5c517e6844b3e3b902e7443c2446bb1af0f65215e17d223fe49f4e185b7653e642443457aa8de27f228e3311a8d15613ca0ac0ab3e138e413d6c59cc6acd333e5e36fc22563ba45e014a7c9d23e715bb3dab0144011f587ad76a1389d812c724b93626231da1df76506c510dda9e726556c;
    5'b01011 : xpb = 1024'h459e9b04d6b58f85d8bc4815b824f4e21d32c415ccf664e800519706ec42eac2882fce6871ecb19b3a4ba0085b7e9dff692d988bba3b60b7702fc3bb8bc0de8d3f9588219b777cc4d5a7406a6359ef3d3087c40263fed3e02ddb7d45bddc58868514c2d83786a6b2fccb18ae4c20e519dc73a3dc441aa94a977c41a062e3497b;
    5'b01100 : xpb = 1024'h2bd356afde3daa3ef61238d9518c43ff227f03e05bb139a18c5f6bc96cd42675ab3e3eb911b564ec7fb5ba5951bed7da8f15b66e964ecf45fd2e6cea02208079d3205c61fe0ae5b2e5b1ba27f37ff896f14d62a10db7c7abb3ed284d0a5cfd325a15459e79859fef585d93db6bcf7ea0568515de6a3ded8e69e7a596dea03d8a;
    5'b01101 : xpb = 1024'h1208125ae5c5c4f81368299ceaf3931c27cb43aaea6c0e5b186d408bed656228ce4caf09b17e183dc51fd4aa47ff11b5b4fdd45172623dd48a2d16187880226666ab30a2609e4ea0f5bc33e583a601f0b213013fb770bb7739fed35456dda1de2f15c864bb84992bb3f00f088b7e1826d09687e0906131d23c53098d5a5d3199;
    5'b01110 : xpb = 1024'ha8ea135baf3c1479fbc3923794b5298a9e8d86a64e9e838c2257cea420f94ae3f4a39cd31b6d4a1da9e82e42219d5c5b3f001a1a71287caec7cafea529b239046e85399172c2b4d41860b045aca7cf7b66dd9976edafdc53759d10565d88e91c331ddd54ae4c8af596427114a2fcd7d69981d8c506cfd346552de8885efc8c13;
    5'b01111 : xpb = 1024'h8f1ecf06b6c42f33191982fb2e1c78a7a3d9c670dd595845ae65a366a18a869717b20d23bb35fd6eef52489317dd963664e837fd4d3beb3d54c9a7d3a011daf102100dd1d5561dc2286b2a033ccdd8d527a338159768d01efbaebb5daa098dc8081e601af04b8431f1d4ec41c2ab715d13934ac72cf3178a27994c7edab98022;
    5'b10000 : xpb = 1024'h75538ab1be4c49ec366f73bec783c7c4a926063b6c142cff3a737829221bc24a3ac07d745afeb0c034bc62e40e1dd0118ad055e0294f59cbe1c8510216717cdd959ae21237e986b03875a3c0ccf3e22ee868d6b44121c3ea81c06664f68a3273dd1ee2e1324a7d6e4d67676ee25a0ae38da4bcc953165bcdfa04b07556767431;
    5'b10001 : xpb = 1024'h5b88465cc5d464a553c5648260eb16e1ae724605facf01b8c6814ceba2acfdfd5dceedc4fac764117a267d35045e09ecb0b873c30562c85a6ec6fa308cd11eca2925b6529a7cef9e48801d7e5d19eb88a92e7552eadab7b607d2116c430ad71fb21f65a7744976aaa8f9e29c0208a46a07b62ecb7939a011cc70146bd2336840;
    5'b10010 : xpb = 1024'h41bd0207cd5c7f5e711b5545fa5265feb3be85d08989d672528f21ae233e39b080dd5e159a901762bf909785fa9e43c7d6a091a5e17636e8fbc5a35f0330c0b6bcb08a92fd10588c588a973bed3ff4e269f413f19493ab818de3bc738f8b7bcb871fe86db6486fe7048c5dc921b73df081c7a0cd9f5ce4559edb78624df05c4f;
    5'b10011 : xpb = 1024'h27f1bdb2d4e49a178e71460993b9b51bb90ac59b1844ab2bde9cf670a3cf7563a3ebce663a58cab404fab1d6f0de7da2fc88af88bd89a57788c44c8d799062a3503b5ed35fa3c17a689510f97d65fe3c2ab9b2903e4c9f4d13f5677adc0c20775c206b33f8476923601ed8f64165d776fbd912cfc58028997146dc58c9ad505e;
    5'b10100 : xpb = 1024'he26795ddc6cb4d0abc736cd2d210438be570565a6ff7fe56aaacb332460b116c6fa3eb6da217e054a64cc27e71eb77e2270cd6b999d140615c2f5bbeff0048fe3c63313c2372a68789f8ab70d8c0795eb7f512ee80593189a071282288cc5233120edfa3a46625fbbb15423611470fd75ea84d1eba36cdd43b2404f456a446d;
    5'b10101 : xpb = 1024'ha5087a5ea5e3045294229f67d6e29aa7351948610b31f5167495594b57f499d1ed512c804410afe52f2d25bfc0bd0223ac731334986352e05360de48a1221b2deba03c02d45b909b9b440717368dd520a049e9661e44b3f4d5a54f842f380c61352902ea2d0e54299e03b62f789330ad3ed5d5b662120e515c8d1f4a4a099ee7;
    5'b10110 : xpb = 1024'h8b3d3609ad6b1f0bb178902b7049e9c43a65882b99ecc9d000a32e0dd885d585105f9cd0e3d9633674974010b6fd3bfed25b31177476c16ee05f87771781bd1a7f2b104336eef989ab4e80d4c6b3de7a610f8804c7fda7c05bb6fa8b7bb8b10d0a2985b06f0d4d65f996315c9841ca33b8e747b8883552952ef88340c5c692f6;
    5'b10111 : xpb = 1024'h7171f1b4b4f339c4cece80ef09b138e13fb1c7f628a79e898cb102d059171138336e0d2183a21687ba015a61ad3d75d9f8434efa508a2ffd6d5e30a58de15f0712b5e48399826277bb58fa9256d9e7d421d526a371b69b8be1c8a592c83955b8df2a0876b10c46a25528ac89b7f063ba32f8b9baae5896d90163e73741838705;
    5'b11000 : xpb = 1024'h57a6ad5fbc7b547dec2471b2a31887fe44fe07c0b762734318bed792d9a84ceb567c7d72236ac9d8ff6b74b2a37dafb51e2b6cdd2c9d9e8bfa5cd9d4044100f3a640b8c3fc15cb65cb63744fe6fff12de29ac5421b6f8f5767da509a14b9fa64b42a8b3cf30b3fdeb0bb27b6d79efd40ad0a2bbcd47bdb1cd3cf4b2dbd407b14;
    5'b11001 : xpb = 1024'h3ddb690ac4036f37097a62763c7fd71b4a4a478b461d47fca4ccac555a39889e798aedc2c3337d2a44d58f0399bde99044138ac008b10d1a875b83027aa0a2e039cb8d045ea93453db6dee0d7725fa87a36063e0c5288322edebfba1613a9f10892b0e03350a391b0c4da2e3f74d96c7271b9dbefa9f1f60a63aaf2438fd6f23;
    5'b11010 : xpb = 1024'h241024b5cb8b89f026d05339d5e726384f968755d4d81cb630da8117dacac4519c995e1362fc307b8a3fa9548ffe236b69fba8a2e4c47ba9145a2c30f10044cccd566144c13c9d41eb7867cb074c03e16426027f6ee176ee73fda6a8adbb43bc5e2b90c97709325767e01e1116fc304da12d0fc120c263a478a6131ab4ba6332;
    5'b11011 : xpb = 1024'ha44e060d313a4a9442643fd6f4e755554e2c7206392f16fbce855da5b5c0004bfa7ce6402c4e3cccfa9c3a5863e5d468fe3c685c0d7ea37a158d55f675fe6b960e1358523d0062ffb82e18897720d3b24eba11e189a6ab9fa0f51affa3be868332c138fb9082b93c372993e36aac9d41b3e81c346e5a7e84b11771130775741;
    5'b11100 : xpb = 1024'ha126e1619c89f42b2c81ac9819100bc3cba50a1bc7c566a0c6d2e3f28eefe8bfe5febc2d6cb415acb4721d3d5fdca7ec19e60c4ebf9e2911def6bdec1891fd5768bb3e7435f46c631e275de8c073dac5d9b639554ed98b9635ad8eb200e72fa63734287fabd01d5da5c4fb4a4e298983e429d2a7bd54495c63ec560c3516b1bb;
    5'b11101 : xpb = 1024'h875b9d0ca4120ee449d79d5bb2775ae0d0f149e656803b5a52e0b8b50f812473090d2c7e0c7cc8fdf9dc378e561ce1c73fce2a319bb197a06bf5671a8ef19f43fc4612b49887d5512e31d7a65099e41f9a7bd7f3f8927f61bbbf39b94d67d4520c34ab45edcf169a015776776dd8230a5e3b44a9e3778da03657ba02b0d3a5ca;
    5'b11110 : xpb = 1024'h6d9058b7ab9a299d672d8e1f4bdea9fdd63d89b0e53b1013deee8d77901260262c1b9cceac457c4f3f4651df4c5d1ba265b6481477c5062ef8f41049055141308fd0e6f4fb1b3e3f3e3c5163e0bfed795b417692a24b732d41d0e4c099e878fde1352e0c2fce0fd65ce9f1a48d86bc90d84cb6ac099ad1e408c31df92c9099d9;
    5'b11111 : xpb = 1024'h53c51462b322445684837ee2e545f91adb89c97b73f5e4cd6afc623a10a39bd94f2a0d1f4c0e2fa084b06c30429d557d8b9e65f753d874bd85f2b9777bb0e31d235bbb355daea72d4e46cb2170e5f6d31c0715314c0466f8c7e28fc7e6691da9b635b0d271cd0912b87c6cd1ad355617525e28ae2fbe1627db2e81efa84d8de8;
    endcase
end

endmodule
