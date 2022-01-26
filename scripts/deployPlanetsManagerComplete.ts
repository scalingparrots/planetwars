import hardhat from 'hardhat';
import {Contract} from "@ethersproject/contracts";
import {BigNumber} from "ethers";
const { run, ethers, upgrades } = hardhat;
let SVGDescriptorContract : Contract;

let planetRandomContract : Contract;
let SVGUtilsContract : Contract;
let skyCircleDescriptorContract : Contract;
let skyRhombusDescriptorContract : Contract;
let sky4Path1_2DescriptorContract : Contract;
let sky4Path3_4DescriptorContract : Contract;
let sky4PathDescriptorContract : Contract;
let sky4DescriptorContract : Contract;
let sky1Path1_2DescriptorContract : Contract;
let sky1Path3_4DescriptorContract : Contract;
let sky1PathDescriptorContract : Contract;
let sky1DescriptorContract : Contract;
let sky2Path1_2DescriptorContract : Contract;
let sky2Path3_4DescriptorContract : Contract;
let sky2PathDescriptorContract : Contract;
let sky2DescriptorContract : Contract;
let sky3DescriptorContract : Contract;
let sky3Path1_2DescriptorContract : Contract;
let sky3Path3_4DescriptorContract : Contract;
let sky3PathDescriptorContract : Contract;
let skyBaseDescriptorContract : Contract;
let skyDescriptorContract : Contract;
let pictureFrameDescriptorContract : Contract;
let dataDescriptorContract_1 : Contract;
let dataDescriptorContract_2 : Contract;
let dataDescriptorContract : Contract;
let planetBaseDescriptorContract : Contract;
let planetColorContract : Contract;
let planetSurfaceDescriptorContract : Contract;
let planetSurface1DescriptorContract : Contract;
let planetSurface1_1DescriptorContract : Contract;
let planetSurface1_2DescriptorContract : Contract;
let planetSurface2DescriptorContract : Contract;
let planetSurface2_1DescriptorContract : Contract;
let planetSurface2_2DescriptorContract : Contract;
let planetSurface2_3DescriptorContract : Contract;
let planetSurface3DescriptorContract : Contract;
let planetSurface3_1DescriptorContract : Contract;
let planetSurface3_2DescriptorContract : Contract;
let planetSurface4DescriptorContract : Contract;
let planetSurface4_1DescriptorContract : Contract;
let planetSurface4_2DescriptorContract : Contract;
let planetRing1DescriptorContract : Contract;
let planetRing2DescriptorContract : Contract;
let planetRing3DescriptorContract : Contract;
let planetRingDescriptorContract : Contract;
let planetsDescriptorContract : Contract;
let planetsNameContract : Contract;


// Deploy arguments
const unveilBlockOffset = 10;

