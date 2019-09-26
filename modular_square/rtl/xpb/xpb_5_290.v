module xpb_5_290
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
    5'b00001 : xpb = 1024'hafb6c1670b0e198a9734aec2fe119dd6b66427d4b66783b38763a12199ce4fa6850992b472a096254bf3bfc68e1d740293eda42996c6846429367381d574753115b62b0a137e2b2586169dd0825995a3f33de7be6e81a45ffd9b51bd2d017aa5037e5066dbdb6259313b015f7d8bcaa1b1dc154047e316b0d5d333714a6c9816;
    5'b00010 : xpb = 1024'haec03d78542dfe4c6363e5aeebc8f45bfb524c78975766ef90ea88ed8099f24506caa7f01b1aadbbf889404638dcd73ac3c1206d0ada387ca1cda7a5701675b0b71d2165776b5905f99338fe6bd76716f276d5e4507d1baf45aa117f9fd852b7d7f50ea406edcc24dbb61be003476f1a14de4b9e3f7ad0316536ebde0bf6c9c1;
    5'b00011 : xpb = 1024'hadc9b9899d4de30e2f931c9ad9804ae14040711c78474a2b9a7170b9676594e3888bbd2bc394c552a51ec0c5e39c3a72f3949cb07eedec951a64dbc90ab87630588417c0db5886e66d0fd42c55553889f1afc40a327892fe8db8d14212af2acaac6bcce1320035f0863136608903139277e081fc371289b1f49aa44acd80fb6c;
    5'b00100 : xpb = 1024'hacd3359ae66dc7cffbc25386c737a166852e95c059372d67a3f858854e3137820a4cd2676c0edce951b441458e5b9dab236818f3f301a0ad92fc0feca55a76aff9eb0e1c3f45b4c6e08c6f5a3ed309fcf0e8b23014740a4dd5c79104858602dd80e28b1e5d129fbc30ac50e10ebeb80adae2b85a2eaa433283fe5cb78f0b2d17;
    5'b00101 : xpb = 1024'habdcb1ac2f8dac91c7f18a72b4eef7ebca1cba643a2710a3ad7f405134fcda208c0de7a31488f47ffe49c1c5391b00e3533b9537671554c60b9344103ffc772f9b520477a332e2a754090a882850db6ff021a055f66f819d1dd650c6f85cdaf05559495b88250987db276b61947a5c833de4eeb82641fcb31362152450955ec2;
    5'b00110 : xpb = 1024'haae62dbd78ad91539420c15ea2a64e710f0adf081b16f3dfb706281d1bc87cbf0dcefcdebd030c16aadf4244e3da641b830f117adb2908de842a7833da9e77af3cb8fad307201087c785a5b611ceace2ef5a8e7bd86af8ec65e510896b33b30329d00798b337735385a285e21a3600fba0e725161dd9b633a2c5cd91121f906d;
    5'b00111 : xpb = 1024'ha9efa9cec1cd7615604ff84a905da4f653f903abfc06d71bc08d0fe902941f5d8f90121a657d23ad5774c2c48e99c753b2e28dbe4f3cbcf6fcc1ac577540782ede1ff12e6b0d3e683b0240e3fb4c7e55ee937ca1ba66703badf3d04bde0a8b15fe46c5d5de49dd1f301da0629ff1a57403e95b7415716fb4322985fdd3a9c218;
    5'b01000 : xpb = 1024'ha8f925e00aed5ad72c7f2f367e14fb7b98e7284fdcf6ba57ca13f7b4e95fc1fc115127560df73b44040a434439592a8be2b60a01c350710f7558e07b0fe278ae7f86e789cefa6c48ae7edc11e4ca4fc8edcc6ac79c61e78af602900e50e16328d2bd8413095c46eada98bae325ad49ec66eb91d20d092934c18d3e6a9533f3c3;
    5'b01001 : xpb = 1024'ha802a1f1540d3f98f8ae66226bcc5200ddd54cf3bde69d93d39adf80d02b649a93123c91b67152dab09fc3c3e4188dc41289864537642527edf0149eaa84792e20eddde532e79a2921fb773fce48213bed0558ed7e5d5eda3e114fd0c3b83b3ba7344250346eb0b68513d563ab68ee64c9edc83004a0e2b550f0f6d756be256e;
    5'b01010 : xpb = 1024'ha70c1e029d2d245ac4dd9d0e5983a88622c371979ed680cfdd21c74cb6f7073914d351cd5eeb6a715d3544438ed7f0fc425d0288ab77d940668748c2452679adc254d44096d4c8099578126db7c5f2aeec3e47136058d62986200f93368f134e7bab008d5f811a822f8eefe4312492dd2ceffe8dfc389c35e054af4418485719;
    5'b01011 : xpb = 1024'ha6159a13e64d091c910cd3fa473aff0b67b1963b7fc6640be6a8af189dc2a9d7969467090765820809cac4c33997543472307ecc1f8b8d58df1e7ce5dfc87a2d63bbca9bfac1f5ea08f4ad9ba143c421eb77353942544d78ce2ecf55a965eb615021beca8a93844dda0a0a64b6e037558ff234ebf3d055b66fb867b0d9d288c4;
    5'b01100 : xpb = 1024'ha51f16252f6cedde5d3c0ae634f25590ac9fbadf60b64747f02f96e4848e4c7618557c44afdf999eb6604542e456b76ca203fb0f939f417157b5b1097a6a7aad0522c0f75eaf23ca7c7148c98ac19594eab0235f244fc4c8163d8f181c3cc37424987d07b5a5ee19848524e53c9bdbcdf2f46b49eb680f36ff1c201d9b5cba6f;
    5'b01101 : xpb = 1024'ha4289236788cd2a0296b41d222a9ac15f18ddf8341a62a83f9b67eb06b59ef149a1691805859b13562f5c5c28f161aa4d1d7775307b2f589d04ce52d150c7b2ca689b752c29c51aaefede3f7743f6707e9e91185064b3c175e4c4eda8f139b86f90f3b44e0b857e52f003f65c257804655f6a1a7e2ffc8b78e7fd88a5ce6ec1a;
    5'b01110 : xpb = 1024'ha3320e47c1acb761f59a78be1061029b367c042722960dc0033d667c522591b31bd7a6bc00d3c8cc0f8b464239d57ddd01aaf3967bc6a9a248e41950afae7bac47f0adae26897f8b636a7f255dbd387ae921ffaae846b366a65b0e9d01ea7399cd85f9820bcac1b0d97b59e6481324beb8f8d805da9782381de390f71e711dc5;
    5'b01111 : xpb = 1024'ha23b8a590acc9c23c1c9afa9fe1859207b6a28cb0385f0fc0cc44e4838f134519d98bbf7a94de062bc20c6c1e494e115317e6fd9efda5dbac17b4d744a507c2be957a4098a76ad6bd6e71a53473b09ede85aedd0ca422ab5ee69ce5f74c14baca1fcb7bf36dd2b7c83f67466cdcec9371bfb0e63d22f3bb8ad474963dffb4f70;
    5'b10000 : xpb = 1024'ha145066a53ec80e58df8e695ebcfafa5c0584d6ee475d438164b36141fbcd6f01f59d13351c7f7f968b647418f54444d6151ec1d63ee11d33a128197e4f27cab8abe9a64ee63db4c4a63b58130b8db60e793dbf6ac3da20536788e21e79823bf767375fc61ef95482e718ee7538a6daf7efd44c1c9c6f5393cab01d0a185811b;
    5'b10001 : xpb = 1024'ha04e827b9d0c65a75a281d81d987062b05467212c565b7741fd21de00688798ea11ae66efa420f90154bc7c13a13a78591256860d801c5ebb2a9b5bb7f947d2b2c2590c05251092cbde050af1a36acd3e6ccca1c8e3919547e874de45a6efbd24aea34398d01ff13d8eca967d9461227e1ff7b1fc15eaeb9cc0eba3d630fb2c6;
    5'b10010 : xpb = 1024'h9f57fe8ce62c4a692657546dc73e5cb04a3496b6a6559ab0295905abed541c2d22dbfbaaa2bc2726c1e14840e4d30abdc0f8e4a44c157a042b40e9df1a367daacd8c871bb63e370d315cebdd03b47e46e605b842703490a3c6960da6cd45d3e51f60f276b81468df8367c3e85f01b6a04501b17db8f6683a5b7272aa2499e471;
    5'b10011 : xpb = 1024'h9e617a9e2f4c2f2af2868b59b4f5b3358f22bb5a87457dec32dfed77d41fbecba49d10e64b363ebd6e76c8c08f926df5f0cc60e7c0292e1ca3d81e02b4d87e2a6ef37d771a2b64eda4d9870aed324fb9e53ea668523007f30ea4cd69401cabf7f3d7b0b3e326d2ab2de2de68e4bd5b18a803e7dbb08e21baead62b16e624161c;
    5'b10100 : xpb = 1024'h9d6af6af786c13ecbeb5c245a2ad09bad410dffe683561283c66d543baeb616a265e2621f3b056541b0c49403a51d12e209fdd2b343ce2351c6f52264f7a7eaa105a73d27e1892ce18562238d6b0212ce477948e342b7f4256b38d2bb2f3840ac84e6ef10e393c76d85df8e96a78ff910b061e39a825db3b7a39e383a7ae47c7;
    5'b10101 : xpb = 1024'h9c7472c0c18bf8ae8ae4f9319064604018ff04a24925446445edbd0fa1b70408a81f3b5d9c2a6deac7a1c9bfe51134665073596ea850964d95068649ea1c7f29b1c16a2de205c0ae8bd2bd66c02df29fe3b082b41626f6919ec24cee25ca5c1d9cc52d2e394ba64282d91369f034a4096e0854979fbd94bc099d9bf069387972;
    5'b10110 : xpb = 1024'h9b7deed20aabdd705714301d7e1bb6c55ded29462a1527a04f74a4db8882a6a729e0509944a4858174374a3f8fd0979e8046d5b21c644a660d9dba6d84be7fa95328608945f2ee8eff4f5894a9abc412e2e970d9f8226de0e6d10cb098a13430713beb6b645e100e2d542dea75f04881d10a8af597554e3c9901545d2ac2ab1d;
    5'b10111 : xpb = 1024'h9a876ae353cbc232234367096bd30d4aa2db4dea0b050adc58fb8ca76f4e4945aba165d4ed1e9d1820cccabf3a8ffad6b01a51f59077fe7e8634ee911f608028f48f56e4a9e01c6f72cbf3c293299585e2225effda1de5302edfcc730b780c4345b2a9a88f7079d9d7cf486afbabecfa340cc1538eed07bd28650cc9ec4cdcc8;
    5'b11000 : xpb = 1024'h9990e6f49ceba6f3ef729df5598a63cfe7c9728debf4ee18628274735619ebe42d627b109598b4aecd624b3ee54f5e0edfedce39048bb296fecc22b4ba0280a895f64d400dcd4a4fe6488ef07ca766f8e15b4d25bc195c7f76ee8c357e4ee4561a2967e5ba82e3a5824a62eb81679172970ef7b18684c13db7c8c536add70e73;
    5'b11001 : xpb = 1024'h989a6305e60b8bb5bba1d4e14741ba552cb79731cce4d1546c095c3f3ce58e82af23904c3e12cc4579f7cbbe900ec1470fc14a7c789f66af776356d854a48128375d439b71ba783059c52a1e6625386be0943b4b9e14d3cebefd4bf7f125bc68eea02622e5954d712cc57d6c072335eafa112e0f7e1c7abe472c7da36f61401e;
    5'b11010 : xpb = 1024'h97a3df172f2b707787d10bcd34f910da71a5bbd5add4b4907590440b23b1312130e4a587e68ce3dc268d4c3e3ace247f3f94c6bfecb31ac7effa8afbef4681a7d8c439f6d5a7a610cd41c54c4fa309dedfcd297180104b1e070c0bba63fc947bc316e46010a7b73cd74097ec8cdeda635d13646d75b4343ed690361030eb71c9;
    5'b11011 : xpb = 1024'h96ad5b28784b5539540042b922b0675fb693e0798ec497cc7f172bd70a7cd3bfb2a5bac38f06fb72d322ccbde58d87b76f68430360c6cee06891bf1f89e882277a2b30523994d3f140be607a3920db51df061797620bc26d4f1acb7cd6d36c8e978da29d3bba210881bbb26d129a7edbc0159acb6d4bedbf65f3ee7cf275a374;
    5'b11100 : xpb = 1024'h95b6d739c16b39fb202f79a51067bde4fb82051d6fb47b08889e13a2f148765e3466cfff378113097fb84d3d904ceaef9f3bbf46d4da82f8e128f343248a82a71b9226ad9d8201d1b43afba8229eacc4de3f05bd440739bc97298b3f49aa44a16c0460da66cc8ad42c36cced985623542317d12964e3a73ff557a6e9b3ffd51f;
    5'b11101 : xpb = 1024'h94c0534b0a8b1ebcec5eb090fe1f146a407029c150a45e449224fb6ed81418fcb627e53adffb2aa02c4dcdbd3b0c4e27cf0f3b8a48ee371159c02766bf2c8326bcf91d09016f2fb227b796d60c1c7e37dd77f3e32602b10bdf384b01bc811cb4407b1f1791def49fd6b1e76e1e11c7cc861a07875c7b60c084bb5f56758a06ca;
    5'b11110 : xpb = 1024'h93c9cf5c53ab037eb88de77cebd66aef855e4e65319441809babe33abedfbb9b37e8fa7688754236d8e34e3ce5cbb15ffee2b7cdbd01eb29d2575b8a59ce83a65e601364655c5d929b343203f59a4faadcb0e20907fe285b27470ac42f57f4c714f1dd54bcf15e6b812d01eea3cd6c44e91c3de554131a41141f17c337143875;
    5'b11111 : xpb = 1024'h92d34b6d9ccae84084bd1e68d98dc174ca4c7309128424bca532cb06a5ab5e39b9aa0fb230ef59cd8578cebc908b14982eb6341131159f424aee8fadf4708425ffc709bfc9498b730eb0cd31df18211ddbe9d02ee9f99faa6f55ca86a22eccd9e9689b91e803c8372ba81c6f298910bd4c1e74434baad3c1a382d02ff89e6a20;
    endcase
end

endmodule
