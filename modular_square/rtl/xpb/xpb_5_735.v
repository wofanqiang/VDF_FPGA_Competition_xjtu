module xpb_5_735
(
    input [5:1] data_in, 
    output [1024:1] data_out 
); 

reg [1024:1] xpb; 

assign data_out = xpb; 

always@(*) begin
    case(data_in)
    5'b00000 : xpb = 1024'h0;
    5'b00001 : xpb = 1024'h451af1158518fde225f382f887358b83ffd128b652797df55ada1b63b851bcf7742c80808ffff5bb92d9aeb40071ce21c45d8aad6e732d568848de536448db9e5b59100f25a46c6fee9bdd5b0b6f5ad0f2eab0cfab851828198b4f3d1d7ffefb5fccf5c86d13f61890e88779c6d865c2a4a331928eeabd39826e2633fec7f00d;
    5'b00010 : xpb = 1024'h8a35e22b0a31fbc44be705f10e6b1707ffa2516ca4f2fbeab5b436c770a379eee85901011fffeb7725b35d6800e39c4388bb155adce65aad1091bca6c891b73cb6b2201e4b48d8dfdd37bab616deb5a1e5d5619f570a305033169e7a3afffdf6bf99eb90da27ec3121d10ef38db0cb85494663251dd57a7304dc4c67fd8fe01a;
    5'b00011 : xpb = 1024'h1ea38deacd5cc4dda6d5111285465b3a8dfd76f221f4d96892b198d575f289de593d0408e5d962a4192eccd51df7599ae8fe782228a6b7b7e83b5b9bf2081e299dbbfb7ec15c480ab939956e89724c41e4bb18d676091b6797155bbc9e555a5ff05f4f2f9672e9bc2bf9af8e5cb90b1e9f0fb5d55c74da7c40daf797737569bc;
    5'b00100 : xpb = 1024'h63be7f005275c2bfccc8940b0c7be6be8dce9fa8746e575ded8bb4392e4446d5cd69848975d9585fac087b891e6927bcad5c02cf9719e50e708439ef5650f9c7f9150b8de700b47aa7d572c994e1a712d7a5c9a6218e338fb0a0aaf9bbd5595b502c44f80386dfd4bce23708239170e143b2e767eb5f97b5c3491dcb723d59c9;
    5'b00101 : xpb = 1024'ha8d97015d78ec0a1f2bc170393b172428d9fc85ec6e7d5534865cf9ce69603cd4196050a05d94e1b3ee22a3d1edaf5de71b98d7d058d1264f8cd1842ba99d566546e1b9d0ca520ea96715024a05101e3ca907a75cd134bb7ca2bfa36d9555856aff93ac0709ad5ed4dcabe81ea69d6a3e85618fa7a4a54ef45b743ff710549d6;
    5'b00110 : xpb = 1024'h3d471bd59ab989bb4daa22250a8cb6751bfaede443e9b2d1256331aaebe513bcb27a0811cbb2c548325d99aa3beeb335d1fcf044514d6f6fd076b737e4103c533b77f6fd82b8901572732add12e49883c97631acec1236cf2e2ab7793caab4bfe0be9e5f2ce5d37857f35f1cb972163d3e1f6baab8e9b4f881b5ef2ee6ead378;
    5'b00111 : xpb = 1024'h82620ceb1fd2879d739da51d91c241f91bcc169a966330c6803d4d0ea436d0b426a688925bb2bb03c537485e3c608157965a7af1bfc09cc658bf958b485917f196d1070ca85cfc85610f08381e53f354bc60e27c97974ef747b606b65a2ab3bb408b942799f9c990e8dbe696804a7bffe2c29d3d47d4723204241562e5b2c385;
    5'b01000 : xpb = 1024'h16cfb8aae2fd50b6ce8bb03f089d862baa273c2013650e445d3aaf1ca985e0a3978a8b9a218c3230b8b2b7cb59743eaef69dddb90b80f9d13069348071cf7ede7ddae26d1e706bb03d10e2f090e789f4bb4699b3b6963a0eabb4c3f8bd8010247150f7c65644c71bf30487314f52bb99388befed8673d23b4022c0925b984d27;
    5'b01001 : xpb = 1024'h5beaa9c068164e98f47f33378fd311afa9f864d665de8c39b814ca8061d79d9b0bb70c1ab18c27ec4b8c667f59e60cd0bafb686679f42727b8b212d3d6185a7cd933f27c4414d8202bacc04b9c56e4c5ae314a83621b5236c5401335db000f1fd11ded8ec358bd3483ed0eab162b215bdd2f2180155e8f74c290e6c65a603d34;
    5'b01010 : xpb = 1024'ha1059ad5ed2f4c7b1a72b63017089d33a9c98d8cb8580a2f12eee5e41a295a927fe38c9b418c1da7de6615335a57daf27f58f313e867547e40faf1273a61361b348d028b69b944901a489da6a7c63f96a11bfb530da06a5edecb6272f8800e1b30eae357306cb34d14d59624dd03871e81d25312a4494cae44ff0cfa59282d41;
    5'b01011 : xpb = 1024'h35734695b05a15947560c1518de3e1663824b3123559e7acefec47f21f786a81f0c78fa3076594d4d1e184a0776b9849df9c55db3427b18918a4901c63d79d081b96ddebdfccb3baf64a785f1a59d636a001b28a2c9f557642ca1fb55bd56a8461b046f5ecb7b0d81efe36bfac0bc6b7d79ba5c2e2e8acb780fdb829cf0db6e3;
    5'b01100 : xpb = 1024'h7a8e37ab357313769b54444a15196cea37f5dbc887d365a24ac66355d7ca277964f4102397658a9064bb335477dd666ba3f9e088a29adedfa0ed6e6fc82078a676efedfb0571202ae4e655ba25c9310792ec6359d8246d9e5c556ef27955697fc17d3cbe59cba6f0afe6be3972e42c7a7c3ed75571d369f1036bde5dcdd5a6f0;
    5'b01101 : xpb = 1024'hefbe36af89ddc8ff6424f6b8bf4b11cc651014e04d5432027c3c563dd193768d5d8132b5d3f01bd5836a2c194f123c3043d434fee5b3bea78970d64f196df935df9c95b7b848f55c0e83072985cc7a791d21a90f72358b5c0542c34dcaac5e8f242a05d1616a47bba0f5ed441ec6c13d2082a05b072c9fa3f6a898d43bb3092;
    5'b01110 : xpb = 1024'h5416d4807db6da721c35d264132a3ca0c6222a04574ec115829de0c7956af4604a0493abed3ef778eb1051759562f1e4c89acdfd5cce694100dfebb855dfbb31b952d96aa128fbc5af840dcda3cc227884bccb60a2a870ddd9df7b71fa2ac4e4520f9625832a9a944af7e64e08c4d1d676ab5b983f5d8733c1d8afc14283209f;
    5'b01111 : xpb = 1024'h9931c59602cfd8544229555c9a5fc824c5f352baa9c83f0add77fc2b4dbcb157be31142c7d3eed347dea002995d4c0068cf858aacb4196978928ca0bba2896d014abe979c6cd68359e1feb28af3b7d4977a77c304e2d8905f36acaaf17aac3dfb1dc8bedf03e90acdbe06dc7cf9d37991b4e8d2ace48446d4446d5f5414b10ac;
    5'b10000 : xpb = 1024'h2d9f7155c5faa16d9d17607e113b0c57544e784026ca1c88ba755e39530bc1472f1517344318646171656f96b2e87d5ded3bbb721701f3a260d26900e39efdbcfbb5c4da3ce0d7607a21c5e121cf13e9768d33676d2c741d576987f17b002048e2a1ef8cac898e37e6090e629ea577327117dfdb0ce7a47680458124b7309a4e;
    5'b10001 : xpb = 1024'h72ba626b4b139f4fc30ae376987097db541fa0f679439a7e154f799d0b5d7e3ea34197b4d3185a1d043f1e4ab35a4b7fb199461f857520f8e91b475447e7d95b570ed4e9628543d068bda33c2d3e6eba6977e43718b18c4570f4d72e98801f44426ee555199d845076f195dc657ddcf515bb116d9bd261b002b3a758b5f88a5b;
    5'b10010 : xpb = 1024'h7280e2b0e3e68691df8ee980f4bdc0de27ac67bf64577fbf24cdbab10ac8e2e14259abc98f1d149f7ba8db7d06e08d711dca8e6d1357e03c0c4e649715e40483e18b049d898b2fb44bf7df49fd2055a685d9b6e37b0775cd4f39470fbd57bad733448f3d5e881db811a367734861c8e6b84641dda71c1b93eb252882bde13fd;
    5'b10011 : xpb = 1024'h4c42ff409357664b43ec719096816791e24bef3248bef5f14d26f70ec8fe4b2588521b3d28f1c7058a943c6bd0dfd6f8d63a33943fa8ab5a490dc49cd5a71be69971c058fe3d1f6b335b5b4fab41602b5b484c3de3358f84ee7ee3ae19557aa8d3013ebc42fc77f41202bdf0fb5e8251102795b0695c7ef2c12078bc2aa6040a;
    5'b10100 : xpb = 1024'h915df0561870642d69dff4891db6f315e21d17e89b3873e6a80112728150081cfc7e9bbdb8f1bcc11d6deb1fd151a51a9a97be41ae1bd8b0d156a2f039eff784f4cad06823e18bdb21f738aab6b0bafc4e32fd0d8ebaa7ad080a32eb36d579a432ce3484b0106e0ca2eb456ac236e813b4cac742f8473c2c438e9ef0296df417;
    5'b10101 : xpb = 1024'h25cb9c15db9b2d46c4cdffaa9492374870783d6e183a516484fe7480869f180c6d629ec57ecb33ee10e95a8cee656271fadb2108f9dc35bba90041e563665e71dbd4abc899f4fb05fdf913632944519c4d18b444adb992c46c08f02d9a2ad60d639398236c5b6b97ad13e605913f27ad0a9419f336e69c357f8d4a1f9f537db9;
    5'b10110 : xpb = 1024'h6ae68d2b60b42b28eac182a31bc7c2cc704966246ab3cf59dfd88fe43ef0d503e18f1f460ecb29a9a3c30940eed73093bf38abb6684f631231492038c7af3a10372dbbd7bf996775ec94f0be34b3ac6d40036514593eaaec85943f6ab7aad508c3608debd96f61b03dfc6d7f58178d6faf374b85c5d1596f01fb70539e1b6dc6;
    5'b10111 : xpb = 1024'hb0017e40e5cd290b10b5059ba2fd4e50701a8edabd2d4d4f3ab2ab47f74291fb55bb9fc69ecb1f65369cb7f4ef48feb583963663d6c29068b991fe8c2bf815ae9286cbe6e53dd3e5db30ce194023073e32ee15e404c3c3149f1f8ea7d52ad404232d83b4468357c8cee4f4f91eeff33253da7d1854bc16a8846996879ce35dd3;
    5'b11000 : xpb = 1024'h446f2a00a8f7f2246ba310bd19d89282fe75b4603a2f2acd17b00d55fc91a1eac69fa2ce64a496922a1827620c5cbc0ce3d9992b2282ed73913b9d81556e7c9b7990a7475b514310b732a8d1b2b69dde31d3cd1b23c2ae2c031e4bea3880306d53f2e75302ce5553d90d9593edf832cba9a3cfc8935b76b1c06841b712c8e775;
    5'b11001 : xpb = 1024'h898a1b162e10f006919693b5a10e1e06fe46dd168ca8a8c2728a28b9b4e35ee23acc234ef4a48c4dbcf1d6160cce8a2ea83723d890f61aca19847bd4b9b75839d4e9b75680f5af80a5ce862cbe25f8af24be7deacf47c6541ca99b2756002f68b3bfdd1b6fe24b6c69f61d0db4d0988e4e47015b224633eb42d667eb1190d782;
    5'b11010 : xpb = 1024'h1df7c6d5f13bb91fec849ed717e962398ca2029c09aa86404f878ac7ba326ed1abb02656ba7e037ab06d458329e24786087a869fdcb677d4f12e1ac9e32dbf26bbf392b6f7091eab81d060e530b98f4f23a43521ee46b16b80a85869b9558bd1e48540ba2c2d48f7741ebda883d8d827a410540b60e593f47ed5131a87766124;
    5'b11011 : xpb = 1024'h6312b7eb7654b702127821cf9f1eedbd8c732b525c240435aa61a62b72842bc91fdca6d74a7df9364346f4372a5415a7ccd8114d4b29a52b7976f91d47769ac5174ca2c61cad8b1b706c3e403c28ea20168ee5f199cbc9939a33a7a6d6d58acd4452368299413f10050745224ab13dea48b3859defd0512e0143394e863e5131;
    5'b11100 : xpb = 1024'ha82da900fb6db4e4386ba4c8265479418c445408ae9d822b053bc18f2ad5e8c094092757da7deef1d620a2eb2ac5e3c991359bfab99cd28201bfd770abbf766372a5b2d54251f78b5f081b9b479844f1097996c14550e1bbb3bef6e3f45589c8a41f2c4b0655352895efcc9c1189a3aced56b7307ebb0e6783b15f828506413e;
    5'b11101 : xpb = 1024'h3c9b54c0be987dfd9359afe99d2fbd741a9f798e2b9f5fa8e239239d3024f8b004ed2a5fa057661ec99c125847d9a120f178fec2055d2f8cd9697665d535dd5059af8e35b86566b63b09f653ba2bdb91085f4df8644fccd317bdb42657aae631d4e48fe9c2a032b3a0186d36e091e346432009e0bd5a6e70bfb00ab1faebcae0;
    5'b11110 : xpb = 1024'h81b645d643b17bdfb94d32e2246548f81a70a2447e18dd9e3d133f00e876b5a77919aae030575bda5c75c10c484b6f42b5d6896f73d05ce361b254b9397eb8eeb5089e44de09d32629a5d3aec59b3661fb49fec80fd4e4fb31490363752ae52d34b185b22fb428cc3100f4b0a76a4908e7c33b734c452baa421e30e5f9b3baed;
    5'b11111 : xpb = 1024'h1623f19606dc44f9143b3e039b408d2aa8cbc7c9fb1abb1c1a10a10eedc5c596e9fdade7f630d3074ff13079655f2c9a1619ec36bf90b9ee395bf3ae62f51fdb9c1279a5541d425105a7ae67382ecd01fa2fb5ff2ed3d0129547c0a5d88041966576e950ebff26573b29954b767288a23d8c8e238ae48bb37e1cdc156f99448f;
    endcase
end

endmodule
