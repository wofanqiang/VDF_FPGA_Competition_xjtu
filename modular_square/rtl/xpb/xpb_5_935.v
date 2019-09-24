module xpb_5_935
(
    input [5:1] data_in, 
    output [1024:1] data_out 
); 

reg [1024:1] xpb; 

assign data_out = xpb; 

always@(*) begin
    case(data_in)
    5'b00000 : xpb = 1024'h0;
    5'b00001 : xpb = 1024'h9a9fc493a0d8126596b040da47ed6abfc6ac7181b5bc702d46baec3f1236652f6d8707822f389fa57c8906c915aeca8be4ce6a29aa8c4857dc63c7965b49d4fbc531307f1549ffe66c2a78d3a817565f0e0305923983c7de4dfeca29a8e8ae00d70c348133e6575cc30cd8e2e53349aa6be6e994fea886bfb81f11dd13dff33e;
    5'b00010 : xpb = 1024'h849243d17fc1f002625b09dd7f808e2e1be2dfd296013fe30f991f28716a1d56d7c5918b944ac0bc59b3ce4b47ff844d6582ac6d3265c06408284fce7bc1354616132c4f7b030287c5baef04b752e88d2801118be68162abe671025897a6b96f7f10d6d8b703b62bff59cae6d2966d2b88f3f447ad05b04f29cea8b59edd8011;
    5'b00011 : xpb = 1024'h6e84c30f5eabcd9f2e05d2e0b713b19c71194e2376460f98d8775211d09dd57e42041b94f95ce1d336de95cd7a503e0ee636eeb0ba3f387033ecd8069c38959066f5281fe0bc05291f4b6535c68e7abb41ff1d85937efd797ee33a878664c4de271579303a2114fb3ba6bceabff990aca600fefa5b62d9de9b7e3f8e29db0ce4;
    5'b00100 : xpb = 1024'h5877424d3d95ab3bf9b09be3eea6d50ac64fbc74568adf4ea15584fb2fd18da5ac42a59e5e6f02ea14095d4faca0f7d066eb30f44218b07c5fb1603ebcaff5dab7d723f0467507ca78dbdb66d5ca0ce95bfd297f407c9847175572b67522d04ccf1a1b87bd3e73ca77f3aeeead5cb42dc30e09ad09c0036e0d2dd666b4d899b7;
    5'b00101 : xpb = 1024'h4269c18b1c7f88d8c55b64e72639f8791b862ac536cfaf046a33b7e48f0545cd16812fa7c3812400f13424d1def1b191e79f7337c9f228888b75e876dd27562508b91fc0ac2e0a6bd26c5197e5059f1775fb3578ed7a3314afc7aae563e0dbbb771ebddf405bd299b440a0f29abfd7aee01b145fb81d2cfd7edd6d3f3fd6268a;
    5'b00110 : xpb = 1024'h2c5c40c8fb69667591062dea5dcd1be770bc991617147eba3311eacdee38fdf480bfb9b128934517ce5eec5411426b536853b57b51cba094b73a70aefd9eb66f599b1b9111e70d0d2bfcc7c8f44131458ff941729a77cde24839e314529ee72a1f236036c3793168f08d92f68822fb2ffd281f12667a568cf08d0417cad3b35d;
    5'b00111 : xpb = 1024'h164ec006da5344125cb0f6ed95603f55c5f30766f7594e6ffbf01db74d6cb61beafe43ba8da5662eab89b3d643932514e907f7bed9a518a0e2fef8e71e1616b9aa7d176177a00fae858d3dfa037cc373a9f74d6c477568afe0ac1b43415cf298c728028e469690382cda84fa75861eb11a3529c514d7801c623c9af055d14030;
    5'b01000 : xpb = 1024'h413f44b93d21af285bbff0ccf362c41b2975b7d79e1e25c4ce50a0aca06e43553ccdc3f2b7874588b47b5875e3ded669bc3a02617e90ad0ec3811f3e8d7703fb5f1331dd59124fdf1db42b12b855a1c3f55965f473037d791e5372301afe076f2ca4e5c9b3ef07692776fe62e9423237423477c334a9abd3ec31c8e0cecd03;
    5'b01001 : xpb = 1024'h9ae103d85a153414bf0c00cb14e0cd83e1d5e7398d5a8e530b893cdfbed6d372c2c3d54621f026eb053d82218b92a9624e8aa42c0c0ad904eb2748b599d74bffc09043b0f2a312364b482cfebacfac00d1f85ef82df6cb5bc71d1d9bd903ac084638d966fd9a46642c344fe1481c8bdca3291e0cc1dd306b8c0b43a5f4aec041;
    5'b01010 : xpb = 1024'h84d3831638ff11b18ab6c9ce4c73f0f2370c558a6d9f5e08d4676fc91e0a8b9a2d025f4f87024801e26849a3bde36323cf3ee66f93e4511116ebd0edba4eac4a11723f81585c14d7a4d8a32fca0b3e2eebf66af1daf466295f8f55cac7c1b776ee3d7bbe80b7a533688141e5357faf5dc03628bf703a59fafdbada7e7fac4d14;
    5'b01011 : xpb = 1024'h6ec6025417e8ef4e566192d1840714608c42c3db4de42dbe9d45a2b27d3e43c19740e958ec146918bf931125f0341ce54ff328b31bbdc91d42b05925dac60c9462543b51be151778fe691960d946d05d05f476eb87f200f6f8018df9b67fc2e596421e1603d50402a4ce33e922e2d2dedd4333721e97838a6f6a71570aa9d9e7;
    5'b01100 : xpb = 1024'h58b88191f6d2cceb220c5bd4bb9a37cee179322c2e28fd746623d59bdc71fbe9017f736251268a2f9cbdd8a82284d6a6d0a76af6a39741296e74e15dfb3d6cdeb336372223ce1a1a57f98f91e882628b1ff282e534ef9bc49073c628a53dce543e46c06d86f262d1e11b25ed1045f65ffa503e24ccf4ad19e11a082f95a766ba;
    5'b01101 : xpb = 1024'h42ab00cfd5bcaa87edb724d7f32d5b3d36afa07d0e6dcd2a2f0208853ba5b4106bbdfd6bb638ab4679e8a02a54d59068515bad3a2b70b9359a3969961bb4cd29041832f289871cbbb18a05c2f7bdf4b939f08edee1ed369228e5fe5793fbd9c2e64b62c50a0fc1a11d6817f0fda919e1175d48d77b51d6a952c99f0820a4f38d;
    5'b01110 : xpb = 1024'h2c9d800db4a68824b961eddb2ac07eab8be60ecdeeb29cdff7e03b6e9ad96c37d5fc87751b4acc5d571367ac87264a29d20fef7db34a3141c5fdf1ce3c2c2d7354fa2ec2ef401f5d0b1a7bf406f986e753ee9ad88eead15fc158368682b9e5318e50051c8d2d207059b509f4eb0c3d62346a538a29af0038c47935e0aba28060;
    5'b01111 : xpb = 1024'h168fff4b939065c1850cb6de6253a219e11c7d1ecef76c95c0be6e57fa0d245f403b117e805ced74343e2f2eb97703eb52c431c13b23a94df1c27a065ca38dbda5dc2a9354f921fe64aaf225163519156deca6d23be86c2d59ca6eb57177f0a03654a774104a7f3f9601fbf8d86f60e351775e3cd80c29c83628ccb936a00d33;
    5'b10000 : xpb = 1024'h827e89727a435e50b77fe199e6c5883652eb6faf3c3c4b899ca1415940dc86aa799b87e56f0e8b1168f6b0ebc7bdacd3787404c2fd215a1d87023e7d1aee07f6be2663bab2249fbe3b68562570ab4387eab2cbe8e606faf23ca6e46035fc0ede5949cb9367de0ed24eedfcc5d284646e8468ef86695357a7d86391c19d9a06;
    5'b10001 : xpb = 1024'h9b22431d135255c3e767c0bbe1d43047fcff5cf164f8ac78d0578d806b7741b61800a30a14a7ae308df1fd7a01768838b846de2e6d8969b1f9eac9d4d864c303bbef56e2cffc24862a65e129cd8801a295edb85e2269ced9403b710e091eaa0fb5657e4cc74e356b955bc6dfab05ce0eda6b52848511da175ff7756ed57d8d44;
    5'b10010 : xpb = 1024'h8514c25af23c3360b31289bf196753b65235cb42453d7c2e9935c069caaaf9dd823f2d1379b9cf476b1cc4fc33c741fa38fb2071f562e1be25af520cf8dc234e0cd152b335b5272783f6575adcc393d0afebc457cf6769a6d8ada93cf7dcb57e5d6a20a44a6b943ad1a8b8e39868f18ff7785d37336f03a6d1a70c47607b1a17;
    5'b10011 : xpb = 1024'h6f074198d12610fd7ebd52c250fa7724a76c399325824be46213f35329deb204ec7db71cdecbf05e48478c7e6617fbbbb9af62b57d3c59ca5173da45195383985db34e839b6e29c8dd86cd8bebff25fec9e9d0517c650474711fe16be69ac0ed056ec2fbcd88f30a0df5aae785cc1511148567e9e1cc2d364356a31feb78a6ea;
    5'b10100 : xpb = 1024'h58f9c0d6b00fee9a4a681bc5888d9a92fca2a7e405c71b9a2af2263c89126a2c56bc412643de1175257254009868b57d3a63a4f90515d1d67d38627d39cae3e2ae954a5401272c6a371743bcfb3ab82ce3e7dc4b29629f420992199ad558cc5bad73655350a651d94a429ceb732f38923192729c902956c5b50639f8767633bd;
    5'b10101 : xpb = 1024'h42ec40148ef9cc371612e4c8c020be0151d91634e60beb4ff3d05925e8462253c0facb2fa8f0328c029d1b82cab96f3ebb17e73c8cef49e2a8fceab55a42442cff77462466e02f0b90a7b9ee0a764a5afde5e844d6603a0fa20451c9c416d7ca557807aad3c3b0a8868f8eef60925c134e9f7d4f3e86805526b5d0d10173c090;
    5'b10110 : xpb = 1024'h2cdebf526de3a9d3e1bdadcbf7b3e16fa70f8485c650bb05bcae8c0f4779da7b2b3955390e0253a2dfc7e304fd0a29003bcc298014c8c1eed4c172ed7ab9a477505941f4cc9931acea38301f19b1dc8917e3f43e835dd4dd3a7689f8b2d4e338fd7caa0256e10f77c2dc80f34df57f946bac8801ece3a9e4986567a98c714d63;
    5'b10111 : xpb = 1024'h16d13e904ccd8770ad6876cf2f4704ddfc45f2d6a6958abb858cbef8a6ad92a29577df42731474b9bcf2aa872f5ae2c1bc806bc39ca239fb0085fb259b3104c1a13b3dc53252344e43c8a65028ed6eb731e20038305b6faad2e8c227a192eea7a5814c59d9fe6e46ff2972f73b58a31588b992b49b40d3740a14fe82176eda36;
    5'b11000 : xpb = 1024'hc3bdce2bb7650d79133fd266da284c517c612786da5a714e6af1e205e14ac9ffb6694bd82695d09a1d720961ab9c833d34ae07247bb2072c4a835dbba8650bf21d3995980b36ef9d591c81382900e54be00c31dd590a786b5afa569050fa164d85eeb15d1bcd163b7664fb28bbc696a5c69d67499dfd037bc4955aa26c6709;
    5'b11001 : xpb = 1024'h9b638261cc8f77730fc380acaec7930c1828d2a93c96ca9e9525de211817aff96d3d70ce075f357616a678d2775a670f22031830cf07fa5f08ae4af416f23a07b74e6a14ad5536d609839554e040574459e311c416dcd256b959c4803939a8172492233291022472fe833dde0def104111ad86fc484683c333e3a737b64c5a47;
    5'b11010 : xpb = 1024'h8556019fab79550fdb6e49afe65ab67a6d5f40fa1cdb9a545e04110a774b6820d77bfad76c71568cf3d14054a9ab20d0a2b75a7456e1726b3472d32c37699a52083065e5130e397763140b85ef7be97273e11dbdc3da6d2451cbfcaf27f7b385cc96c58a141f83423ad02fe1fb5233c22eba91aef6a3ad52a5933e104149e71a;
    5'b11011 : xpb = 1024'h6f4880dd8a6332aca71912b31dedd9e8c295af4afd206a0a26e243f3d67f204841ba84e0d18377a3d0fc07d6dbfbda92236b9cb7debaea7760375b6457e0fa9c591261b578c73c18bca481b6feb77ba08ddf29b770d807f1ea3e34de16b5bef4749b67e1973ce211771d21e5e8b557434bc79c61a500d6e21742d4e8cc4773ed;
    5'b11100 : xpb = 1024'h593b001b694d104972c3dbb65580fd5717cc1d9bdd6539bfefc076dd35b2d86fabf90eea369598baae26cf590e4c9453a41fdefb669462838bfbe39c78585ae6a9f45d85de803eba1634f7e80df30dcea7dd35b11dd5a2bf82b06d0d0573ca631ca00a391a5a40e0b36a13e9d6187ac468d4a714535e007188f26bc1574500c0;
    5'b11101 : xpb = 1024'h432d7f594836ede63e6ea4b98d1420c56d028becbdaa0975b89ea9c694e69097163798f39ba7b9d18b5196db409d4e1524d4213eee6dda8fb7c06bd498cfbb30fad659564439415b6fc56e191d2e9ffcc1db41aacad33d8d1b22a53bf431d5d1c4a4ac909d779fafefb705edc37b9e4585e1b1c701bb2a00faa20299e2428d93;
    5'b11110 : xpb = 1024'h2d1ffe972720cb830a196dbcc4a74433c238fa3d9deed92b817cdcaff41a48be807622fd00b9dae8687c5e5d72ee07d6a58863827647529be384f40cb9471b7b4bb85526a9f243fcc955e44a2c6a322adbd94da477d0d85ab394dd6ae2efe1406ca94ee82094fe7f2c03f7f1b0dec1c6a2eebc79b01853906c5199726d401a66;
    5'b11111 : xpb = 1024'h17127dd5060aa91fd5c436bffc3a67a2176f688e7e33a8e14a5b0f99534e00e5eab4ad0665cbfbff45a725dfa53ec198263ca5c5fe20caa80f497c44d9be7bc59c9a50f70fab469e22e65a7b3ba5c458f5d7599e24ce73284c071599d1adecaf14adf13fa3b25d4e6850e9f59e41e547bffbc72c5e757d1fde01304af83da739;
    endcase
end

endmodule
