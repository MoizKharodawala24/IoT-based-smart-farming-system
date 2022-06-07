module fsm_plant(clk, reset, start, temperature, water, ac, pump);
    input clk;
    input reset;
    input start;
    input[2:0] temperature;
    input[3:0] water;
    output[1:0] ac;
    output pump;

    reg state_temperature_synth_0;
    reg state_temperature_synth_1;
    reg state_temperature_synth_2;
    reg state_water_synth_0;
    reg state_water_synth_1;
    reg state_water_synth_2;

    wire tmp2014;
    wire tmp2015;
    wire tmp2016;
    wire tmp2017;
    wire tmp2020;
    wire tmp2021;
    wire[1:0] tmp2023;
    wire tmp2026;
    wire tmp2027;
    wire tmp2028;
    wire tmp2029;
    wire tmp2031;
    wire tmp2032;
    wire tmp2034;
    wire tmp2036;
    wire tmp2037;
    wire tmp2038;
    wire tmp2040;
    wire tmp2041;
    wire tmp2047;
    wire tmp2051;
    wire tmp2053;
    wire tmp2060;
    wire tmp2061;
    wire tmp2062;
    wire tmp2066;
    wire tmp2070;
    wire tmp2072;
    wire tmp2074;
    wire tmp2084;
    wire tmp2085;
    wire tmp2086;
    wire tmp2099;
    wire tmp2100;
    wire tmp2102;
    wire tmp2103;
    wire tmp2105;
    wire tmp2106;
    wire tmp2107;
    wire tmp2115;
    wire tmp2120;
    wire tmp2137;
    wire tmp2140;
    wire tmp2141;
    wire tmp2148;
    wire tmp2157;
    wire tmp2158;
    wire tmp2159;
    wire tmp2164;
    wire tmp2166;
    wire tmp2172;
    wire tmp2175;
    wire tmp2176;
    wire tmp2177;
    wire tmp2200;
    wire tmp2201;
    wire tmp2204;
    wire tmp2214;
    wire tmp2225;
    wire tmp2226;
    wire tmp2228;
    wire tmp2229;
    wire tmp2230;
    wire tmp2237;
    wire tmp2240;
    wire tmp2248;
    wire tmp2250;
    wire tmp2251;
    wire tmp2254;
    wire tmp2262;
    wire tmp2286;
    wire tmp2287;
    wire tmp2288;
    wire tmp2298;
    wire tmp2300;
    wire tmp2301;
    wire tmp2304;
    wire tmp2310;
    wire tmp2311;
    wire tmp2312;
    wire tmp2313;
    wire tmp2314;
    wire tmp2315;
    wire tmp2317;
    wire tmp2319;
    wire tmp2320;
    wire tmp2321;
    wire tmp2329;
    wire tmp2330;
    wire tmp2331;
    wire tmp2332;
    wire tmp2333;
    wire tmp2334;
    wire tmp2336;
    wire tmp2337;
    wire tmp2338;
    wire tmp2352;
    wire tmp2354;
    wire tmp2356;
    wire tmp2357;
    wire tmp2360;
    wire tmp2362;
    wire tmp2363;
    wire tmp2370;
    wire tmp2371;
    wire tmp2372;
    wire tmp2373;
    wire tmp2374;
    wire tmp2375;
    wire tmp2377;
    wire tmp2390;
    wire tmp2393;
    wire tmp2405;
    wire tmp2407;
    wire tmp2411;
    wire tmp2412;
    wire tmp2413;
    wire tmp2424;
    wire tmp2431;
    wire tmp2448;
    wire tmp2449;
    wire tmp2450;
    wire tmp2452;
    wire tmp2457;
    wire tmp2459;
    wire tmp2460;
    wire tmp2461;
    wire tmp2463;
    wire tmp2465;
    wire tmp2473;
    wire tmp2476;
    wire tmp2482;
    wire tmp2483;
    wire tmp2484;
    wire tmp2489;
    wire tmp2492;
    wire tmp2493;
    wire tmp2498;
    wire tmp2499;
    wire tmp2500;
    wire tmp2509;
    wire tmp2522;
    wire tmp2525;
    wire tmp2527;
    wire tmp2531;
    wire tmp2532;
    wire tmp2533;
    wire tmp2534;
    wire tmp2535;
    wire tmp2539;
    wire tmp2548;
    wire tmp2556;
    wire tmp2570;
    wire tmp2571;
    wire tmp2572;
    wire tmp2585;
    wire tmp2586;
    wire tmp2587;
    wire tmp2589;
    wire tmp2590;
    wire tmp2591;
    wire tmp2606;
    wire tmp2610;
    wire tmp2612;
    wire tmp2621;
    wire tmp2623;
    wire tmp2632;
    wire tmp2634;
    wire tmp2635;
    wire tmp2636;
    wire tmp2638;
    wire tmp2650;
    wire tmp2651;
    wire tmp2652;
    wire tmp2657;
    wire tmp2658;
    wire tmp2659;
    wire tmp2660;
    wire tmp2663;
    wire tmp2668;
    wire tmp2675;
    wire tmp2682;
    wire tmp2691;
    wire tmp2692;
    wire tmp2693;
    wire tmp2696;
    wire tmp2698;
    wire tmp2703;
    wire tmp2719;
    wire tmp2720;
    wire tmp2722;
    wire tmp2726;
    wire tmp2730;
    wire tmp2751;
    wire tmp2760;
    wire tmp2770;
    wire tmp2775;
    wire tmp2781;
    wire tmp2796;
    wire tmp2808;
    wire tmp2810;
    wire tmp2811;
    wire tmp2813;
    wire tmp2816;
    wire tmp2823;
    wire tmp2830;
    wire tmp2835;
    wire tmp2841;
    wire tmp2846;
    wire tmp2849;
    wire tmp2852;
    wire tmp2860;
    wire tmp2861;
    wire tmp2862;
    wire tmp2875;
    wire tmp2878;
    wire tmp2879;
    wire tmp2888;
    wire tmp2895;
    wire tmp2904;
    wire tmp2914;
    wire tmp2923;
    wire tmp2924;
    wire tmp2931;
    wire tmp2951;
    wire tmp2953;
    wire tmp2958;
    wire tmp2961;
    wire tmp2962;
    wire tmp2963;
    wire tmp2965;
    wire tmp2966;
    wire tmp2974;
    wire tmp2975;
    wire tmp2982;
    wire tmp2983;
    wire tmp2987;
    wire tmp2989;
    wire tmp2995;
    wire tmp2998;
    wire tmp3012;
    wire tmp3019;
    wire tmp3026;
    wire tmp3027;
    wire tmp3028;
    wire tmp3032;
    wire tmp3041;
    wire tmp3048;
    wire tmp3051;
    wire tmp3056;
    wire tmp3062;
    wire tmp3063;
    wire tmp3064;
    wire tmp3065;
    wire tmp3066;
    wire tmp3067;
    wire tmp3068;
    wire tmp3070;
    wire tmp3072;
    wire tmp3074;
    wire tmp3075;
    wire tmp3076;
    wire tmp3077;
    wire tmp3080;
    wire tmp3081;
    wire tmp3082;
    wire tmp3083;
    wire tmp3087;
    wire tmp3088;
    wire tmp3089;
    wire tmp3091;
    wire tmp3094;
    wire tmp3103;
    wire tmp3108;
    wire tmp3110;
    wire tmp3127;
    wire tmp3145;
    wire tmp3155;
    wire tmp3156;
    wire tmp3157;
    wire tmp3158;
    wire tmp3159;
    wire tmp3168;
    wire tmp3181;
    wire tmp3183;
    wire tmp3191;
    wire tmp3194;
    wire tmp3204;
    wire tmp3207;
    wire tmp3214;
    wire tmp3224;
    wire tmp3238;
    wire tmp3245;
    wire tmp3246;
    wire tmp3252;
    wire tmp3253;
    wire tmp3254;
    wire tmp3263;
    wire tmp3274;
    wire tmp3275;
    wire tmp3278;
    wire tmp3282;
    wire tmp3287;
    wire tmp3293;
    wire tmp3298;
    wire tmp3301;
    wire tmp3302;
    wire tmp3306;
    wire tmp3307;
    wire tmp3308;
    wire tmp3309;
    wire tmp3317;
    wire tmp3318;
    wire tmp3319;
    wire tmp3323;
    wire tmp3330;
    wire tmp3331;
    wire tmp3332;
    wire tmp3333;
    wire tmp3335;
    wire tmp3349;
    wire tmp3362;
    wire tmp3363;
    wire tmp3372;
    wire tmp3375;
    wire tmp3380;
    wire tmp3399;
    wire tmp3403;
    wire tmp3412;
    wire tmp3414;
    wire tmp3416;
    wire tmp3419;
    wire tmp3426;
    wire tmp3427;
    wire tmp3428;
    wire tmp3430;
    wire tmp3431;
    wire tmp3432;
    wire tmp3436;
    wire tmp3440;
    wire tmp3445;
    wire tmp3446;
    wire tmp3449;
    wire tmp3450;
    wire tmp3451;
    wire tmp3456;
    wire tmp3467;
    wire tmp3468;
    wire tmp3469;
    wire tmp3473;
    wire tmp3475;
    wire tmp3482;
    wire tmp3486;
    wire tmp3487;
    wire tmp3488;
    wire tmp3489;
    wire tmp3493;
    wire tmp3495;
    wire tmp3502;
    wire tmp3506;
    wire tmp3516;
    wire tmp3529;
    wire tmp3536;
    wire tmp3538;
    wire tmp3539;
    wire tmp3541;
    wire tmp3550;
    wire tmp3559;

    // Combinational
    assign ac = tmp2023;
    assign pump = tmp3308;
    assign tmp2014 = {water[0]};
    assign tmp2015 = {water[1]};
    assign tmp2016 = {water[2]};
    assign tmp2017 = {water[3]};
    assign tmp2020 = {temperature[1]};
    assign tmp2021 = {temperature[2]};
    assign tmp2023 = {tmp2811, tmp3091};
    assign tmp2026 = tmp2500 | tmp2072;
    assign tmp2027 = tmp3048 & tmp3493;
    assign tmp2028 = tmp3088 & tmp3493;
    assign tmp2029 = tmp3089 & tmp3493;
    assign tmp2031 = tmp2660 & tmp3278;
    assign tmp2032 = ~tmp3298;
    assign tmp2034 = start & tmp2304;
    assign tmp2036 = tmp3062 & tmp2074;
    assign tmp2037 = tmp2352 & tmp2074;
    assign tmp2038 = tmp3064 & tmp2074;
    assign tmp2040 = tmp2691 | tmp2248;
    assign tmp2041 = tmp2692 | tmp2248;
    assign tmp2047 = ~tmp2878;
    assign tmp2051 = tmp2237 & tmp3302;
    assign tmp2053 = tmp2962 | tmp2621;
    assign tmp2060 = tmp2336 & tmp3181;
    assign tmp2061 = tmp2405 & tmp3181;
    assign tmp2062 = tmp2338 & tmp3181;
    assign tmp2066 = tmp3416 & tmp2623;
    assign tmp2070 = ~tmp2047;
    assign tmp2072 = tmp3108 & tmp2021;
    assign tmp2074 = ~tmp2115;
    assign tmp2084 = tmp2356 & tmp2835;
    assign tmp2085 = tmp2357 & tmp2835;
    assign tmp2086 = tmp2315 & tmp2835;
    assign tmp2099 = state_temperature_synth_1 | tmp3436;
    assign tmp2100 = tmp2390 & tmp3278;
    assign tmp2102 = tmp2531 | tmp3183;
    assign tmp2103 = tmp2532 | tmp3183;
    assign tmp2105 = tmp2589 & tmp2465;
    assign tmp2106 = tmp2974 & tmp2465;
    assign tmp2107 = tmp2975 & tmp2465;
    assign tmp2115 = tmp3307 & tmp3536;
    assign tmp2120 = ~tmp3127;
    assign tmp2137 = ~tmp2606;
    assign tmp2140 = ~tmp2072;
    assign tmp2141 = tmp2105 | tmp2879;
    assign tmp2148 = ~tmp2254;
    assign tmp2157 = tmp2457 & tmp2961;
    assign tmp2158 = tmp2175 | tmp2696;
    assign tmp2159 = tmp2176 | tmp2696;
    assign tmp2164 = tmp2204 & tmp3302;
    assign tmp2166 = tmp2230 & tmp3194;
    assign tmp2172 = tmp2062 | tmp3238;
    assign tmp2175 = tmp2411 & tmp2638;
    assign tmp2176 = tmp2775 & tmp2638;
    assign tmp2177 = tmp2413 & tmp2638;
    assign tmp2200 = ~tmp2100;
    assign tmp2201 = tmp3380 & tmp3274;
    assign tmp2204 = tmp3012 & tmp3306;
    assign tmp2214 = tmp2849 & tmp2021;
    assign tmp2225 = tmp3074 | tmp2031;
    assign tmp2226 = tmp3075 | tmp2031;
    assign tmp2228 = state_temperature_synth_0 | tmp2099;
    assign tmp2229 = tmp2966 & tmp3065;
    assign tmp2230 = tmp3145 & tmp2377;
    assign tmp2237 = tmp3056 & tmp3306;
    assign tmp2240 = tmp2635 | tmp2201;
    assign tmp2248 = tmp3191 & tmp3278;
    assign tmp2250 = state_temperature_synth_0 | tmp2452;
    assign tmp2251 = ~tmp2473;
    assign tmp2254 = tmp3041 & tmp3536;
    assign tmp2262 = tmp2660 & tmp2623;
    assign tmp2286 = state_water_synth_0 & tmp2354;
    assign tmp2287 = state_water_synth_1 & tmp2354;
    assign tmp2288 = state_water_synth_2 & tmp2354;
    assign tmp2298 = ~tmp2682;
    assign tmp2300 = tmp2808 & tmp3306;
    assign tmp2301 = tmp3191 & tmp2623;
    assign tmp2304 = ~reset;
    assign tmp2310 = tmp2333 & tmp2393;
    assign tmp2311 = tmp2334 & tmp2393;
    assign tmp2312 = tmp2461 & tmp2393;
    assign tmp2313 = tmp3080 & tmp2137;
    assign tmp2314 = tmp2931 & tmp2137;
    assign tmp2315 = tmp3082 & tmp2137;
    assign tmp2317 = tmp3041 & tmp3482;
    assign tmp2319 = tmp2084 & tmp2032;
    assign tmp2320 = tmp2085 & tmp2032;
    assign tmp2321 = tmp3282 & tmp2032;
    assign tmp2329 = ~tmp3349;
    assign tmp2330 = tmp2310 & tmp3335;
    assign tmp2331 = tmp2360 & tmp3335;
    assign tmp2332 = tmp2312 & tmp3335;
    assign tmp2333 = tmp2459 | tmp2473;
    assign tmp2334 = tmp2460 | tmp2473;
    assign tmp2336 = tmp2102 & tmp2719;
    assign tmp2337 = tmp2103 & tmp2719;
    assign tmp2338 = tmp2533 & tmp2719;
    assign tmp2352 = tmp3063 | tmp3529;
    assign tmp2354 = ~tmp2632;
    assign tmp2356 = tmp2313 | tmp2606;
    assign tmp2357 = tmp2314 | tmp2606;
    assign tmp2360 = tmp2311 | tmp2509;
    assign tmp2362 = state_temperature_synth_0 | tmp2621;
    assign tmp2363 = ~tmp2808;
    assign tmp2370 = tmp3538 & tmp2493;
    assign tmp2371 = tmp3539 & tmp2493;
    assign tmp2372 = tmp3428 & tmp2493;
    assign tmp2373 = tmp3487 & tmp3246;
    assign tmp2374 = tmp3155 & tmp3246;
    assign tmp2375 = tmp3156 & tmp3246;
    assign tmp2377 = ~tmp3440;
    assign tmp2390 = tmp2998 & tmp3278;
    assign tmp2393 = ~tmp2509;
    assign tmp2405 = tmp2337 | tmp2066;
    assign tmp2407 = state_water_synth_0 | tmp3214;
    assign tmp2411 = tmp2060 & tmp2200;
    assign tmp2412 = tmp2061 & tmp2200;
    assign tmp2413 = tmp2172 & tmp2200;
    assign tmp2424 = tmp3012 & tmp3456;
    assign tmp2431 = tmp2237 & tmp3070;
    assign tmp2448 = tmp3330 & tmp2810;
    assign tmp2449 = tmp2726 & tmp2810;
    assign tmp2450 = tmp3332 & tmp2810;
    assign tmp2452 = tmp2963 | state_temperature_synth_2;
    assign tmp2457 = tmp2424 & tmp3482;
    assign tmp2459 = tmp3467 & tmp2251;
    assign tmp2460 = tmp2958 & tmp2251;
    assign tmp2461 = tmp3469 & tmp2251;
    assign tmp2463 = ~state_water_synth_1;
    assign tmp2465 = ~tmp2879;
    assign tmp2473 = tmp2051 & tmp3278;
    assign tmp2476 = tmp2651 | tmp3094;
    assign tmp2482 = tmp2141 & tmp3375;
    assign tmp2483 = tmp2106 & tmp3375;
    assign tmp2484 = tmp2107 & tmp3375;
    assign tmp2489 = ~tmp2675;
    assign tmp2492 = ~tmp3323;
    assign tmp2493 = ~tmp3372;
    assign tmp2498 = tmp3157 & tmp2140;
    assign tmp2499 = tmp2668 & tmp2140;
    assign tmp2500 = tmp3159 & tmp2140;
    assign tmp2509 = tmp3032 & tmp2623;
    assign tmp2522 = tmp2527 & tmp3278;
    assign tmp2525 = ~tmp3012;
    assign tmp2527 = tmp2849 & tmp3278;
    assign tmp2531 = tmp2319 & tmp2698;
    assign tmp2532 = tmp2995 & tmp2698;
    assign tmp2533 = tmp2321 & tmp2698;
    assign tmp2534 = ~tmp3072;
    assign tmp2535 = ~tmp3309;
    assign tmp2539 = ~tmp3204;
    assign tmp2548 = tmp2014 & tmp3287;
    assign tmp2556 = ~state_water_synth_0;
    assign tmp2570 = tmp2370 & tmp2329;
    assign tmp2571 = tmp2371 & tmp2329;
    assign tmp2572 = tmp2751 & tmp2329;
    assign tmp2585 = tmp2924 & tmp3375;
    assign tmp2586 = tmp3450 & tmp3375;
    assign tmp2587 = tmp3451 & tmp3375;
    assign tmp2589 = tmp2720 & tmp2535;
    assign tmp2590 = tmp2374 & tmp2535;
    assign tmp2591 = tmp2722 & tmp2535;
    assign tmp2606 = tmp2424 & tmp3536;
    assign tmp2610 = tmp2027 | tmp3275;
    assign tmp2612 = tmp2029 | tmp3275;
    assign tmp2621 = state_temperature_synth_1 | state_temperature_synth_2;
    assign tmp2623 = ~tmp3278;
    assign tmp2632 = start & reset;
    assign tmp2634 = tmp3430 & tmp2703;
    assign tmp2635 = tmp3431 & tmp2703;
    assign tmp2636 = tmp2982 & tmp2703;
    assign tmp2638 = ~tmp2696;
    assign tmp2650 = tmp3403 & tmp2895;
    assign tmp2651 = tmp2658 & tmp2895;
    assign tmp2652 = tmp2659 & tmp2895;
    assign tmp2657 = tmp2770 & tmp2539;
    assign tmp2658 = tmp3253 & tmp2539;
    assign tmp2659 = tmp3254 & tmp2539;
    assign tmp2660 = tmp3559 & tmp3302;
    assign tmp2663 = ~tmp2522;
    assign tmp2668 = tmp3158 | tmp3245;
    assign tmp2675 = ~tmp3110;
    assign tmp2682 = tmp2034 & tmp3127;
    assign tmp2691 = tmp2570 & tmp3077;
    assign tmp2692 = tmp2841 & tmp3077;
    assign tmp2693 = tmp2572 & tmp3077;
    assign tmp2696 = tmp3068 & tmp3536;
    assign tmp2698 = ~tmp3183;
    assign tmp2703 = ~tmp2201;
    assign tmp2719 = ~tmp2066;
    assign tmp2720 = tmp2373 | tmp3056;
    assign tmp2722 = tmp2375 | tmp3056;
    assign tmp2726 = tmp3331 | tmp3333;
    assign tmp2730 = ~tmp2016;
    assign tmp2751 = tmp2372 | tmp3372;
    assign tmp2760 = ~tmp2053;
    assign tmp2770 = tmp3252 | tmp2632;
    assign tmp2775 = tmp2412 | tmp2100;
    assign tmp2781 = ~tmp3529;
    assign tmp2796 = ~tmp2362;
    assign tmp2808 = tmp2230 & tmp2492;
    assign tmp2810 = ~tmp2214;
    assign tmp2811 = tmp3302 ^ tmp2923;
    assign tmp2813 = ~tmp3301;
    assign tmp2816 = tmp3506 & tmp3278;
    assign tmp2823 = tmp2914 & tmp3278;
    assign tmp2830 = ~tmp3263;
    assign tmp2835 = ~tmp2157;
    assign tmp2841 = tmp2571 | tmp3349;
    assign tmp2846 = ~tmp2020;
    assign tmp2849 = tmp3066 & tmp3019;
    assign tmp2852 = tmp2548 & tmp3495;
    assign tmp2860 = tmp2158 & tmp2830;
    assign tmp2861 = tmp2159 & tmp2830;
    assign tmp2862 = tmp2177 & tmp2830;
    assign tmp2875 = tmp2962 | tmp2452;
    assign tmp2878 = tmp2556 | tmp2965;
    assign tmp2879 = tmp3293 & tmp2534;
    assign tmp2888 = ~tmp3067;
    assign tmp2895 = ~tmp3094;
    assign tmp2904 = ~tmp2015;
    assign tmp2914 = tmp2431 & tmp3019;
    assign tmp2923 = tmp3302 & tmp3019;
    assign tmp2924 = tmp3449 | tmp2879;
    assign tmp2931 = tmp3081 | tmp2816;
    assign tmp2951 = tmp3103 & tmp2489;
    assign tmp2953 = ~tmp3245;
    assign tmp2958 = tmp3468 | tmp3067;
    assign tmp2961 = tmp2020 & tmp2623;
    assign tmp2962 = ~state_temperature_synth_0;
    assign tmp2963 = ~state_temperature_synth_1;
    assign tmp2965 = state_water_synth_1 | state_water_synth_2;
    assign tmp2966 = tmp2015 & tmp3495;
    assign tmp2974 = tmp2590 | tmp3309;
    assign tmp2975 = tmp2591 | tmp3309;
    assign tmp2982 = tmp3432 | tmp3301;
    assign tmp2983 = ~tmp3065;
    assign tmp2987 = ~state_water_synth_2;
    assign tmp2989 = tmp2300 & tmp3070;
    assign tmp2995 = tmp2320 | tmp3298;
    assign tmp2998 = tmp3414 & tmp3019;
    assign tmp3012 = tmp2166 & tmp3323;
    assign tmp3019 = ~tmp2228;
    assign tmp3026 = tmp2610 & tmp2363;
    assign tmp3027 = tmp2028 & tmp2363;
    assign tmp3028 = tmp2612 & tmp2363;
    assign tmp3032 = tmp2051 & tmp2623;
    assign tmp3041 = tmp2808 & tmp3456;
    assign tmp3048 = tmp3087 | tmp2682;
    assign tmp3051 = ~tmp2816;
    assign tmp3056 = tmp3103 & tmp2675;
    assign tmp3062 = tmp2330 & tmp2781;
    assign tmp3063 = tmp2331 & tmp2781;
    assign tmp3064 = tmp3207 & tmp2781;
    assign tmp3065 = ~tmp2017;
    assign tmp3066 = tmp3559 & tmp3070;
    assign tmp3067 = tmp3412 & tmp3274;
    assign tmp3068 = tmp3056 & tmp3456;
    assign tmp3070 = ~tmp3302;
    assign tmp3072 = ~tmp2407;
    assign tmp3074 = tmp2634 & tmp3083;
    assign tmp3075 = tmp2240 & tmp3083;
    assign tmp3076 = tmp2636 & tmp3083;
    assign tmp3077 = ~tmp2248;
    assign tmp3080 = tmp2498 & tmp3051;
    assign tmp3081 = tmp2499 & tmp3051;
    assign tmp3082 = tmp2026 & tmp3051;
    assign tmp3083 = ~tmp2031;
    assign tmp3087 = tmp3168 & tmp2298;
    assign tmp3088 = tmp2287 & tmp2298;
    assign tmp3089 = tmp2288 & tmp2298;
    assign tmp3091 = tmp3302 ^ tmp3019;
    assign tmp3094 = tmp3275 & tmp2760;
    assign tmp3103 = tmp3293 & tmp3072;
    assign tmp3108 = tmp2989 & tmp3019;
    assign tmp3110 = tmp2017 | tmp2229;
    assign tmp3127 = ~tmp3541;
    assign tmp3145 = tmp3363 & tmp2070;
    assign tmp3155 = tmp3488 | tmp3012;
    assign tmp3156 = tmp3489 | tmp3012;
    assign tmp3157 = tmp2040 & tmp2953;
    assign tmp3158 = tmp2041 & tmp2953;
    assign tmp3159 = tmp2693 & tmp2953;
    assign tmp3168 = tmp2286 | tmp2632;
    assign tmp3181 = ~tmp3238;
    assign tmp3183 = tmp2164 & tmp3278;
    assign tmp3191 = tmp2300 & tmp3302;
    assign tmp3194 = ~tmp2492;
    assign tmp3204 = tmp2682 & tmp2796;
    assign tmp3207 = tmp2332 | tmp3502;
    assign tmp3214 = tmp2463 | tmp2987;
    assign tmp3224 = tmp3318 | tmp2522;
    assign tmp3238 = tmp2998 & tmp2021;
    assign tmp3245 = tmp2301 & tmp2623;
    assign tmp3246 = ~tmp3056;
    assign tmp3252 = state_temperature_synth_0 & tmp2354;
    assign tmp3253 = state_temperature_synth_1 & tmp2354;
    assign tmp3254 = state_temperature_synth_2 & tmp2354;
    assign tmp3263 = tmp3412 & tmp2961;
    assign tmp3274 = ~tmp2961;
    assign tmp3275 = tmp3363 & tmp2047;
    assign tmp3278 = ~tmp2021;
    assign tmp3282 = tmp2086 | tmp2157;
    assign tmp3287 = ~tmp2904;
    assign tmp3293 = tmp3145 & tmp3550;
    assign tmp3298 = tmp2457 & tmp3274;
    assign tmp3301 = tmp3380 & tmp2961;
    assign tmp3302 = ~tmp2875;
    assign tmp3306 = ~tmp3456;
    assign tmp3307 = tmp3309 & tmp3456;
    assign tmp3308 = tmp2047 | tmp2377;
    assign tmp3309 = tmp2951 & tmp3110;
    assign tmp3317 = tmp2448 & tmp2663;
    assign tmp3318 = tmp2449 & tmp2663;
    assign tmp3319 = tmp3362 & tmp2663;
    assign tmp3323 = tmp2852 & tmp2983;
    assign tmp3330 = tmp2225 & tmp3419;
    assign tmp3331 = tmp2226 & tmp3419;
    assign tmp3332 = tmp3076 & tmp3419;
    assign tmp3333 = tmp2262 & tmp2623;
    assign tmp3335 = ~tmp3502;
    assign tmp3349 = tmp2317 & tmp3274;
    assign tmp3362 = tmp2450 | tmp2214;
    assign tmp3363 = tmp2034 & tmp2120;
    assign tmp3372 = tmp2317 & tmp2961;
    assign tmp3375 = ~tmp3399;
    assign tmp3380 = tmp3307 & tmp3482;
    assign tmp3399 = ~start;
    assign tmp3403 = tmp2657 | tmp3204;
    assign tmp3412 = tmp3068 & tmp3482;
    assign tmp3414 = tmp2204 & tmp3070;
    assign tmp3416 = tmp2164 & tmp2623;
    assign tmp3419 = ~tmp3333;
    assign tmp3426 = tmp2650 & tmp2148;
    assign tmp3427 = tmp2476 & tmp2148;
    assign tmp3428 = tmp2652 & tmp2148;
    assign tmp3430 = tmp3445 & tmp2813;
    assign tmp3431 = tmp3446 & tmp2813;
    assign tmp3432 = tmp2038 & tmp2813;
    assign tmp3436 = ~state_temperature_synth_2;
    assign tmp3440 = tmp2556 | tmp3516;
    assign tmp3445 = tmp2036 | tmp2115;
    assign tmp3446 = tmp2037 | tmp2115;
    assign tmp3449 = tmp3317 & tmp2465;
    assign tmp3450 = tmp3224 & tmp2465;
    assign tmp3451 = tmp3319 & tmp2465;
    assign tmp3456 = ~tmp2250;
    assign tmp3467 = tmp2860 & tmp2888;
    assign tmp3468 = tmp2861 & tmp2888;
    assign tmp3469 = tmp3486 & tmp2888;
    assign tmp3473 = tmp3026 | tmp2808;
    assign tmp3475 = tmp3028 | tmp2808;
    assign tmp3482 = ~tmp3536;
    assign tmp3486 = tmp2862 | tmp3263;
    assign tmp3487 = tmp3473 & tmp2525;
    assign tmp3488 = tmp3027 & tmp2525;
    assign tmp3489 = tmp3475 & tmp2525;
    assign tmp3493 = ~tmp3275;
    assign tmp3495 = ~tmp2730;
    assign tmp3502 = tmp2914 & tmp2021;
    assign tmp3506 = tmp3108 & tmp3278;
    assign tmp3516 = state_water_synth_1 | tmp2987;
    assign tmp3529 = tmp2823 & tmp3278;
    assign tmp3536 = tmp2846 & tmp3278;
    assign tmp3538 = tmp3426 | tmp2254;
    assign tmp3539 = tmp3427 | tmp2254;
    assign tmp3541 = state_water_synth_0 | tmp2965;
    assign tmp3550 = ~tmp2377;
    assign tmp3559 = tmp3309 & tmp3306;

    // Registers
    always @(posedge clk)
    begin
        if (reset) begin
            state_temperature_synth_0 <= 0;
            state_temperature_synth_1 <= 0;
            state_temperature_synth_2 <= 0;
            state_water_synth_0 <= 0;
            state_water_synth_1 <= 0;
            state_water_synth_2 <= 0;
        end
        else begin
            state_temperature_synth_0 <= tmp2585;
            state_temperature_synth_1 <= tmp2586;
            state_temperature_synth_2 <= tmp2587;
            state_water_synth_0 <= tmp2482;
            state_water_synth_1 <= tmp2483;
            state_water_synth_2 <= tmp2484;
        end
    end

endmodule