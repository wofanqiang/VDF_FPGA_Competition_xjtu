module xpb_5_195
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
    5'b00001 : xpb = 1024'h3c5e11c4f22a234f64997c49c688092af97284282953288487930f06b3bedeb22dc0a48220ca8f3743bff4b9b4069b2563420176481cada68216e80521b85c1899aa8c7d67595e5c24d1eddaf11bb2d1a284eee7c112550e2cc857e1b6c02be258f3b09093ad6e14e33ced8e49f817866e5f42a32aded8eb853d2e8a3f08a76c;
    5'b00010 : xpb = 1024'h78bc2389e454469ec932f8938d101255f2e5085052a651090f261e0d677dbd645b81490441951e6e877fe973680d364ac68402ec90395b4d042dd00a4370b831335518faceb2bcb849a3dbb5e23765a34509ddcf8224aa1c5990afc36d8057c4b1e76121275adc29c679db1c93f02f0cdcbe854655bdb1d70a7a5d147e114ed8;
    5'b00011 : xpb = 1024'h46ceff91490352562c6fd06433dd42f7ae18947a681d91618dc73be6839ef0e85f9700d98392f172be19ee638b5c0a5c5abdc7cb5a338a7d5a578b12a569f9858b070c9867b1dcf5bdbc6ee3a775443f389d31eb6b0d219d0cc75aa6a15e114dbd37f880a3f51b122f6e1cbe6182069fc43e90730512d924948109a34378fd9;
    5'b00100 : xpb = 1024'h40cb01be06ba5874c760795009c5dd5a74540d6fcfd5019aa06f82c51bf8cdc0b3ba148fb903be4e6fa1939fecbc5bcb28edddf2fdbfe64e57bc60b64c0efbb0f25afd46edd47c2b80adb4c92b930715960ec20677c32727fd94cd8c20d60cf734c730189decbfc60633cf5a301037f06aa32baa5b30067dce853f2473403745;
    5'b00101 : xpb = 1024'h7d291382f8e47bc42bf9f599d04de6856dc69197f9282a1f280291cbcfb7ac72e17ab911d9ce4d85b3618859a0c2f6f08c2fdf6945dc93f4d9d348bb6dc757c98c0589c4552dda87a57fa2a41caeb9e73893b0ee38d57c362a5d256dd79638d98dbae0a9319a2ddae970bce87a084f76d9026e4d860edf6953c26daeb248deb1;
    5'b00110 : xpb = 1024'h8d9dff229206a4ac58dfa0c867ba85ef5c3128f4d03b22c31b8e77cd073de1d0bf2e01b30725e2e57c33dcc716b814b8b57b8f96b46714fab4af16254ad3f30b160e1930cf63b9eb7b78ddc74eea887e713a63d6d61a433a198eb54d42bc229b7a6ff10147ea36245edc397cc3040d3f887d20e60a25b2492902134686f1fb2;
    5'b00111 : xpb = 1024'h4537f1b71b4a8d9a2a2776564d03b189ef3596b77656dab0b94bf6838432bccf39b3849d513ced659b83328625721c70ee99ba6fb3631ef62d61d96776659b494b0b6e10744f99fadc897bb7660a5b59899895252e73f941ce6143368aebee0c109aafa0a82c1177292ab1261628585a66e714b18b81341017cd4fbea777c71e;
    5'b01000 : xpb = 1024'h8196037c0d74b0e98ec0f2a0138bbab4e8a81adf9faa033540df058a37f19b816774291f72077c9cdf43273fd978b79651dbbbe5fb7fcc9caf78c16c981df761e4b5fa8ddba8f857015b699257260e2b2c1d840cef864e4ffb299b1841ac19ee698e60313bd97f8c0c679eb460206fe0d5465754b6600cfb9d0a7e48e6806e8a;
    5'b01001 : xpb = 1024'hd46cfeb3db09f702854f712c9b97c8e70a49bd6f3858b424a955b3b38adcd2b91ec5028c8ab8d4583a4dcb2aa2141f15103957620e9a9f780f06a137f03dec90a11525c9371596e139354caaf65fccbda9d795c2412764d726560ff3e41a33e937a7e981ebdf51368e4a563b248613df4cbbb1590f388b6dbd831ce9ca6af8b;
    5'b01010 : xpb = 1024'h49a4e1b02fdac2bf8cee735c904185b96a171fff1cd8b3c6d2286a41ec6cabddbfacf4aae9761c7cc764d16c5e27dd16b44596ec6906579e03075218a0bc3ae1a3bbded9facab7ca386542a5a081af9d7d226843e524cb5b9f2db8e0f501cf20ec6e2f28b26b63284c2192f1fc4078c4632afdb8bbd261a261156058dbaf56f7;
    5'b01011 : xpb = 1024'h8602f3752204e60ef187efa656c98ee46389a427462bdc4b59bb7948a02b8a8fed6d992d0a40abb40b24c626122e783c17879862b1230544851e3a1dc27496fa3d666b57622416265d373080919d626f1fa7572ba6372069cbf610c2abc1fb034561dfb94618d13d2f5e80804638904ad18a405be6b13a8de6528ee31ab7fe63;
    5'b01100 : xpb = 1024'h11b3bfe45240d4958b1bf4190cf750bdeb86251e9a0764586371cef9a0e7bc3a17e5c03660e4bc5caf867b98e2d7029716af71f2d68ce29f5695e2c4a95a7e6162c1c32619ec773d6f6f1bb8e9dd510fce274c7adac348674331d6a9a85784536f4dfe2028fd46c48bdb872f986081a7f10fa41cc144b64925204268d0de3f64;
    5'b01101 : xpb = 1024'h4e11d1a9446af7e4efb57062d37f59e8e4f8a946c35a8cdceb04de0054a69aec45a664b881af4b93f346705296dd9dbc79f173691ea99045d8accac9cb12da79fc6c4fa38145d59994410993daf903e170ac3b629bd59d756ffa2e8b5f17b035c841aeb0bcaab4d96f1874bde258992e5f6ee6bfec238f34aa5d70f30fe6e6d0;
    5'b01110 : xpb = 1024'h8a6fe36e36951b34544eecac9a076313de6b2d6eecadb5617297ed070865799e7367093aa279dacb3706650c4ae438e1dd3374df66c63dec5ac3b2ceeccb36929616dc20e89f33f5b912f76ecc14b6b313312a4a5ce7f2839cc2866d15d7dc1821355f41505822ee5255624c2c50b0b4cdce2963170268202f9a9f7d4eef8e3c;
    5'b01111 : xpb = 1024'h1620afdd66d109baede2f11f503524ed6667ae6640893d6e7c4e42b80921ab489ddf3043f91deb73db681a7f1b8cc33cdc5b4e6f8c301b472c3b5b75d3b11df9bb7233efa067950ccb4ae2a72454a553c1b11f9991741a8113fe4c54126d65684b217da8333c9875aed268fb7e78a211ed538d23f195e3db6e6853030515cf3d;
    5'b10000 : xpb = 1024'h527ec1a258fb2d0a527c6d6916bd2e185fda328e69dc65f303e151bebce089facb9fd4c619e87aab1f280f38cf935e623f9d4fe5d44cc8edae52437af5697a12551cc06d07c0f368f01cd0821570582564360e8152866f8f40c6a435c92d914aa4152e38c6ea068a920f5689c870b9985bb2cfc71c74bcc6f3a5818d441e76a9;
    5'b10001 : xpb = 1024'h8edcd3674b255059b715e9b2dd453743594cb6b6932f8e778b7460c5709f68acf96079483ab309e262e803f28399f987a2df515c1c69769430692b801721d62aeec74cea6f1a51c514eebe5d068c0af706bafd691398c49d6d8efc177fedbd2cfd08dec95a97749f754c44181268d11eca12126a475395b278e2b01783271e15;
    5'b10010 : xpb = 1024'h1a8d9fd67b613ee050a9ee259372f91ce14937ade70b1684952ab676715b9a5723d8a05191571a8b0749b965544283e2a2072aec41d353ef01e0d426fe07bd921422a4b926e2b2dc2726a9955ecbf997b53af2b84824ec9ae4cac1fe7c83467d26f4fd303d7bea26d1c94ac76490c27be997762b21e7116db7b0639d394d5f16;
    5'b10011 : xpb = 1024'h56ebb19b6d8b622fb5436a6f59fb0247dabbbbd6105e3f091cbdc57d251a7909519944d3b221a9c24b09ae1f08491f0805492c6289f0019583f7bc2c1fc019aaadcd31368e3c11384bf897704fe7ac6957bfe1a0093741a9119319e03343725f7fe8adc0d129583bb5063855ae88da0257f6b8ce4cc5ea593ced922778560682;
    5'b10100 : xpb = 1024'h9349c3605fb5857f19dce6b920830b72d42e3ffe39b1678da450d483d8d957bb7f59e955d2ec38f98ec9a2d8bc4fba2d688b2dd8d20caf3c060ea431417875c34777bdb3f5956f9470ca854b41035f3afa44d087ca4996b73e5b71c1ea039e41d8dc5e5164d6c650984325e3f880f188c655fb7177a4c344c22ac0b1b75eadee;
    5'b10101 : xpb = 1024'h1efa8fcf8ff17405b370eb2bd6b0cd4c5c2ac0f58d8cef9aae072a34d9958965a9d2105f299049a2332b584b8cf8448867b30768f7768c96d7864cd8285e5d2a6cd31582ad5dd0ab8302708399434ddba8c4c5d6fed5beb4b59737a8e699279202c87cb847bb3bd7f4c02c934aa8e2e5e5db5f3252383f0000f874376d84eeef;
    5'b10110 : xpb = 1024'h5b58a194821b9755180a67759d38d677559d451db6e0181f359a393b8d546817d792b4e14a5ad8d976eb4d0540fedfadcaf508df3f933a3d599d34dd4a16b943067da20014b72f07a7d45e5e8a5f00ad4b49b4bebfe813c2e25f8f8a9d5953745bbc2d48db68a9ecd7fd1a2194a0fa6c543aa1d57d1717eb8635a2c1ac8d965b;
    5'b10111 : xpb = 1024'h97b6b3597445baa47ca3e3bf63c0dfa24f0fc945e03340a3bd2d4842411346ca055359636b256810baab41bef5057ad32e370a5587afe7e3dbb41ce26bcf155ba0282e7d7c108d63cca64c397b7ab37eedcea3a680fa68d10f27e76c54197f56b4afddd96f161801bb3a07afde9911f2c299e478a7f5f0d70b72d14beb963dc7;
    5'b11000 : xpb = 1024'h23677fc8a481a92b1637e83219eea17bd70c4a3d340ec8b0c6e39df341cf78742fcb806cc1c978b95f0cf731c5ae052e2d5ee3e5ad19c53ead2bc58952b4fcc2c583864c33d8ee7adede3771d3baa21f9c4e98f5b58690ce8663ad5350af08a6de9bfc4051fa8d8917b70e5f30c1034fe21f483982896c924a4084d1a1bc7ec8;
    5'b11001 : xpb = 1024'h5fc5918d96abcc7a7ad1647be076aaa6d07ece655d61f1354e76acf9f58e57265d8c24eee29407f0a2ccebeb79b4a05390a0e55bf53672e52f42ad8e746d58db5f2e12c99b324cd703b0254cc4d654f13ed387dd7698e5dcb32c0535076f3489378facd0e5a7fb9dfaf3fbed7ab91ad6507e8adcad68457dcf7db35be0c52634;
    5'b11010 : xpb = 1024'h9c23a35288d5efc9df6ae0c5a6feb3d1c9f1528d86b519b9d609bc00a94d35d88b4cc971035e9727e68ce0a52dbb3b78f3e2e6d23d53208bb15995939625b4f3f8d89f47028bab3328821327b5f207c2e15876c537ab3aeadff45d16be2f606b90835d61795569b2de30e97bc4b1325cbeddcd7fd8471e6954bae1e61fcdcda0;
    5'b11011 : xpb = 1024'h27d46fc1b911de5078fee5385d2c75ab51edd384da90a1c6dfc011b1aa096782b5c4f07a5a02a7d08aee9617fe63c5d3f30ac06262bcfde682d13e3a7d0b9c5b1e33f715ba540c4a3ab9fe600e31f6638fd86c146c3762e8573022fdbac4e9bbba6f7bc85c39df3a3aadf02b16d923b9de633140b2da9a249388956bd5f40ea1;
    5'b11100 : xpb = 1024'h64328186ab3c019fdd98618223b47ed64b6057ad03e3ca4b675320b85dc84634e38594fc7acd3707ceae8ad1b26a60f9564cc1d8aad9ab8d04e8263f9ec3f873b7de839321ad6aa65f8bec3aff4da935325d5afc2d49b7f683f87adf7185159e13632c58efe74d4f1deaddb960d13b404cc273e3ddb9731018c5c3f614fcb60d;
    5'b11101 : xpb = 1024'ha090934b9d6624ef4231ddcbea3c880144d2dbd52d36f2cfeee62fbf118724e71146397e9b97c63f126e7f8b6670fc1eb98ec34ef2f6593386ff0e44c07c548c518910108906c902845dda15f0695c06d4e249e3ee5c0d04b0c0d2c1284541806c56dce98394bb640127cb47aac952c6bb21b68708984bfb9e02f28054055d79;
    5'b11110 : xpb = 1024'h2c415fbacda21375dbc5e23ea06a49dacccf5ccc81127adcf89c8570124356913bbe6087f23bd6e7b6d034fe37198679b8b69cdf1860368e5876b6eba7623bf376e467df40cf2a199695c54e48a94aa783623f3322e8350227fc98a824dacad09642fb50667930eb5da4d1f6fcf14423daa71a47e32bc7b6dcd0a6060a2b9e7a;
    5'b11111 : xpb = 1024'h689f717fbfcc36c5405f5e8866f25305c641e0f4aa65a361802f9476c6023543697f050a1306661efa9029b7eb20219f1bf89e55607ce434da8d9ef0c91a980c108ef45ca8288875bb67b32939c4fd7925e72e1ae3fa8a1054c4f089db9af6b2ef36abe0fa269f0040e1bf8546e95baa49065ceb0e0aa0a2620dd490493445e6;
    endcase
end

endmodule
