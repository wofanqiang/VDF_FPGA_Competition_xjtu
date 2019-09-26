module xpb_5_470
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
    5'b00001 : xpb = 1024'h2bbb684af657d812cc91686eb92cedb016a942b7a7e40a13a45c056f8a2689e7e586e459829699ca9801fc424d48b919444fb46c219030a1151623cca53b83c032b5f911684a0bd110b9cbdeb365fee376324bf3166b37d35c7330f690cf1289c645d080026d8992cf93a74d99e92ea7510338f720852052f9500bf41c1a3d50;
    5'b00010 : xpb = 1024'h5776d095ecafb0259922d0dd7259db602d52856f4fc8142748b80adf144d13cfcb0dc8b3052d33953003f8849a917232889f68d8432061422a2c47994a770780656bf222d09417a2217397bd66cbfdc6ec6497e62cd66fa6b8e661ed219e25138c8ba10004db13259f274e9b33d25d4ea20671ee410a40a5f2a017e838347aa0;
    5'b00011 : xpb = 1024'h833238e0e307883865b4394c2b86c91043fbc826f7ac1e3aed14104e9e739db7b094ad0c87c3cd5fc805f4c6e7da2b4bccef1d4464b091e33f426b65efb28b409821eb3438de2373322d639c1a31fcaa6296e3d94341a77a155992e3b26d379d52d1718007489cb86ebaf5e8cdbb8bf5f309aae5618f60f8ebf023dc544eb7f0;
    5'b00100 : xpb = 1024'haeeda12bd95f604b3245a1bae4b3b6c05aa50ade9f90284e917015be289a279f961b91660a5a672a6007f1093522e465113ed1b08640c28454588f3294ee0f00cad7e445a1282f4442e72f7acd97fb8dd8c92fcc59acdf4d71ccc3da433c4a271917420009b6264b3e4e9d3667a4ba9d440ce3dc8214814be5402fd07068f540;
    5'b00101 : xpb = 1024'h29fbc4210dc9039533d192528d865d1effd84a6571fc91eab7ef61d7ffbe047f7859f846c2ca826658abae049f0d8cb3f1745e36851e22d9b8cf73a0ff571e0f893ea8a859e13dd04106f8b6e82236405af68226e391ea1018b362d619e0ba1eb05580565b5ab75087225da509bdc31b46363df1524e446e9820c0c003a0cc25;
    5'b00110 : xpb = 1024'h55b72c6c0420dba80062fac146b34acf16818d1d19e09bfe5c4b674789e48e675de0dca045611c30f0adaa46ec5645cd35c412a2a6ae537acde5976da492a1cfbbf4a1b9c22b49a151c0c4959b883523d128ce19f9fd21e3752693ccaaafcca8769b50d65dc840e356b604f2a3a6f1c2973976e872d364c19170ccb41fbb0975;
    5'b00111 : xpb = 1024'h817294b6fa78b3baccf4632fffe0387f2d2acfd4c1c4a61200a76cb7140b184f4367c0f9c7f7b5fb88afa689399efee67a13c70ec83e841be2fbbb3a49ce258feeaa9acb2a755572627a90744eee3407475b1a0d106859b6d199c4c33b7edf323ce121566035ca762649ac403d902069e83cafdf935885148ac0d8a83bd546c5;
    5'b01000 : xpb = 1024'had2dfd01f0d08bcd9985cb9eb90d262f43d4128c69a8b025a50372269e31a23728eea5534a8e4fc620b1a2cb86e7b7ffbe637b7ae9ceb4bcf811df06ef09a950216093dc92bf614373345c53025432eabd8d660026d3918a2e0cf5b9cc4df1bc0326f1d662a35408f5dd538dd7794f11393fe8d6b3dda5678410e49c57ef8415;
    5'b01001 : xpb = 1024'h283c1ff7253a2f179b11bc3661dfcc8de90752133c1519c1cb82be4075557f170b2d0c3402fe6b0219555fc6f0d2604e9e990800e8ac15125c88c3755972b85edfc7583f4b786fcf7154258f1cde6d9d3fbab85ab0b89c4cd4f394b5a2f261b39a65302cb447e50e3eb113fc7992578f3b6942eb8417688a36f1758beb275afa;
    5'b01010 : xpb = 1024'h53f788421b92072a67a324a51b0cba3dffb094cae3f923d56fdec3afff7c08fef0b3f08d859504ccb1575c093e1b1967e2e8bc6d0a3c45b3719ee741feae3c1f127d5150b3c27ba0820df16dd0446c80b5ed044dc723d4203166c5ac33c1743d60ab00acb6b56ea10e44bb4a137b86368c6c7be2a49c88dd304181800741984a;
    5'b01011 : xpb = 1024'h7fb2f08d11e9df3d34348d13d439a7ee1659d7828bdd2de9143ac91f89a292e6d63ad4e7082b9e974959584b8b63d281273870d92bcc765486b50b0ea3e9bfdf45334a621c0c877192c7bd4c83aa6b642c1f5040dd8f0bf38dd9f6a2c49086c726f0d12cb922f833ddd86297ad64b4dddd6fb4d9c521a93029918d74235bd59a;
    5'b01100 : xpb = 1024'hab6e58d80841b75000c5f5828d66959e2d031a3a33c137fcb896ce8f13c91ccebbc1b9408ac23861e15b548dd8ac8b9a6b8825454d5ca6f59bcb2edb4925439f77e9437384569342a381892b37106a47a2519c33f3fa43c6ea4d2799555f9950ed36a1acbb9081c6ad6c09e5474de3852e72edd0e5a6c98322e199683f7612ea;
    5'b01101 : xpb = 1024'h267c7bcd3cab5a9a0251e61a36393bfcd23659c1062da198df161aa8eaecf9ae9e0020214332539dd9ff1189429733e94bbdb1cb4c3a074b00421349b38e52ae365007d63d0fa1cea1a15267519aa4fa247eee8e7ddf4e899133c6952c0409488474e0030d3512cbf63fca53e966ec03309c47e5b5e08ca5d5c22a57d2ade9cf;
    5'b01110 : xpb = 1024'h5237e418330332accee34e88ef6629ace8df9c78ae11abac83722018751383968387047ac5c8ed6872010dcb8fdfed02900d66376dca37ec1558371658c9d66e690600e7a559ad9fb25b1e460500a3dd9ab13a81944a865ceda6f78bbcd31bd24abab0830fa29c5ec5d371a183501aaa819f80dcd665acf8cf12364beec8271f;
    5'b01111 : xpb = 1024'h7df34c63295b0abf9b74b6f7a893175cff88df3055f5b5c027ce2587ff3a0d7e690de8d4485f87330a030a0ddd28a61bd45d1aa38f5a688d2a6e5ae2fe055a2e9bbbf9f90da3b970c314ea24b866a2c110e38674aab5be304a1a28824da22e5c11008103121025f1956718ef1d394951d2a2b9d3f6eacd4bc86242400ae2646f;
    5'b10000 : xpb = 1024'ha9aeb4ae1fb2e2d268061f6661c0050d163221e7fdd9bfd3cc2a2af7896097664e94cd2dcaf620fda20506502a715f3518accf0fb0ea992e3f847eafa340ddeece71f30a75edc541d3ceb6036bcca1a48715d267c120f603a68d5978de7140e5d7465183147daf8464fac03cb72277f923a5f2cb176fed9ec1b24e3426fca1bf;
    5'b10001 : xpb = 1024'h24bcd7a3541c861c69920ffe0a92ab6bbb65616ed046296ff2a977116084744630d3340e83663c399aa8c34b945c0783f8e25b95afc7f983a3fb631e0da9ecfd8cd8b76d2ea6d3cdd1ee7f3f8656dc57094324c24b0600c64d73f874b515b0dd6e848fd966224089adce80ab593b807725cf4cdfe7a9b0c17492df23ba3478a4;
    5'b10010 : xpb = 1024'h50783fee4a745e2f3623786cc3bf991bd20ea426782a338397057c80eaaafe2e165a186805fcd60432aabf8de1a4c09d3d321001d1582a24b91186eab2e570bdbf8eb07e96f0df9ee2a84b1e39bcdb3a7f7570b561713899a9e7296b45e4c36734ca6059688fca1c7d6227f8f324af1e76d285d7082ed1146de2eb17d64eb5f4;
    5'b10011 : xpb = 1024'h7c33a83940cc364202b4e0db7cec86cbe8b7e6de200e3d973b6181f074d18815fbe0fcc188936fcecaacbbd02eed79b68181c46df2e85ac5ce27aab75820f47df244a98fff3aeb6ff36216fced22da1df5a7bca877dc706d065a5a61d6b3d5f0fb1030d96afd53af4cf5cf468d0dddc5c7d5bece28b3f1676732f70bf268f344;
    5'b10100 : xpb = 1024'ha7ef108437240e54cf46494a3619747bff612995c7f247aadfbd875ffef811fde167e11b0b2a099962aeb8127c3632cfc5d178da14788b66e33dce83fd5c783e24faa2a16784f741041be2dba088d9016bda089b8e47a84062cd8b586782e87ac15601596d6add421c89769426f70c6d18d8f7c5493911ba608303000e833094;
    5'b10101 : xpb = 1024'h22fd33796b8db19ed0d239e1deec1adaa494691c9a5eb147063cd379d61beeddc3a647fbc39a24d55b52750de620db1ea60705601355ebbc47b4b2f267c5874ce3616704203e05cd023bac17bb1313b3ee075af6182cb30309b42a543e27587258943fafbf0f6e47655d3702c91014eb1b0251da1972d4dd136393efa1bb0779;
    5'b10110 : xpb = 1024'h4eb89bc461e589b19d63a2509819088abb3dabd44242bb5aaa98d8e9604278c5a92d2c554630be9ff354715033699437ea56b9cc34e61c5d5ccad6bf0d010b0d161760158888119e12f577f66e7912976439a6e92e97ead666275b4acef66afc1eda102fc17cf7da34f0de5062f943926c058ad139f7f5300cb39fe3bdd544c9;
    5'b10111 : xpb = 1024'h7a74040f583d61c469f50abf5145f63ad1e6ee8bea26c56e4ef4de58ea6902ad8eb410aec8c7586a8b566d9280b24d512ea66e3856764cfe71e0fa8bb23c8ecd48cd5926f0d21d6f23af43d521df117ada6bf2dc450322a9c29a8c415fc57d85e51fe0afc3ea816d0484859dfce27239bd08c3c85a7d15830603abd7d9ef8219;
    5'b11000 : xpb = 1024'ha62f6c5a4e9539d73686732e0a72e3eae8903143920acf81f350e3c8748f8c95743af5084b5df235235869d4cdfb066a72f622a478067d9f86f71e585778128d7b835238591c294034690fb3d545105e509e3ecf5b6e5a7d1f0dbd37f094900fab65b12fc6580affd4182ceb96cba0e10e0bfcbf7b0235d5ff53b7cbf609bf69;
    5'b11001 : xpb = 1024'h213d8f4f82fedd21381263c5b3458a498dc370ca6477391e19d02fe24bb3697556795be903ce0d711bfc26d037e5aeb9532baf2a76e3ddf4eb6e02c6c1e1219c39ea169b11d537cc3288d8efefcf4b10d2cb9129e553653fc5f45c33c739000742a3ef8617fc9c051cebed5a38e4a95f103556d44b3bf8f8b23448bb8941964e;
    5'b11010 : xpb = 1024'h4cf8f79a7956b53404a3cc346c7277f9a46cb3820c5b4331be2c3551d5d9f35d3c0040428664a73bb3fe2312852e67d2977b639698740e9600842693671ca55c6ca00fac7a1f439d4342a4cea33549f448fddd1cfbbe9d1322678d2a5808129108e9c0061a6a2597ec7f94a7d2cdd80661388fcb6bc1194bab8454afa55bd39e;
    5'b11011 : xpb = 1024'h78b45fe56fae8d46d13534a3259f65a9bb15f639b43f4d4562883ac160007d452187249c08fb41064c001f54d27720ebdbcb1802ba043f37159a4a600c58291c9f5608bde2694f6e53fc70ad569b48d7bf3029101229d4e67edabe20e8d7251acf2f90861cd7af2abc133bf56cb706adb23bc8c28c46399ea4d460a3c17610ee;
    5'b11100 : xpb = 1024'ha46fc830660665599dc69d11decc5359d1bf38f15c23575906e44030ea27072d070e08f58b91dad0e4021b971fbfda05201acc6edb946fd82ab06e2cb193acdcd20c01cf4ab35b3f64b63c8c0a0147bb3562750328950cb9db4def1779a637a4957561061f4538bd8ba6e34306a03555033f01b9accb59f19e246c97dd904e3e;
    5'b11101 : xpb = 1024'h1f7deb259a7008a39f528da9879ef9b876f278782e8fc0f52d638c4ac14ae40ce94c6fd64401f60cdca5d89289aa8254005058f4da71d02d8f27529b1bfcbbeb9072c632036c69cb62d605c8248b826db78fc75db27a177c82348e13504aa79c2cb39f5c70e9c9c2d47aa3b1a8b93dd305685bce7d051d145104fd8770c82523;
    5'b11110 : xpb = 1024'h4b39537090c7e0b66be3f61840cbe7688d9bbb2fd673cb08d1bf91ba4b716df4ced3542fc6988fd774a7d4d4d6f33b6d44a00d60fc0200cea43d7667c1383fabc328bf436bb6759c738fd1a6d7f181512dc21350c8e54f4fdea7bf09e119ba25f2f96fdc73575355a40e4aff42a26c7a566b94c59d8a3d674a55097b8ce26273;
    5'b11111 : xpb = 1024'h76f4bbbb871fb8c938755e86f9f8d518a444fde77e57d51c761b9729d597f7dcb45a3889492f29a20ca9d117243bf48688efc1cd1d92316fb9539a346673c36bf5deb854d400816d84499d858b578034a3f45f43df5087233b1af00071e8ccafb93f405c75c4dce873a1f24cdc8b9b21a76ecdbcbe0f5dba43a5156fa8fc9fc3;
    endcase
end

endmodule
