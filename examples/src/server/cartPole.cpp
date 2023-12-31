// This file is part of RaiSim. You must obtain a valid license from RaiSim Tech
// Inc. prior to usage.

#include "raisim/RaisimServer.hpp"
#include "raisim/World.hpp"
#if WIN32
#include <timeapi.h>
#endif

int main(int argc, char* argv[]) {
  auto binaryPath = raisim::Path::setFromArgv(argv[0]);
  raisim::World::setActivationKey(binaryPath.getDirectory() + "\\rsc\\activation.raisim");

  /// create raisim world
  raisim::World world;
  world.setTimeStep(0.001);

  /// create objects
  world.addGround();
  auto cartPole = world.addArticulatedSystem(binaryPath.getDirectory() + "\\rsc\\cartPole\\cartpole.urdf");

  /// cartPole state
  Eigen::VectorXd jointNominalConfig(cartPole->getGeneralizedCoordinateDim());
  jointNominalConfig.setZero();
  jointNominalConfig[1] = 0.01;
  cartPole->setGeneralizedCoordinate(jointNominalConfig);
  
  /// launch raisim server
  raisim::RaisimServer server(&world);
  server.launchServer();
  server.focusOn(cartPole);

  for (int i=0; i<200000; i++) {
    raisim::MSLEEP(1);
    server.integrateWorldThreadSafe();
  }

  server.killServer();
}
