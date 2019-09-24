module xpb_5_790
(
    input [5:1] data_in, 
    output [1024:1] data_out 
); 

reg [1024:1] xpb; 

assign data_out = xpb; 

always@(*) begin
    case(data_in)
    5'b00000 : xpb = 1024'h0;
    5'b00001 : xpb = 1024'h146e1bcbd997d2bdb21106d0a0f2d47e33c6dc89b680a9b22a8d82e21f9df384c9924038829becb4aa436e5c1087edf3815aad5fc71f66f0cdb38e365462f044c9a3b0ad7cd4a39213f6013f26356cdad12dfc1f92b0b2cbe5be6e0a5bd90be6fff297761915cf9a8461f9374ea0304715e215af2d7c46a9a1c48d76b05818eb;
    5'b00010 : xpb = 1024'h28dc3797b32fa57b64220da141e5a8fc678db9136d015364551b05c43f3be709932480710537d9695486dcb8210fdbe702b55abf8e3ecde19b671c6ca8c5e0899347615af9a9472427ec027e4c6ad9b5a25bf83f25616597cb7cdc14b7b217cdffe52eec322b9f3508c3f26e9d40608e2bc42b5e5af88d5343891aed60b031d6;
    5'b00011 : xpb = 1024'h3d4a53638cc7783916331471e2d87d7a9b54959d2381fd167fa888a65ed9da8e5cb6c0a987d3c61dfeca4b143197c9da8410081f555e34d2691aaaa2fd28d0ce5ceb1208767deab63be203bd72a046907389f45eb8121863b13b4a1f138b23b4ffd7c6624b416ecf8d25eba5ebe090d541a6410d8874d3fce54da86411084ac1;
    5'b00100 : xpb = 1024'h51b86f2f665f4af6c8441b4283cb51f8cf1b7226da02a6c8aa360b887e77ce13264900e20a6fb2d2a90db970421fb7ce056ab57f1c7d9bc336ce38d9518bc113268ec2b5f3528e484fd804fc98d5b36b44b7f07e4ac2cb2f96f9b8296f642f9bffca5dd864573e6a1187e4dd3a80c11c578856bcb5f11aa6871235dac16063ac;
    5'b00101 : xpb = 1024'h66268afb3ff71db47a55221324be267702e24eb09083507ad4c38e6a9e15c197efdb411a8d0b9f87535127cc52a7a5c186c562dee39d02b40481c70fa5eeb157f0327363702731da63ce063bbf0b204615e5ec9ddd737dfb7cb82633cb3d3b82ffbcf54e7d6d0e0495e9de148920f1636d6a6c6be36d615028d6c35171b87c97;
    5'b00110 : xpb = 1024'h7a94a6c7198ef0722c6628e3c5b0faf536a92b3a4703fa2cff51114cbdb3b51cb96d81530fa78c3bfd949628632f93b50820103eaabc69a4d2355545fa51a19cb9d62410ecfbd56c77c4077ae5408d20e713e8bd702430c76276943e27164769ffaf8cc49682dd9f1a4bd74bd7c121aa834c821b10e9a7f9ca9b50c822109582;
    5'b00111 : xpb = 1024'h8f02c292f326c32fde772fb466a3cf736a7007c3fd84a3df29de942edd51a8a182ffc18b924378f0a7d8048473b781a8897abd9e71dbd0959fe8e37c4eb491e18379d4be69d078fe8bba08ba0b75f9fbb841e4dd02d4e3934835024882ef5350ffa2243aaf98ad399eadd083266151f1992e97ca3e65eea36c5fde3ed268ae6d;
    5'b01000 : xpb = 1024'ha370de5eccbe95ed908836850796a3f19e36e44db4054d91546c1710fcef9c264c9201c414df65a5521b72e0843f6f9c0ad56afe38fb37866d9c71b2a31782264d1d856be6a51c909fb009f931ab66d6896fe0fc9585965f2df37052dec85f37ff94bbb0c8ae7cd4230fc9ba75018238af10ad796be2354d0e246bb582c0c758;
    5'b01001 : xpb = 1024'h731b4d4e46833e27793c57e982f311e6087bda6950e56cc011ce09d698ae2a312dbc483cd54d3cb5d00a1f5b1694cc52815f077dd67ce2b8ab0c08abca7fdb9a272016ab3e8c2dda10c0895bf050f806698e3839bb01c1a5e254c628076c88cd07fc0fd30fb53e120b1dc12cbd18c567618e44649131ec669797e27aa3679d8;
    5'b01010 : xpb = 1024'h1b9fd0a0be0006a029a4cc4f3922059c944e9a304b8f007e2baa637f8928d627dc6e04bc4ff0c08007441051c1f13ab8a9709dd7a487351c58644ec1110aedfe6c15b21830bd666fb50209d4e53a7c5b37c6dfa32e60cee643e3ba6cdc4fd473d07258734a11237ba513d54a1a71bc9d8bfaf9f5768f65700b3e0b9e5a8e92c3;
    5'b01011 : xpb = 1024'h300dec6c9797d95ddbb5d31fda14da1ac81576ba020faa305637e661a8c6c9aca60044f4d28cad34b1877eadd27928ac2acb4b376ba69c0d2617dcf7656dde4335b962c5ad920a01c8f80b140b6fe93608f4dbc2c11181b229a228773828e05ad064efe96326f3162975ce816911ece4a1dd0fa4a40bac19ad0299150ae6abae;
    5'b01100 : xpb = 1024'h447c0838712fac1b8dc6d9f07b07ae98fbdc5343b89053e280c56943c864bd316f92852d552899e95bcaed09e301169fac25f89732c602fdf3cb6b2db9d0ce87ff5d13732a66ad93dcee0c5331a55610da22d7e253c2347e0f6096819401ec41d057875f7c3cc2b0add7c7b8b7b21d2bb7bf2553d187f2c34ec7268bbb3ec499;
    5'b01101 : xpb = 1024'h58ea24044ac77ed93fd7e0c11bfa83172fa32fcd6f10fd94ab52ec25e802b0b63924c565d7c4869e060e5b65f38904932d80a5f6f9e569eec17ef9640e33beccc900c420a73b5125f0e40d9257dac2ebab50d401e672e749f51f048befdaf828d04a1ed59552924b3239c0f006524d72cda13b02ff04396cf08bb4026b96dd84;
    5'b01110 : xpb = 1024'h6d583fd0245f5196f1e8e791bced5795636a0c572591a746d5e06f0807a0a43b02b7059e5a607352b051c9c20410f286aedb5356c104d0df8f32879a6296af1192a474ce240ff4b804da0ed17e102fc67c7ed02179239a15dadd72964bb4040fd03cb64bae6861e5b69bba2754f27db9e38350b22c808016925041791beef66f;
    5'b01111 : xpb = 1024'h81c65b9bfdf72454a3f9ee625de02c139730e8e0dc1250f9006df1ea273e97bfcc4945d6dcfc60075a95381e1498e07a303600b6882437d05ce615d0b6f99f565c48257ba0e4984a18d01010a4459ca14daccc410bd44ce1c09be0a0a78d0ff6d02f4dc1c77e31803afdb35ea392ae00f965666159fcc6c03414ceefcc470f5a;
    5'b10000 : xpb = 1024'h96347767d78ef712560af532fed30091caf7c56a9292faab2afb74cc46dc8b4495db860f5f984cbc04d8a67a2520ce6db190ae164f439ec12a99a4070b5c8f9b25ebd6291db93bdc2cc6114fca7b097c1edac8609e84ffada65a4eab03661bddd021e537e094011abf5fac95f232de480f477c1087790d69d5d95c667c9f2845;
    5'b10001 : xpb = 1024'haaa29333b126c9d0081bfc039fc5d50ffebea1f44913a45d5588f7ae667a7ec95f6dc647e2343970af1c14d635a8bc6132eb5b76166305b1f84d323d5fbf7fdfef8f86d69a8ddf6e40bc128ef0b07656f008c4803135b2798c18bcb55f3f27c4d0147cadf9a9d0b543c1a5cd40d30e8f252991bfb4f55413779de9dd2cf74130;
    5'b10010 : xpb = 1024'he6369a9c8d067c4ef278afd305e623cc10f7b4d2a1cad980239c13ad315c54625b789079aa9a796ba0143eb62d2998a502be0efbacf9c5715618115794ffb7344e402d567d185bb4218112b7e0a1f00cd31c70737603834bc4a98c500ed9119a0ff81fa61f6a7c24163b82597a318acec31c88c92263d8cd2f2fc4f546cf3b0;
    5'b10011 : xpb = 1024'h22d18575a2683a82a13891cdd15136baf4d657d6e09d574a2cc7441cf2b3b8caef49c9401d45944b6444b247735a877dd1868e4f81ef0347e3150f4bcdb2ebb80e87b382e4a6294d560e126aa43f8bdb9e5fc326ca10eb00a20906cf5cc69d00a0f219707b0c775cc5c5b15ce64348f40213de3bbfa2843674b789c604c50c9b;
    5'b10100 : xpb = 1024'h373fa1417c000d405349989e72440b39289d3460971e00fc5754c6ff1251ac4fb8dc09789fe181000e8820a383e2757152e13baf490e6a38b0c89d822215dbfcd82b6430617accdf6a0413a9ca74f8b66f8dbf465cc19dcc87c774d9b89fa8e7a0e4b0e6942246f74a27aa9434e3793b17f5f3eaed1ecae0167c173cb51d2586;
    5'b10101 : xpb = 1024'h4badbd0d5597dffe055a9f6f1336dfb75c6410ea4d9eaaae81e249e131ef9fd4826e49b1227d6db4b8cb8eff946a6364d43be90f102dd1297e7c2bb87678cc41a1cf14ddde4f70717dfa14e8f0aa659140bbbb65ef7250986d85e2e41478b4cea0d7485cad381691ce89a3cb8383a9822dd8099a1a9b1189b840a4b365753e71;
    5'b10110 : xpb = 1024'h601bd8d92f2fb2bbb76ba63fb429b435902aed74041f5460ac6fccc3518d93594c0089e9a5195a69630efd5ba4f251585596966ed74d381a4c2fb9eecadbbc866b72c58b5b24140391f0162816dfd26c11e9b78582230364534450ee7051c0b5a0c9dfd2c64de62c52eb9d02d223d9c943ba1f49481758335a05322a15cd575c;
    5'b10111 : xpb = 1024'h7489f4a508c78579697cad10551c88b3c3f1c9fdba9ffe12d6fd4fa5712b86de1592ca2227b5471e0d526bb7b57a3f4bd6f143ce9e6c9f0b19e348251f3eaccb35167638d7f8b795a5e617673d153f46e317b3a514d3b6303902bef8cc2acc9ca0bc7748df63b5c6d74d963a20c40a10599c34f875939edcfbc9bfa0c6257047;
    5'b11000 : xpb = 1024'h88f81070e25f58371b8db3e0f60f5d31f7b8a6877120a7c5018ad28790c97a62df250a5aaa5133d2b795da13c6022d3f584bf12e658c05fbe796d65b73a19d0ffeba26e654cd5b27b9dc18a6634aac21b445afc4a78468fc1ec12d032803d883a0af0ebef87985615baf8f716f643a576f7e4aa7a30fe5869d8e4d17767d8932;
    5'b11001 : xpb = 1024'h9d662c3cbbf72af4cd9ebab1970231b02b7f831127a151772c185569b0676de7a8b74a932ced208761d9486fd68a1b32d9a69e8e2cab6cecb54a6491c8048d54c85dd793d1a1feb9cdd219e5898018fc8573abe43a351bc8047f9b0d83dce46aa0a1a635118f54fbe01188a8be046a9e85606056d08c2c303f52da8e26d5a21d;
    5'b11010 : xpb = 1024'h12702b2d3a0c8e9b4aa49ab279abedcedd05c6a08aa5ab1d8c91ef61d02b4646f010d52e5628ead6cbe778503b3f85bf6e72407d1180391d25eb369e19508e81db253929ee5a506cf2e188216d9c1a6629cae6b405fa18334b1771d258b4dbf718cab8179dc2c08ddb39b0114d474bc4c689723adbd15a99aa7ed004e4b549d;
    5'b11011 : xpb = 1024'h15951e7ead389ba766bb507bc88d935b219738f3bf2b04640356a1d83ca0a7e938934d8b67fe7b621701e5e1143be64f7841d16798376a82a01241a035f7f92ce75604401bba4898e32419c13d0f2e8133caaa8ad310544f1a6fe527816459a6717f42f792f1fba3621594386374a503624aacd2db395c533c6c7a76fea36d88;
    5'b11100 : xpb = 1024'h2a033a4a86d06e6518cc574c698067d9555e157d75abae162de424ba5c3e9b6e02258dc3ea9a6816c145543d24c3d442f99c7ec75f56d1736dc5cfd68a5ae971b0f9b4ed988eec2af71a1b0063449b5c04f8a6aa65c1071b002e5331dd3d658d7171da6dac07cb3de6778d6fb214d54a782cc28208b5a2fcde3107edaefb8673;
    5'b11101 : xpb = 1024'h3e71561660684122cadd5e1d0a733c578924f2072c2c57c85871a79c7bdc8ef2cbb7cdfc6d3654cb6b88c299354bc2367af72c27267638643b795e0cdebdd9b67a9d659b15638fbd0b101c3f897a0836d626a2c9f871b9e6e5ecc13c39167174716471e3c51d9ad86ad986a700b505918e0ed8313631e9a67ff595645f539f5e;
    5'b11110 : xpb = 1024'h52df71e23a0013e07cee64edab6610d5bcebce90e2ad017a82ff2a7e9b7a8277954a0e34efd2418015cc30f545d3b029fc51d986ed959f55092cec433320c9fb444116489238334f1f061d7eafaf7511a7549ee98b226cb2cbab2f4694ef7d5b71570959de336a72ef3b7fde4f5535d8a3f0ede063ae305021ba22db0fabb849;
    5'b11111 : xpb = 1024'h674d8dae1397e69e2eff6bbe4c58e553f0b2ab1a992dab2cad8cad60bb1875fc5edc4e6d726e2e34c00f9f51565b9e1d7dac86e6b4b50645d6e07a798783ba400de4c6f60f0cd6e132fc1ebdd5e4e1ec78829b091dd31f7eb1699d50f0c889427149a0cff7493a0d739d79159df5661fb9d3038f912a76f9c37eb051c003d134;
    endcase
end

endmodule
