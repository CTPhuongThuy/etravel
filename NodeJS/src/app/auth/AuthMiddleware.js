const authMethod = require('./AuthMethod');

exports.isAuth = async (req, res, next) => {
	// Lấy access token từ header
	const accessTokenFromHeader = req.headers.authorization;
	if (!accessTokenFromHeader) {
		return res.status(401).send('Access token is mising!');
	}

	const accessTokenSecret = process.env.ACCESS_TOKEN_SECRET;

	const verified = await authMethod.verifyToken(
		accessTokenFromHeader,
		accessTokenSecret,
	);
	if (!verified) {
		return res
			.status(401)
			.send('You are not allow this function!');
	}
	console.log(verified);
	verified.email;

	return next();
};