async function main(): Promise<void> {
  let planetsManagerContract : Contract;

  await run('compile');
  const [deployer] = await ethers.getSigners();

  let DEFAULT_ADMIN_ROLE = "0x0000000000000000000000000000000000000000000000000000000000000000";
  let PLANETS_DESCRIPTOR_ROLE = ethers.utils.keccak256(ethers.utils.toUtf8Bytes('PLANETS_DESCRIPTOR_ROLE'));
  let PLANETS_MANAGER_ROLE = ethers.utils.keccak256(ethers.utils.toUtf8Bytes('PLANETS_MANAGER_ROLE'));

  console.log('Deploying contracts with the account:', deployer.address);
  let initialBalanceDeployer : BigNumber = await deployer.getBalance()
  console.log('Account balance:', initialBalanceDeployer.toString());

  // Deploy planetsManager
  let startMintBlock = await ethers.provider.getBlockNumber() + 1; // change with number exact of block
  let unveilBlock = startMintBlock + 8; // change with number exact of block

  // Planets manager
  console.log("Deploying PlanetsManager...");
  console.log("Start mint at block: " + startMintBlock)
  console.log("Unveil at block: " + unveilBlock)
  const planetsManagerFactory = await ethers.getContractFactory("PlanetsManagerV2")
  planetsManagerContract = await upgrades.deployProxy(planetsManagerFactory, [startMintBlock, unveilBlock]);
  await planetsManagerContract.deployed();
  console.log("PlanetsManager deployed at", planetsManagerContract.address);

  /* Libraries */
  /* Deploy Library*/
  //PlanetRandom
  const planetRandomFactory = await ethers.getContractFactory("PlanetRandom");
  planetRandomContract = await planetRandomFactory.deploy();
  await planetRandomContract.deployed()
  console.log("PlanetRandom deployed at :", planetRandomContract.address)

  //SVGUtils
  const SVGUtilsFactory = await ethers.getContractFactory("SVGUtils");
  SVGUtilsContract = await SVGUtilsFactory.deploy();
  await SVGUtilsContract.deployed()
  console.log("SVGUtilsContract deployed at :", SVGUtilsContract.address)

  //SkyCircleDescriptor
  const skyCircleDescriptorFactory = await ethers.getContractFactory("SkyCircleDescriptor", {
    libraries: {
      PlanetRandom: planetRandomContract.address,
      SVGUtils: SVGUtilsContract.address,
    }
  });
  skyCircleDescriptorContract = await skyCircleDescriptorFactory.deploy();
  await skyCircleDescriptorContract.deployed()
  console.log("skyCircleDescriptorContract deployed at :", skyCircleDescriptorContract.address)

  //SkyRhombusDescriptor
  const skyRhombusDescriptorFactory = await ethers.getContractFactory("SkyRhombusDescriptor", {
    libraries: {
      PlanetRandom: planetRandomContract.address,
      SVGUtils: SVGUtilsContract.address,
    }
  })
  skyRhombusDescriptorContract = await skyRhombusDescriptorFactory.deploy();
  await skyRhombusDescriptorContract.deployed()
  console.log("skyRhombusDescriptorContract deployed at :", skyRhombusDescriptorContract.address)

  //Sky4PathDescriptor
  const sky4Path1_2DescriptorFactory = await ethers.getContractFactory("Sky4Path1_2Descriptor")
  sky4Path1_2DescriptorContract = await sky4Path1_2DescriptorFactory.deploy();
  await sky4Path1_2DescriptorContract.deployed()
  console.log("sky4Path1_2DescriptorContract deployed at :", sky4Path1_2DescriptorContract.address)
  const sky4Path3_4DescriptorFactory = await ethers.getContractFactory("Sky4Path3_4Descriptor")
  sky4Path3_4DescriptorContract = await sky4Path3_4DescriptorFactory.deploy();
  await sky4Path3_4DescriptorContract.deployed()
  console.log("sky4Path3_4DescriptorContract deployed at :", sky4Path3_4DescriptorContract.address)
  const sky4PathDescriptorFactory = await ethers.getContractFactory("Sky4PathDescriptor", {
    libraries: {
      PlanetRandom: planetRandomContract.address,
      Sky4Path1_2Descriptor: sky4Path1_2DescriptorContract.address,
      Sky4Path3_4Descriptor: sky4Path3_4DescriptorContract.address,
    }
  });
  sky4PathDescriptorContract = await sky4PathDescriptorFactory.deploy();
  await sky4PathDescriptorContract.deployed()
  console.log("sky4PathDescriptorContract deployed at :", sky4PathDescriptorContract.address)

  //Sky4Descriptor
  const sky4DescriptorFactory = await ethers.getContractFactory("Sky4Descriptor", {
    libraries: {
      Sky4PathDescriptor: sky4PathDescriptorContract.address,
    }
  })
  sky4DescriptorContract = await sky4DescriptorFactory.deploy();
  await sky4DescriptorContract.deployed()
  console.log("sky4DescriptorContract deployed at :", sky4DescriptorContract.address)

  //Sky1PathDescriptor
  const sky1Path1_2DescriptorFactory = await ethers.getContractFactory("Sky1Path1_2Descriptor")
  sky1Path1_2DescriptorContract = await sky1Path1_2DescriptorFactory.deploy();
  await sky1Path1_2DescriptorContract.deployed()
  console.log("sky1Path1_2DescriptorContract deployed at :", sky1Path1_2DescriptorContract.address)
  const sky1Path3_4DescriptorFactory = await ethers.getContractFactory("Sky1Path3_4Descriptor")
  sky1Path3_4DescriptorContract = await sky1Path3_4DescriptorFactory.deploy();
  await sky1Path3_4DescriptorContract.deployed()
  console.log("sky1Path3_4DescriptorContract deployed at :", sky1Path3_4DescriptorContract.address)
  const sky1PathDescriptorFactory = await ethers.getContractFactory("Sky1PathDescriptor", {
    libraries: {
      PlanetRandom: planetRandomContract.address,
      Sky1Path1_2Descriptor: sky1Path1_2DescriptorContract.address,
      Sky1Path3_4Descriptor: sky1Path3_4DescriptorContract.address,
    }
  })
  sky1PathDescriptorContract = await sky1PathDescriptorFactory.deploy();
  await sky1PathDescriptorContract.deployed()
  console.log("sky1PathDescriptorContract deployed at :", sky1PathDescriptorContract.address)

  //Sky1Descriptor
  const sky1DescriptorFactory = await ethers.getContractFactory("Sky1Descriptor", {
    libraries: {
      Sky1PathDescriptor: sky1PathDescriptorContract.address,
    }
  })
  sky1DescriptorContract = await sky1DescriptorFactory.deploy();
  await sky1DescriptorContract.deployed()
  console.log("sky1DescriptorContract deployed at :", sky1DescriptorContract.address)

  //Sky2PathDescriptor
  const sky2Path1_2DescriptorFactory = await ethers.getContractFactory("Sky2Path1_2Descriptor")
  sky2Path1_2DescriptorContract = await sky2Path1_2DescriptorFactory.deploy();
  await sky2Path1_2DescriptorContract.deployed()
  console.log("sky2Path1_2DescriptorContract deployed at :", sky2Path1_2DescriptorContract.address)
  const sky2Path3_4DescriptorFactory = await ethers.getContractFactory("Sky2Path3_4Descriptor")
  sky2Path3_4DescriptorContract = await sky2Path3_4DescriptorFactory.deploy();
  await sky2Path3_4DescriptorContract.deployed()
  console.log("sky2Path3_4DescriptorContract deployed at :", sky2Path3_4DescriptorContract.address)

  const sky2PathDescriptorFactory = await ethers.getContractFactory("Sky2PathDescriptor", {
    libraries: {
      PlanetRandom: planetRandomContract.address,
      Sky2Path1_2Descriptor: sky2Path1_2DescriptorContract.address,
      Sky2Path3_4Descriptor: sky2Path3_4DescriptorContract.address,
    }
  })
  sky2PathDescriptorContract = await sky2PathDescriptorFactory.deploy();
  await sky2PathDescriptorContract.deployed()
  console.log("sky2PathDescriptorContract deployed at :", sky2PathDescriptorContract.address)

  //Sky2Descriptor
  const sky2DescriptorFactory = await ethers.getContractFactory("Sky2Descriptor", {
    libraries: {
      Sky2PathDescriptor: sky2PathDescriptorContract.address,
    }
  })
  sky2DescriptorContract = await sky2DescriptorFactory.deploy();
  await sky2DescriptorContract.deployed()
  console.log("sky2DescriptorContract deployed at :", sky2DescriptorContract.address)

  //Sky3PathDescriptor
  const sky3Path1_2DescriptorFactory = await ethers.getContractFactory("Sky3Path1_2Descriptor")
  sky3Path1_2DescriptorContract = await sky3Path1_2DescriptorFactory.deploy();
  await sky3Path1_2DescriptorContract.deployed()
  console.log("sky3Path1_2DescriptorContract deployed at :", sky3Path1_2DescriptorContract.address)
  const sky3Path3_4DescriptorFactory = await ethers.getContractFactory("Sky3Path3_4Descriptor")
  sky3Path3_4DescriptorContract = await sky3Path3_4DescriptorFactory.deploy();
  await sky3Path3_4DescriptorContract.deployed()
  console.log("sky3Path3_4DescriptorContract deployed at :", sky3Path3_4DescriptorContract.address)
  const sky3PathDescriptorFactory = await ethers.getContractFactory("Sky3PathDescriptor", {
    libraries: {
      PlanetRandom: planetRandomContract.address,
      Sky3Path1_2Descriptor: sky3Path1_2DescriptorContract.address,
      Sky3Path3_4Descriptor: sky3Path3_4DescriptorContract.address,
    }
  })
  sky3PathDescriptorContract = await sky3PathDescriptorFactory.deploy();
  await sky3PathDescriptorContract.deployed()
  console.log("sky3PathDescriptorContract deployed at :", sky3PathDescriptorContract.address)

  //Sky3Descriptor
  const sky3DescriptorFactory = await ethers.getContractFactory("Sky3Descriptor", {
    libraries: {
      Sky3PathDescriptor: sky3PathDescriptorContract.address,
    }
  })
  sky3DescriptorContract = await sky3DescriptorFactory.deploy();
  await sky3DescriptorContract.deployed()
  console.log("sky3DescriptorContract deployed at :", sky3DescriptorContract.address)

  //SkyBaseDescriptor
  const skyBaseDescriptorFactory = await ethers.getContractFactory("SkyBaseDescriptor", {
    libraries: {
      PlanetRandom: planetRandomContract.address,
      Sky4Descriptor: sky4DescriptorContract.address,
      Sky1Descriptor: sky1DescriptorContract.address,
      Sky2Descriptor: sky2DescriptorContract.address,
      Sky3Descriptor: sky3DescriptorContract.address,
    }
  });
  skyBaseDescriptorContract = await skyBaseDescriptorFactory.deploy();
  await skyBaseDescriptorContract.deployed();
  console.log("skyBaseDescriptorContract deployed at :", skyBaseDescriptorContract.address)

  //SkyDescriptor
  const skyDescriptorFactory = await ethers.getContractFactory("SkyDescriptor", {
    libraries: {
      SkyBaseDescriptor: skyBaseDescriptorContract.address,
      SkyCircleDescriptor: skyCircleDescriptorContract.address,
      SkyRhombusDescriptor: skyRhombusDescriptorContract.address,
    }
  });
  skyDescriptorContract = await skyDescriptorFactory.deploy();
  await skyDescriptorContract.deployed()
  console.log("skyDescriptorContract deployed at :", skyDescriptorContract.address)

  //PictureFrameDescriptor
  const PictureFrameDescriptorFactory = await ethers.getContractFactory("PictureFrameDescriptor");
  pictureFrameDescriptorContract = await PictureFrameDescriptorFactory.deploy();
  await pictureFrameDescriptorContract.deployed()
  console.log("pictureFrameDescriptorContract deployed at :", pictureFrameDescriptorContract.address)

  //DataDescriptor
  const DataDescriptorFactory_1 = await ethers.getContractFactory("DataDescriptor_1", {
    libraries: {
      SVGUtils: SVGUtilsContract.address,
    }
  });
  dataDescriptorContract_1 = await DataDescriptorFactory_1.deploy();
  await dataDescriptorContract_1.deployed()
  console.log("dataDescriptorContract_1 deployed at :", dataDescriptorContract_1.address)


  const DataDescriptorFactory_2 = await ethers.getContractFactory("DataDescriptor_2", {
    libraries: {
      SVGUtils: SVGUtilsContract.address,
    }
  });
  dataDescriptorContract_2 = await DataDescriptorFactory_2.deploy();
  await dataDescriptorContract_2.deployed()
  console.log("dataDescriptorContract_2 deployed at :", dataDescriptorContract_2.address)

  const DataDescriptorFactory = await ethers.getContractFactory("DataDescriptor", {
    libraries : {
      DataDescriptor_1: dataDescriptorContract_1.address,
      DataDescriptor_2: dataDescriptorContract_2.address
    }
  });
  dataDescriptorContract = await DataDescriptorFactory.deploy();
  await dataDescriptorContract.deployed()
  console.log("dataDescriptorContract deployed at :", dataDescriptorContract.address)

  //PlanetBaseDescriptor
  const PlanetBaseDescriptorFactory = await ethers.getContractFactory("PlanetBaseDescriptor")
  planetBaseDescriptorContract = await PlanetBaseDescriptorFactory.deploy();
  await planetBaseDescriptorContract.deployed()
  console.log("planetBaseDescriptorContract deployed at :", planetBaseDescriptorContract.address)

  //PlanetColor
  const PlanetColorFactory = await ethers.getContractFactory("PlanetColor", {
    libraries: {
      PlanetRandom: planetRandomContract.address,
    }
  })
  planetColorContract = await PlanetColorFactory.deploy();
  await planetColorContract.deployed()
  console.log("planetColorContract deployed at :", planetColorContract.address)

  //PlanetSurface1Descriptor
  const PlanetSurface1_1Descriptor = await ethers.getContractFactory("PlanetSurface1_1Descriptor");
  planetSurface1_1DescriptorContract = await PlanetSurface1_1Descriptor.deploy();
  await planetSurface1_1DescriptorContract.deployed()
  console.log("planetSurface1_1DescriptorContract deployed at :", planetSurface1_1DescriptorContract.address)
  const PlanetSurface1_2Descriptor = await ethers.getContractFactory("PlanetSurface1_2Descriptor");
  planetSurface1_2DescriptorContract = await PlanetSurface1_2Descriptor.deploy();
  await planetSurface1_2DescriptorContract.deployed()
  console.log("planetSurface1_2DescriptorContract deployed at :", planetSurface1_2DescriptorContract.address)
  const PlanetSurface1Descriptor = await ethers.getContractFactory("PlanetSurface1Descriptor", {
    libraries: {
      PlanetSurface1_1Descriptor: planetSurface1_1DescriptorContract.address,
      PlanetSurface1_2Descriptor: planetSurface1_2DescriptorContract.address,
    }
  });
  planetSurface1DescriptorContract = await PlanetSurface1Descriptor.deploy();
  await planetSurface1DescriptorContract.deployed()
  console.log("planetSurface1DescriptorContract deployed at :", planetSurface1DescriptorContract.address)

  //PlanetSurface2Descriptor
  const PlanetSurface2_1DescriptorFactory = await ethers.getContractFactory("PlanetSurface2_1Descriptor")
  planetSurface2_1DescriptorContract = await PlanetSurface2_1DescriptorFactory.deploy();
  await planetSurface2_1DescriptorContract.deployed()
  console.log("planetSurface2_1DescriptorContract deployed at :", planetSurface2_1DescriptorContract.address)
  const PlanetSurface2_2DescriptorFactory = await ethers.getContractFactory("PlanetSurface2_2Descriptor")
  planetSurface2_2DescriptorContract = await PlanetSurface2_2DescriptorFactory.deploy();
  await planetSurface2_2DescriptorContract.deployed()
  console.log("planetSurface2_2DescriptorContract deployed at :", planetSurface2_2DescriptorContract.address)
  const PlanetSurface2_3DescriptorFactory = await ethers.getContractFactory("PlanetSurface2_3Descriptor")
  planetSurface2_3DescriptorContract = await PlanetSurface2_3DescriptorFactory.deploy();
  await planetSurface2_3DescriptorContract.deployed()
  console.log("planetSurface2_3DescriptorContract deployed at :", planetSurface2_3DescriptorContract.address)
  const PlanetSurface2Descriptor = await ethers.getContractFactory("PlanetSurface2Descriptor", {
    libraries: {
      PlanetSurface2_1Descriptor: planetSurface2_1DescriptorContract.address,
      PlanetSurface2_2Descriptor: planetSurface2_2DescriptorContract.address,
      PlanetSurface2_3Descriptor: planetSurface2_3DescriptorContract.address,
    }
  })
  planetSurface2DescriptorContract = await PlanetSurface2Descriptor.deploy();
  await planetSurface2DescriptorContract.deployed()
  console.log("planetSurface2DescriptorContract deployed at :", planetSurface2DescriptorContract.address)

  //PlanetSurface3Descriptor
  const PlanetSurface3_1DescriptorFactory = await ethers.getContractFactory("PlanetSurface3_1Descriptor")
  planetSurface3_1DescriptorContract = await PlanetSurface3_1DescriptorFactory.deploy()
  await planetSurface3_1DescriptorContract.deployed()
  console.log("planetSurface3_1DescriptorContract deployed at :", planetSurface3_1DescriptorContract.address)
  const PlanetSurface3_2DescriptorFactory = await ethers.getContractFactory("PlanetSurface3_2Descriptor")
  planetSurface3_2DescriptorContract = await PlanetSurface3_2DescriptorFactory.deploy()
  await planetSurface3_2DescriptorContract.deployed()
  console.log("planetSurface3_2DescriptorContract deployed at :", planetSurface3_2DescriptorContract.address)
  const PlanetSurface3DescriptorFactory = await ethers.getContractFactory("PlanetSurface3Descriptor", {
    libraries: {
      PlanetSurface3_1Descriptor: planetSurface3_1DescriptorContract.address,
      PlanetSurface3_2Descriptor: planetSurface3_2DescriptorContract.address,
    }
  })
  planetSurface3DescriptorContract = await PlanetSurface3DescriptorFactory.deploy()
  await planetSurface3DescriptorContract.deployed()
  console.log("planetSurface3DescriptorContract deployed at :", planetSurface3DescriptorContract.address)

  //PlanetSurface4Descriptor
  const PlanetSurface4_1DescriptorFactory = await ethers.getContractFactory("PlanetSurface4_1Descriptor")
  planetSurface4_1DescriptorContract = await PlanetSurface4_1DescriptorFactory.deploy()
  await planetSurface4_1DescriptorContract.deployed()
  console.log("planetSurface4_1DescriptorContract deployed at :", planetSurface4_1DescriptorContract.address)
  const PlanetSurface4_2DescriptorFactory = await ethers.getContractFactory("PlanetSurface4_2Descriptor")
  planetSurface4_2DescriptorContract = await PlanetSurface4_2DescriptorFactory.deploy()
  await planetSurface4_2DescriptorContract.deployed()
  console.log("planetSurface4_2DescriptorContract deployed at :", planetSurface4_2DescriptorContract.address)
  const PlanetSurface4DescriptorFactory = await ethers.getContractFactory("PlanetSurface4Descriptor", {
    libraries: {
      PlanetSurface4_1Descriptor: planetSurface4_1DescriptorContract.address,
      PlanetSurface4_2Descriptor: planetSurface4_2DescriptorContract.address,
    }
  })
  planetSurface4DescriptorContract = await PlanetSurface4DescriptorFactory.deploy()
  await planetSurface4DescriptorContract.deployed()
  console.log("planetSurface4DescriptorContract deployed at :", planetSurface4DescriptorContract.address)

  //PlanetSurfaceDescriptor
  const PlanetSurfaceDescriptor = await ethers.getContractFactory("PlanetSurfaceDescriptor", {
    libraries: {
      PlanetRandom: planetRandomContract.address,
      SVGUtils: SVGUtilsContract.address,
      PlanetSurface1Descriptor: planetSurface1DescriptorContract.address,
      PlanetSurface2Descriptor: planetSurface2DescriptorContract.address,
      PlanetSurface3Descriptor: planetSurface3DescriptorContract.address,
      PlanetSurface4Descriptor: planetSurface4DescriptorContract.address,
    }
  });
  planetSurfaceDescriptorContract = await PlanetSurfaceDescriptor.deploy();
  await planetSurfaceDescriptorContract.deployed()
  console.log("planetSurfaceDescriptorContract deployed at :", planetSurfaceDescriptorContract.address)

  //PlanetRingDescriptor
  const planetRing1DescriptorFactory = await ethers.getContractFactory("PlanetRing1Descriptor");
  planetRing1DescriptorContract = await planetRing1DescriptorFactory.deploy();
  await planetRing1DescriptorContract.deployed()
  console.log("planetRing1DescriptorContract deployed at :", planetRing1DescriptorContract.address)

  const planetRing2DescriptorFactory = await ethers.getContractFactory("PlanetRing2Descriptor");
  planetRing2DescriptorContract = await planetRing2DescriptorFactory.deploy();
  await planetRing2DescriptorContract.deployed()
  console.log("planetRing2DescriptorContract deployed at :", planetRing2DescriptorContract.address)

  const planetRing3DescriptorFactory = await ethers.getContractFactory("PlanetRing3Descriptor");
  planetRing3DescriptorContract = await planetRing3DescriptorFactory.deploy();
  await planetRing3DescriptorContract.deployed()
  console.log("planetRing3DescriptorContract deployed at :", planetRing3DescriptorContract.address)

  const planetRingDescriptorFactory = await ethers.getContractFactory("PlanetRingDescriptor", {
    libraries: {
      PlanetRing1Descriptor: planetRing1DescriptorContract.address,
      PlanetRing2Descriptor: planetRing2DescriptorContract.address,
      PlanetRing3Descriptor: planetRing3DescriptorContract.address,
    }
  });
  planetRingDescriptorContract = await planetRingDescriptorFactory.deploy();
  await planetRingDescriptorContract.deployed()
  console.log("planetRingDescriptorContract deployed at :", planetRingDescriptorContract.address)

  // SVG Descriptor
  console.log("Deploying SVGDescriptor...");
  const SVGDescriptorFactory = await ethers.getContractFactory("SVGDescriptor", {
    libraries: {
      SVGUtils: SVGUtilsContract.address,
      PictureFrameDescriptor: pictureFrameDescriptorContract.address,
      DataDescriptor: dataDescriptorContract.address,
      SkyDescriptor: skyDescriptorContract.address,
      PlanetBaseDescriptor: planetBaseDescriptorContract.address,
      PlanetSurfaceDescriptor: planetSurfaceDescriptorContract.address,
      PlanetColor: planetColorContract.address,
      PlanetRingDescriptor: planetRingDescriptorContract.address,
    }
  })

  SVGDescriptorContract = await SVGDescriptorFactory.deploy();
  await SVGDescriptorContract.deployed();
  console.log("SVGDescriptor deployed at", SVGDescriptorContract.address);


  // Planets Descriptor
  console.log("Deploying PlanetsDescriptor...");
  const planetsDescriptorFactory = await ethers.getContractFactory("PlanetsDescriptor", {
    libraries: {
      PlanetRandom: planetRandomContract.address,
      SVGUtils: SVGUtilsContract.address,
    }
  })

  planetsDescriptorContract = await planetsDescriptorFactory.deploy(planetsManagerContract.address);
  await planetsDescriptorContract.deployed();
  console.log("PlanetsDescriptor deployed at", planetsDescriptorContract.address);

  // PlanetsName
  console.log("Deploying PlanetsName...");
  const planetsNameFactory = await ethers.getContractFactory("PlanetsName", {
    libraries: {
      SVGUtils: SVGUtilsContract.address,
    }
  })

  planetsNameContract = await planetsNameFactory.deploy(planetsManagerContract.address, planetsDescriptorContract.address);
  await planetsNameContract.deployed();
  console.log("PlanetsName deployed at", planetsNameContract.address);

  // initialized access control

  // Run access control function
  console.log('Has role admin: ', (await SVGDescriptorContract.hasRole(DEFAULT_ADMIN_ROLE, deployer.address)))

  // set planetsManager as PLANET_MANAGER_ROLE in planetDescriptor
  let txGrantRolePlanetsManager = await planetsDescriptorContract.grantRole(PLANETS_MANAGER_ROLE, planetsManagerContract.address);
  await txGrantRolePlanetsManager.wait()
  console.log("Add planetsManager as PLANETS_MANAGER_ROLE in planetsDescriptor")

  // set planetsDescriptor as PLANETS_DESCRIPTOR_ROLE in svgDescriptor
  let txGrantRolePlanetDescriptor = await SVGDescriptorContract.grantRole(PLANETS_DESCRIPTOR_ROLE, planetsDescriptorContract.address);
  await txGrantRolePlanetDescriptor.wait()
  console.log("Add planetDescriptor as PLANETS_DESCRIPTOR_ROLE in svgDescriptor")

  // set SVGDescriptor in planetDescriptor
  let txAddSVG = await planetsDescriptorContract.addSVGDescriptor(SVGDescriptorContract.address);
  await txAddSVG.wait()
  console.log("Add SVGDescriptor in planetsDescriptor")

  // set planetsName in planetDescriptor
  let txAddPlanetsName = await planetsDescriptorContract.addPlanetsName(planetsNameContract.address);
  await txAddPlanetsName.wait()
  console.log("Add planetsName in planetsDescriptor")

  // set planetsDescriptor in planetsManager
  let txAddPlanetsDescriptor = await planetsManagerContract.addPlanetDescriptor(planetsDescriptorContract.address)
  await txAddPlanetsDescriptor.wait();

  let finalBalanceDeployer : BigNumber = await deployer.getBalance()
  console.log("Cost deploy is: ", ethers.utils.formatEther(initialBalanceDeployer.sub(finalBalanceDeployer)))

  if (hardhat.network.name !== 'hardhat' && hardhat.network.name !== 'localhost') {
    await new Promise((f) => setTimeout(f, 10000));

    await run('verify:verify', {
      address: SVGDescriptorContract.address,
      constructorArguments: [],
    });
  }

}
  main()
    .then(() => process.exit(0))
    .catch((error: Error) => {
      console.error(error);
      process.exit(1);
    });

