const jwt = require('jsonwebtoken');
const promisify = require('util').promisify;
const verify = promisify(jwt.verify).bind(jwt);

exports.verifyToken = async (token, secretKey) => {
	try {
		return await verify(token, secretKey);
	} catch (error) {
		console.log(`Error in verify access token:  + ${error}`);
		return null;
	}
};