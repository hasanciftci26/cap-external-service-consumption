const cds = require('@sap/cds');

module.exports = cds.service.impl(async function() {
	const { BusinessPartner } = this.entities;
	const service = await cds.connect.to('API_BUSINESS_PARTNER');
	this.on('READ', BusinessPartner, request => {
		return service.tx(request).run(request.query);
	});
});