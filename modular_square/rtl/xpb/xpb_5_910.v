module xpb_5_910
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
    5'b00001 : xpb = 1024'h39f9d00dbaaa5f0fa1d96fa67ead4837e0d6094602b0b986f70a36fc9134d78c72387d6febd6e2f1ca1a868138dd8f58b18683da2febe34c12f162a5f2108509b6e68f75c042101b5e5144df010c002cdcccb3cff5bd5ac44df43acf32e9c2558b363398b3cc024f140ee7fecce3ef9dcc6f9ab055e15a6bad99e5e6240a81f7;
    5'b00010 : xpb = 1024'h73f3a01b7554be1f43b2df4cfd5a906fc1ac128c0561730dee146df92269af18e470fadfd7adc5e394350d0271bb1eb1630d07b45fd7c69825e2c54be4210a136dcd1eeb80842036bca289be02180059b999679feb7ab5889be8759e65d384ab166c67316798049e281dcffd99c7df3b98df3560abc2b4d75b33cbcc481503ee;
    5'b00011 : xpb = 1024'haded70292fff1d2ee58c4ef37c07d8a7a2821bd208122c94e51ea4f5b39e86a556a9784fc384a8d55e4f9383aa98ae0a14938b8e8fc3a9e438d427f1d6318f1d24b3ae6140c630521af3ce9d0324008696661b6fe138104ce9dcb06d98bd4700a1a29aca1b6406ed3c2cb7fc66abced9654ed01101a40f4308cdb1b26c1f85e5;
    5'b00100 : xpb = 1024'h3739fae128bb4775bc6046c2ea5ad98e11e221e7354b45a45e4c229c91d0b129c5997846e5350d38890bdabe00182c9861ffe7829cfcbce49b264b398d6f9f75674b09285177432866ab10d96b543c827f2dd5a74a6f3e0082445942117c66c3fdd13c391e6710aec97bb91c3bbf984de2e48bdf073a0c7e6ff81c940747a171;
    5'b00101 : xpb = 1024'h7133caeee365a6855e39b669690821c5f2b82b2d37fbff2b55565999230588b637d1f5b6d10bf02a5326613f38f5bbf113866b5ccce8a030ae17addf7f80247f1e31989e11b95343c4fc55b86c603caf5bfa8977402c98c4d03894114466291989076fd1d23312fddd8aa11b08a387ebaf54268f5d1b66ea1d92027a2b522368;
    5'b00110 : xpb = 1024'hab2d9afc9e1005950013260fe7b569fdd38e34733aacb8b24c609095b43a6042aa0a7326bce2d31c1d40e7c071d34b49c50cef36fcd4837cc10910857190a988d5182813d1fb635f234d9a976d6c3cdc38c73d4735e9f3891e2ccee0774feb6f143da36a85ff154cf1998919d58777897bc3c13fb2fcc155cb2be8604f5ca55f;
    5'b00111 : xpb = 1024'h347a25b496cc2fdbd6e71ddf56086ae442ee3a8867e5d1c1c58e0e3c926c8ac718fa731dde93377f47fd2efac752c9d812794b2b0a0d967d235b33cd28ceb9e117af82dae2ac76356f04dcd3d59c78d8218ef77e9f21213cb69477b4f00f0b32706c44d989021f0e7ee88a39aa9b40fdf9597d0db892be9132565341ea84c0eb;
    5'b01000 : xpb = 1024'h6e73f5c251768eeb78c08d85d4b5b31c23c443ce6a968b48bc98453923a162538b32f08dca6a1a711217b57c00305930c3ffcf0539f979c9364c96731adf3eeace961250a2ee8650cd5621b2d6a87904fe5bab4e94de7c010488b28422f8cd87fba278723cce215d92f77238777f309bc5c917be0e7418fcdff039280e8f42e2;
    5'b01001 : xpb = 1024'ha86dc5d00c20edfb1a99fd2c5362fb54049a4d146d4744cfb3a27c35b4d639dffd6b6dfdb640fd62dc323bfd390de889758652df69e55d15493df9190cefc3f4857ca1c66330966c2ba76691d7b47931db285f1e8a9bd6c5527ced5355e28fdd86d8ac0af09a23aca7065a37446320399238b26e645573688d8a1f0e3299c4d9;
    5'b01010 : xpb = 1024'h31ba508804dd1841f16df4fbc1b5fc3a73fa53299a805ddf2ccff9dc930864646c5b6df4d7f161c606ee83378e8d6717c2f2aed3771e7015ab901c60c42dd44cc813fc8d73e1a942775ea8ce3fe4b52dc3f01955f3d30478eae49627cea1afa0e3074d79f39d2d6e34555b571976e9ae0fce6e3c69eb70a3f4b489efcdc1e065;
    5'b01011 : xpb = 1024'h6bb42095bf877751934764a24063447254d05c6f9d31176623da30d9243d3bf0de93eb64c3c844b7d10909b8c76af670747932ada70a5361be817f06b63e59567efa8c033423b95dd5afedad40f0b55aa0bccd25e9905f3d38d8d0f7018b71f66e3d8112a7692fbd48644355e65ad94bdc3e08ecbfcccb0fa24e6fd5f1cc625c;
    5'b01100 : xpb = 1024'ha5adf0a37a31d6613520d448bf108caa35a665b59fe1d0ed1ae467d5b572137d50cc68d4af9f27a99b23903a004885c925ffb687d6f636add172e1aca84ede6035e11b78f465c9793401328c41fcb5877d8980f5df4dba0186cd0bc63475344bf973b4ab5b35320c5c732b54b33ec8e9a8ada39d15ae257b4fe855bc15d6e453;
    5'b01101 : xpb = 1024'h2efa7b5b72ee00a80bf4cc182d638d90a5066bcacd1ae9fc9411e57c93a43e01bfbc68cbd14f8c0cc5dfd77455c80457736c127be42f49ae33c504f45f8ceeb8787876400516dc4f7fb874c8aa2cf18366513b2d4884e7b51f34b49aad34540f55a2561a5e383bcde9c22c748852925e26435f6b1b4422b6b712c09db0feffdf;
    5'b01110 : xpb = 1024'h68f44b692d985fb7adce3bbeac10d5c885dc7510cfcba3838b1c1c7924d9158e31f4e63bbd266efe8ffa5df58ea593b024f29656141b2cfa46b6679a519d73c22f5f05b5c558ec6ade09b9a7ab38f1b0431deefd3e4242796d28ef69e01e1664e0d889b312043e1cfdd11473553681fbf2b2fa1b71257d2264aca683d50981d6;
    5'b01111 : xpb = 1024'ha2ee1b76e842bec74fa7ab652abe1e0066b27e56d27c5d0a82265375b60ded1aa42d63aba8fd51f05a14e476c7832308d6791a304407104659a7ca4043adf8cbe645952b859afc863c5afe86ac44f1dd1feaa2cd33ff9d3dbb1d2a391307d8ba6c0ebd4bc5d0406c11dffc72221a7199bf2294cbc706d78e12468c69f91403cd;
    5'b10000 : xpb = 1024'h2c3aa62ee0fee90e267ba33499111ee6d612846bffb57619fb53d11c9440179f131d63a2caadb65384d12bb11d02a19723e5762451402346bbf9ed87faec092428dceff2964c0f5c881240c314752dd908b25d049d36caf15384d30d8bc6f87dc83d5ebac8d34a2d9f2efd91f72e3b0e3cb85099cc9cd4c97970f74b943c1f59;
    5'b10001 : xpb = 1024'h6634763c9ba9481dc85512db17be671eb6e88db202662fa0f25e08192574ef2b8555e112b68499454eebb23255e030efd56bf9fe812c0692ceeb502decfc8e2ddfc37f68568e1f77e66385a215812e05e57f10d492f425b5a1790ddcbeb0bad3537392537c9f4c7cb33de590c4122aac0927eb4a227e2f35270add31b846a150;
    5'b10010 : xpb = 1024'ha02e464a5653a72d6a2e8281966baf5697be96f80516e927e9683f15b6a9c6b7f78e5e82a25b7c37190638b38ebdc04886f27dd8b117e9dee1dcb2d3df0d133796aa0ede16d02f9344b4ca81168d2e32c24bc4a488b18079ef6d48abf19a7d28dea9c5ec306b4ecbc74ccd8f90f61a49d59785fa785f89a0d4a4c317dc512347;
    5'b10011 : xpb = 1024'h297ad1024f0fd17441027a5104beb03d071e9d0d325002376295bcbc94dbf13c667e5e79c40be09a43c27fede43d3ed6d45ed9ccbe50fcdf442ed61b964b238fd94169a527814269906c0cbd7ebd6a2eab137edbf1e8ae2d87d4f1806a599cec3ad8675b336e588d549bceaf6609e3be532d41c87df586dc3bcf2df977793ed3;
    5'b10100 : xpb = 1024'h6374a11009ba3083e2dbe9f7836bf874e7f4a6533500bbbe599ff3b92610c8c8d8b6dbe9afe2c38c0ddd066f1d1ace2f85e55da6ee3ce02b572038c1885ba8999027f91ae7c35284eebd519c7fc96a5b87e032abe7a608f1d5c92c4f9d435f41c60e9af3e73a5adc68aab6ae32edd35c1f9cdc78d3d6e147e96913df9b83c0ca;
    5'b10101 : xpb = 1024'h9d6e711dc4648f9384b5599e021940acc8caaf9937b1754550aa2ab5b745a0554aef59599bb9a67dd7f78cf055f85d88376be1811e28c3776a119b677a6c2da3470e8890a80562a04d0e967b80d56a8864ace67bdd6363b623bd671ed02d21975144ce8c9b065d2b7cb99eacffd1c2f9ec0c772929b83bb39702f9c5bf8e42c1;
    5'b10110 : xpb = 1024'h26bafbd5bd20b9da5b89516d706c4193382ab5ae64ea8e54c9d7a85c9577cad9b9df5950bd6a0ae102b3d42aab77dc1684d83d752b61d677cc63beaf31aa3dfb89a5e357b8b6757698c5d8b7e905a6844d74a0b3469a9169bc250ff348ec415aad736ffb9e0966ed0a089fccd4e58c6e69a232f72f4e38eefe2d64a75ab65e4d;
    5'b10111 : xpb = 1024'h60b4cbe377cb18e9fd62c113ef1989cb1900bef4679b47dbc0e1df5926aca2662c17d6c0a940edd2ccce5aabe4556b6f365ec14f5b4db9c3df55215523bac305408c72cd78f88591f7171d96ea11a6b12a4154833c57ec2e0a194ac27bd603b038a9a39451d5693c1e1787cba1c97c0c3611cda7852f935aabc74a8d7ec0e044;
    5'b11000 : xpb = 1024'h9aae9bf1327577f99f3c30ba6dc6d202f9d6c83a6a4c0162b7ec1655b7e179f29e5054309517d0c496e8e12d1d32fac7e7e545298b399d0ff24683fb15cb480ef7730243393a95ad55686275eb1da6de070e0853321546f2580d8591aebfc605c3dfd72d05a16b8b32266fca6ead6baa02816857db10edc659613073a2cb623b;
    5'b11001 : xpb = 1024'h23fb26a92b31a24076102889dc19d2e96936ce4f97851a72311993fc9613a4770d405427b6c83527c1a5286772b279563551a11d9872b0105498a742cd0958673a0a5d0a49eba883a11fa4b2534de2d9efd5c28a9b4c74a5f0752e66277ee5c9200e789c08a4754cbf7570ea43c1351e80172425e0a6eb01c08b9b553df37dc7;
    5'b11010 : xpb = 1024'h5df4f6b6e5dc015017e998305ac71b214a0cd7959a35d3f92823caf927487c037f78d197a29f18198bbfaee8ab9008aee6d824f7c85e935c678a09e8bf19dd70f0f0ec800a2db89eff70e9915459e306cca2765a9109cf6a3e6969355a68a81eab44ac34bc70779bd38458e910a524bc4c86bed63688456d6e25813b61fdffbe;
    5'b11011 : xpb = 1024'h97eec6c4a086605fb9c307d6d97463592ae2e0db9ce68d801f2e01f5b87d538ff1b14f078e75fb0b55da3569e46d9807985ea8d1f84a76a87a7b6c8eb12a627aa7d77bf5ca6fc8ba5dc22e705565e333a96f2a2a86c72a2e8c5da4048d526a74367adfcd703c79eae79340e7dd89145a18f659868c699fd91bbf6721860881b5;
    5'b11100 : xpb = 1024'h213b517c99428aa69096ffa647c7643f9a42e6f0ca1fa68f985b7f9c96af7e1460a14efeb0265f6e80967ca439ed1695e5cb04c6058389a8dccd8fd6686872d2ea6ed6bcdb20db90a97970acbd961f2f9236e461effe57e224c54cd906118a3792a9813c733f83ac74e24207b29cddce968c155491ff9d1482e9d20321309d41;
    5'b11101 : xpb = 1024'h5b35218a53ece9b632706f4cc674ac777b18f036ccd060168f65b69927e455a0d2d9cc6e9bfd42604ab1032572caa5ee975188a0356f6cf4efbef27c5a78f7dca15566329b62ebac07cab58bbea21f5c6f039831e5bbb2a672b987a838fb4c8d1ddfb4d5270b85fb88f12a067f80cd6c62fbb004e7e0f7803083b7e9453b1f38;
    5'b11110 : xpb = 1024'h952ef1980e9748c5d449def34521f4af5beef97ccf81199d866fed95b9192d2d451249de87d4255214cb89a6aba8354748d80c7a655b504102b055224c897ce6583bf5a85ba4fbc7661bfa6abfae1f894bd04c01db790d6ac0adc2776be50ee2a915e86ddad7884a9d0012054c64bd0a2f6b4ab53dc251ebde1d9dcf6945a12f;
    5'b11111 : xpb = 1024'h1e7b7c500753730cab1dd6c2b374f595cb4eff91fcba32acff9d6b3c974b57b1b40249d5a98489b53f87d0e10127b3d59644686e729463416502786a03c78d3e9ad3506f6c560e9db1d33ca727de5b853498063944b03b1e59156b4be4a42ea6054489dcddda920c2a4f13252178867ead01068343584f27454808b1046dbcbb;
    endcase
end

endmodule
