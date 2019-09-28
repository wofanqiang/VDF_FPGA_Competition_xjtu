module xpb_5_15
(
    input [5:1] data_in, 
    output [1024:1] data_out 
); 

reg [1024:1] xpb; 

assign data_out = xpb; 

always@(*) begin
    case(data_in)
    5'b00000 : xpb = 1024'h0;
    5'b00001 : xpb = 1024'ha859cbfdb6205bf2acdae036287efe25f9d63a09526e0e7ffc76eaccdab6c6e716a162c436a61a88cf765bbd5523ef94910224f2a65a7a2dd12e72b091d78475b21c45ec9c935a730e8145f421106ce6f950bc89b70ffa090629f3eaa6b2ca0faadaeddd96f62fd5aef48d4562aa68d0e6a7d8c6369fcba8b24789f8c2bf1143;
    5'b00010 : xpb = 1024'ha00652a5aa52831c8eb0489540a3b4fa823670e1cf647c887b111c44026ae0c629fa480fa325b682ff8e7833c6e9ce5ebdea21ff2a02240ff1bda602e8dc9439efe9572a8995b7a10a688945a945159cfe9c7f7ae199c70156c755da933af18d26ae49917d23671dd72933abcd84ab787e75d2aa1cf43a211e1f98ecfc9bbc1b;
    5'b00011 : xpb = 1024'h97b2d94d9e84aa467085b0f458c86bcf0a96a7ba4c5aea90f9ab4dbb2a1efaa53d532d5b0fa5527d2fa694aa38afad28ead21f0bada9cdf2124cd9553fe1a3fe2db66868769814cf064fcc973179be5303e8426c0c2393f9a764b7ca7fc3190aa281a54563509e65ff5dda12385eee201643cc8e0348a89989f7a7e1367866f3;
    5'b00100 : xpb = 1024'h8f5f5ff592b6d170525b195370ed22a392f6de92c951589978457f3251d3148450ac12a67c24ee775fbeb120aa758bf317ba1c18315177d432dc0ca796e6b3c26b8379a6639a71fd02370fe8b9ae67090934055d36ad60f1f80219ba6c4b40881e5500f9497dd5ae27928078a33930c7ae11c671e99d1711f5cfb6d5705511cb;
    5'b00101 : xpb = 1024'h870be69d86e8f89a343081b28911d9781b57156b4647c6a1f6dfb0a979872e636404f7f1e8a48a718fd6cd971c3b6abd44a21924b4f921b6536b3ff9edebc386a9508ae4509ccf2afe1e533a41e30fbf0e7fc84e61372dea489f7baa58d368059a285cad2fab0cf64fc726df0e13736f45dfc055cff1858a61a7c5c9aa31bca3;
    5'b00110 : xpb = 1024'h7eb86d457b1b1fc41605ea11a136904ca3b74c43c33e34aa7579e220a13b4842775ddd3d5524266bbfeeea0d8e014987718a163138a0cb9873fa734c44f0d34ae71d9c223d9f2c58fa05968bca17b87513cb8b3f8bc0fae2993cdd9a455b8f8315fbb86115d8443e77fbcd4578edb616ddadba39b645f402cd7fd4bde40e677b;
    5'b00111 : xpb = 1024'h7664f3ed6f4d46edf7db5270b95b47212c17831c4034a2b2f4141397c8ef62218ab6c288c1a3c265f0070683ffc728519e72133dbc48757a9489a69e9bf5e30f24eaad602aa18986f5ecd9dd524c612b19174e30b64ac7dae9da3f8a31e3b70091cf1414fc057b86a03073abe3c7f8be757bb41d9c9a627b3957e3b21deb1253;
    5'b01000 : xpb = 1024'h6e117a95637f6e17d9b0bacfd17ffdf5b477b9f4bd2b10bb72ae450ef0a37c009e0fa7d42e235e60201f22fa718d071bcb5a104a3ff01f5cb518d9f0f2faf2d362b7be9e17a3e6b4f1d41d2eda8109e11e631121e0d494d33a77a17a1e6bde7e0da26fc8e232b2cec8651a124ea23b660d49ae0182eed0f3a52ff2a657c7bd2b;
    5'b01001 : xpb = 1024'h65be013d57b19541bb86232ee9a4b4ca3cd7f0cd3a217ec3f1487686185795dfb1688d1f9aa2fa5a50373f70e352e5e5f8420d56c397c93ed5a80d434a000297a084cfdc04a643e2edbb608062b5b29723aed4130b5e61cb8b15036a0af405fb8975cb7cc85fea16f099c078b97c7e0da517a7e569433f6c1108019a91a46803;
    5'b01010 : xpb = 1024'h5d6a87e54be3bc6b9d5b8b8e01c96b9ec53827a5b717eccc6fe2a7fd400bafbec4c1726b07229654804f5be75518c4b0252a0a63473f7320f6374095a105125bde51e119f1a8a110e9a2a3d1eaea5b4d28fa970435e82ec3dbb26559f77c2d7905492730ae8d215f18ce66df2456c0b53ce5a1c94f97ade47ce0108ecb8112db;
    5'b01011 : xpb = 1024'h55170e8d4015e3957f30f3ed19ee22734d985e7e340e5ad4ee7cd97467bfc99dd81a57b673a2324eb067785dc6dea37a5212076fcae71d0316c673e7f80a22201c1ef257deaafe3ee589e723731f04032e4659f56071fbbc2c4fc749e40454f6811c82e494ba58a741030d458f31035cd4b39bad35ec1c5ce8b81f83055dbdb3;
    5'b01100 : xpb = 1024'h4cc3953534480abf61065c4c3212d947d5f89556b104c8dd6d170aeb8f73e37ceb733d01e021ce48e07f94d438a482447efa047c4e8ec6e53755a73a4f0f31e459ec0395cbad5b6ce1712a74fb53acb933921ce68afbc8b47ced2939d08c7c73fcefde987ae78fef6937b3abfa0b46046c8195911c408ad554902e773f3a688b;
    5'b01101 : xpb = 1024'h44701bdd287a31e942dbc4ab4a37901c5e58cc2f2dfb36e5ebb13c62b727fd5bfecc224d4ca16a431097b14aaa6a610eabe20188d23670c757e4da8ca61441a897b914d3b8afb89add586dc68388556f38dddfd7b58595accd8a8b29bd14a3f178c33a4c6114c737916c5a1264e588ac044f8f750294f94dc0683d6b79171363;
    5'b01110 : xpb = 1024'h3c1ca2851cac591324b12d0a625c46f0e6b90307aaf1a4ee6a4b6dd9dedc173b12250798b921063d40afcdc11c303fd8d8c9fe9555de1aa978740ddefd19516cd5862611a5b215c8d93fb1180bbcfe253e29a2c8e00f62a51e27ed19a99ccb6ef49696004741fe7fb9a10078cfbfcb539c1d8958e8e967c62c404c5fb2f3be3b;
    5'b01111 : xpb = 1024'h33c9292d10de803d068695697a80fdc56f1939e027e812f6e8e59f510690311a257dece425a0a23770c7ea378df61ea305b1fba1d985c48b99034131541e61311353374f92b472f6d526f46993f1a6db437565ba0a992f9d6ec54f099624f2ec7069f1b42d6f35c7e1d5a6df3a9a0dfb33eb833ccf3dd63e98185b53ecd06913;
    5'b10000 : xpb = 1024'h2b75afd50510a766e85bfdc892a5b499f77970b8a4de80ff677fd0c82e444af938d6d22f92203e31a0e006adffbbfd6d3299f8ae5d2d6e6db9927483ab2370f55120488d7fb6d024d10e37bb1c264f9148c128ab3522fc95bf62b0f982ad1a69ec3d4d68139c6d100a0a4d45a57450a2cbb97d20b59244b703f06a4826ad13eb;
    5'b10001 : xpb = 1024'h2322367cf942ce90ca316627aaca6b6e7fd9a79121d4ef07e61a023f55f864d84c2fb77afe9fda2bd0f823247181dc375f81f5bae0d5184fda21a7d6022880b98eed59cb6cb92d52ccf57b0ca45af8474e0ceb9c5facc98e100012e96f3541e76810a91bf9c9a458323ef3ac104e934a638777049be6b32f6fc8793c6089bec3;
    5'b10010 : xpb = 1024'h1acebd24ed74f5baac06ce86c2ef22430839de699ecb5d1064b433b67dac7eb75f889cc66b1f762601103f9ae347bb018c69f2c7647cc231fab0db28592d907dccba6b0959bb8a80c8dcbe5e2c8fa0fd5358ae8d8a369686609d74d95bbd6964e3e404cfdff6dba05a739a127b28d5f1fb5570e8823b21a7dba088309a66699b;
    5'b10011 : xpb = 1024'h127b43cce1a71ce48ddc36e5db13d917909a15421bc1cb18e34e652da560989672e18211d79f122031285c11550d99cbb951efd3e8246c141b400e7ab032a0420a877c4746bde7aec4c401afb4c449b358a4717eb4c0637eb13ad6c9484590e25fb76083c62412e882a84078e603189993236acc688f902047789724d4431473;
    5'b10100 : xpb = 1024'ha27ca74d5d9440e6fb19f44f3388fec18fa4c1a98b8392161e896a4cd14b275863a675d441eae1a61407887c6d37895e639ece06bcc15f63bcf41cd0737b00648548d8533c044dcc0ab45013cf8f2695df0346fdf4a307701d838b934cdb85fdb8abc37ac514a30aadce6df50dd5b412af164b04ee3fe98b350a6190e1fbf4b;
    5'b10101 : xpb = 1024'h1d4511cca0b6b38518707a40b5d46c0a15a82f315aea729e082c81bf4c8cc5499934ca8b09e4a14915894fe389957601321e9ecef73bfd85c5e751f5e3cbfca86219ec320c2a20abc928852c52d9b1f633bf76109d3fd6f52759aa92155dfdd575e17eb927e8178d3118d45bbb79de8c2bf5e9435386d111f28b50d47fc6a23;
    5'b10110 : xpb = 1024'haa2e1d1a802bc72afe61e7da33dc44e69b30bcfc681cb5a9dcf9b2e8cf7f933bb034af6ce744649d60cef0bb8dbd46f4a4240edf95ce3a062d8ce7cff0144440383de4afbd55fc7dcb13ce46e63e08065c8cb3eac0e3f778589f8e93c808a9ed023905c92974b14e82061a8b1e6206b9a967375a6bd838b9d1703f060abb7b66;
    5'b10111 : xpb = 1024'ha1daa3c2745dee54e03750394c00fbbb2390f3d4e51323b25b93e45ff733ad1ac38d94b853c4009790e70d31ff8325bed10c0bec1975e3e84e1c1b2247195404760af5edaa5859abc6fb11986e72b0bc61d876dbeb6dc470a93cf083b490d16a7e0c617d0fa1e896aa3ac0f1893c49614135313e522ca7323d484dfa4498263e;
    5'b11000 : xpb = 1024'h99872a6a6890157ec20cb8986425b28fabf12aad620991bada2e15d71ee7c6f9d6e67a03c0439c91c0ff29a871490488fdf408f89d1d8dca6eab4e749e1e63c8b3d8072b975ab6d9c2e254e9f6a75972672439cd15f79168f9da5273a118f8e7f9dfbd30f5cf1fded26f6757f4168c08d9032b22388115aaa9205cee7e74d116;
    5'b11001 : xpb = 1024'h9133b1125cc23ca8a3e220f77c4a696434516185deffffc358c8474e469be0d8ea3f5f4f2cc3388bf117461ee30ee3532adc060520c537ac8f3a81c6f523738cf1a51869845d1407bec9983b7edc02286c6ffcbe40815e614a77b4638da1206575b318e4dbfc5726faa40dbe5ef0ceb070d125061ed5842314f86be2b8517bee;
    5'b11010 : xpb = 1024'h88e037ba50f463d285b78956946f2038bcb1985e5bf66dcbd76278c56e4ffab7fd98449a9942d486212f629554d4c21d57c40311a46ce18eafc9b5194c2883512f7229a7715f7135bab0db8d0710aade71bbbfaf6b0b2b599b1516537a2947e2f1867498c2298e6f22d8b424c9cb1158089f1eea0529f29b80d07ad6f22e26c6;
    5'b11011 : xpb = 1024'h808cbe6245268afc678cf1b5ac93d70d4511cf36d8ecdbd455fcaa3c9604149710f129e605c2708051477f0bc69aa0e784ac001e28148b70d058e86ba32d93156d3f3ae55e61ce63b6981ede8f455394770782a09594f851ebb2784366b16f606d59d04ca856c5b74b0d5a8b34a553ffa06d18cdeb7e6113eca889cb2c0ad19e;
    5'b11100 : xpb = 1024'h7839450a3958b22649625a14c4b88de1cd72060f55e349dcd496dbb3bdb82e76244a0f3172420c7a815f9b8238607fb1b193fd2aabbc3552f0e81bbdfa32a2d9ab0c4c234b642b91b27f62301779fc4a7c534591c01ec54a3c4fda33533996dde92d2c008e83fcff734200f19f7f96a7383b12b1d1d2cf8c588098bf65e77c76;
    5'b11101 : xpb = 1024'h6fe5cbb22d8ad9502b37c273dcdd44b655d23ce7d2d9b7e553310d2ae56c485537a2f47cdec1a874b177b7f8aa265e7bde7bfa372f63df3511774f105137b29de8d95d61386688bfae66a5819faea500819f0882eaa892428ced3c233fc1be5b650087b474b134479b76a7580a59d94ed0090c95b8273e04c458a7b39fc4274e;
    5'b11110 : xpb = 1024'h6792525a21bd007a0d0d2ad2f501fb8ade3273c04fd025edd1cb3ea20d2062344afbd9c84b41446ee18fd46f1bec3d460b63f743b30b891732068262a83cc26226a66e9f2568e5edaa4de8d327e34db686eacb7415325f3add8a9e132c49e5d8e0d3e3685ade6b8fc3ab4dbe75341bf667d706799e7bac7d3030b6a7d9a0d226;
    5'b11111 : xpb = 1024'h5f3ed90215ef27a3eee293320d26b25f6692aa98ccc693f65065701934d47c135e54bf13b7c0e06911a7f0e58db21c10384bf45036b332f95295b5b4ff41d22664737fdd126b431ba6352c24b017f66c8c368e653fbc2c332e28000318d20d565ca73f1c410ba2d7ebdff424e00e5e9dffa5005d84d01af59c08c59c137d7cfe;
    endcase
end

endmodule
