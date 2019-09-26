module xpb_5_565
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
    5'b00001 : xpb = 1024'h1f29f3cee9f77e3b82095ae6a462acb3854c1f049c8afd3ad521c68eb1fb8e25f2e1d1f5ce004374e184740ef55319d75f7627671784e326ecbebad036331433e35f279ba68257d8d9c3144cb9da7929f1baa9a427f216d801863f3d4422107f1f4931055ab116428005e848ff83a101ec0a91105aec24a6605fe1d15d10774f;
    5'b00010 : xpb = 1024'h3e53e79dd3eefc770412b5cd48c559670a983e093915fa75aa438d1d63f71c4be5c3a3eb9c0086e9c308e81deaa633aebeec4ece2f09c64dd97d75a06c662867c6be4f374d04afb1b386289973b4f253e37553484fe42db0030c7e7a884420fe3e92620ab5622c85000bd091ff074203d8152220b5d8494cc0bfc3a2ba20ee9e;
    5'b00011 : xpb = 1024'h5d7ddb6cbde67ab2861c10b3ed28061a8fe45d0dd5a0f7b07f6553ac15f2aa71d8a575e16a00ca5ea48d5c2cdff94d861e627635468ea974c63c3070a2993c9baa1d76d2f387078a8d493ce62d8f6b7dd52ffcec77d644880492bdb7cc66317d5ddb9310101342c78011b8dafe8ae305c41fb33110c46df3211fa574173165ed;
    5'b00100 : xpb = 1024'h7ca7cf3ba7ddf8ee08256b9a918ab2ce15307c12722bf4eb54871a3ac7ee3897cb8747d738010dd38611d03bd54c675d7dd89d9c5e138c9bb2faeb40d8cc50cf8d7c9e6e9a095f63670c5132e769e4a7c6eaa6909fc85b600618fcf5108841fc7d24c4156ac4590a0017a123fe0e8407b02a44416bb09299817f87457441dd3c;
    5'b00101 : xpb = 1024'h9bd1c30a91d577298a2ec68135ed5f819a7c9b170eb6f22629a8e0c979e9c6bdbe6919cd060151486796444aca9f8134dd4ec50375986fc29fb9a6110eff650370dbc60a408bb73c40cf657fa1445dd1b8a55034c7ba7238079f3c3254aa527b9c6df51ac5756f4c801d896cfd9225099c34d551c69cb73fe1df6916d152548b;
    5'b00110 : xpb = 1024'ha4e7183b9dec09c4132a990c9f5c4e3ae52b6ead5ca4ee980edee0278e2a7dbae026e4a09db162ea9bc7912dc948a41d8aac4846a6a829ddbd921830a600485dfebb8f7377d11d007f87729c24312cab65b004063265bff5398e974dea1c0688caf93f66f5d8d0179638ad705459fe23965877fd13d7eb5fbcfcfe3a580656f;
    5'b00111 : xpb = 1024'h29786552a3d63ed7c33c04776e587197339ed5ef72554c24560fb4912ade3601a0e4403fd7db59a38b40ed21d1e7a4193820ebeb81ef65c4c897dc53409318b9c34ae092ddff69a8e1bb8b767c1d8bf4a815a9e48b1872d7551f28b222c3d0e7abf8c4fbca0ea343f969732004c940e4257018902c29a35c5c2fb1b50290dcbe;
    5'b01000 : xpb = 1024'h48a259218dcdbd1345455f5e12bb1e4ab8eaf4f40ee0495f2b317b1fdcd9c42793c61235a5db9d186cc56130c73abdf097971352997448ebb556972376c62ceda6aa082e8481c181bb7e9fc335f8051e99d05388b30a89af56a567ef66e5e166cb41f60124bfb986796f5b69044ce1e6117aa9a08715c802bc8f93865fa1540d;
    5'b01001 : xpb = 1024'h67cc4cf077c53b4ec74eba44b71dcafe3e3713f8ab6b469a005341ae8ed5524d86a7e42b73dbe08d4e49d53fbc8dd7c7f70d3ab9b0f92c12a21551f3acf941218a092fca2b04195a9541b40fefd27e488b8afd2cdafca087582ba72cab07f1e5ea8b27067f70cfc8f97543b203d082e7fd853ab0e201eca91cef7557bcb1cb5c;
    5'b01010 : xpb = 1024'h86f640bf61bcb98a4958152b5b8077b1c38332fd47f643d4d575083d40d0e0737989b62141dc24022fce494eb1e0f19f56836220c87e0f398ed40cc3e32c55556d685765d18671336f04c85ca9acf7727d45a6d102eeb75f59b1e669ef2a026509d4580bda21e60b797b2bfb035423e9e98fcbc13cee114f7d4f572919c242ab;
    5'b01011 : xpb = 1024'ha620348e4bb437c5cb617011ffe3246548cf5201e481410faa96cecbf2cc6e996c6b88170fdc67771152bd5da7340b76b5f98987e002f2607b92c794195f698950c77f017808c90c48c7dca96387709c6f0050752ae0ce375b3825a7334c12e4291d891134d2fc4df981144402d7c4ebd59a5cd197da35f5ddaf38fa76d2b9fa;
    5'b01100 : xpb = 1024'h149ce30773bd81388265532193eb89c75ca56dd5ab949dd301dbdc04f1c54fb75c04dc9413b62c5d5378f225b9291483b1558908d4d5053bb7b2430614c0090bbfd771ee6efa23a00ff0ee53848625956cb60080c64cb7fea731d2e9bd4380d1195f27ecdebb1a02f2c715ae0a8b3fc472cb0effa27afd6bf79f9fc74b00cade;
    5'b01101 : xpb = 1024'h33c6d6d65db4ff74046eae08384e367ae1f18cda481f9b0dd6fda293a3c0dddd4ee6ae89e1b66fd234fd6634ae7c2e5b10cbb06fec59e862a470fdd64af31d3fa336998a157c7b78e9b402a03e609ebf5e70aa24ee3eced6a8b812270165915038a858f2396c304572ccfdf70a0ee0c65ed5a00ffd67221257ff8198a811422d;
    5'b01110 : xpb = 1024'h52f0caa547ac7daf867808eedcb0e32e673dabdee4aa9848ac1f692255bc6c0341c8807fafb6b3471681da43a3cf48327041d7d703decb89912fb8a6812631738695c125bbfed351c37716ecf83b17e9502b53c91630e5aeaa3e51644587a1cf57f189f7941d4687f2d2e640099281c84ae03120585346b8b85f636a0521b97c;
    5'b01111 : xpb = 1024'h721abe7431a3fbeb088163d581138fe1ec89cae38135958381412fb107b7fa2934aa52757db6f6bbf8064e5299226209cfb7ff3e1b63aeb07dee7376b75945a769f4e8c162812b2a9d3a2b39b215911341e5fd6d3e22fc86abc490a189a9b24e773abafceece5cca72d8ce89091622ca36eac230b33f6b5f18bf453b623230cb;
    5'b10000 : xpb = 1024'h9144b2431b9b7a268a8abebc25763c9571d5e9e81dc092be5662f63fb9b3884f278c246b4bb73a30d98ac2618e757be12f2e26a532e891d76aad2e46ed8c59db4d54105d0903830376fd3f866bf00a3d33a0a7116615135ead4acfdecdcbc2cd9683ec02497f730cf2deb6d20899c3cc22f553410e2b9005791f270cbf42a81a;
    5'b10001 : xpb = 1024'hb06ea6120592f8620c9419a2c9d8e948f72208ecba4b8ff92b84bcce6baf16751a6df66119b77da5bb0f367083c895b88ea44e0c4a6d74fe576be91723bf6e0f30b337f8af85dadc50c053d325ca8367255b50b58e072a36aed10f1c11edd34cb5cd1d07a430894f72e49f1b081d64ce0effe4516917b4abd97f08de1c531f69;
    5'b10010 : xpb = 1024'h1eeb548b2d9c41d4c397fcb25de14eab0af824c0815eecbc82c9ca076aa7f7930a074ade1d91428bfd356b3895bd9ec58a004d8d3f3f87d9938b64891f200d919fc32ae5a677357017e9657d46c93860231100c1297313fdfacabc5e9be54139a60ebbe34e18a7046c2aa0850fd0dfa6ac30967f73b87c21f36f6faaf081304d;
    5'b10011 : xpb = 1024'h3e15485a1793c01045a157990243fb5e904443c51de9e9f757eb90961ca385b8fce91cd3eb918600deb9df478b10b89ce97674f456c46b00804a1f59555321c5832252814cf98d48f1ac79ca00a3b18a14cbaa6551652ad5fc50fb9be00751b8c557ece8a8c9bd46ec3088ce0f5480a8983b278fcea4a0c853cf517c4d91a79c;
    5'b10100 : xpb = 1024'h5d3f3c29018b3e4bc7aab27fa6a6a812159062c9ba74e7322d0d5724ce9f13deefcaeec9b991c975c03e53568063d27448ec9c5b6e494e276d08da298b8635f966817a1cf37be521cb6f8e16ba7e2ab406865409795741adfdd73ad924296237e4a11dee037ad3896c3671170ed821aa8445b8a02990c56eb42f334daaa21eeb;
    5'b10101 : xpb = 1024'h7c692ff7eb82bc8749b40d664b0954c59adc81ce56ffe46d022f1db3809aa204e2acc0bf87920ceaa1c2c76575b6ec4ba862c3c285ce314e59c794f9c1b94a2d49e0a1b899fe3cfaa532a2637458a3ddf840fdada1495885ff5d7a16684b72b703ea4ef35e2be9cbec3c59600e5bc2ac705049b0847cea15148f151f07b2963a;
    5'b10110 : xpb = 1024'h9b9323c6d57a3ac2cbbd684cef6c01792028a0d2f38ae1a7d750e4423296302ad58e92b55592505f83473b746b0a062307d8eb299d53147546864fc9f7ec5e612d3fc954408094d37ef5b6b02e331d07e9fba751c93b6f5e00e3b953ac6d833623337ff8b8dd000e6c4241a90ddf63ae5c5adac0df690ebb74eef6f064c30d89;
    5'b10111 : xpb = 1024'ha0fd23ffd83843582c14b5c837466db33febca6ba9e3e6b2e95f17b318f1148c527e732596c1545c56d703c7cff0f300334eaaa9225275082a5cb3bf34cfde39c4fbc413771ef67461ec85a4f31d200e7b1575d64a759254cdd66963664f12313751ed462c51dc3658843131592de86f98b8ceeea09d6318edf5dbd38f11e6d;
    5'b11000 : xpb = 1024'h2939c60ee77b027104caa64327d7138eb94adbab57293ba603b7b809e38a9f6eb809b928276c58baa6f1e44b7252290762ab1211a9aa0a776f64860c298012177faee3dcddf447401fe1dca7090c4b2ad96c01018c996ffd4e63a5d37a8701a232be4fd9bd763405e58e2b5c15167f88e5961dff44f5fad7ef3f3f8e960195bc;
    5'b11001 : xpb = 1024'h4863b9ddd17280ac86d40129cc39c0423e96faaff3b438e0d8d97e9895862d94aaeb8b1df56c9c2f8876585a67a542dec2213978c12eed9e5c2340dc5fb3264b630e0b7884769f18f9a4f0f3c2e6c454cb26aaa5b48b86d54fe9e510bea91221520780df18274a48659413a5149a208ad1a0af0f9fe21f7e4f9f215ff3120d0b;
    5'b11010 : xpb = 1024'h678dadacbb69fee808dd5c10709c6cf5c3e319b4903f361badfb45274781bbba9dcd5d13c36cdfa469facc695cf85cb6219760dfd8b3d0c548e1fbac95e63a7f466d33142af8f6f1d36805407cc13d7ebce15449dc7d9dad5170244e02cb22a07150b1e472d8608ae599fbee141dc18cbdab401fface4424afff03315022845a;
    5'b11011 : xpb = 1024'h86b7a17ba5617d238ae6b6f714ff19a9492f38b92cca3356831d0bb5f97d49e090af2f09916d23194b7f4078524b768d810d8846f038b3ec35a0b67ccc194eb329cc5aafd17b4ecaad2b198d369bb6a8ae9bfdee046fb48552f6638b46ed331f9099e2e9cd8976cd659fe43713a1628ea9b5d13055ba68cb105ee502ad32fba9;
    5'b11100 : xpb = 1024'ha5e1954a8f58fb5f0cf011ddb961c65cce7b57bdc9553091583ed244ab78d806839100ff5f6d668e2d03b487479e9064e083afae07bd9713225f714d024c62e70d2b824b77fda6a386ee2dd9f0762fd2a056a7922c61cb5d547ca2c88b0f439eafe313ef283a8d0fe5a5cc801325039095c06240b0a68d7170bec6d40a4372f8;
    5'b11101 : xpb = 1024'h145e43c3b76244d1c3f3f4ed4d6a2bbee251739190688d54af83df7daa71b924732a557c63472b746f29e94f59939971dbdfaf2efc8fa9ee5e7eecbefdad02697c3b75386eef01374e173f841174e4cb9e0c579dc7cdb524a076500b1506b18ba024b2cad222aac4deebcdea1ad87e6932f1146ebb4754e78aaf2da0de7183dc;
    5'b11110 : xpb = 1024'h33883792a159c30d45fd4fd3f1ccd872679d92962cf38a8f84a5a60c5c6d474a660c277231476ee950ae5d5e4ee6b3493b55d69614148d154b3da78f33e0169d5f9a9cd41571591027da53d0cb4f5df58fc70141efbfcbfca1fc8f485928c20abf6de3d02cd3c1075ef1b6331a5c1f6b1efba57f1633798deb0f0f723b81fb2b;
    5'b11111 : xpb = 1024'h52b22b618b514148c806aaba962f8525ece9b19ac97e87ca59c76c9b0e68d57058edf967ff47b25e3232d16d4439cd209acbfdfd2b99703c37fc625f6a132ad142f9c46fbbf3b0e9019d681d8529d71f8181aae617b1e2d4a382ce859d4ad289deb714d58784d749def79e7c19dfc06d0b06368f711f9e344b6ef1439892727a;
    endcase
end

endmodule
