import hardhat from 'hardhat';
import {Contract} from "@ethersproject/contracts";
import {deploy} from "@openzeppelin/hardhat-upgrades/dist/utils";
import {BigNumber} from "ethers";
const { run, ethers, upgrades } = hardhat;
let planetRandomContract : Contract;
let planetsDescriptorContract : Contract;
let SVGUtilsContract : Contract;
let DEFAULT_ADMIN_ROLE = "0x0000000000000000000000000000000000000000000000000000000000000000";

// Deploy arguments
let planetRandomAddress = "0xbF16305a58AE28d676Cb8c217E5F307b1A810214" // mainnet
let SVGUtilsAddress = "0x5310028f758910016E61e5715901E26F52caAB5C" // mainnet
let planetsDescriptorAddress = "0xa5E5884Ce0EB1e52936172FF04dccCf126c261C2" // mainnet

async function main(): Promise<void> {
  await run('compile');
  const [deployer] = await ethers.getSigners();

  console.log('Add coordinate with the account:', deployer.address);
  let initialBalanceDeployer = await deployer.getBalance()
  console.log('Account balance:', (await deployer.getBalance()).toString());

  /* Library*/
  //PlanetRandom
  const planetRandomFactory = await ethers.getContractFactory("PlanetRandom");
  planetRandomContract = await planetRandomFactory.attach(planetRandomAddress);
  console.log("PlanetRandom attach at :", planetRandomContract.address)

  //SVGUtils
  const SVGUtilsFactory = await ethers.getContractFactory("SVGUtils");
  SVGUtilsContract = await SVGUtilsFactory.attach(SVGUtilsAddress);
  console.log("SVGUtilsContract attach at :", SVGUtilsContract.address)

  // Planets Descriptor
  const planetsDescriptorFactory = await ethers.getContractFactory("PlanetsDescriptor", {
    libraries: {
      PlanetRandom: planetRandomContract.address,
      SVGUtils: SVGUtilsContract.address,
    }
  })

  planetsDescriptorContract = await planetsDescriptorFactory.attach(planetsDescriptorAddress);
  console.log("PlanetsDescriptor attach at", planetsDescriptorContract.address);

  let listX = [2829,933,1878,182,-126,2640,430,1836,870,495,-1462,-2115,1230,2195,1551,-2605,-1280,-1945,-2747,-635,1863,-814,-720,-2655,-1969,-632,-1478,1022,-49,1374,1944,-291,-324,-411,43,-2038,1513,756,-776,-7,-2775,1397,-715,-786,2350,1383,1053,1097,-642,1137,-2335,-418,-1971,1525,-999,403,2253,-1269,1310,-219,-1381,332,381,1966,-1979,-1705,-2670,-1796,-89,-2747,-269,2504,-1521,2716,-2927,1865,1681,448,1654,-1171,-2176,2149,-2732,-2794,1960,1579,-124,428,84,2558,587,920,-430,1820,-2956,-363,-2263,2746,-1193,1968,-1048,-2725,-2952,2664,990,720,882,-1048,-2849,-702,1114,1706,1838,1216,2789,-2213,134,2925,808,1547,-540,1973,-701,-2387,1358,-1292,-1141,-1689,576,-1178,-287,2880,501,-2190,-957,1787,2784,-1498,713,-266,1287,2538,275,-2334,739,1674,-2895,-1825,-1497,1183,2295,-1461,1324,1436,2055,2248,-1572,1170,-2142,930,-1869,2453,656,-2522,-469,-1308,2125,-140,1085,1508,-1213,2379,-1976,1638,2894,-1564,2111,2744,2134,-2325,-1348,-216,-1246,-1580,276,-493,-1526,2676,-2211,-751,-2415,1200,-1752,-1171,-184,-126,-2895,-2009,2075,1708,-2399,2105,1204,2792,120,1005,-789,348,2508,-59,2614,388,-1801,-134,2744,498,1415,-443,938,1867,-2213,919,-448,-2203,566,-918,596,-1315,-619,-295,2486,933,-985,-1969,2361,-753,2026,2649,1264,2277,1266,-2618,-1655,-286,775,2807,1250,-661,1128,954,-2369,-2720,1542,2414,2881,541,2921,492,185,517,-2838,487,-2745,-910,2977,-1830,875,-76,433,-515,-2085,-765,-2026,-1742,2533,390,-2934,1975,913,-2613,440,-2288,-761,2366,2691,-2193,2419,-2735,372,-2412,2445,1298,-1760,1100,-2623,817,-351,-808,-2670,-2068,-804,-645,201,-2141,359,1955,1988,376,2577,-2957,1740,-1731,1496,1779,-940,1851,910,-1917,-1089,2565,2281,1369,-1018,-1856,2957,-2382,-2810,-1413,894,580,2865,2554,-1028,2602,-316,-2999,398,-2380,2507,1208,-489,-1884,-1380,551,-1153,854,1120,639,22,-1889,209,-2385,1919,959,-1337,592,306,2909,1471,1768,-745,-2851,-2396,-122,1308,-308,1240,-283,-750,1114,-2958,929,-1277,342,-200,-3000,-2374,2596,2811,-2739,-1483,2117,2976,2965,-1119,914,523,789,1827,494,1854,-2016,2088,738,-1101,75,320,121,2474,-1450,253,431,2450,-1265,642,25,-704,-702,1814,743,-1187,2979,-110,-1144,853,1946,702,2192,-1078,-1505,-520,-2562,1679,-840,1140,2955,146,2006,-1674,2088,2683,2697,-1552,2673,2503,-2482,637,1956,2423,-2381,-2441,2447,2215,2938,794,2651,690,1618,1397,1114,104,2922,2949,126,-2330,-2037,-460,363,1792,-537,2468,-1831,-2386,1326,-1058,507,984,2052,-2392,1675,2200,563,2807,-2926,141,2889,2494,346,1058,2970,610,-1396,337,2205,685,1926,2311,-569,901,-2828,1933,1695,2530,-1678,-2791,-1858,-1250,-1661,2615,-1756,-751,-454,-607,1791,-42,-1204,-2115,-2256,1266,-630,2489,-1983,1782,-1712,-417,630,-987,-468,1787,1749,-1331,-279,-2333,2063,1569,438,436,1043,1680,2941,-812,2652,2439,-700,510,2941,2641,-1088,2753,1769,-193,2545,-2039,-2882,-2859,-42,986,-1749,1921,-2478,-185,1750,1994,-372,1831,2855,691,541,2787,1174,1650,-544,-13,206,-797,1962,2970,-1141,-966,-1322,-233,353,-2294,2086,1869,2309,-2970,1661,378,-2653,1985,-2097,-711,988,1270,286,-1589,1052,-718,1384,-81,1072,-740,615,2642,514,330,491,1696,2912,-2875,1461,2315,2517,-137,-911,-1335,-2239,-1624,-1156,168,-2691,-2502,-1824,-1852,-2946,-897,1017,-1469,-1051,-1,1097,-2070,502,1666,-244,1273,2545,-232,606,-1341,309,1018,-2234,-1189,158,-2256,-576,-1446,-1985,297,530,-612,-2611,782,-2916,-2427,-1813,-655,2130,-2933,-1381,-2465,672,1915,-420,-986,1207,-1049,-2234,-903,-2058,-684,2214,2096,2809,372,215,-329,474,-10,313,-1464,-2815,977,882,529,273,-1109,-355,1333,2803,-2387,2657,-1525,1951,-551,-2191,2719,-2184,1170,1882,-751,2874,596,-875,-1044,-466,677,-1714,-443,315,-2325,720,2046,-2810,-2518,-1468,1964,1201,-164,-430,798,-571,656,1052,-505,-2469,325,-2374,815,291,-2116,-136,2533,2394,758,2844,-2396,-1112,2564,-700,-1116,-998,-1061,792,-1455,-644,-2139,877,2121,-1821,-776,-2380,2377,160,-1279,1412,-1715,1352,1133,767,-1956,112,-1231,2017,-2485,2421,1313,-939,-2388,1752,2856,2295,957,1025,294,-1867,163,-2087,104,-1352,-2066,2035,-2314,-2679,-1098,-359,-1687,-1652,627,-1171,2678,-1274,-276,-915,2585,-2013,-2825,1747,-1869,294,-664,-979,905,1247,-1234,-2488,198,2076,2901,-66,538,1754,1962,1976,2266,885,746,1005,2982,-1811,1900,-360,-2228,-2320,-2610,2519,1087,-1094,2601,659,77,975,-2850,553,2213,842,1372,779,1139,95,-2125,-2479,-2417,-550,2031,1124,-338,-2464,2164,-1167,23,1388,2624,2832,-1252,-1469,-1149,2946,1347,403,2202,1647,1701,-2722,281,913,1678,-2546,-1905,-1444,392,2904,-1957,1145,2424,-821,-989,-2573,2609,1217,-714,216,2144,-2253,-1190,-2810,-758,2683,-2606,1984,-1013,-2652,2621,252,-508,-717,-2686,-1349,-1466,-895,719,-1524,218,-1029,2224,1600,1409,-224,-2564,2764,422,2822,-2673,-1207,259,-1273,-2265,-665,48,1242,-2269,1421,2442,-1555,1722,-2791,2323,-410,-1296,701,2949,847,1603,697,-1259,1462,1101,2492,41,-1938,-814,-1188,-1602,1838,925,2195,2488,833,1457,2198,-2298,1392,-1823,-2216,-2445,343,-734,-2387,-630,1678,-67,-1701,-1471,1959,1539,138,1789,1346,693,996,-44,2617,-1846,-879,791,-1768,1659,1869,1955,-980,-1129,-435,344,517,-1812,-2955,2460,2102,-399,1822,-1786,2020,-1391,261,2499,25,-570,1520,1682,-2707,174,1261,-1342,2071,274,1313,576,-2408,-2130,-1587,-1269,-764,-2733,1362,-1361,1668,1475,2523,43,2361,1694,-1381,2604,1377,-2425,-781,-621,433,-556,2360,1011,-1966,-1726,2258,821,173,-1471,471,417,-620,-1883,-137,-2839,2036,1343,2377,-1087,-1944,156,-2868,2006,1378,-2579,-1892,-2792,1383,1832,-295,-292,1696,2805,2251,1427,-824,-1904,1964,-2210,-2886,1311,2229,398,2981,-2518,-830,1399,2802,2846,-583,1953,2303,-1315,2074,-1957,-2373,-462,-2203,-809,714,-2606,-80,1848,1668,517,586,2437,-2755,-2384,1646,959,-2171,-132,2142,258,1463,-1418,-1416,2789,-2869,-608,478,152,850,2838,-2808,-2898,-1817,1817,-300,-1269,-1825,-63,-2411,-1511,639,-746,2506,-1650,-2169,2389,-370,-1044]
  let listY = [-266,2445,2914,-137,1852,-284,302,322,1118,-2794,-1389,-1674,2153,-966,166,232,-989,720,-2737,-1580,838,1933,2007,1061,-1165,1176,2438,-2396,1496,-527,2126,-1765,-447,-1500,172,-142,650,1212,-2545,934,1639,-607,1801,2974,-695,-2532,-908,-1902,2273,1476,-1188,2355,-2790,1627,2856,1674,1528,2822,1055,2866,-1516,-756,280,315,-1759,-2358,-1946,2606,2982,-983,-2842,-1891,-953,-1517,-9,2026,2314,-613,2699,-1038,-2866,-1209,77,-2918,-1063,785,709,-2097,2045,1602,802,136,-1449,-423,-1506,1667,-348,-1532,249,1449,-2032,863,1587,2640,-737,-2214,-1096,-22,2044,2463,-2111,-267,1830,57,-1233,1324,-1073,2250,1504,-1646,2572,1341,-1885,176,116,2036,-447,-1849,-941,1541,-1197,2595,-1400,870,-2183,1981,1472,-1494,2529,1861,-1319,-2335,2350,1333,-2353,-322,-2367,-1304,2515,-2784,2370,-2463,1835,1956,2230,-758,-2138,1824,1245,1610,2329,-1232,-804,-181,-638,2416,-2075,1212,-2880,-124,-117,-2538,-903,-233,-125,-727,-2633,728,431,651,2851,1924,515,-1839,461,-825,-904,-837,-1287,-1616,-2287,-574,142,1757,-1999,-804,1143,-1644,-1296,-1498,-2484,-1326,-120,-1055,2523,1745,-1210,-233,-2349,-1624,755,1732,-1297,-1356,396,2301,2874,-2893,-2568,-2676,-2121,-236,2543,2025,-2208,-1551,2846,2522,-1122,858,156,-321,1708,-2260,1731,-130,100,-1560,-1956,653,-2459,2037,-1685,2801,2239,-1371,-1706,-1136,1102,-2263,-715,-1194,710,-1209,-972,-2108,2671,2857,-831,2770,-478,-283,-2724,304,429,-1084,2268,-290,1126,-2890,2627,-2817,1273,-1438,119,-443,2491,303,2959,-2988,-1681,-1243,2332,-1154,1247,2893,909,1985,2610,1848,-2823,2473,1102,2462,-2077,-2701,-72,-1107,890,466,1904,-970,2510,-1337,48,2062,2613,-1689,-1200,2060,-1217,-228,248,843,-2365,1123,2120,2677,-2882,1745,2378,-1635,966,-525,4,2375,1130,2392,524,-1596,-2752,1436,-2803,2773,1657,2529,-2941,680,-1262,-12,1006,-2512,1297,1977,-1855,2378,312,959,664,1296,2453,2454,2064,1740,270,222,2101,2517,-2006,-548,2808,2283,-1661,2999,2883,-1594,2984,355,-2873,-1282,1677,-1878,-1738,-122,1992,2530,617,-398,-1619,2848,2422,-1573,-302,2968,2793,-327,-1808,-294,-2908,518,2053,-207,-1111,-764,2332,1854,2279,-1112,2260,-959,-662,-901,-538,336,1081,-2102,1714,605,767,2225,770,-809,-1953,2477,1622,-1611,-1769,-2979,1397,-1513,1984,2831,324,656,2012,-354,1761,-2504,1468,-2096,1999,-2073,-2548,-360,1784,-691,-2068,2864,-1867,1571,2229,1841,-1814,-1073,-727,-1795,441,2110,1502,1606,-405,1958,-2728,450,1641,-2734,2334,33,2417,853,-552,-2543,-222,2277,-2215,-203,1911,-1046,-1498,-1999,-2213,2461,481,2513,-673,-2618,1129,2745,1648,-1652,-145,2712,2941,-1902,1859,-515,-2474,-2329,-805,-2116,788,-1709,1210,306,-379,308,591,2070,928,2943,1346,2512,863,1562,-510,-1399,-335,-72,2693,480,1959,792,295,-2290,-930,2410,-642,350,-2375,-97,2855,-779,1105,174,-939,1456,-2992,123,-1749,-332,137,938,-280,-764,-2582,-229,1597,-2864,2501,-1872,-906,25,1878,1122,-971,-649,-2291,-1433,-286,2244,2925,-372,-2682,2223,-2030,-2291,620,110,2678,660,1199,-2653,2135,-2002,938,2771,-2744,589,-2957,336,112,-2700,-186,322,1022,-1845,158,-2626,-2144,-1048,1425,-1126,375,-2541,-137,-2398,2514,2884,2020,607,-88,-2326,-1072,39,136,-503,-939,-1049,2681,-2249,-2255,1396,1911,-657,2210,2812,784,-2492,518,-2717,2226,-2837,409,60,882,364,-135,-222,1100,-860,1938,-690,-347,1721,2881,-1065,2383,-2723,2185,-953,-318,1861,1000,-1320,2514,55,206,2877,-2655,209,-886,735,1087,225,-346,2469,-1998,-2898,1660,-1710,-2685,-2185,2048,-2204,-2533,1939,2945,-2949,2854,-2915,676,1875,-2582,27,-458,2765,-720,2117,1466,-1457,-400,2062,-2895,-2948,-2154,-2094,-301,-205,-473,1304,-2391,-434,2581,1645,-926,-2221,-2449,2713,-489,2666,-1000,-2109,2183,1921,1646,-398,1412,1293,-730,1647,1194,-1272,-1601,-469,-2960,-1548,-177,2797,910,1299,-684,793,-619,-2165,-1372,1520,2190,815,2379,318,-2443,978,2808,-2471,-1653,569,-2575,590,-1154,-2481,967,720,2398,2015,-518,460,-227,-312,-1766,-737,-442,1563,-2494,-2341,2610,-2812,241,-1568,-1570,-2322,-2007,-2478,-2038,2568,465,1406,990,137,1449,-1683,-1081,-1954,383,-1482,-1671,-1763,-2421,-2149,340,-823,833,1536,361,-1958,-2110,1988,-2736,2876,-1610,-1418,962,306,-2756,-779,-2628,2743,1073,-784,1107,-2706,-2647,-186,2939,625,2742,2503,974,735,474,-1847,298,-873,2941,-1560,-1221,-2861,360,1623,-2254,1558,-471,2450,368,-683,243,-593,2249,-1969,2757,-1190,-2685,1245,-2535,922,320,-2815,1635,2826,-1956,1287,-2892,-826,-173,2478,-256,348,-2797,2349,1854,-566,2115,-2784,1568,1663,887,2954,1106,-1713,-2595,1257,-866,2287,1326,611,2016,2405,1453,-189,1938,-2377,-237,-2488,-841,778,290,640,-292,-1489,2920,1573,-1433,-1796,1447,-2968,2038,1953,-772,841,-987,-2463,-2981,-1151,2479,199,-671,667,150,-2723,-1806,185,-32,1034,2259,1351,2183,-947,1545,395,-2215,-679,993,2113,-394,668,436,770,-1739,-624,2379,1745,2364,1776,-2390,80,-578,-1873,-2419,-2221,-1148,2534,558,1504,-2613,377,1552,-1486,-114,-629,368,2160,1978,-1913,1865,-2346,1669,2597,-778,1044,-1293,189,890,1889,1764,1959,2470,-301,2833,-1050,-1339,-1441,1501,1892,-698,-2903,-286,-1682,-2298,1818,-755,-1687,-1669,-180,126,632,-2438,-1542,-932,696,1227,-2153,1696,2422,-2554,2187,885,226,-1762,-1570,1462,1992,748,-1128,-1651,2784,2930,186,-2433,-217,-685,1073,1281,-676,-1941,-2108,56,-695,-724,2458,2473,787,2306,2792,2123,1599,-2482,1383,2994,-2790,1289,2780,1803,-1792,-1937,87,-1663,-621,-707,-142,-910,-880,1135,-2657,-1717,1639,424,1805,-2763,-2440,92,2618,-1814,-1039,2089,124,2350,-725,-701,-312,2121,-2364,1711,1471,-2053,-172,60,-2817,820,-2166,1991,468,2679,1352,-1819,2227,190,-2587,-2665,-328,1798,69,1916,1035,-1285,-182,2656,1182,2803,1954,1234,663,-1898,-2896,2527,2714,2329,513,-2617,-2490,-549,-2523,1251,-396,-405,-939,-1936,-71,1543,1168,-2125,1744,2813,-1336,-1602,2197,2058,2307,2198,-2705,1627,-135,2555,2901,166,-1379,2405,-1481,2904,-941,179,-2454,1077,-2597,2470,-375,-1806,636,2374,1216,-2048,-1608,-1462,-2011,-300]
  let listTokenId = [];

  for (let i=1; i<= 1123; i++ ) {
    listTokenId.push(i)
  }

  let sha256List : any = []
  for (let i = 0; i < listX.length; i++) {
    let messageBytes = ethers.utils.toUtf8Bytes(listX[i]+listY[i].toString())
    let sha256 = ethers.utils.sha256(messageBytes)
    if (sha256List.includes(sha256)) {
      console.log("error double coordinate find")
    } else {
      sha256List.push(sha256)
    }
  }

  if (listX.length == listY.length && listX.length == listTokenId.length) {
    let isAdmin = await planetsDescriptorContract.hasRole(DEFAULT_ADMIN_ROLE, deployer.address)
    console.log({isAdmin})
    for (let i = 0; i < 12; i++) {
      let tx = await planetsDescriptorContract.insertPlanetCoordinates(listTokenId.slice(100*i,100*i+99), listX.slice(100*i,100*i+99), listY.slice(100*i,100*i+99)) // know error, to fix
      let txReceived = await tx.wait();
      console.log({txHash: txReceived.transactionHash})
    }
    let tx = await planetsDescriptorContract.insertPlanetCoordinates(listTokenId.slice(1119,1122), listX.slice(1119,1122), listY.slice(1119,1122))
    let txReceived = await tx.wait();
    console.log({txHash: txReceived.transactionHash})
    console.log("done")

    let balanceDeployer : BigNumber = await deployer.getBalance()
    console.log("Cost transaction is: ", ethers.utils.formatEther(initialBalanceDeployer.sub(balanceDeployer)))

  }


}
  main()
    .then(() => process.exit(0))
    .catch((error: Error) => {
      console.error(error);
      process.exit(1);
    });
