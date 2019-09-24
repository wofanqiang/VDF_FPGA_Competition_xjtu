module xpb_5_605
(
    input [5:1] data_in, 
    output [1024:1] data_out 
); 

reg [1024:1] xpb; 

assign data_out = xpb; 

always@(*) begin
    case(data_in)
    5'b00000 : xpb = 1024'h0;
    5'b00001 : xpb = 1024'hce8e3da003a7bbbc88dda6e9d0fed9618079489d92fdde125ce51454fe2fdd3235625bf61879861922e70e74b876f850f1ac37d965551eb8f1b60f0f3af45341516d4b8f9da8c32b4b97b532aa078b8c415060687fc8f4031a37f620d1499bcec4b9a0dcee70938ad4e20db7041c16a252d47508aad1d3e43b752e0c1173f70;
    5'b00010 : xpb = 1024'h19d1c7b40074f777911bb4dd3a1fdb2c300f2913b25fbbc24b9ca28a9fc5fba646ac4b7ec30f30c3245ce1ce970edf0a1e3586fb2caaa3d71e36c1e1e75e8a682a2da971f3b518656972f6a65540f171882a0c0d0ff91e806346fec41a293379d897341b9dce12715a9c41b6e08382d44a5a8ea1155a3a7c876ea5c1822e7ee0;
    5'b00011 : xpb = 1024'h26baab8e00af733359a98f4bd72fc8c24816bd9d8b8f99a3716af3cfefa8f9796a02713e2496c924b68b52b5e2964e8f2d504a78c2fff5c2ad5222d2db0dcf9c3f447e2aed8fa4981e2c71f97fe16a2a4c3f121397f5adc094ea7e26273dcd36c4e2ce296cb51baa07ea629250c5443e6f87d5f1a00757bacb25f8a24345be50;
    5'b00100 : xpb = 1024'h33a38f6800e9eeef223769ba743fb658601e522764bf7784973945153f8bf74c8d5896fd861e618648b9c39d2e1dbe143c6b0df6595547ae3c6d83c3cebd14d0545b52e3e76a30cad2e5ed4caa81e2e31054181a1ff23d00c68dfd88345266f3b12e68373b9c24e2b538836dc10705a894b51d422ab474f90edd4b83045cfdc0;
    5'b00101 : xpb = 1024'h408c734201246aaaeac54429114fa3ee7825e6b13def5565bd07965a8f6ef51fb0aebcbce7a5f9e7dae8348479a52d994b85d173efaa9999cb88e4b4c26c5a046972279ce144bcfd879f689fd5225b9bd4691e20a7eecc40f8317cea416700b09d7a02450a832e1b6286a4493148c712b9e26492b561923752949e63c5743d30;
    5'b00110 : xpb = 1024'h4d75571c015ee666b3531e97ae5f9184902d7b3b171f3346e2d5e79fdf51f2f2d404e27c492d92496d16a56bc52c9d1e5aa094f185ffeb855aa445a5b61b9f387e88fc55db1f49303c58e3f2ffc2d454987e24272feb5b8129d4fc4c4e7b9a6d89c59c52d96a37540fd4c524a18a887cdf0fabe3400eaf75964bf144868b7ca0;
    5'b00111 : xpb = 1024'h5a5e3af6019962227be0f9064b6f7f1aa8350fc4f04f112808a438e52f34f0c5f75b083baab52aaaff45165310b40ca369bb586f1c553d70e9bfa696a9cae46c939fd10ed4f9d562f1125f462a634d0d5c932a2db7e7eac15b787bae5b90342a76113660a851408cbd22e60011cc49e7043cf333cabbccb3da03442547a2bc10;
    5'b01000 : xpb = 1024'h67471ed001d3ddde446ed374e87f6cb0c03ca44ec97eef092e728a2a7f17ee991ab12dfb0c3cc30c9173873a5c3b7c2878d61becb2aa8f5c78db07879d7a29a0a8b6a5c7ced46195a5cbda995503c5c620a830343fe47a018d1bfb1068a4cde7625cd06e773849c56a7106db820e0b51296a3a845568e9f21dba970608b9fb80;
    5'b01001 : xpb = 1024'h743002aa020e599a0cfcade3858f5a46d84438d8a2aeccea5440db6fcefaec6c3e0753ba6dc45b6e23a1f821a7c2ebad87f0df6a48ffe14807f6687891296ed4bdcd7a80c8aeedc85a8555ec7fa43e7ee4bd363ac7e10941bebf7a7275b967a44ea86a7c461f52fe17bf27b6f24fccbb4e9781d4e01607306171e9e6c9d13af0;
    5'b01010 : xpb = 1024'h8118e6840248d555d58a8852229f47dcf04bcd627bdeaacb7a0f2cb51eddea3f615d7979cf4bf3cfb5d06908f34a5b32970ba2e7df5533339711c96984d8b408d2e44f39c28979fb0f3ed13faa44b737a8d23c414fdd9881f062f9d482ce01613af4048a15065c36c50d489262918e2573c4c9256ac3246ea5293cc78ae87a60;
    5'b01011 : xpb = 1024'h8e01ca5e028351119e1862c0bfaf3573085361ec550e88ac9fdd7dfa6ec0e81284b39f3930d38c3147fed9f03ed1cab7a626666575aa851f262d2a5a7887f93ce7fb23f2bc64062dc3f84c92d4e52ff06ce74247d7da27c2220679368fe29b1e273f9e97e3ed656f725b696dd2d34f8f98f21075f57041ace8e08fa84bffb9d0;
    5'b01100 : xpb = 1024'h9aeaae3802bdcccd66a63d2f5cbf2309205af6762e3e668dc5abcf3fbea3e5e5a809c4f8925b2492da2d4ad78a593a3cb54129e30bffd70ab5488b4b6c373e70fd11f8abb63e926078b1c7e5ff85a8a930fc484e5fd6b70253a9f8989cf734db138b38a5b2d46ea81fa98a49431510f9be1f57c6801d5eeb2c97e2890d16f940;
    5'b01101 : xpb = 1024'ha7d3921202f848892f34179df9cf109f38628b00076e446eeb7a20850e86e3b8cb5feab7f3e2bcf46c5bbbbed5e0a9c1c45bed60a25528f64463ec3c5fe683a51228cd64b0191e932d6b43392a262161f5114e54e7d34642854d77faaa0bce97ffd6d2b381bb77e0ccf7ab24b356d263e34c9f170aca7c29704f3569ce2e38b0;
    5'b01110 : xpb = 1024'h40f309641448f7c2cbc7a358684b6e3def41c590b2681d8936bb874ab673483eb6d92fe8b43d6c75f2bed5f3e0a087c6f5c88f815f7aa9622e00dcf18c35427b2f06d6efa62ad80cf8abbe9bbead5e9c5215ac2e349a87201646561fcf5c5c2bd1ada979fd9888bf385e5212bc86da4b9a00785452c3c376d970d46066311b5;
    5'b01111 : xpb = 1024'h10f81470417f0b37f54a54a42394a479f6fbb0e2e4565fb9b93a09b9fb4a32570ec3b8bdeccb6f28f15a5e46899178017e774c75ac4cfc81b1fb6ec00c72995bc8074227f43d39b38444373ce68b4ea2893660c96b4637b23307e4c40a0a5f7fa96674a56ec091c4a0d405fc9c0a2f0edecd4ed5cfd95975b14e6026c77a5125;
    5'b10000 : xpb = 1024'h1de0f84a41b986f3bdd82f12c0a492100f03456cbd863d9adf085aff4b2d302a3219de7d4e53078a8388cf2dd518e7868d920ff342a24e6d4116cfb10021de8fdd1e16e0ee17c5e638fdb290112bc75b4d4b66cff342c6f264ab6426171ef93c95b20eb33da79afd4e2226d80c4bf07903fa96265a8676b3f505b30788919095;
    5'b10001 : xpb = 1024'h2ac9dc2441f402af866609815db47fa6270ad9f696b61b7c04d6ac449b102dfd5570043cafda9fec15b7401520a0570b9cacd370d8f7a058d03230a1f3d123c3f234eb99e7f25218edb72de33bcc401411606cd67b3f5632964ee388243392f981fda8c10c8ea435fb7047b37c8db1e32927dd76e53393f238bd05e849a8d005;
    5'b10010 : xpb = 1024'h37b2bffe422e7e6b4ef3e3effac46d3c3f126e806fe5f95d2aa4fd89eaf32bd078c629fc1162384da7e5b0fc6c27c690abc796ee6f4cf2445f4d9192e78068f8074bc052e1ccde4ba270a936666cb8ccd57572dd033be572c7f262ea31482cb66e4942cedb75ad6ea8be688eeccf734d4e5524c76fe0b1307c7458c90ac00f75;
    5'b10011 : xpb = 1024'h449ba3d84268fa271781be5e97d45ad2571a030a4915d73e50734ecf3ad629a39c1c4fbb72e9d0af3a1421e3b7af3615bae25a6c05a2442fee68f283db2fae2c1c62950bdba76a7e572a2489910d3185998a78e38b3874b2f995e24c3e5cc6735a94dcdcaa5cb6a7560c896a5d1134b773826c17fa8dce6ec02baba9cbd74ee5;
    5'b10100 : xpb = 1024'h518487b242a375e2e00f98cd34e448686f2197942245b51f7641a0148ab92776bf72757ad4716910cc4292cb0336a59ac9fd1de99bf7961b7d845374cedef360317969c4d581f6b10be39fdcbbadaa3e5d9f7eea133503f32b3961ae4b71603046e076ea7943bfe0035aaa45cd52f62198afb368853aebad03e2fe8a8cee8e55;
    5'b10101 : xpb = 1024'h5e6d6b8c42ddf19ea89d733bd1f435fe87292c1dfb7593009c0ff159da9c2549e2c89b3a35f901725e7103b24ebe151fd917e167324ce8070c9fb465c28e389446903e7dcf5c82e3c09d1b2fe64e22f721b484f09b3193335cdce1105885f9ed332c10f8482ac918b0a8cb213d94b78bbddcfab90fe808eb479a516b4e05cdc5;
    5'b10110 : xpb = 1024'h6b564f6643186d5a712b4daa6f0423949f30c0a7d4a570e1c1de429f2a7f231d061ec0f9978099d3f09f74999a4584a4e832a4e4c8a239f29bbb1556b63d7dc85ba71336c9370f167556968310ee9bafe5c98af7232e22738e806072659a93aa1f77ab061711d2515df6ebfcadd678f5e30a42099a9526298b51a44c0f1d0d35;
    5'b10111 : xpb = 1024'h783f33404352e91639b928190c14112ab7385531add54ec2e7ac93e47a6220f02974e6b8f908323582cde580e5ccf429f74d68625ef78bde2ad67647a9ecc2fc70bde7efc3119b492a1011d63b8f1468a9de90fdab2ab1b3c023dfd472af2d670bc34513e5f8db8a0b450cd81e183a600837895a25424367cf08f72cd0344ca5;
    5'b11000 : xpb = 1024'h8528171a438d64d202470287a923fec0cf3fe9bb87052ca40d7ae529ca451ec34ccb0c785a8fca9714fc5668315463af06682bdff54cddc9b9f1d7389d9c083085d4bca8bcec277bdec98d29662f8d216df39704332740f3f1c75f367fc3c723f80edf21b4dfe4c2b8932db38e59fbca2d64d0aaafef60a612c04a0d914b8c15;
    5'b11001 : xpb = 1024'h9210faf443c7e08dcad4dcf64633ec56e7477e4560350a853349366f1a281c9670213237bc1762f8a72ac74f7cdbd3341582ef5d8ba22fb5490d3829914b4d649aeb9161b6c6b3ae9383087c90d005da32089d0abb23d034236ade988cd860e0e45a792f83c6edfb65e14e8efe9bbd34529217fb3a9c7de456779cee5262cb85;
    5'b11010 : xpb = 1024'h9ef9dece44025c499362b764e343d9ecff4f12cf3964e866591787b46a0b1a69937757f71d9efb5a39593836c86342b9249db2db21f781a0d828991a84fa9298b002661ab0a13fe1483c83cfbb707e92f61da31143205f74550e5dfa99ecfa9dd0a6133d52adf734132f6f6a6edd7e9e77bf5f4bc5499b229a2eefcf137a0af5;
    5'b11011 : xpb = 1024'habe2c2a8443cd8055bf091d38053c7831756a7591294c6477ee5d8f9b9ee183cb6cd7db67f2693bbcb87a91e13eab23e33b87658b84cd38c6743fa0b78a9d7ccc5193ad3aa7bcc13fcf5ff22e610f74bba32a917cb1ceeb486b1dd5ca701945abcf1ad4b2195006cc07d9045df1f40089ceca69c4ff6b860dde642afd4914a65;
    5'b11100 : xpb = 1024'h81e612c82891ef85978f46b0d096dc7bde838b2164d03b126d770e956ce6907d6db25fd1687ad8ebe57dabe7c1410f8deb911f02bef552c45c01b9e3186a84f65e0daddf4c55b019f1577d377d5abd38a42b585c69350e402c8cac3f9eb8b857a35b52f3fb31117e70bca425790db4973400f0a8a58786edb2e1a8c0cc6236a;
    5'b11101 : xpb = 1024'h1507450682c39ab42206ced9aa195b5dd5efcd3bef7ce1924ca5c22ea6b166dafa314bbc780f45f050864ba5c79b807dedd3d56dc244a717d4db7c8f2535ed837af7af96ee9fe73453cef326a276248c4e57bb8c4e8fe024346c4a260700254266814f3d0e9a1a509459eb1dc7d29cb3986d565b150595ad1ee56d6ccddd62da;
    5'b11110 : xpb = 1024'h21f028e082fe166fea94a948472948f3edf761c5c8acbf7372741373f69464ae1d87717bd996de51e2b4bc8d1322f002fcee98eb5899f90363f6dd8018e532b7900e844fe87a736708886e79cd169d45126cc192d68c6f64660fc9881414beff52cce94add81238941a80bf938145e1dbd9a9dab9fb2b2eb629cc04d8ef4a24a;
    5'b11111 : xpb = 1024'h2ed90cba8338922bb32283b6e439368a05fef64fa1dc9d54984264b94677628140dd973b3b1e76b374e32d745eaa5f880c095c68eeef4aeef3123e710c9477eba5255908e254ff99bd41e9ccf7b715fdd681c7995e88fea497b348ea212958bc3f188358ac682cc1eef62cd4a8561f87e2c7e4fc2a5fd029a654132e500be1ba;
    endcase
end

endmodule
