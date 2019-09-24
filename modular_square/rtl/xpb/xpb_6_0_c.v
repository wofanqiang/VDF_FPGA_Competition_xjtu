module xpb_6_0
(
    input [3:1] data_in0, 
    input [3:1] data_in1, 
    output [1024:1] data_out 
); 

reg [1024:1] xpb; 

assign data_out = xpb; 

always@(*) begin
    case({data_in0, data_in1})
    6'b000000 : xpb = 1024'h0;
    6'b000001 : xpb = 1024'h4f52baaa3e11cb3734fa8828efa5b8ae8e89fccf2a885f88822346aa4cfd52f7fcb7828735d9817160a1c0b91ca1ef359be5d819dd4d2fb44f60c0a1c52d8b4e8bb0cb51506f02baed65fd5d67243bcf0bfb06677379d2ef4a736e0545d55d6dd0f86dd64f37077279401921082fd9d6b126211dafb4a2cfb99084fb771d9995;
    6'b000010 : xpb = 1024'h9ea575547c23966e69f51051df4b715d1d13f99e5510bf1104468d5499faa5eff96f050e6bb302e2c14381723943de6b37cbb033ba9a5f689ec181438a5b169d176196a2a0de0575dacbfabace48779e17f60ccee6f3a5de94e6dc0a8baabadba1f0dbac9e6e0ee4f2803242105fb3ad624c423b5f69459f732109f6ee3b332a;
    6'b000011 : xpb = 1024'h3d4aeaa8f8472cdcd3ea20a3be96e2ba3a27f33caa217e22088d1aa933f54bdff2de0a1cd76605c5828702e47287bcd66f9760677534bed13d83028714b62d3a2ec32d4541bc0aebb597f5759c90ef3c2fec199dcde74bbd29cdb815175575b743e1b7593cdc1dc9e500648420bf675ac4988476bed28b3ee64213eddc766654;
    6'b000100 : xpb = 1024'h8c9da5533658f81408e4a8ccae3c9b68c8b1f00bd4a9ddaa8ab0615380f29ed7ef958ca40d3f8736e328c39d8f29ac0c0b7d38815281ee858ce3c328d9e3b888ba73f896922b0da6a2fdf2d303b52b0b3be7200541611eac7441261a5d2ad32514da252f8c13253c5e407da528ef413175bea5946e872e0e9fd298e95393ffe9;
    6'b000101 : xpb = 1024'h2b431aa7b27c8e8272d9b91e8d880cc5e5c5e9aa29ba9cbb8ef6eea81aed44c7e90491b278f28a19a46c450fc86d8a774348e8b50d1c4dee2ba5446c643ecf25d1d58f393309131c7dc9ed8dd1fda2a953dd2cd42854c48b09280224e8d58e00b6cb00dc2a81342150c0afe7394ef4ded80ae7cfcdf073ae12f3a2e041cf3313;
    6'b000110 : xpb = 1024'h7a95d551f08e59b9a7d441477d2dc574744fe6795442fc44111a355267ea97bfe5bc1439aecc0b8b050e05c8e50f79acdf2ec0ceea697da27b06050e296c5a745d865a8a837815d76b2feaeb3921de785fd8333b9bce977a539b702a2eaaeb6e87c36eb279b83b93ca00c908417eceb5893108ed7da5167dcc8427dbb8eccca8;
    6'b000111 : xpb = 1024'h193b4aa66cb1f02811c951995c7936d19163e017a953bb551560c2a701e53dafdf2b19481a7f0e6dc651873b1e53581816fa7102a503dd0b19c78651b3c7711174e7f12d24561b4d45fbe5a6076a561677ce400a82c23d58e8824c34ba55a64a29b44a5f18264a78bc80fb4a51de8262eb7d4b28dd0e5c1d3fa531d2a727ffd2;
    6'b001000 : xpb = 1024'h4f52baaa3e11cb3734fa8828efa5b8ae8e89fccf2a885f88822346aa4cfd52f7fcb7828735d9817160a1c0b91ca1ef359be5d819dd4d2fb44f60c0a1c52d8b4e8bb0cb51506f02baed65fd5d67243bcf0bfb06677379d2ef4a736e0545d55d6dd0f86dd64f37077279401921082fd9d6b126211dafb4a2cfb99084fb771d9995;
    6'b001001 : xpb = 1024'h9ea575547c23966e69f51051df4b715d1d13f99e5510bf1104468d5499faa5eff96f050e6bb302e2c14381723943de6b37cbb033ba9a5f689ec181438a5b169d176196a2a0de0575dacbfabace48779e17f60ccee6f3a5de94e6dc0a8baabadba1f0dbac9e6e0ee4f2803242105fb3ad624c423b5f69459f732109f6ee3b332a;
    6'b001010 : xpb = 1024'h3d4aeaa8f8472cdcd3ea20a3be96e2ba3a27f33caa217e22088d1aa933f54bdff2de0a1cd76605c5828702e47287bcd66f9760677534bed13d83028714b62d3a2ec32d4541bc0aebb597f5759c90ef3c2fec199dcde74bbd29cdb815175575b743e1b7593cdc1dc9e500648420bf675ac4988476bed28b3ee64213eddc766654;
    6'b001011 : xpb = 1024'h8c9da5533658f81408e4a8ccae3c9b68c8b1f00bd4a9ddaa8ab0615380f29ed7ef958ca40d3f8736e328c39d8f29ac0c0b7d38815281ee858ce3c328d9e3b888ba73f896922b0da6a2fdf2d303b52b0b3be7200541611eac7441261a5d2ad32514da252f8c13253c5e407da528ef413175bea5946e872e0e9fd298e95393ffe9;
    6'b001100 : xpb = 1024'h2b431aa7b27c8e8272d9b91e8d880cc5e5c5e9aa29ba9cbb8ef6eea81aed44c7e90491b278f28a19a46c450fc86d8a774348e8b50d1c4dee2ba5446c643ecf25d1d58f393309131c7dc9ed8dd1fda2a953dd2cd42854c48b09280224e8d58e00b6cb00dc2a81342150c0afe7394ef4ded80ae7cfcdf073ae12f3a2e041cf3313;
    6'b001101 : xpb = 1024'h7a95d551f08e59b9a7d441477d2dc574744fe6795442fc44111a355267ea97bfe5bc1439aecc0b8b050e05c8e50f79acdf2ec0ceea697da27b06050e296c5a745d865a8a837815d76b2feaeb3921de785fd8333b9bce977a539b702a2eaaeb6e87c36eb279b83b93ca00c908417eceb5893108ed7da5167dcc8427dbb8eccca8;
    6'b001110 : xpb = 1024'h193b4aa66cb1f02811c951995c7936d19163e017a953bb551560c2a701e53dafdf2b19481a7f0e6dc651873b1e53581816fa7102a503dd0b19c78651b3c7711174e7f12d24561b4d45fbe5a6076a561677ce400a82c23d58e8824c34ba55a64a29b44a5f18264a78bc80fb4a51de8262eb7d4b28dd0e5c1d3fa531d2a727ffd2;
    6'b001111 : xpb = 1024'h688e0550aac3bb5f46c3d9c24c1eef801feddce6d3dc1add978409514ee290a7dbe29bcf50588fdf26f347f43af5474db2e0491c82510cbf692846f378f4fc600098bc7e74c51e083361e3036e8e91e583c94671f63c104832f5ba3a002b03b7faacb835675d51eb35c1146b5a0e5c399ca36c468cc2feecf935b6ce1e459967;
    6'b010000 : xpb = 1024'h9ea575547c23966e69f51051df4b715d1d13f99e5510bf1104468d5499faa5eff96f050e6bb302e2c14381723943de6b37cbb033ba9a5f689ec181438a5b169d176196a2a0de0575dacbfabace48779e17f60ccee6f3a5de94e6dc0a8baabadba1f0dbac9e6e0ee4f2803242105fb3ad624c423b5f69459f732109f6ee3b332a;
    6'b010001 : xpb = 1024'h3d4aeaa8f8472cdcd3ea20a3be96e2ba3a27f33caa217e22088d1aa933f54bdff2de0a1cd76605c5828702e47287bcd66f9760677534bed13d83028714b62d3a2ec32d4541bc0aebb597f5759c90ef3c2fec199dcde74bbd29cdb815175575b743e1b7593cdc1dc9e500648420bf675ac4988476bed28b3ee64213eddc766654;
    6'b010010 : xpb = 1024'h8c9da5533658f81408e4a8ccae3c9b68c8b1f00bd4a9ddaa8ab0615380f29ed7ef958ca40d3f8736e328c39d8f29ac0c0b7d38815281ee858ce3c328d9e3b888ba73f896922b0da6a2fdf2d303b52b0b3be7200541611eac7441261a5d2ad32514da252f8c13253c5e407da528ef413175bea5946e872e0e9fd298e95393ffe9;
    6'b010011 : xpb = 1024'h2b431aa7b27c8e8272d9b91e8d880cc5e5c5e9aa29ba9cbb8ef6eea81aed44c7e90491b278f28a19a46c450fc86d8a774348e8b50d1c4dee2ba5446c643ecf25d1d58f393309131c7dc9ed8dd1fda2a953dd2cd42854c48b09280224e8d58e00b6cb00dc2a81342150c0afe7394ef4ded80ae7cfcdf073ae12f3a2e041cf3313;
    6'b010100 : xpb = 1024'h7a95d551f08e59b9a7d441477d2dc574744fe6795442fc44111a355267ea97bfe5bc1439aecc0b8b050e05c8e50f79acdf2ec0ceea697da27b06050e296c5a745d865a8a837815d76b2feaeb3921de785fd8333b9bce977a539b702a2eaaeb6e87c36eb279b83b93ca00c908417eceb5893108ed7da5167dcc8427dbb8eccca8;
    6'b010101 : xpb = 1024'h193b4aa66cb1f02811c951995c7936d19163e017a953bb551560c2a701e53dafdf2b19481a7f0e6dc651873b1e53581816fa7102a503dd0b19c78651b3c7711174e7f12d24561b4d45fbe5a6076a561677ce400a82c23d58e8824c34ba55a64a29b44a5f18264a78bc80fb4a51de8262eb7d4b28dd0e5c1d3fa531d2a727ffd2;
    6'b010110 : xpb = 1024'h688e0550aac3bb5f46c3d9c24c1eef801feddce6d3dc1add978409514ee290a7dbe29bcf50588fdf26f347f43af5474db2e0491c82510cbf692846f378f4fc600098bc7e74c51e083361e3036e8e91e583c94671f63c104832f5ba3a002b03b7faacb835675d51eb35c1146b5a0e5c399ca36c468cc2feecf935b6ce1e459967;
    6'b010111 : xpb = 1024'h7337aa526e751cdb0b8ea142b6a60dd3d01d68528ecd9ee9bca96a5e8dd3697d551a0ddbc0b92c1e836c966743925b8eaabf9503ceb6c2807e9c837035012fd17fa532115a3237e0e2dddbe3cd709839bbf5340dd2fb626c7dc96448bd5be939c9d93e205cb60d0284146ad6a6e0fe6feefae81ec2c448c6c56c0c50c80cc91;
    6'b011000 : xpb = 1024'h3d4aeaa8f8472cdcd3ea20a3be96e2ba3a27f33caa217e22088d1aa933f54bdff2de0a1cd76605c5828702e47287bcd66f9760677534bed13d83028714b62d3a2ec32d4541bc0aebb597f5759c90ef3c2fec199dcde74bbd29cdb815175575b743e1b7593cdc1dc9e500648420bf675ac4988476bed28b3ee64213eddc766654;
    6'b011001 : xpb = 1024'h8c9da5533658f81408e4a8ccae3c9b68c8b1f00bd4a9ddaa8ab0615380f29ed7ef958ca40d3f8736e328c39d8f29ac0c0b7d38815281ee858ce3c328d9e3b888ba73f896922b0da6a2fdf2d303b52b0b3be7200541611eac7441261a5d2ad32514da252f8c13253c5e407da528ef413175bea5946e872e0e9fd298e95393ffe9;
    6'b011010 : xpb = 1024'h2b431aa7b27c8e8272d9b91e8d880cc5e5c5e9aa29ba9cbb8ef6eea81aed44c7e90491b278f28a19a46c450fc86d8a774348e8b50d1c4dee2ba5446c643ecf25d1d58f393309131c7dc9ed8dd1fda2a953dd2cd42854c48b09280224e8d58e00b6cb00dc2a81342150c0afe7394ef4ded80ae7cfcdf073ae12f3a2e041cf3313;
    6'b011011 : xpb = 1024'h7a95d551f08e59b9a7d441477d2dc574744fe6795442fc44111a355267ea97bfe5bc1439aecc0b8b050e05c8e50f79acdf2ec0ceea697da27b06050e296c5a745d865a8a837815d76b2feaeb3921de785fd8333b9bce977a539b702a2eaaeb6e87c36eb279b83b93ca00c908417eceb5893108ed7da5167dcc8427dbb8eccca8;
    6'b011100 : xpb = 1024'h193b4aa66cb1f02811c951995c7936d19163e017a953bb551560c2a701e53dafdf2b19481a7f0e6dc651873b1e53581816fa7102a503dd0b19c78651b3c7711174e7f12d24561b4d45fbe5a6076a561677ce400a82c23d58e8824c34ba55a64a29b44a5f18264a78bc80fb4a51de8262eb7d4b28dd0e5c1d3fa531d2a727ffd2;
    6'b011101 : xpb = 1024'h688e0550aac3bb5f46c3d9c24c1eef801feddce6d3dc1add978409514ee290a7dbe29bcf50588fdf26f347f43af5474db2e0491c82510cbf692846f378f4fc600098bc7e74c51e083361e3036e8e91e583c94671f63c104832f5ba3a002b03b7faacb835675d51eb35c1146b5a0e5c399ca36c468cc2feecf935b6ce1e459967;
    6'b011110 : xpb = 1024'h7337aa526e751cdb0b8ea142b6a60dd3d01d68528ecd9ee9bca96a5e8dd3697d551a0ddbc0b92c1e836c966743925b8eaabf9503ceb6c2807e9c837035012fd17fa532115a3237e0e2dddbe3cd709839bbf5340dd2fb626c7dc96448bd5be939c9d93e205cb60d0284146ad6a6e0fe6feefae81ec2c448c6c56c0c50c80cc91;
    6'b011111 : xpb = 1024'h5686354f64f91d04e5b3723d1b10198bcb8bd354537539771deddd5035da898fd2092364f1e5143348d88a1f90db14ee8691d16a1a389bdc574a88d8c87d9e4ba3ab1e7266122638fb93db1ba3fb4552a7ba59a850a9891612500449d1ab1c016d9601b855026842a1815fce729de9bdb015cf9f9be0e75c25e745c0839e6626;
    6'b100000 : xpb = 1024'h8c9da5533658f81408e4a8ccae3c9b68c8b1f00bd4a9ddaa8ab0615380f29ed7ef958ca40d3f8736e328c39d8f29ac0c0b7d38815281ee858ce3c328d9e3b888ba73f896922b0da6a2fdf2d303b52b0b3be7200541611eac7441261a5d2ad32514da252f8c13253c5e407da528ef413175bea5946e872e0e9fd298e95393ffe9;
    6'b100001 : xpb = 1024'h2b431aa7b27c8e8272d9b91e8d880cc5e5c5e9aa29ba9cbb8ef6eea81aed44c7e90491b278f28a19a46c450fc86d8a774348e8b50d1c4dee2ba5446c643ecf25d1d58f393309131c7dc9ed8dd1fda2a953dd2cd42854c48b09280224e8d58e00b6cb00dc2a81342150c0afe7394ef4ded80ae7cfcdf073ae12f3a2e041cf3313;
    6'b100010 : xpb = 1024'h7a95d551f08e59b9a7d441477d2dc574744fe6795442fc44111a355267ea97bfe5bc1439aecc0b8b050e05c8e50f79acdf2ec0ceea697da27b06050e296c5a745d865a8a837815d76b2feaeb3921de785fd8333b9bce977a539b702a2eaaeb6e87c36eb279b83b93ca00c908417eceb5893108ed7da5167dcc8427dbb8eccca8;
    6'b100011 : xpb = 1024'h193b4aa66cb1f02811c951995c7936d19163e017a953bb551560c2a701e53dafdf2b19481a7f0e6dc651873b1e53581816fa7102a503dd0b19c78651b3c7711174e7f12d24561b4d45fbe5a6076a561677ce400a82c23d58e8824c34ba55a64a29b44a5f18264a78bc80fb4a51de8262eb7d4b28dd0e5c1d3fa531d2a727ffd2;
    6'b100100 : xpb = 1024'h688e0550aac3bb5f46c3d9c24c1eef801feddce6d3dc1add978409514ee290a7dbe29bcf50588fdf26f347f43af5474db2e0491c82510cbf692846f378f4fc600098bc7e74c51e083361e3036e8e91e583c94671f63c104832f5ba3a002b03b7faacb835675d51eb35c1146b5a0e5c399ca36c468cc2feecf935b6ce1e459967;
    6'b100101 : xpb = 1024'h7337aa526e751cdb0b8ea142b6a60dd3d01d68528ecd9ee9bca96a5e8dd3697d551a0ddbc0b92c1e836c966743925b8eaabf9503ceb6c2807e9c837035012fd17fa532115a3237e0e2dddbe3cd709839bbf5340dd2fb626c7dc96448bd5be939c9d93e205cb60d0284146ad6a6e0fe6feefae81ec2c448c6c56c0c50c80cc91;
    6'b100110 : xpb = 1024'h5686354f64f91d04e5b3723d1b10198bcb8bd354537539771deddd5035da898fd2092364f1e5143348d88a1f90db14ee8691d16a1a389bdc574a88d8c87d9e4ba3ab1e7266122638fb93db1ba3fb4552a7ba59a850a9891612500449d1ab1c016d9601b855026842a1815fce729de9bdb015cf9f9be0e75c25e745c0839e6626;
    6'b100111 : xpb = 1024'ha5d8eff9a30ae83c1aadfa660ab5d23a5a15d0237dfd98ffa01123fa82d7dc87cec0a5ec27be95a4a97a4ad8ad7d04242277a983f785cb90a6ab497a8dab299a2f5be9c3b68128f3e8f9d8790b1f8121b3b5600fc4235c055cc3724f1780796f3e8e6f8ea4396fb51ac178ef7acdc394613bf0bd4b958a2bdf77cabbfabbffbb;
    6'b101000 : xpb = 1024'h2b431aa7b27c8e8272d9b91e8d880cc5e5c5e9aa29ba9cbb8ef6eea81aed44c7e90491b278f28a19a46c450fc86d8a774348e8b50d1c4dee2ba5446c643ecf25d1d58f393309131c7dc9ed8dd1fda2a953dd2cd42854c48b09280224e8d58e00b6cb00dc2a81342150c0afe7394ef4ded80ae7cfcdf073ae12f3a2e041cf3313;
    6'b101001 : xpb = 1024'h7a95d551f08e59b9a7d441477d2dc574744fe6795442fc44111a355267ea97bfe5bc1439aecc0b8b050e05c8e50f79acdf2ec0ceea697da27b06050e296c5a745d865a8a837815d76b2feaeb3921de785fd8333b9bce977a539b702a2eaaeb6e87c36eb279b83b93ca00c908417eceb5893108ed7da5167dcc8427dbb8eccca8;
    6'b101010 : xpb = 1024'h193b4aa66cb1f02811c951995c7936d19163e017a953bb551560c2a701e53dafdf2b19481a7f0e6dc651873b1e53581816fa7102a503dd0b19c78651b3c7711174e7f12d24561b4d45fbe5a6076a561677ce400a82c23d58e8824c34ba55a64a29b44a5f18264a78bc80fb4a51de8262eb7d4b28dd0e5c1d3fa531d2a727ffd2;
    6'b101011 : xpb = 1024'h688e0550aac3bb5f46c3d9c24c1eef801feddce6d3dc1add978409514ee290a7dbe29bcf50588fdf26f347f43af5474db2e0491c82510cbf692846f378f4fc600098bc7e74c51e083361e3036e8e91e583c94671f63c104832f5ba3a002b03b7faacb835675d51eb35c1146b5a0e5c399ca36c468cc2feecf935b6ce1e459967;
    6'b101100 : xpb = 1024'h7337aa526e751cdb0b8ea142b6a60dd3d01d68528ecd9ee9bca96a5e8dd3697d551a0ddbc0b92c1e836c966743925b8eaabf9503ceb6c2807e9c837035012fd17fa532115a3237e0e2dddbe3cd709839bbf5340dd2fb626c7dc96448bd5be939c9d93e205cb60d0284146ad6a6e0fe6feefae81ec2c448c6c56c0c50c80cc91;
    6'b101101 : xpb = 1024'h5686354f64f91d04e5b3723d1b10198bcb8bd354537539771deddd5035da898fd2092364f1e5143348d88a1f90db14ee8691d16a1a389bdc574a88d8c87d9e4ba3ab1e7266122638fb93db1ba3fb4552a7ba59a850a9891612500449d1ab1c016d9601b855026842a1815fce729de9bdb015cf9f9be0e75c25e745c0839e6626;
    6'b101110 : xpb = 1024'ha5d8eff9a30ae83c1aadfa660ab5d23a5a15d0237dfd98ffa01123fa82d7dc87cec0a5ec27be95a4a97a4ad8ad7d04242277a983f785cb90a6ab497a8dab299a2f5be9c3b68128f3e8f9d8790b1f8121b3b5600fc4235c055cc3724f1780796f3e8e6f8ea4396fb51ac178ef7acdc394613bf0bd4b958a2bdf77cabbfabbffbb;
    6'b101111 : xpb = 1024'h447e654e1f2e7eaa84a30ab7ea0143977729c9c1d30e5810a457b14f1cd28277c82faafa937198876abdcc4ae6c0e28f5a4359b7b2202af9456ccabe1806403746bd8066575f2e69c3c5d333d967f8bfcbab6cdeab1701e3f1aa4e59a32b344ae07f4b3b42a77e9a0d41ab318b2d7741c38832f8aafecfcb5298d4b2e8f732e5;
    6'b110000 : xpb = 1024'h7a95d551f08e59b9a7d441477d2dc574744fe6795442fc44111a355267ea97bfe5bc1439aecc0b8b050e05c8e50f79acdf2ec0ceea697da27b06050e296c5a745d865a8a837815d76b2feaeb3921de785fd8333b9bce977a539b702a2eaaeb6e87c36eb279b83b93ca00c908417eceb5893108ed7da5167dcc8427dbb8eccca8;
    6'b110001 : xpb = 1024'h193b4aa66cb1f02811c951995c7936d19163e017a953bb551560c2a701e53dafdf2b19481a7f0e6dc651873b1e53581816fa7102a503dd0b19c78651b3c7711174e7f12d24561b4d45fbe5a6076a561677ce400a82c23d58e8824c34ba55a64a29b44a5f18264a78bc80fb4a51de8262eb7d4b28dd0e5c1d3fa531d2a727ffd2;
    6'b110010 : xpb = 1024'h688e0550aac3bb5f46c3d9c24c1eef801feddce6d3dc1add978409514ee290a7dbe29bcf50588fdf26f347f43af5474db2e0491c82510cbf692846f378f4fc600098bc7e74c51e083361e3036e8e91e583c94671f63c104832f5ba3a002b03b7faacb835675d51eb35c1146b5a0e5c399ca36c468cc2feecf935b6ce1e459967;
    6'b110011 : xpb = 1024'h7337aa526e751cdb0b8ea142b6a60dd3d01d68528ecd9ee9bca96a5e8dd3697d551a0ddbc0b92c1e836c966743925b8eaabf9503ceb6c2807e9c837035012fd17fa532115a3237e0e2dddbe3cd709839bbf5340dd2fb626c7dc96448bd5be939c9d93e205cb60d0284146ad6a6e0fe6feefae81ec2c448c6c56c0c50c80cc91;
    6'b110100 : xpb = 1024'h5686354f64f91d04e5b3723d1b10198bcb8bd354537539771deddd5035da898fd2092364f1e5143348d88a1f90db14ee8691d16a1a389bdc574a88d8c87d9e4ba3ab1e7266122638fb93db1ba3fb4552a7ba59a850a9891612500449d1ab1c016d9601b855026842a1815fce729de9bdb015cf9f9be0e75c25e745c0839e6626;
    6'b110101 : xpb = 1024'ha5d8eff9a30ae83c1aadfa660ab5d23a5a15d0237dfd98ffa01123fa82d7dc87cec0a5ec27be95a4a97a4ad8ad7d04242277a983f785cb90a6ab497a8dab299a2f5be9c3b68128f3e8f9d8790b1f8121b3b5600fc4235c055cc3724f1780796f3e8e6f8ea4396fb51ac178ef7acdc394613bf0bd4b958a2bdf77cabbfabbffbb;
    6'b110110 : xpb = 1024'h447e654e1f2e7eaa84a30ab7ea0143977729c9c1d30e5810a457b14f1cd28277c82faafa937198876abdcc4ae6c0e28f5a4359b7b2202af9456ccabe1806403746bd8066575f2e69c3c5d333d967f8bfcbab6cdeab1701e3f1aa4e59a32b344ae07f4b3b42a77e9a0d41ab318b2d7741c38832f8aafecfcb5298d4b2e8f732e5;
    6'b110111 : xpb = 1024'h93d11ff85d4049e1b99d92e0d9a6fc4605b3c690fd96b799267af7f969cfd56fc4e72d81c94b19f8cb5f8d040362d1c4f62931d18f6d5aad94cd8b5fdd33cb85d26e4bb7a7ce3124b12bd091408c348ed7a673461e90d4d33c1dbc5ee90091b8b177b91191de860c8681c452935d511874ae54165ab3729b0c2959ae6014cc7a;
    6'b111000 : xpb = 1024'h193b4aa66cb1f02811c951995c7936d19163e017a953bb551560c2a701e53dafdf2b19481a7f0e6dc651873b1e53581816fa7102a503dd0b19c78651b3c7711174e7f12d24561b4d45fbe5a6076a561677ce400a82c23d58e8824c34ba55a64a29b44a5f18264a78bc80fb4a51de8262eb7d4b28dd0e5c1d3fa531d2a727ffd2;
    6'b111001 : xpb = 1024'h688e0550aac3bb5f46c3d9c24c1eef801feddce6d3dc1add978409514ee290a7dbe29bcf50588fdf26f347f43af5474db2e0491c82510cbf692846f378f4fc600098bc7e74c51e083361e3036e8e91e583c94671f63c104832f5ba3a002b03b7faacb835675d51eb35c1146b5a0e5c399ca36c468cc2feecf935b6ce1e459967;
    6'b111010 : xpb = 1024'h7337aa526e751cdb0b8ea142b6a60dd3d01d68528ecd9ee9bca96a5e8dd3697d551a0ddbc0b92c1e836c966743925b8eaabf9503ceb6c2807e9c837035012fd17fa532115a3237e0e2dddbe3cd709839bbf5340dd2fb626c7dc96448bd5be939c9d93e205cb60d0284146ad6a6e0fe6feefae81ec2c448c6c56c0c50c80cc91;
    6'b111011 : xpb = 1024'h5686354f64f91d04e5b3723d1b10198bcb8bd354537539771deddd5035da898fd2092364f1e5143348d88a1f90db14ee8691d16a1a389bdc574a88d8c87d9e4ba3ab1e7266122638fb93db1ba3fb4552a7ba59a850a9891612500449d1ab1c016d9601b855026842a1815fce729de9bdb015cf9f9be0e75c25e745c0839e6626;
    6'b111100 : xpb = 1024'ha5d8eff9a30ae83c1aadfa660ab5d23a5a15d0237dfd98ffa01123fa82d7dc87cec0a5ec27be95a4a97a4ad8ad7d04242277a983f785cb90a6ab497a8dab299a2f5be9c3b68128f3e8f9d8790b1f8121b3b5600fc4235c055cc3724f1780796f3e8e6f8ea4396fb51ac178ef7acdc394613bf0bd4b958a2bdf77cabbfabbffbb;
    6'b111101 : xpb = 1024'h447e654e1f2e7eaa84a30ab7ea0143977729c9c1d30e5810a457b14f1cd28277c82faafa937198876abdcc4ae6c0e28f5a4359b7b2202af9456ccabe1806403746bd8066575f2e69c3c5d333d967f8bfcbab6cdeab1701e3f1aa4e59a32b344ae07f4b3b42a77e9a0d41ab318b2d7741c38832f8aafecfcb5298d4b2e8f732e5;
    6'b111110 : xpb = 1024'h93d11ff85d4049e1b99d92e0d9a6fc4605b3c690fd96b799267af7f969cfd56fc4e72d81c94b19f8cb5f8d040362d1c4f62931d18f6d5aad94cd8b5fdd33cb85d26e4bb7a7ce3124b12bd091408c348ed7a673461e90d4d33c1dbc5ee90091b8b177b91191de860c8681c452935d511874ae54165ab3729b0c2959ae6014cc7a;
    6'b111111 : xpb = 1024'h3276954cd963e0502392a332b8f26da322c7c02f52a776aa2ac1854e03ca7b5fbe56329034fe1cdb8ca30e763ca6b0302df4e2054a07ba16338f0ca3678ee222e9cfe25a48ac369a8bf7cb4c0ed4ac2cef9c801505847ab1d104986974ab4c94536894be304c94f17901f694a3bd04c5d6fa9651ba1cb83a7f4a63a54e4fffa4;
    endcase
end

endmodule
