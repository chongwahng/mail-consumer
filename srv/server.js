const cds = require('@sap/cds')

cds.on('mtx', async () => {
    const provisioning = await cds.connect.to('ProvisioningService')
    provisioning.impl(require('./provisioning'))
})

module.exports = cds.server