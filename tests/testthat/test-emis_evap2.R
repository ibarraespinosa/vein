context("emis_evap2")

data(net)
PC_G <- c(33491,22340,24818,31808,46458,28574,24856,28972,37818,49050,87923,
          133833,138441,142682,171029,151048,115228,98664,126444,101027,
          84771,55864,36306,21079,20138,17439, 7854,2215,656,1262,476,512,
          1181, 4991, 3711, 5653, 7039, 5839, 4257,3824, 3068)
veh <- data.frame(PC_G = PC_G)
pc1 <- my_age(x = net$ldv, y = PC_G, name = "PC")
ef1 <- ef_evap(ef = "erhotc",v = "PC", cc = "<=1400", dt = "0_15", ca = "no")
lpc <- list(pc1, pc1, pc1, pc1,
            pc1, pc1, pc1, pc1)
dfe <- emis_evap2(veh = lpc,
                  name = "PC",
                  size = "<=1400",
                  fuel = "G",
                  aged = 1:ncol(pc1),
                  nd4 = 10,
                  nd3 = 4,
                  nd2 = 2,
                  nd1 = 1,
                  hs_nd4 = ef1*1:ncol(pc1),
                  hs_nd3 = ef1*1:ncol(pc1),
                  hs_nd2 = ef1*1:ncol(pc1),
                  hs_nd1 = ef1*1:ncol(pc1),
                  d_nd4 = ef1*1:ncol(pc1),
                  d_nd3 = ef1*1:ncol(pc1),
                  d_nd2 = ef1*1:ncol(pc1),
                  d_nd1 = ef1*1:ncol(pc1),
                  rl_nd4 = ef1*1:ncol(pc1),
                  rl_nd3 = ef1*1:ncol(pc1),
                  rl_nd2 = ef1*1:ncol(pc1),
                  rl_nd1 = ef1*1:ncol(pc1))

test_that("emis_evap2 works", {
  expect_equal(round(emis_evap2(veh = pc1,
                                name = "PC",
                                size = "<=1400",
                                fuel = "G",
                                aged = 1:ncol(pc1),
                                nd4 = 10,
                                nd3 = 4,
                                nd2 = 2,
                                nd1 = 1,
                                hs_nd4 = ef1*1:ncol(pc1),
                                hs_nd3 = ef1*1:ncol(pc1),
                                hs_nd2 = ef1*1:ncol(pc1),
                                hs_nd1 = ef1*1:ncol(pc1),
                                d_nd4 = ef1*1:ncol(pc1),
                                d_nd3 = ef1*1:ncol(pc1),
                                d_nd2 = ef1*1:ncol(pc1),
                                d_nd1 = ef1*1:ncol(pc1),
                                rl_nd4 = ef1*1:ncol(pc1),
                                rl_nd3 = ef1*1:ncol(pc1),
                                rl_nd2 = ef1*1:ncol(pc1),
                                rl_nd1 = ef1*1:ncol(pc1))$g[1]),
               Emissions(82778))
  expect_message(round(emis_evap2(veh = pc1,
                                name = "PC",
                                size = "<=1400",
                                fuel = "G",
                                aged = 1:ncol(pc1),
                                nd4 = 10,
                                nd3 = 4,
                                nd2 = 2,
                                nd1 = 1,
                                hs_nd4 = ef1*1:ncol(pc1),
                                hs_nd3 = ef1*1:ncol(pc1),
                                hs_nd2 = ef1*1:ncol(pc1),
                                hs_nd1 = ef1*1:ncol(pc1),
                                d_nd4 = ef1*1:ncol(pc1),
                                d_nd3 = ef1*1:ncol(pc1),
                                d_nd2 = ef1*1:ncol(pc1),
                                d_nd1 = ef1*1:ncol(pc1),
                                rl_nd4 = ef1*1:ncol(pc1),
                                rl_nd3 = ef1*1:ncol(pc1),
                                rl_nd2 = ef1*1:ncol(pc1),
                                rl_nd1 = ef1*1:ncol(pc1))$g[1]),
               "E.?")
  expect_equal(round(emis_evap2(veh = lpc,
                          name = "PC",
                          size = "<=1400",
                          fuel = "G",
                          aged = 1:ncol(pc1),
                          nd4 = 10,
                          nd3 = 4,
                          nd2 = 2,
                          nd1 = 1,
                          hs_nd4 = ef1*1:ncol(pc1),
                          hs_nd3 = ef1*1:ncol(pc1),
                          hs_nd2 = ef1*1:ncol(pc1),
                          hs_nd1 = ef1*1:ncol(pc1),
                          d_nd4 = ef1*1:ncol(pc1),
                          d_nd3 = ef1*1:ncol(pc1),
                          d_nd2 = ef1*1:ncol(pc1),
                          d_nd1 = ef1*1:ncol(pc1),
                          rl_nd4 = ef1*1:ncol(pc1),
                          rl_nd3 = ef1*1:ncol(pc1),
                          rl_nd2 = ef1*1:ncol(pc1),
                          rl_nd1 = ef1*1:ncol(pc1))$g[1]),
               Emissions(82778))

  expect_message(round(emis_evap2(veh = lpc,
                                name = "PC",
                                size = "<=1400",
                                fuel = "G",
                                aged = 1:ncol(pc1),
                                nd4 = 10,
                                nd3 = 4,
                                nd2 = 2,
                                nd1 = 1,
                                hs_nd4 = ef1*1:ncol(pc1),
                                hs_nd3 = ef1*1:ncol(pc1),
                                hs_nd2 = ef1*1:ncol(pc1),
                                hs_nd1 = ef1*1:ncol(pc1),
                                d_nd4 = ef1*1:ncol(pc1),
                                d_nd3 = ef1*1:ncol(pc1),
                                d_nd2 = ef1*1:ncol(pc1),
                                d_nd1 = ef1*1:ncol(pc1),
                                rl_nd4 = ef1*1:ncol(pc1),
                                rl_nd3 = ef1*1:ncol(pc1),
                                rl_nd2 = ef1*1:ncol(pc1),
                                rl_nd1 = ef1*1:ncol(pc1))$g[1]),
               "E.?")
})


