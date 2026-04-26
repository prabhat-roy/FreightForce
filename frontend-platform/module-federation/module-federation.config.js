// Module Federation across FreightForce frontends (storefront / admin / partner / mobile-web)
const { ModuleFederationPlugin } = require("@module-federation/enhanced/webpack");
module.exports = {
  plugins: [
    new ModuleFederationPlugin({
      name: "freightforce_shell",
      remotes: {
        admin: "admin@https://admin.freightforce.internal/remoteEntry.js",
        partner: "partner@https://partner.freightforce.internal/remoteEntry.js",
      },
      shared: { react: { singleton: true }, "react-dom": { singleton: true } },
    }),
  ],
};
