module xpb_5_915
(
    input [5:1] data_in, 
    output [1024:1] data_out 
); 

reg [1024:1] xpb; 

assign data_out = xpb; 

always@(*) begin
    case(data_in)
    5'b00000 : xpb = 1024'h0;
    5'b00001 : xpb = 1024'h58754c5dc1fdd21c4cf7466932223dcdac2508d7ff6aec33f6a7a23928802f3e263ac745955b6ca709a257623a05432e47caec48a280468d77f3db0ff5d8124851b9dfe52c981eb91024818628ea5bb21164ba093a6d95e2a709a61b178df0fb907abd7591a6945b3e5dfb23ee5c761c7970a1339939a992f2e1ee9728783eb2;
    5'b00010 : xpb = 1024'h3d5365c20d6f6fcee914fb53ea3449e6d40e7f295e37f06f728b1c9dfdb174492d111260905abf73e66f7d90ac75922b7bb0ab224dbccf3f4876c1b0ddafdf2f248b1ba99f402d0daf0069b8f8f3332ec47a79e854feb49886ba3b74f13f64f1ede8c172843028f5fc0f68e4e8c60fa4076384e227f5f59f546229c80e16f9;
    5'b00011 : xpb = 1024'h58b29fc3840b418c1be05b64860c721792f9175728c92424661a2d55c67de0b26f67d857f5ebc7667d88c6dfcab1b8c073469cf3c4ce035cb73c51d1a6b5c22780de6b00d6375ee61dd381efe1e34ee54029348322c294973f9060568c7f30608268a637042ac484345a0a8cd3453c2c1d7804b87b619f88923650c0f08655ab;
    5'b00100 : xpb = 1024'h7aa6cb841adedf9dd229f6a7d46893cda81cfe52bc6fe0dee516393bfb62e8925a2224c120b57ee7ccdefb2158eb2456f76156449b799e7e90ed8361bb5fbe5e491637533e805a1b5e00d371f1e6665d88f4f3d0a9fd69310d7476e9e27ec9e3dbd182e5086051ebf81ed1c9d18c1f480ec709c44febeb3ea8c453901c2df2;
    5'b00101 : xpb = 1024'h58eff3294618b0fbeac9705fd9f6a66179cd25d652275c14d58cb872647b9226b894e96a567c2225f16f365d5b5e2e529ec24d9ee71bc02bf684c89357937206b002f61c7fd69f132b8282599adc42186eedaefd0b17934bd8171a9201706fc574568ef876aef4ad2a5619f5b82e023bc17f683d5d89957e318ab2eab8946ca4;
    5'b00110 : xpb = 1024'hb7fa3146284e4f6cbb3ef1fbbe9cddb47c2b7d7c1aa7d14e57a155d9f9145cdb87333721b1103e5bb34e78b20560b68273120166e9366dbdd9644512990f9d8d6da152fcddc087290d013d2aead9998c4d6f6db8fefc1dc9942eb25ed3be2ed5c9ba44578c907ae1f42e3aaeba522eec162a8ea677e1e0ddfd267d582a44eb;
    5'b00111 : xpb = 1024'h592d468f0826206bb9b2855b2de0daab60a134557b85940544ff438f0279439b01c1fa7cb70c7ce56555a5daec0aa3e4ca3dfe4a09697cfb35cd3f55087121e5df2781382975df40393182c353d5354b9db22976f36c9200709dd4cd7661af2a664477b9e93324d62052295e9d16c84b6586cbc23fb18b73d0df151480a2839d;
    5'b01000 : xpb = 1024'hf54d970835bdbf3ba453ed4fa8d1279b5039fca578dfc1bdca2c7277f6c5d124b4444982416afdcf99bdf642b1d648adeec2ac8936f33cfd21db06c376bf7cbc922c6ea67d00b436bc01a6e3e3ccccbb11e9e7a153fad2621ae8edd3c4fd93c7b7a305ca10c0a3d7f03da393a3183e901d8e13889fd7d67d5188a720385be4;
    5'b01001 : xpb = 1024'h596a99f4ca338fdb889b9a5681cb0ef5477542d4a4e3cbf5b471ceaba076f50f4aef0b8f179cd7a4d93c15587cb71976f5b9aef52bb739ca7515b616b94ed1c50e4c0c53d3151f6d46e0832d0cce287ecc76a3f0dbc190b509248f08eb52ee8f5832607b5bb754ff164e38c781ff8e5b098e2f4721d981697033773e48b09a96;
    5'b01010 : xpb = 1024'h132a0fcca432d2f0a8d68e8a39305718224487bced717b22d3cb78f15f477456de1555be2d1c5bd43802d73d35e4bdad96a7357ab84b00c3c6a51c874546f5bebb6b78a501c40e1446b02109cdcbfffe9d6646189a8f986faa1a32948b63cf8b9a58bc73c94f0cccdec4d0c788bde4e3424f1986ac7cdcc1ca5ead0e84672dd;
    5'b01011 : xpb = 1024'h59a7ed5a8c40ff4b5784af51d5b5433f2e495153ce4203e623e459c83e74a683941c1ca1782d32644d2284d60d638f0921355fa04e04f699b45e2cd86a2c81a43d70976f7cb45f9a548f8396c5c71bb1fb3b1e6ac4168f69a1ab494460442df44a20493cce3b85280c4a483066e8546aad9592cc0401775f0f87d96810beb18f;
    5'b01100 : xpb = 1024'h16ff4628c509c9ed9767de3f77d39bb68f856faf8354fa29caf42abb3f228b9b70e666e4362207cb7669cf1640ac16d04e62402cdd26cdb7bb2c88a25321f3b1adb42a5f9bb810e521a027a55d5b333189adedb71fdf83b93285d64bda77c5dab937488af1920f5c3e85c755d74a45dd82c551d4cefc3c1bbfa4cfab05489d6;
    5'b01101 : xpb = 1024'h59e540c04e4e6ebb266dc44d299f7789151d5fd2f7a03bd69356e4e4dc7257f7dd492db3d8bd8d23c108f4539e10049b4cb1104b7052b368f3a6a39a1b0a31836c95228b26539fc7623e84007ec00ee529ff98e4ac6b8e1e3a32037fd5356d593c0e31fe40bfb551024657994bd11a7a519cf650e6296d54aedc3b91d8ccc888;
    5'b01110 : xpb = 1024'h1ad47c84e5e0c0ea85f92df4b676e054fcc657a219387930c21cdc851efda2e003b7780a3f27b3c2b4d0c6ef4b736ff3061d4adf02029aabafb3f4bd60fcf1a49ffcdc1a35ac13b5fc902e40ecea666475f59555a52f6f02baf17a03298bbc29d815d4a219d511eb9e46bde425d6a6d7c33b8a22f17b9b75b4eaf247862a0cf;
    5'b01111 : xpb = 1024'h5a229426105bde2af556d9487d89abd2fbf16e5220fe73c702c970017a70096c26763ec6394de7e334ef63d12ebc7a2d782cc0f692a0703832ef1a5bcbe7e1629bb9ada6cff2dff46fed846a37b9021858c4135e94c08cd2d2b8bdbb4a26acbe2dfc1abfb343e579f842670230b9e089f5a459d5c851634a4e309dbba0dadf81;
    5'b10000 : xpb = 1024'h1ea9b2e106b7b7e7748a7da9f51a24f36a073f94af1bf837b9458e4efed8ba2496888930482d5fb9f337bec8563ac915bdd8559126de679fa43b60d86ed7ef9792458dd4cfa01686d78034dc7c799997623d3cf42a7f5a4c435d1dba789fb278f6f460b94218147afe07b472746307d203b1c27113fafacfaa3114e4070b7c8;
    5'b10001 : xpb = 1024'h5a5fe78bd2694d9ac43fee43d173e01ce2c57cd14a5cabb7723bfb1e186dbae06fa34fd899de42a2a8d5d34ebf68efbfa3a871a1b4ee2d077237911d7cc59141cade38c2799220217d9c84d3f0b1f54b87888dd87d158b876b3f77f6bf17ec231fea038125c815a2ee3e766b15a2a69999abbd5aaa79593fed84ffe568e8f67a;
    5'b10010 : xpb = 1024'h227ee93d278eaee4631bcd5f33bd6991d748278744ff773eb06e4018deb3d16929599a5651330bb1319eb6a161022238759360434bba349398c2ccf37cb2ed8a848e3f8f69941957b2703b780c08ccca4e84e492afcf4595cbc8c171c7b3a8c815d2ecd06a5b170a5dc8ab00c2ef68cc4427fabf367a5a299f77378087ecec1;
    5'b10011 : xpb = 1024'h5a9d3af19476bd0a9329033f255e1466c9998b5073bae3a7e1ae863ab66b6c54b8d060eafa6e9d621cbc42cc50156551cf24224cd73be9d6b18007df2da34120fa02c3de2331604e8b4b853da9aae87eb64d0852656a8a3c03c6323234092b8811d7ec42984c45cbe43a85d3fa8b6ca93db320df8ca14f358cd9620f30f70d73;
    5'b10100 : xpb = 1024'h26541f994865a5e151ad1d147260ae3044890f79dae2f645a796f1e2be8ee8adbc2aab7c5a38b7a87005ae7a6bc97b5b2d4e6af5709601878d4a390e8a8deb7d76d6f14a03881c288d6042139b97fffd3acc8c31351f30df5434652916c79f1734b178e7929e1999bd89a18f117bc9c6849e330d58f9b98394bd5a1d08ce5ba;
    5'b10101 : xpb = 1024'h5ada8e5756842c7a6212183a794848b0b06d99cf9d191b985121115754691dc901fd71fd5afef82190a2b249e0c1dae3fa9fd2f7f989a6a5f0c87ea0de80f10029274ef9ccd0a07b98fa85a762a3dbb1e51182cc4dbf88f09c4cec6da8fa6aed03c5d5040ad075f4da36953cdf7432b8e1ba84646ec9452b2c2dc438f905246c;
    5'b10110 : xpb = 1024'h2a2955f5693c9cde403e6cc9b103f2ceb1c9f76c70c6754c9ebfa3ac9e69fff24efbbca2633e639fae6ca6537690d47de50975a79571ce7b81d1a5299868e970691fa3049d7c1ef9685048af2b273330271433cfba6f1c28dca008e065db9566539004febae11c291d4a981d60082ac0c5146b5b7b7918dd8a037cb989afcb3;
    5'b10111 : xpb = 1024'h5b17e1bd18919bea30fb2d35cd327cfa9741a84ec6775388c0939c73f266cf3d4b2a830fbb8f52e1048921c7716e5076261b83a31bd763753010f5628f5ea0df584bda15766fe0a8a6a986111b9ccee513d5fd46361487a534d3a6a91debaa51f5b3bdc57d54a61dd032a4a5c45cf8c885c1e7e950f13b20cb822662c1133b65;
    5'b11000 : xpb = 1024'h2dfe8c518a1393db2ecfbc7eefa7376d1f0adf5f06a9f45395e855767e451736e1cccdc86c440f96ecd39e2c81582da09cc48059ba4d9b6f76591144a643e7635b6854bf377021ca43404f4abab66663135bdb6e3fbf0772650bac97b4ef8bb5726e9115e3241eb87d0b8eabae948bbb058aa3a99df878377f499f560a913ac;
    5'b11001 : xpb = 1024'h5b553522da9f0b59ffe44231211cb1447e15b6cdefd58b7930062790906480b1945794221c1fada0786f9145021ac6085197344e3e2520446f596c24403c50be87706531200f20d5b458867ad495c218429a77c01e698659cd5a60e492dce9b6e7a1a686efd8d646c62eb40ea945bed829c94b6e331931166ad6888c8921525e;
    5'b11010 : xpb = 1024'h31d3c2adaaea8ad81d610c342e4a7c0b8c4bc7519c8d735a8d1107405e202e7b749ddeee7549bb8e2b3a96058c1f86c3547f8b0bdf2968636ae07d5fb41ee5564db10679d164249b1e3055e64a459995ffa3830cc50ef2bbed77504f04038204914d1d2d0b672147dccc8539fd20ecb54600dbf7c077d791748fc1f28b72aa5;
    5'b11011 : xpb = 1024'h5b9288889cac7ac9cecd572c7506e58e64e9c54d1933c3699f78b2ad2e623225dd84a5347cb0085fec5600c292c73b9a7d12e4f96072dd13aea1e2e5f11a009db694f04cc9ae6102c20786e48d8eb54b715ef23a06be850e65e11b2007ce291bd98f8f48625d066fbc2ac3778e2e84e7cdd0aef31541270c0a2aeab6512f6957;
    5'b11100 : xpb = 1024'h35a8f909cbc181d50bf25be96cedc0a9f98caf443270f2618439b90a3dfb45c0076ef0147e4f678569a18dde96e6dfe60c3a95be040535575f67e97ac1f9e3493ff9b8346b58276bf9205c81d9d4ccc8ebeb2aab4a5ede0575e2f40653177853b02ba94433aa23d73c8d7bc84bad4daf86771445e2f736eb69d5e48f0c5419e;
    5'b11101 : xpb = 1024'h5bcfdbee5eb9ea399db66c27c8f119d84bbdd3cc4291fb5a0eeb3dc9cc5fe39a26b1b646dd40631f603c70402373b12ca88e95a482c099e2edea59a7a1f7b07ce5b97b68734da12fcfb6874e4687a87ea0236cb3ef1383c2fe67d55b7cbf6880cb7d7809d4e13698b226d2e073174af771d81277f7691d01a97f4ce0193d8050;
    5'b11110 : xpb = 1024'h397e2f65ec9878d1fa83ab9eab91054866cd9736c85471687b626ad41dd65d049a40013a8755137ca80885b7a1ae3908c3f5a07028e1024b53ef5595cfd4e13c324269ef054c2a3cd410631d6963fffbd832d249cfaec94efe4e97bda22b6ea2cf0a355b5bed26669c4e72569a39aea9c6ed4c94057696455f1c072b8d35897;
    5'b11111 : xpb = 1024'h5c0d2f5420c759a96c9f81231cdb4e223291e24b6bf0334a7e5dc8e66a5d950e6fdec7593dd0bdded422dfbdb42026bed40a464fa50e56b22d32d06952d5605c14de06841cece15cdd6587b7ff809bb1cee7e72dd768827796ee8f96f1b0a7e5bd6b60cb476566c1a822e2495800110715df75fcd99112f748d3af09e14b9749;
    endcase
end

endmodule
